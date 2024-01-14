# Embedded System
Project này thuộc môn học hệ nhúng của trường Công Nghệ Thông Tin và Truyền Thông trực thuộc Đại học Bách Khoa Hà Nội.
Project là lập trình máy tính với bộ KIT 8051 PRO với vi điều khiển STC89C52.

# Hướng dẫn sử dụng
Mạch sử dụng bàn phím 4 x 4 với các phím từ 0 đến 9, 4 phép tính cộng trừ nhân chia, dấu bằng và phím xóa toàn bộ màn hình sau đó hiển thị lên màn hình LCD

# Lập trình
Do vướng phải hạn chế về bộ nhớ phần cứng nên không thể dùng stack để xử lý tính toán, ở đây chúng tôi sử dụng các biển để xử lý logic cho phép tính gồm:
result: kết quả phép tính
local: biến lưu toán hạng hiện tại đang nhập
mul: biến lưu toán hạng nhân chia
check: biến lưu toán tử phía trước

Để xử lý hiển thị trên màn hình LCD, nhóm có tạo thêm 2 hàm:
Write_one_char: in 1 ký tự lên màn hình tại vị trí con trỏ
Write_string: in 1 chuỗi lên màn hình

Về phương pháp sử lý sự kiện bấm nút:
Sử dụng các bước như sau:
1. Đưa điện vào cả 4 hàng, check xem đang bấm ở cột nào
2. Tăt điện ở cả 4 hàng, đưa điện vào từng hàng, check xem chính xác đang bấm ở hàng nào
   Từ đó chúng ta biết được là đang bấm ở nút nào
