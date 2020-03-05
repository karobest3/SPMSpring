Create database ShoppingManagement
use master 
go
Create table Categories(
	id int primary key identity,
	category_name nvarchar(30)
)
Create table Brands(
	id int primary key identity,
	id_category int,
	brand_name nvarchar(30),
	active bit default 1,
	FOREIGN KEY (id_category) REFERENCES Categories(id)
)

Insert Categories values
('Phone'),
('Laptop')

Insert Brands values
(1,'Samsung',1),
(1,'Iphone',1),
(2,'Dell',1)
EXEC sp_RENAME 'Phones.phone_name' , 'name', 'COLUMN'

Create table Phones(
	id int primary key identity,
	id_category int,
	id_brand int,
	name nvarchar(30),
	price decimal,
	description nvarchar(1000),
	url nvarchar(200),
	url_more nvarchar(4000),
	url_details nvarchar(200),
	screen_size nvarchar(50),
	screen_resolution nvarchar(40),
	screen_technology nvarchar(50),
	screen_touch nvarchar(200),
	battery_capacity nvarchar(50),
	battery_type nvarchar(50),
	battery_technology nvarchar(50),
	operating_system nvarchar(50),
	size nvarchar(100),
	weight nvarchar(50),
	material nvarchar(50),
	flash_light nvarchar(50),
	record_video nvarchar(500),
	rear_camera_resolution nvarchar(50),
	rear_camera_advanced nvarchar(500),
	camera_info_more nvarchar(500),
	front_camera_resolution nvarchar(50),
	videocall nvarchar(50),
	chipset nvarchar(50),
	speed_cpu nvarchar(200),
	chip_graphic nvarchar(50),
	ram nvarchar(50),
	internal_memory nvarchar(50),
	remaining_memory nvarchar(50),
	external_memory_card nvarchar(50),
	mobile_network nvarchar(500),
	sim nvarchar(50),
	wifi nvarchar(100),
	gps nvarchar(50),
	bluetooth nvarchar(50),
	charging_connector nvarchar(50),
	jack_headphone nvarchar(50),
	more_connector nvarchar(50),
	design nvarchar(50),
	advanced_security nvarchar(300),
	special_features nvarchar(100),
	record nvarchar(100),
	movie nvarchar(100),
	radio nvarchar(50),
	music nvarchar(100),
	quantity int,
	time_of_launch nvarchar(50),
	active bit default 1,
	FOREIGN KEY (id_category) REFERENCES Categories(id),
	FOREIGN KEY (id_brand) REFERENCES Brands(id),
) 



drop table Phones

select * from Phones
insert Phones values 
-- product 1
(1,2,'iPhone 11 64GB',900,
N'Sau bao nhiêu chờ đợi cũng như đồn đoán thì cuối cùng Apple đã chính thức giới thiệu bộ 3 siêu phẩm iPhone 11 mạnh mẽ nhất của mình vào tháng 9/2019. Có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như chiếc iPhone Xr năm ngoái, đó chính là phiên bản iPhone 11 64GB.'
,'https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-red-2-400x460-400x460.png',
--img more
'https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-1-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-2-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-3-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-4-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-6-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-11-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-12-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-8-org.jpg',
--end img more
'https://cdn.tgdd.vn/Products/Images/42/153856/Kit/iphone-11-note.jpg',

'6.1"','828 x 1792 Pixels','IPS LCD',N'Kính cường lực oleophobic (ion cường lực)',N'3110 mAh',N'Pin chuẩn Li-Ion',N'Tiết kiệm pin, Sạc pin nhanh, Sạc pin không dây',
'iOS 13',N'Dài 150.9 mm - Ngang 75.7 mm - Dày 8.3 mm','194 g',N'Khung nhôm & Mặt lưng kính cường lực',N'3 đèn LED 2 tông màu',
N'Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps, Quay phim FullHD 1080p@60fps, Quay phim FullHD 1080p@120fps, Quay phim FullHD 1080p@240fps, Quay phim 4K 2160p@24fps, Quay phim 4K 2160p@30fps, Quay phim 4K 2160p@60fps',N'Chính 12 MP & Phụ 12 MP',
N'Ban đêm (Night Mode), Trôi nhanh thời gian (Time Lapse), Quay chậm (Slow Motion), Xoá phông, Zoom quang học, Góc rộng (Wide), Góc siêu rộng (Ultrawide), Tự động lấy nét (AF), Chạm lấy nét, Nhận diện khuôn mặt, HDR, Toàn cảnh (Panorama)',
N'Xoá phông, Quay phim 4K, Nhãn dán (AR Stickers), Retina Flash, Quay video HD, Nhận diện khuôn mặt, Quay video Full HD, Tự động lấy nét (AF), HDR, Quay chậm (Slow Motion)',
'12 MP',N'Có',N'Apple A13 Bionic 6 nhân',N'2 nhân 2.65 GHz & 4 nhân 1.8 GHz',
N'Apple GPU 4 nhân','4 GB','64 GB',N'Khoảng 59 GB',N'Không',N'Hỗ trợ 4G',N'1 eSIM & 1 Nano SIM',
'Dual-band, Wi-Fi 802.11 a/b/g/n/ac/ax, Wi-Fi hotspot','BDS, A-GPS, GLONASS','LE, A2DP, v5.0','Lightning','Lightning','NFC, OTG',N'Nguyên khối',N'Mở khoá khuôn mặt Face ID',
N'Ðèn pin,Sạc pin không dây,Sạc pin nhanh,Apple Pay,Dolby Audio™,Chuẩn Kháng nước, Chuẩn kháng bụi',N'Có, microphone chuyên dụng chống ồn','H.264(MPEG4-AVC)',N'Không','Lossless, MP3, AAC, FLAC',100,'11/2019',1)

