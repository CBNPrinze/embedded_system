#include <mcs51/8052.h>
#include "lcd1602.h"
#include "string.h"
#include <stdio.h>

#define buzzer_pin P1_5

inline void buzzer()
{
#define time 40
    for (int i = 0; i < time * 1e3 / 200; i++)
    {
        buzzer_pin = 1;
        for (int j = 0; j < 100; j++)
            ;
        buzzer_pin = 0;
        for (int j = 0; j < 100; j++)
            ;
    }
}

//Ham gui mot lenh xuong LCD
void LCD_Send_Command(unsigned char x)
{
	LCD_DATA=x;
	LCD_RS=0; //Chon thanh ghi lenh
	LCD_RW=0; //De ghi du lieu
	LCD_EN=1;
	Delay_us(100);
	LCD_EN=0;
	Wait_For_LCD(); //Doi cho LCD san sang
	LCD_EN=1;
}
//Ham kiem tra va cho den khi LCD san sang
void Wait_For_LCD()
{
	Delay_us(100);
}
void LCD_init()
{
	LCD_Send_Command(0x38); //Chon che do 8 bit, 2 hang cho LCD
	LCD_Send_Command(0x0E); //Bat hien thi, nhap nhay con tro
	LCD_Send_Command(0x01); //Xoa man hinh
	LCD_Send_Command(0x80); //Ve dau dong
}

//Ham de LCD hien thi mot ky tu
void LCD_Write_One_Char(unsigned char c)
{
	LCD_DATA=c; //Dua du lieu vao thanh ghi
	LCD_RS=1; //Chon thanh ghi du lieu
	LCD_RW=0;
	LCD_EN=1;
	Delay_us(10);
	LCD_EN=0;
	Wait_For_LCD();
	LCD_EN=1;
}
//Ham de LCD hien thi mot xau
void LCD_Write_String(unsigned char *s)
{
	unsigned char length;
	length=strlen(s); //Lay do dai xau
	while(length!=0)
	{
		LCD_Write_One_Char(*s); //Ghi ra LCD gia tri duoc tro boi con tro
		s++; //Tang con tro
		length--;
	}
}

void LCD_GotoXY(char row, char col)
{
    char i;
    if (row == 2)
        LCD_Send_Command(0xC0);      //cursor to fist col in row 2
    else
       	LCD_Send_Command(0x80);      //cursor to fist col in row 1 (default)
	for (i = 0; i < col; i++)
        LCD_Send_Command(0x14);      //cursor to fist col in row 1 (default)
}

void Delay_ms(int interval)
{
	int i,j;
	for(i=0;i<1000;i++)
	{
		for(j=0;j<interval;j++);
	}
}

void Delay_us(int interval)
{
	int j;
	for(j=0;j<interval;j++);
}

void LCD_Clear() {
    LCD_Send_Command(0x01);
    Delay_ms(2);
}

void Beep(){
    P1_5 = 0;
    Delay_ms(20);
    P1_5 = 0;
}

void RemoveFirstDigit(char *str) {
    int length = strlen(str);

    if (length > 14) {
        for (int i = 0; i < length - 1; i++) {
            str[i] = str[i + 1];
        }
        str[length - 1] = '\0';
    }
    LCD_Clear();
    LCD_Write_String(str);
}

