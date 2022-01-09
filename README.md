Bước 1. Cài đặt các phần mềm, công cụ hỗ trợ bao gồm
  + Xampp phiên bản php 7x 
  + Visualstudio 
Bước 2. 
  + Clone project vào trong thư mục htdocs của xampp : git clone https://github.com/anhhoangduc/PHP_core_webbanhang.git
Bước 3. Cập nhật thay đổi thông tin kết nối CSDL
sửa trong file : \Libraries\Database.php

Thông tin kết nối CSDLThông tin kết nối CSDL

public function __construct()
        {
            $this->link = mysqli_connect("localhost","root","mat_khau_mysql","php") or die ();
            mysqli_set_charset($this->link,"utf8");
        }
root => là user đăng nhập phpmyadmin 
mat_khau_mysql => mật khẩu mysql
php => Tên cơ sở dữ liệu

Bước 4: Tạo Cơ sở dữ liệu và import data 
  Tạo database tên php
  Import file web_ban_hang.sql vào database vừa tạo
Bước 5. Chạy project
  Bật apache server của xampp lên vào vào đường dẫn : http://localhost:8080/PHP_core_webbanhang/ để vào trang web
  ![image](https://user-images.githubusercontent.com/79526506/148685788-381e050b-848a-4139-b585-19760d199d73.png)
  ![image](https://user-images.githubusercontent.com/79526506/148685814-6e312654-68a2-4fcc-a9e2-2259d1a1e61a.png)