insert Phones values 
-- product 2
(1,2,'iPhone 11 Pro Max 512GB',1800,
N'Để tìm kiếm một chiếc smartphone có hiệu năng mạnh mẽ và có thể sử dụng mượt mà trong 2-3 năm tới thì không có chiếc máy nào xứng đang hơn chiếc iPhone 11 Pro Max 512GB mới ra mắt trong năm 2019 của Apple.'
,'https://cdn.tgdd.vn/Products/Images/42/210654/iphone-11-pro-max-512gb-gold-400x460.png',
--img more
'https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-1-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-2-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-3-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-4-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-6-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-11-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-12-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-8-org.jpg',
--end img more
'https://cdn.tgdd.vn/Products/Images/42/210654/Kit/iphone-11-pro-max-512gb-note.jpg',

'6.5"','1242 x 2688 Pixels','OLED',N'Kính cường lực oleophobic (ion cường lực)',N'3969 mAh',N'Pin chuẩn Li-Ion',N'Tiết kiệm pin, Sạc pin nhanh, Sạc pin không dây',
'iOS 13',N'Dài 158 mm - Ngang 77.8 mm - Dày 8.1 mm','226 g',N'Khung nhôm & Mặt lưng kính cường lực',N'4 đèn LED (2 tông màu)',
N'Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps, Quay phim FullHD 1080p@60fps, Quay phim FullHD 1080p@120fps, Quay phim FullHD 1080p@240fps, Quay phim 4K 2160p@24fps, Quay phim 4K 2160p@30fps, Quay phim 4K 2160p@60fps',N'3 camera 12 MP',
N'Góc rộng (Wide), Xoá phông, Quay chậm (Slow Motion), Trôi nhanh thời gian (Time Lapse), Ban đêm (Night Mode), Góc siêu rộng (Ultrawide), Tự động lấy nét (AF), Chạm lấy nét, Nhận diện khuôn mặt, HDR, Toàn cảnh (Panorama), Chống rung quang học (OIS)',
N'Xoá phông, Quay phim 4K, Nhãn dán (AR Stickers), Retina Flash, Quay video HD, Nhận diện khuôn mặt, Quay video Full HD, Tự động lấy nét (AF), HDR, Quay chậm (Slow Motion)',
'12 MP',N'Có',N'Apple A13 Bionic 6 nhân',N'2 nhân 2.65 GHz & 4 nhân 1.8 GHz',
N'Apple GPU 4 nhân','4 GB','512 GB',N'Khoảng 507 GB',N'Không',N'Hỗ trợ 4G',N'1 eSIM & 1 Nano SIM',
'Dual-band, Wi-Fi 802.11 a/b/g/n/ac/ax, Wi-Fi hotspot','BDS, A-GPS, GLONASS','LE, A2DP, v5.0','Lightning','Lightning','NFC, OTG',N'Nguyên khối',N'Mở khoá khuôn mặt Face ID',
N'Ðèn pin,Sạc pin không dây,Sạc pin nhanh,Apple Pay,Dolby Audio™,Chuẩn Kháng nước, Chuẩn kháng bụi',N'Có, microphone chuyên dụng chống ồn','H.264(MPEG4-AVC)',N'Không','Lossless, MP3, AAC, FLAC',100,'11/2019',1)