void main()
{
    Beep();
    int result = 0;
    int local = 0;
    int check = 1;
    int mul = 1;
	LCD_init();
	P1_4 = 0; P1_5 = 0; P1_6 = 0; P1_7 = 0;
    int count = 0;
    char buffer[16];
    char s[16] ="";  // Khai báo chuỗi rỗng
    while (1) {
        P1_4 = 0; P1_5 = 0; P1_6 = 0; P1_7 = 0;
        if (P1_1 == 0 ) {
            int lengs = strlen(s);
            P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
            if (P1_1 == 0 ) {
                switch (check) {
                        case 1:
                            result = result + local;
                            break;
                        case 2:
                            result = result - local;
                            break;
                        case 3:
                            mul = mul * local;
                            result = result + mul;
                            break;
                        case 4:
                            mul = mul / local;
                            result = result + mul;
                            break;
                        }
                LCD_Send_Command(0xC0); // Dòng thứ 2
                if (local == 0 && check == 4){
                    LCD_Write_String("Invalid");
                } else{
                    sprintf(buffer, "%d", result);
                    buzzer();
                    LCD_Write_String(buffer);
                }
                P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
                while (P1_2 != 0);
                result = 0;
                local = 0;
                check = 1;
                mul = 1;
                LCD_Clear();
                s[0]='\0';
            }
            P1_4 = 1; P1_5 = 0; P1_6 = 1; P1_7 = 1;
            if (P1_1 == 0) {
                s[lengs] = '3';
                s[lengs + 1] = '\0';
                local = local * 10 + 3;
            }

            P1_4 = 1; P1_5 = 1; P1_6 = 0; P1_7 = 1;
            if (P1_1 == 0) {
                s[lengs] = '6';
                s[lengs + 1] = '\0';
                local = local * 10 + 6;
            }

            P1_4 = 1; P1_5 = 1; P1_6 = 1; P1_7 = 0;
            if (P1_1 == 0) {
                s[lengs] = '9';
                s[lengs + 1] = '\0';
                local = local * 10 + 9;
            }
            RemoveFirstDigit(s);
            Delay_ms(20);
        } else {
            if (P1_2 == 0) {
                int lengs = strlen(s);
                P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
                if (P1_2 == 0) {
                    LCD_Clear();
                    result = 0;
                    local = 0;
                    check = 0;
                    mul = 1;
                    s[0]='\0';
                }

                P1_4 = 1; P1_5 = 0; P1_6 = 1; P1_7 = 1;
                if (P1_2 == 0) {
                    s[lengs] = '2';
                    s[lengs + 1] = '\0';
                    local = local * 10 + 2;
                }

                P1_4 = 1; P1_5 = 1; P1_6 = 0; P1_7 = 1;
                if (P1_2 == 0) {
                    s[lengs] = '5';
                    s[lengs + 1] = '\0';
                    local = local * 10 + 5;
                }

                P1_4 = 1; P1_5 = 1; P1_6 = 1; P1_7 = 0;
                if (P1_2 == 0) {
                    s[lengs] = '8';
                    s[lengs + 1] = '\0';
                    local = local * 10 + 8;
                }
                RemoveFirstDigit(s);
                Delay_ms(20);
            } else {
                if (P1_3 == 0) {
                    int lengs = strlen(s);
                    P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
                    if (P1_3 == 0) {
                        s[lengs] = '0';
                        s[lengs + 1] = '\0';
                        local = local * 10;
                    }

                    P1_4 = 1; P1_5 = 0; P1_6 = 1; P1_7 = 1;
                    if (P1_3 == 0) {
                        s[lengs] = '1';
                        s[lengs + 1] = '\0';
                        local = local * 10 + 1;
                    }

                    P1_4 = 1; P1_5 = 1; P1_6 = 0; P1_7 = 1;
                    if (P1_3 == 0) {
                        s[lengs] = '4';
                        s[lengs + 1] = '\0';
                        local = local * 10 + 4;
                    }

                    P1_4 = 1; P1_5 = 1; P1_6 = 1; P1_7 = 0;
                    if (P1_3 == 0 ) {
                        s[lengs] = '7';
                        s[lengs + 1] = '\0';
                        local = local * 10 + 7;
                    }
                    RemoveFirstDigit(s);
                    Delay_ms(20);
                } else {
                    if (P1_0 == 0 ) {
                        int lengs = strlen(s);
                        P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
                        if (P1_0 == 0) {
                            s[lengs] = '+';
                            s[lengs + 1] = '\0';
                            switch (check) {
                            case 4:
                                result = result + mul/local;
                                if (local == 0){
                                    LCD_Send_Command(0xC0); // Dòng thứ 2
                                    LCD_Write_String("Invalid");
                                    P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
                                    while (P1_2 != 0);
                                    result = 0;
                                    local = 0;
                                    check = 0;
                                    mul = 1;
                                    LCD_Clear();
                                    s[0]='\0';
                                }
                                break;
                            default:
                                result = result + mul*local;
                            }
                            mul = 1;
                            check = 1;
                        }

                        P1_4 = 1; P1_5 = 0; P1_6 = 1; P1_7 = 1;
                        if (P1_0 == 0 ) {
                            s[lengs] = '-';
                            s[lengs + 1] = '\0';
                            switch (check) {
                            case 4:
                                result = result + mul/local;
                                if (local == 0){
                                    LCD_Send_Command(0xC0); // Dòng thứ 2
                                    LCD_Write_String("Invalid");
                                    P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
                                    while (P1_2 != 0);
                                    result = 0;
                                    local = 0;
                                    check = 0;
                                    mul = 1;
                                    LCD_Clear();
                                    s[0]='\0';
                                }
                                break;
                            default:
                                result = result + mul*local;
                            }
                            mul = -1;
                            check = 2;
                        }

                        P1_4 = 1; P1_5 = 1; P1_6 = 0; P1_7 = 1;
                        if (P1_0 == 0 ) {
                            s[lengs] = '*';
                            s[lengs + 1] = '\0';
                            switch (check) {
                            case 4:
                                mul = mul/local;
                                if (local == 0){
                                    LCD_Send_Command(0xC0); // Dòng thứ 2
                                    LCD_Write_String("Invalid");
                                    P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
                                    while (P1_2 != 0);
                                    result = 0;
                                    local = 0;
                                    check = 0;
                                    mul = 1;
                                    LCD_Clear();
                                    s[0]='\0';
                                }
                                break;
                            default:
                                mul = mul*local;
                            }
                            check = 3;
                        }

                        P1_4 = 1; P1_5 = 1; P1_6 = 1; P1_7 = 0;
                        if (P1_0 == 0) {
                            s[lengs] = '/';
                            s[lengs + 1] = '\0';
                            switch (check) {
                            case 4:
                                mul = mul/local;
                                if (local == 0){
                                    LCD_Send_Command(0xC0); // Dòng thứ 2
                                    LCD_Write_String("Invalid");
                                    P1_4 = 0; P1_5 = 1; P1_6 = 1; P1_7 = 1;
                                    while (P1_2 != 0);
                                    result = 0;
                                    local = 0;
                                    check = 0;
                                    mul = 1;
                                    LCD_Clear();
                                    s[0]='\0';
                                }
                                break;
                            default:
                                mul = mul*local;
                            }
                            check = 4;
                        }
                        local = 0;
                        RemoveFirstDigit(s);
                        Delay_ms(20);
                    }
                }
            }
        }
    }
}
