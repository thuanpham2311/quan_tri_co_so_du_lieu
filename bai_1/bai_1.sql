CREATE DATABASE PhamTanThuan

SELECT Name from sys.Databases

GO

USE PhamTanThuan

CREATE TABLE NhanVien (
    MSNV int NOT NULL PRIMARY KEY,
    HoTen varchar(255) NOT NULL,
    NgaySinh varchar(255),
    MSPB int
);

INSERT INTO NhanVien VALUES (1, 'ahihi', 11112001, 1);
INSERT INTO NhanVien VALUES (2, 'ah9hi', 12112003, 1);
INSERT INTO NhanVien VALUES (3, 'ah8hi', 13112001, 1);
INSERT INTO NhanVien VALUES (4, 'ah2hi', 14112001, 1);
INSERT INTO NhanVien VALUES (5, 'ah3hi', 15112001, 1);
INSERT INTO NhanVien VALUES (6, 'ahjhi', 16112001, 1);
INSERT INTO NhanVien VALUES (7, 'ahkhi', 17112001, 1);
INSERT INTO NhanVien VALUES (8, 'ahlhi', 18112001, 1);
INSERT INTO NhanVien VALUES (9, 'a1ihi', 19112001, 1);
INSERT INTO NhanVien VALUES (10, 'arihi', 21112001, 1);

select * from NhanVien;