insert Phones values 
-- product 3
(1,2,'iPhone 11 Pro Max 256GB',1500,
N'iPhone 11 Pro Max 256GB là chiếc iPhone cao cấp nhất trong bộ 3 iPhone Apple giới thiệu trong năm 2019 và quả thực chiếc smartphone này mang trong mình nhiều trang bị xứng đáng với tên gọi "Pro".'
,'https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-black-400x460.png',
--img more
'https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-1-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-2-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-3-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-4-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-6-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-11-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-12-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-8-org.jpg',
--end img more
'https://cdn.tgdd.vn/Products/Images/42/210653/Kit/iphone-11-pro-max-256gb-note.jpg',

'6.5"','1242 x 2688 Pixels','OLED',N'Kính cường lực oleophobic (ion cường lực)',N'3969 mAh',N'Pin chuẩn Li-Ion',N'Tiết kiệm pin, Sạc pin nhanh, Sạc pin không dây',
'iOS 13',N'Dài 158 mm - Ngang 77.8 mm - Dày 8.1 mm','226 g',N'Khung nhôm & Mặt lưng kính cường lực',N'4 đèn LED (2 tông màu)',
N'Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps, Quay phim FullHD 1080p@60fps, Quay phim FullHD 1080p@120fps, Quay phim FullHD 1080p@240fps, Quay phim 4K 2160p@24fps, Quay phim 4K 2160p@30fps, Quay phim 4K 2160p@60fps',N'3 camera 12 MP',
N'Góc rộng (Wide), Xoá phông, Quay chậm (Slow Motion), Trôi nhanh thời gian (Time Lapse), Ban đêm (Night Mode), Góc siêu rộng (Ultrawide), Tự động lấy nét (AF), Chạm lấy nét, Nhận diện khuôn mặt, HDR, Toàn cảnh (Panorama), Chống rung quang học (OIS)',
N'Xoá phông, Quay phim 4K, Nhãn dán (AR Stickers), Retina Flash, Quay video HD, Nhận diện khuôn mặt, Quay video Full HD, Tự động lấy nét (AF), HDR, Quay chậm (Slow Motion)',
'12 MP',N'Có',N'Apple A13 Bionic 6 nhân',N'2 nhân 2.65 GHz & 4 nhân 1.8 GHz',
N'Apple GPU 4 nhân','4 GB','256 GB',N'Khoảng 251 GB',N'Không',N'Hỗ trợ 4G',N'1 eSIM & 1 Nano SIM',
'Dual-band, Wi-Fi 802.11 a/b/g/n/ac/ax, Wi-Fi hotspot','BDS, A-GPS, GLONASS','LE, A2DP, v5.0','Lightning','Lightning','NFC, OTG',N'Nguyên khối',N'Mở khoá khuôn mặt Face ID',
N'Ðèn pin,Sạc pin không dây,Sạc pin nhanh,Apple Pay,Dolby Audio™,Chuẩn Kháng nước, Chuẩn kháng bụi',N'Có, microphone chuyên dụng chống ồn','H.264(MPEG4-AVC)',N'Không','Lossless, MP3, AAC, FLAC',100,'11/2019',1)


insert Phones values 
-- product 4
(1,2,'iPhone Xs Max 256GB',1200,
N'iPhone 11 Pro Max 256GB là chiếc iPhone cao cấp nhất trong bộ 3 iPhone Apple giới thiệu trong năm 2019 và quả thực chiếc smartphone này mang trong mình nhiều trang bị xứng đáng với tên gọi "Pro".'
,'https://cdn.tgdd.vn/Products/Images/42/190322/iphone-xs-max-256gb-white-400x460.png',
--img more
'https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-1-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-2-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-3-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-4-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-6-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-11-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-12-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-8-org.jpg',
--end img more
'https://cdn.tgdd.vn/Products/Images/42/190322/Kit/iphone-xs-max-256gb-note.jpg',

'6.5"','1242 x 2688 Pixels','OLED',N'Kính cường lực oleophobic (ion cường lực)',N'3174 mAh',N'Pin chuẩn Li-Ion',N'Tiết kiệm pin, Sạc pin nhanh, Sạc pin không dây',
'iOS 12',N'Dài 157.5 mm - Ngang 77.4 mm - Dày 7.7 mm','208 g',N'Khung thép không gỉ & Mặt lưng kính cường lực',N'4 đèn LED (2 tông màu)',
N'Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps, Quay phim FullHD 1080p@60fps, Quay phim FullHD 1080p@120fps, Quay phim FullHD 1080p@240fps, Quay phim 4K 2160p@24fps, Quay phim 4K 2160p@30fps, Quay phim 4K 2160p@60fps',N'Chính 12 MP & Phụ 12 MP',
N'Điều chỉnh khẩu độ, A.I Camera, Ban đêm (Night Mode), Quay chậm (Slow Motion), Xoá phông, Zoom quang học, Tự động lấy nét (AF), Chạm lấy nét, Nhận diện khuôn mặt, HDR, Toàn cảnh (Panorama), Chống rung quang học (OIS)',
N'Nhận diện khuôn mặt, Quay video Full HD, Góc rộng (Wide), HDR',
'7 MP',N'Có',N'Apple A13 Bionic 6 nhân',N'2 nhân 2.65 GHz & 4 nhân 1.8 GHz',
N'Apple GPU 4 nhân','4 GB','256 GB',N'Khoảng 249 GB',N'Không',N'Hỗ trợ 4G',N'1 eSIM & 1 Nano SIM',
'Dual-band, Wi-Fi 802.11 a/b/g/n/ac/ax, Wi-Fi hotspot','BDS, A-GPS, GLONASS','LE, A2DP, v5.0','Lightning','Lightning','NFC, OTG',N'Nguyên khối',N'Mở khoá khuôn mặt Face ID',
N'Ðèn pin,Sạc pin không dây,Sạc pin nhanh,Apple Pay,Dolby Audio™,Chuẩn Kháng nước, Chuẩn kháng bụi',N'Có, microphone chuyên dụng chống ồn','H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC)',N'Không','Lossless, Midi, MP3, WAV, WMA, WMA9, AAC, AAC+, AAC++, eAAC+',100,'11/2018',1)




