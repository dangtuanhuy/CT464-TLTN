use Watch
-- Category
Insert into Category([CategoryName],[CategoryDetails]) values(N'Traditionnal',N'Đồng Hồ Truyền Thống');
Insert into Category([CategoryName],[CategoryDetails]) values(N'Smart',N'Smart');
Insert into Category([CategoryName],[CategoryDetails]) values(N'Electric',N'Electric');
-- Region
Insert into Region([RegionName],[RegionDescription]) values('North','North Vietnam');
Insert into Region([RegionName],[RegionDescription]) values('South','South Vietnam');
Insert into Region([RegionName],[RegionDescription]) values('East','East Vietnam');
Insert into Region([RegionName],[RegionDescription]) values('Western','Western Vietnam');
Insert into Region([RegionName],[RegionDescription]) values('Northwest','Northwest Vietnam');
Insert into Region([RegionName],[RegionDescription]) values('Southwest','Southwest Vietnam');
Insert into Region([RegionName],[RegionDescription]) values('South East','South East Vietnam');
Insert into Region([RegionName],[RegionDescription]) values('North West North','North West Vietnam');
-- Supplier
Insert into Supplier([CompanyName],[ContactName],[ContactTitle],[Address],[City],[Country],[Phone],[Fax],[HomePage]) 
Values(N'JiRo',N'Võ Hồng Thủy',N'Chuyển Hàng Cho Công Ty',N'TT-Bến Tre',N'Bến Tre',N'Việt Name',N'0925028454',N'04.39276181.',N'hongthuy.com.vn');
Insert into Supplier([CompanyName],[ContactName],[ContactTitle],[Address],[City],[Country],[Phone],[Fax],[HomePage]) 
Values(N'Jina',N'Võ Hồng Quân',N'Chuyển Hàng Cho Công Ty',N'TT-Bến Tre',N'Bến Tre',N'Việt Name',N'0925028454',N'04.39276181.',N'hongthuy.com.vn');
Insert into Supplier([CompanyName],[ContactName],[ContactTitle],[Address],[City],[Country],[Phone],[Fax],[HomePage]) 
Values(N'Mama',N'Thái Hồng Thuận',N'Chuyển Hàng Cho Công Ty',N'TT-Bến Tre',N'Bến Tre',N'Việt Name',N'0925028454',N'04.39276181.',N'hongthuy.com.vn');
Insert into Supplier([CompanyName],[ContactName],[ContactTitle],[Address],[City],[Country],[Phone],[Fax],[HomePage]) 
Values(N'NaNa',N'Võ Hồng Phát',N'Chuyển Hàng Cho Công Ty',N'TT-Bến Tre',N'Bến Tre',N'Việt Name',N'0925028454',N'04.39276181.',N'hongthuy.com.vn');
Insert into Supplier([CompanyName],[ContactName],[ContactTitle],[Address],[City],[Country],[Phone],[Fax],[HomePage]) 
Values(N'FS',N'Đặng Tuấn Huy',N'Giao Hàng theo Yêu Cầu',N'TT-Cần Thơ',N'Bến Tre',N'Việt Name',N'0925028454',N'04.39276181.',N'huygama.com.vn');
Insert into Supplier([CompanyName],[ContactName],[ContactTitle],[Address],[City],[Country],[Phone],[Fax],[HomePage]) 
Values(N'Shichi',N'Đặng Tuấn Dũng',N'Chuyển Hàng Cho Công Ty',N'TT-Bến Tre',N'Bến Tre',N'Việt Name',N'0925028454',N'04.39276181.',N'hongthuy.com.vn');
Insert into Supplier([CompanyName],[ContactName],[ContactTitle],[Address],[City],[Country],[Phone],[Fax],[HomePage]) 
Values(N'Shichi',N'Võ Hồng Thông',N'Chuyển Hàng Cho Công Ty',N'TT-Bến Tre',N'Bến Tre',N'Việt Name',N'0925028454',N'04.39276181.',N'hongthuy.com.vn');
Insert into Supplier([CompanyName],[ContactName],[ContactTitle],[Address],[City],[Country],[Phone],[Fax],[HomePage]) 
Values(N'Shichi',N'Võ Hồng Ý',N'Chuyển Hàng Cho Công Ty',N'TT-Bến Tre',N'Bến Tre',N'Việt Name',N'0925028454',N'04.39276181.',N'hongthuy.com.vn');
Insert into Supplier([CompanyName],[ContactName],[ContactTitle],[Address],[City],[Country],[Phone],[Fax],[HomePage]) 
Values(N'Shichibi',N'Võ Hồng Tâm',N'Chuyển Hàng Cho Công Ty',N'TT-Bến Tre',N'Bến Tre',N'Việt Name',N'0925028454',N'04.39276181.',N'hongthuy.com.vn');
Insert into Supplier([CompanyName],[ContactName],[ContactTitle],[Address],[City],[Country],[Phone],[Fax],[HomePage]) 
Values(N'Uchu',N'Trần Trung Phong',N'Chuyển Hàng Cho Công Ty',N'TT-Châu Đốc',N'Bến Tre',N'Việt Name',N'0925028454',N'04.39276181.',N'hongthuy.com.vn');
-- Size
Insert into Size([SizeName]) values (N'Small');
Insert into Size([SizeName]) values (N'Medium');
Insert into Size([SizeName]) values (N'Large');
--Color
Insert into Color([ColorName]) Values (N'Yellow');
Insert into Color([ColorName]) Values (N'Black');
Insert into Color([ColorName]) Values (N'Grey');
Insert into Color([ColorName]) Values (N'Dark');
Insert into Color([ColorName]) Values (N'Black');
Insert into Color([ColorName]) Values (N'Pick');
Insert into Color([ColorName]) Values (N'White');
Insert into Color([ColorName]) Values (N'Silver');
-- Shipper
Insert into Shipper([ShipperCompany],[ShipperPhone],[ShipperAddress]) values (N'TNHH','092576809',N'Tầng 18, Tháp Quốc tế Hòa Bình, 106 Hoàng Quốc Việt, Phường Nghĩa Đô, Quận Cầu Giấy, Tp.Hà Nội');
Insert into Shipper([ShipperCompany],[ShipperPhone],[ShipperAddress]) values (N'Khoa CNTT','092576809',N'Khu II, đường 3/2, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ.');
Insert into Shipper([ShipperCompany],[ShipperPhone],[ShipperAddress]) values (N'Khoa KHTN','092576809',N'Khu II, đường 3/2, P. Xuân Khánh, Q. Ninh Kiều, TP. Cần Thơ.');
Insert into Shipper([ShipperCompany],[ShipperPhone],[ShipperAddress]) values (N'Esp','092576809',N'Tầng 18, Tháp Quốc tế Hòa Bình, 106 Hoàng Quốc Việt, Phường Nghĩa Đô, Quận Cầu Giấy, Tp.Hà Nội');
-- Customer
