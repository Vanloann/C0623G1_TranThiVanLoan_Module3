CREATE DATABASE exercise1;
USE exercise1;
CREATE TABLE phieu_xuat (
    so_px INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ngay_xuat DATE NOT NULL
);

CREATE TABLE vat_tu (
    ma_vt INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ten_vt VARCHAR(50) NOT NULL
);

CREATE TABLE phieu_xuat_detail (
    dg_xuat FLOAT NOT NULL,
    sl_xuat INT NOT NULL,
    so_px INT NOT NULL,
    ma_vt INT NOT NULL,
    PRIMARY KEY (so_px , ma_vt),
    FOREIGN KEY (so_px)
        REFERENCES phieu_xuat (so_px),
    FOREIGN KEY (ma_vt)
        REFERENCES vat_tu (ma_vt)
);

CREATE TABLE phieu_nhap (
    so_pn INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ngay_nhap DATE NOT NULL
);

CREATE TABLE phieu_nhap_detail (
    dg_nhap FLOAT NOT NULL,
    sl_nhap INT NOT NULL,
    so_pn INT NOT NULL,
    ma_vt INT NOT NULL,
    PRIMARY KEY (so_pn , ma_vt),
    FOREIGN KEY (so_pn)
        REFERENCES phieu_nhap (so_pn),
    FOREIGN KEY (ma_vt)
        REFERENCES vat_tu (ma_vt)
);

CREATE TABLE don_dh (
    so_dh INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ngay_dh DATE NOT NULL,
    ma_ncc INT NOT NULL,
    FOREIGN KEY (ma_ncc)
        REFERENCES nha_cung_cap (ma_ncc)
);

CREATE TABLE don_dh_detail (
    so_dh INT NOT NULL,
    ma_vt INT NOT NULL,
    PRIMARY KEY (so_dh , ma_vt),
    FOREIGN KEY (so_dh)
        REFERENCES don_dh (so_dh),
    FOREIGN KEY (ma_vt)
        REFERENCES vat_tu (ma_vt)
);

CREATE TABLE nha_cung_cap (
    ma_ncc INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ten_ncc VARCHAR(50) NOT NULL,
    dia_chi VARCHAR(50)
);

CREATE TABLE sdt (
    ma_sdt INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ma_ncc INT NOT NULL,
    sdt VARCHAR(10) NOT NULL,
    FOREIGN KEY (ma_ncc)
        REFERENCES nha_cung_cap (ma_ncc)
);