insert Phones values 
-- product 5
(1,2,'iPhone 7 32GB',400,
N'iPhone 7 32GB vẫn mang trên mình thiết kế quen thuộc của từ thời iPhone 6 nhưng có nhiều thay đổi lớn về phần cứng, dàn loa stereo và cấu hình cực mạnh.'
,'https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-gold-400x460.png',
--img more
'https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-1-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-2-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-3-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-4-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-6-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-11-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-12-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-8-org.jpg',
--end img more
'https://cdn.tgdd.vn/Products/Images/42/74110/Kit/iphone-7-mo-ta-chuc-nang.jpg',

'4.7"','HD (750 x 1334 Pixels)','LED-backlit IPS LCD',N'Kính cường lực oleophobic (ion cường lực)',N'3174 mAh',N'Pin chuẩn Li-Ion',N'Tiết kiệm pin, Sạc pin nhanh, Sạc pin không dây',
'iOS 12',N'Dài 157.5 mm - Ngang 77.4 mm - Dày 7.7 mm','208 g',N'Khung thép không gỉ & Mặt lưng kính cường lực',N'4 đèn LED (2 tông màu)',
N'Quay phim 4K 2160p@30fps',N'12 MP',
N'Tự động lấy nét (AF), Chạm lấy nét, Nhận diện khuôn mặt, HDR, Toàn cảnh (Panorama), Chống rung quang học (OIS)',
N'Toàn cảnh (Panorama), Nhận diện khuôn mặt, Quay video Full HD, Tự động lấy nét (AF), HDR, Retina Flash',
'7 MP',N'Có',N'Apple A10 Fusion 4 nhân',N'2.3 GHz',
N'Chip đồ họa 6 nhân','2 GB','32 GB',N'Khoảng 28 GB',N'Không',N'Hỗ trợ 4G',N'1 eSIM & 1 Nano SIM',
'Dual-band, Wi-Fi 802.11 a/b/g/n/ac/ax, Wi-Fi hotspot','BDS, A-GPS, GLONASS','LE, A2DP, v5.0','Lightning','Lightning','NFC, OTG',N'Nguyên khối',N'Mở khoá khuôn mặt Face ID',
N'Ðèn pin,Sạc pin không dây,Sạc pin nhanh,Apple Pay,Dolby Audio™,Chuẩn Kháng nước, Chuẩn kháng bụi',N'Có, microphone chuyên dụng chống ồn','H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC)',N'Không','Lossless, Midi, MP3, WAV, WMA, WMA9, AAC, AAC+, AAC++, eAAC+',100,'11/2018',1)

insert Phones values 
-- product 6
(1,2,'iPhone 7 32GB',400,
N'iPhone 7 32GB vẫn mang trên mình thiết kế quen thuộc của từ thời iPhone 6 nhưng có nhiều thay đổi lớn về phần cứng, dàn loa stereo và cấu hình cực mạnh.'
,'https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-gold-400x460.png',
--img more
'https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-1-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-2-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-3-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-4-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-6-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-11-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-12-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-8-org.jpg',
--end img more
'https://cdn.tgdd.vn/Products/Images/42/74110/Kit/iphone-7-mo-ta-chuc-nang.jpg',

'4.7"','HD (750 x 1334 Pixels)','LED-backlit IPS LCD',N'Kính cường lực oleophobic (ion cường lực)',N'3174 mAh',N'Pin chuẩn Li-Ion',N'Tiết kiệm pin, Sạc pin nhanh, Sạc pin không dây',
'iOS 12',N'Dài 157.5 mm - Ngang 77.4 mm - Dày 7.7 mm','208 g',N'Khung thép không gỉ & Mặt lưng kính cường lực',N'4 đèn LED (2 tông màu)',
N'Quay phim 4K 2160p@30fps',N'12 MP',
N'Tự động lấy nét (AF), Chạm lấy nét, Nhận diện khuôn mặt, HDR, Toàn cảnh (Panorama), Chống rung quang học (OIS)',
N'Toàn cảnh (Panorama), Nhận diện khuôn mặt, Quay video Full HD, Tự động lấy nét (AF), HDR, Retina Flash',
'7 MP',N'Có',N'Apple A10 Fusion 4 nhân',N'2.3 GHz',
N'Chip đồ họa 6 nhân','2 GB','32 GB',N'Khoảng 28 GB',N'Không',N'Hỗ trợ 4G',N'1 eSIM & 1 Nano SIM',
'Dual-band, Wi-Fi 802.11 a/b/g/n/ac/ax, Wi-Fi hotspot','BDS, A-GPS, GLONASS','LE, A2DP, v5.0','Lightning','Lightning','NFC, OTG',N'Nguyên khối',N'Mở khoá khuôn mặt Face ID',
N'Ðèn pin,Sạc pin không dây,Sạc pin nhanh,Apple Pay,Dolby Audio™,Chuẩn Kháng nước, Chuẩn kháng bụi',N'Có, microphone chuyên dụng chống ồn','H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC)',N'Không','Lossless, Midi, MP3, WAV, WMA, WMA9, AAC, AAC+, AAC++, eAAC+',100,'11/2018',1)

