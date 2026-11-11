# BÀI LÀM – HACKATHON 02

- **Mã đề:** 04
- **Họ tên:** Trần Mạnh Hoa
- **Lớp:** CNTT1
- **Link repository:** https://github.com/accountstool/HN-KS26-CNTT1_Nhap-mon-CNTT_Hackathon02
- **Hệ điều hành (Windows/macOS):** macOS

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
# Ghi lần lượt các lệnh đã chạy, mỗi lệnh một dòng
pwd
ls -a
mv noi_quy_khu_choi.txt docs/
mkdir backup
cp data/ve_vao_cong_thang_4.xlsx backup/
rm temp_404.tmp
cd ./logs
ls -a
cd ../
ls -aR
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
.		.env		data		logs
..		backup		docs		web
.DS_Store	bai_lam.md	evidence

./backup:
.				ve_vao_cong_thang_4.xlsx
..

./data:
.				ve_vao_cong_thang_4.xlsx
..

./docs:
.			..			noi_quy_khu_choi.txt

./evidence:
.	..

./logs:
.		..		entry.log

./web:
.		app.js		index.html
..		images		style.css

./web/images:
.			..			logo-kidland.png
```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```shell
rep "status=500" ./logs/entry.log > logs/loi_500.txt

```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
2026-04-28 08:11:50 POST /api/thanh-toan status=500
2026-04-28 08:21:23 POST /api/dat-tiec status=500
```

### b) Lệnh đếm số dòng status=404 và kết quả

```shell
grep "status=404" logs/entry.log | wc -l
```

```text
4
```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
bash tong_hop.sh

```

### Nội dung file logs/tong_hop.txt

```text
=== BAO CAO SU CO WEBSITE ===
2026-04-28 08:23:34 GET /ve-tet-2025 status=404
2026-04-28 08:29:56 GET /images/nha-bong-2.jpg status=404
2026-04-28 08:49:51 GET /images/nha-bong-2.jpg status=404
2026-04-28 09:00:35 GET /tin-tuc status=404
       6

```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [x] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [x] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 | Network | logo-kid.png | Sửa lại thành logo-kidland.png |
| 2 | Console | Uncaught ReferenceError: hienThiGoi is not defined | Sửa lại thành đúng tên hàm là hienThiGoiChoi |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm

- **Context:** Mở file web KidLand demo web/index.html, phát hiện logo không hiển thị và bảng giá gói chơi không được render
- **Expected:** Đường dẫn logo nằm ở header trong thẻ img, bảng #bang-gia hiện thị 4 gói chơi render từ hàm hienThiGoiChoi và lấy dữ liệu từ mảng danhSachBangGia
- **Actual:** Logo không hiển thị ra logo ở header, bảng giá đang không được render chỉ đang hiện thị tiêu đề
- **Log:**  app.js:18 Uncaught ReferenceError: hienThiGoi is not defined
(anonymous) @ app.js:18


### Câu tìm kiếm Google

```text
site:stackoverflow.com "Uncaught ReferenceError: hienThiGoi is not defined"
```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/ve_vao_cong_thang_4.xlsx`, không cần ghi vào đây.
