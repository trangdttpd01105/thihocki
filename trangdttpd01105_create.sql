-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:20:28.639




-- tables
-- Table TNhanvien
CREATE TABLE TNhanvien (
    Ma_NV varchar(20)    NOT NULL ,
    Ten_NV varchar(50)    NOT NULL ,
    NgaySinh date    NOT NULL ,
    Gioitinh int    NOT NULL ,
    Email varchar    NOT NULL ,
    Mucluong numeric    NOT NULL ,
    MaPhong varchar    NOT NULL ,
    CONSTRAINT TNhanvien_pk PRIMARY KEY (Ma_NV)
);

-- Table TPhongban
CREATE TABLE TPhongban (
    Ma_phong int    NOT NULL ,
    Ten_phong int    NOT NULL ,
    TNhanvien_Ma_NV varchar(20)    NOT NULL ,
    CONSTRAINT TPhongban_pk PRIMARY KEY (Ma_phong)
);





-- foreign keys
-- Reference:  TPhongban_TNhanvien (table: TPhongban)


ALTER TABLE TPhongban ADD CONSTRAINT TPhongban_TNhanvien FOREIGN KEY TPhongban_TNhanvien (TNhanvien_Ma_NV)
    REFERENCES TNhanvien (Ma_NV);



-- End of file.