insert Phones values 
-- product 7
(1,2,'iPhone 7 Plus 32GB',550,
N'Mặc dù giữ nguyên vẻ bề ngoài so với dòng điện thoại iPhone đời trước, bù lại iPhone 7 Plus 32GB lại được trang bị nhiều nâng cấp đáng giá như camera kép đầu tiên cũng như cấu hình mạnh mẽ.'
,'https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-gold-400x460.png',
--img more
'https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-1-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-2-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-3-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-4-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-6-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-11-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-12-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-8-org.jpg',
--end img more
'https://cdn.tgdd.vn/Products/Images/42/78124/Kit/iphone-7-plus-motachucnang.jpg',

'5.5"','HD (750 x 1334 Pixels)','LED-backlit IPS LCD',N'Kính cường lực oleophobic (ion cường lực)',N'3174 mAh',N'Pin chuẩn Li-Ion',N'Tiết kiệm pin, Sạc pin nhanh, Sạc pin không dây',
'iOS 12',N'Dài 157.5 mm - Ngang 77.4 mm - Dày 7.7 mm','208 g',N'Khung thép không gỉ & Mặt lưng kính cường lực',N'4 đèn LED (2 tông màu)',
N'Quay phim 4K 2160p@30fps',N'Chính 12 MP & Phụ 12 MP',
N'Tự động lấy nét (AF), Chạm lấy nét, Nhận diện khuôn mặt, HDR, Toàn cảnh (Panorama), Chống rung quang học (OIS)',
N'Retina Flash, Nhận diện khuôn mặt, Quay video Full HD, Tự động lấy nét (AF), HDR',
'7 MP',N'Hỗ trợ VideoCall thông qua ứng dụng',N'Apple A10 Fusion 4 nhân',N'2.3 GHz',
N'Chip đồ họa 6 nhân','3 GB','32 GB',N'Khoảng 28 GB',N'Không',N'Hỗ trợ 4G',N'1 eSIM & 1 Nano SIM',
'Dual-band, Wi-Fi 802.11 a/b/g/n/ac/ax, Wi-Fi hotspot','BDS, A-GPS, GLONASS','LE, A2DP, v5.0','Lightning','Lightning','NFC, OTG',N'Nguyên khối',N'Mở khoá khuôn mặt Face ID',
N'Ðèn pin,Sạc pin không dây,Sạc pin nhanh,Apple Pay,Dolby Audio™,Chuẩn Kháng nước, Chuẩn kháng bụi',N'Có, microphone chuyên dụng chống ồn','H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC)',N'Không','Lossless, Midi, MP3, WAV, WMA, WMA9, AAC, AAC+, AAC++, eAAC+',100,'11/2018',1)

insert Phones values 
-- product 8
(1,2,'iPhone 8 Plus 64GB',750,
N'Thừa hưởng những thiết kế đã đạt đến độ chuẩn mực, thế hệ iPhone 8 Plus thay đổi phong cách bóng bẩy hơn và bổ sung hàng loạt tính năng cao cấp cho trải nghiệm sử dụng vô cùng tuyệt vời.'
,'https://cdn.tgdd.vn/Products/Images/42/114110/iphone-8-plus-1-400x460.png',
--img more
'https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-1-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-2-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-3-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-4-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-6-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-11-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-12-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-8-org.jpg',
--end img more
'https://cdn.tgdd.vn/Products/Images/42/114110/Kit/iphone-8-plus-mo-ta-chuc-nang.jpg',

'5.5"','Full HD (1080 x 1920 Pixels)','LED-backlit IPS LCD',N'Kính cường lực oleophobic (ion cường lực)',N'2691 mAh',N'Pin chuẩn Li-Ion',N'Tiết kiệm pin, Sạc pin nhanh, Sạc pin không dây',
'iOS 12',N'Dài 158.4 mm - Ngang 78.1 mm - Dày 7.5 mm','202 g',N'Khung thép không gỉ & Mặt lưng kính cường lực',N'4 đèn LED (2 tông màu)',
N'Quay phim 4K 2160p@30fps',N'Chính 12 MP & Phụ 12 MP',
N'Lấy nét dự đoán, Xoá phông, Tự động lấy nét (AF), Chạm lấy nét, Nhận diện khuôn mặt, HDR, Toàn cảnh (Panorama), Chống rung quang học (OIS)',
N'Quay video Full HD, HDR, Nhận diện khuôn mặt',
'7 MP',N'Hỗ trợ VideoCall thông qua ứng dụng',N'Apple A10 Fusion 4 nhân',N'2.3 GHz',
N'Chip đồ họa 6 nhân','3 GB','64 GB',N'Khoảng 55 GB',N'Không',N'Hỗ trợ 4G',N'1 eSIM & 1 Nano SIM',
'Dual-band, Wi-Fi 802.11 a/b/g/n/ac/ax, Wi-Fi hotspot','BDS, A-GPS, GLONASS','LE, A2DP, v5.0','Lightning','Lightning','NFC, OTG',N'Nguyên khối',N'Mở khoá khuôn mặt Face ID',
N'Ðèn pin,Sạc pin không dây,Sạc pin nhanh,Apple Pay,Dolby Audio™,Chuẩn Kháng nước, Chuẩn kháng bụi',N'Có, microphone chuyên dụng chống ồn','H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC)',N'Không','Lossless, Midi, MP3, WAV, WMA, WMA9, AAC, AAC+, AAC++, eAAC+',100,'09/2017',1)


insert Phones values 
-- product 9
(1,2,'iPhone 11 128GB',1000,
N'Được xem là phiên bản iPhone "giá rẻ" trong bộ 3 iPhone mới ra mắt nhưng iPhone 11 128GB vẫn sở hữu cho mình rất nhiều ưu điểm mà hiếm có một chiếc smartphone nào khác sở hữu.'
,'https://cdn.tgdd.vn/Products/Images/42/210644/iphone-11-128gb-green-400x460.png',
--img more
'https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-1-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-2-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-3-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-4-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-6-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-11-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-12-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-8-org.jpg',
--end img more
'https://cdn.tgdd.vn/Products/Images/42/210644/Kit/iphone-11-128gb-note.jpg',

'6.1"','828 x 1792 Pixels','IPS LCD',N'Kính cường lực oleophobic (ion cường lực)',N'2691 mAh',N'Pin chuẩn Li-Ion',N'Tiết kiệm pin, Sạc pin nhanh, Sạc pin không dây',
'iOS 13',N'Dài 150.9 mm - Ngang 75.7 mm - Dày 8.3 mm','194 g',N'Khung thép không gỉ & Mặt lưng kính cường lực',N'4 đèn LED (2 tông màu)',
N'Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps, Quay phim FullHD 1080p@60fps, Quay phim FullHD 1080p@120fps, Quay phim FullHD 1080p@240fps, Quay phim 4K 2160p@24fps, Quay phim 4K 2160p@30fps, Quay phim 4K 2160p@60fps',N'Chính 12 MP & Phụ 12 MP',
N'Ban đêm (Night Mode), Trôi nhanh thời gian (Time Lapse), Quay chậm (Slow Motion), Xoá phông, Zoom quang học, Góc rộng (Wide), Góc siêu rộng (Ultrawide), Tự động lấy nét (AF), Chạm lấy nét, Nhận diện khuôn mặt, HDR, Toàn cảnh (Panorama)',
N'Xoá phông, Quay phim 4K, Nhãn dán (AR Stickers), Retina Flash, Quay video HD, Nhận diện khuôn mặt, Quay video Full HD, Tự động lấy nét (AF), HDR, Quay chậm (Slow Motion)',
'12 MP',N'Hỗ trợ VideoCall thông qua ứng dụng',N'Apple A10 Fusion 4 nhân',N'2.3 GHz',
N'Apple GPU 4 nhân','4 GB','128 GB',N'Khoảng 123 GB',N'Không',N'Hỗ trợ 4G',N'1 eSIM & 1 Nano SIM',
'Dual-band, Wi-Fi 802.11 a/b/g/n/ac/ax, Wi-Fi hotspot','BDS, A-GPS, GLONASS','LE, A2DP, v5.0','Lightning','Lightning','NFC, OTG',N'Nguyên khối',N'Mở khoá khuôn mặt Face ID',
N'Ðèn pin,Sạc pin không dây,Sạc pin nhanh,Apple Pay,Dolby Audio™,Chuẩn Kháng nước, Chuẩn kháng bụi',N'Có, microphone chuyên dụng chống ồn','H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC)',N'Không','Lossless, Midi, MP3, WAV, WMA, WMA9, AAC, AAC+, AAC++, eAAC+',100,'09/2017',1)


insert Phones values 
-- product 10
(1,2,'iPhone 5 Plus 64GB',750,
N'Thừa hưởng những thiết kế đã đạt đến độ chuẩn mực, thế hệ iPhone 8 Plus thay đổi phong cách bóng bẩy hơn và bổ sung hàng loạt tính năng cao cấp cho trải nghiệm sử dụng vô cùng tuyệt vời.'
,'https://cdn.tgdd.vn/Products/Images/42/114110/iphone-8-plus-1-400x460.png',
--img more
'https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-1-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-2-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-3-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-4-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-6-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-11-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-12-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-8-org.jpg',
--end img more
'https://cdn.tgdd.vn/Products/Images/42/114110/Kit/iphone-8-plus-mo-ta-chuc-nang.jpg',

'5.5"','Full HD (1080 x 1920 Pixels)','LED-backlit IPS LCD',N'Kính cường lực oleophobic (ion cường lực)',N'2691 mAh',N'Pin chuẩn Li-Ion',N'Tiết kiệm pin, Sạc pin nhanh, Sạc pin không dây',
'iOS 12',N'Dài 158.4 mm - Ngang 78.1 mm - Dày 7.5 mm','202 g',N'Khung thép không gỉ & Mặt lưng kính cường lực',N'4 đèn LED (2 tông màu)',
N'Quay phim 4K 2160p@30fps',N'Chính 12 MP & Phụ 12 MP',
N'Lấy nét dự đoán, Xoá phông, Tự động lấy nét (AF), Chạm lấy nét, Nhận diện khuôn mặt, HDR, Toàn cảnh (Panorama), Chống rung quang học (OIS)',
N'Quay video Full HD, HDR, Nhận diện khuôn mặt',
'7 MP',N'Hỗ trợ VideoCall thông qua ứng dụng',N'Apple A10 Fusion 4 nhân',N'2.3 GHz',
N'Chip đồ họa 6 nhân','3 GB','64 GB',N'Khoảng 55 GB',N'Không',N'Hỗ trợ 4G',N'1 eSIM & 1 Nano SIM',
'Dual-band, Wi-Fi 802.11 a/b/g/n/ac/ax, Wi-Fi hotspot','BDS, A-GPS, GLONASS','LE, A2DP, v5.0','Lightning','Lightning','NFC, OTG',N'Nguyên khối',N'Mở khoá khuôn mặt Face ID',
N'Ðèn pin,Sạc pin không dây,Sạc pin nhanh,Apple Pay,Dolby Audio™,Chuẩn Kháng nước, Chuẩn kháng bụi',N'Có, microphone chuyên dụng chống ồn','H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC)',N'Không','Lossless, Midi, MP3, WAV, WMA, WMA9, AAC, AAC+, AAC++, eAAC+',100,'09/2017',1)


insert Phones values 
-- product 11
(1,2,'iPhone 6 64GB',900,
N'Sau bao nhiêu chờ đợi cũng như đồn đoán thì cuối cùng Apple đã chính thức giới thiệu bộ 3 siêu phẩm iPhone 11 mạnh mẽ nhất của mình vào tháng 9/2019. Có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như chiếc iPhone Xr năm ngoái, đó chính là phiên bản iPhone 11 64GB.'
,'https://cdn.tgdd.vn/Products/Images/42/153856/iphone-11-red-2-400x460-400x460.png',
--img more
'https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-1-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-2-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-3-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-4-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-6-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-11-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-12-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-8-org.jpg',
--end img more
'https://cdn.tgdd.vn/Products/Images/42/153856/Kit/iphone-11-note.jpg',

'6.1"','828 x 1792 Pixels','IPS LCD',N'Kính cường lực oleophobic (ion cường lực)',N'3110 mAh',N'Pin chuẩn Li-Ion',N'Tiết kiệm pin, Sạc pin nhanh, Sạc pin không dây',
'iOS 13',N'Dài 150.9 mm - Ngang 75.7 mm - Dày 8.3 mm','194 g',N'Khung nhôm & Mặt lưng kính cường lực',N'3 đèn LED 2 tông màu',
N'Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps, Quay phim FullHD 1080p@60fps, Quay phim FullHD 1080p@120fps, Quay phim FullHD 1080p@240fps, Quay phim 4K 2160p@24fps, Quay phim 4K 2160p@30fps, Quay phim 4K 2160p@60fps',N'Chính 12 MP & Phụ 12 MP',
N'Ban đêm (Night Mode), Trôi nhanh thời gian (Time Lapse), Quay chậm (Slow Motion), Xoá phông, Zoom quang học, Góc rộng (Wide), Góc siêu rộng (Ultrawide), Tự động lấy nét (AF), Chạm lấy nét, Nhận diện khuôn mặt, HDR, Toàn cảnh (Panorama)',
N'Xoá phông, Quay phim 4K, Nhãn dán (AR Stickers), Retina Flash, Quay video HD, Nhận diện khuôn mặt, Quay video Full HD, Tự động lấy nét (AF), HDR, Quay chậm (Slow Motion)',
'12 MP',N'Có',N'Apple A13 Bionic 6 nhân',N'2 nhân 2.65 GHz & 4 nhân 1.8 GHz',
N'Apple GPU 4 nhân','4 GB','64 GB',N'Khoảng 59 GB',N'Không',N'Hỗ trợ 4G',N'1 eSIM & 1 Nano SIM',
'Dual-band, Wi-Fi 802.11 a/b/g/n/ac/ax, Wi-Fi hotspot','BDS, A-GPS, GLONASS','LE, A2DP, v5.0','Lightning','Lightning','NFC, OTG',N'Nguyên khối',N'Mở khoá khuôn mặt Face ID',
N'Ðèn pin,Sạc pin không dây,Sạc pin nhanh,Apple Pay,Dolby Audio™,Chuẩn Kháng nước, Chuẩn kháng bụi',N'Có, microphone chuyên dụng chống ồn','H.264(MPEG4-AVC)',N'Không','Lossless, MP3, AAC, FLAC',100,'11/2019',1)

insert Phones values 
-- product 12
(1,2,'iPhone 6 Pro 512GB',1800,
N'Để tìm kiếm một chiếc smartphone có hiệu năng mạnh mẽ và có thể sử dụng mượt mà trong 2-3 năm tới thì không có chiếc máy nào xứng đang hơn chiếc iPhone 11 Pro Max 512GB mới ra mắt trong năm 2019 của Apple.'
,'https://cdn.tgdd.vn/Products/Images/42/210654/iphone-11-pro-max-512gb-gold-400x460.png',
--img more
'https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-1-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-2-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-3-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-4-1-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-6-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-11-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-12-org.jpg,
https://cdn.tgdd.vn/Products/Images/42/188705/iphone-11-pro-bac-8-org.jpg',
--end img more
'https://cdn.tgdd.vn/Products/Images/42/210654/Kit/iphone-11-pro-max-512gb-note.jpg',

'6.5"','1242 x 2688 Pixels','OLED',N'Kính cường lực oleophobic (ion cường lực)',N'3969 mAh',N'Pin chuẩn Li-Ion',N'Tiết kiệm pin, Sạc pin nhanh, Sạc pin không dây',
'iOS 13',N'Dài 158 mm - Ngang 77.8 mm - Dày 8.1 mm','226 g',N'Khung nhôm & Mặt lưng kính cường lực',N'4 đèn LED (2 tông màu)',
N'Quay phim HD 720p@30fps, Quay phim FullHD 1080p@30fps, Quay phim FullHD 1080p@60fps, Quay phim FullHD 1080p@120fps, Quay phim FullHD 1080p@240fps, Quay phim 4K 2160p@24fps, Quay phim 4K 2160p@30fps, Quay phim 4K 2160p@60fps',N'3 camera 12 MP',
N'Góc rộng (Wide), Xoá phông, Quay chậm (Slow Motion), Trôi nhanh thời gian (Time Lapse), Ban đêm (Night Mode), Góc siêu rộng (Ultrawide), Tự động lấy nét (AF), Chạm lấy nét, Nhận diện khuôn mặt, HDR, Toàn cảnh (Panorama), Chống rung quang học (OIS)',
N'Xoá phông, Quay phim 4K, Nhãn dán (AR Stickers), Retina Flash, Quay video HD, Nhận diện khuôn mặt, Quay video Full HD, Tự động lấy nét (AF), HDR, Quay chậm (Slow Motion)',
'12 MP',N'Có',N'Apple A13 Bionic 6 nhân',N'2 nhân 2.65 GHz & 4 nhân 1.8 GHz',
N'Apple GPU 4 nhân','4 GB','512 GB',N'Khoảng 507 GB',N'Không',N'Hỗ trợ 4G',N'1 eSIM & 1 Nano SIM',
'Dual-band, Wi-Fi 802.11 a/b/g/n/ac/ax, Wi-Fi hotspot','BDS, A-GPS, GLONASS','LE, A2DP, v5.0','Lightning','Lightning','NFC, OTG',N'Nguyên khối',N'Mở khoá khuôn mặt Face ID',
N'Ðèn pin,Sạc pin không dây,Sạc pin nhanh,Apple Pay,Dolby Audio™,Chuẩn Kháng nước, Chuẩn kháng bụi',N'Có, microphone chuyên dụng chống ồn','H.264(MPEG4-AVC)',N'Không','Lossless, MP3, AAC, FLAC',100,'11/2019',1)


select * from Phones

select Phones.* from Phones
inner join brands on Brands.id = Phones.id_brand
where brand_name = 'Iphone'
select * from Brands