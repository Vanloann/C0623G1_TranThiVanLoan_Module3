package model;

public class ThucPham {
    private int maHangThucPham;
    private String tenHangThucPham;
    private String ngaySanXuat;
    private String ngayHetHan;
    private int maLoaiThucPham;
    private String moTaThem;

    public ThucPham(int maHangThucPham, String tenHangThucPham, String ngaySanXuat, String ngayHetHan,
                    int maLoaiThucPham, String moTaThem) {
        this.maHangThucPham = maHangThucPham;
        this.tenHangThucPham = tenHangThucPham;
        this.ngaySanXuat = ngaySanXuat;
        this.ngayHetHan = ngayHetHan;
        this.maLoaiThucPham = maLoaiThucPham;
        this.moTaThem = moTaThem;
    }

    public ThucPham(String tenHangThucPham, String ngaySanXuat, String ngayHetHan, int maLoaiThucPham, String moTaThem) {
        this.tenHangThucPham = tenHangThucPham;
        this.ngaySanXuat = ngaySanXuat;
        this.ngayHetHan = ngayHetHan;
        this.maLoaiThucPham = maLoaiThucPham;
        this.moTaThem = moTaThem;
    }

    public int getMaHangThucPham() {
        return maHangThucPham;
    }

    public void setMaHangThucPham(int maHangThucPham) {
        this.maHangThucPham = maHangThucPham;
    }

    public String getTenHangThucPham() {
        return tenHangThucPham;
    }

    public void setTenHangThucPham(String tenHangThucPham) {
        this.tenHangThucPham = tenHangThucPham;
    }

    public String getNgaySanXuat() {
        return ngaySanXuat;
    }

    public void setNgaySanXuat(String ngaySanXuat) {
        this.ngaySanXuat = ngaySanXuat;
    }

    public String getNgayHetHan() {
        return ngayHetHan;
    }

    public void setNgayHetHan(String ngayHetHan) {
        this.ngayHetHan = ngayHetHan;
    }

    public int getMaLoaiThucPham() {
        return maLoaiThucPham;
    }

    public void setMaLoaiThucPham(int maLoaiThucPham) {
        this.maLoaiThucPham = maLoaiThucPham;
    }

    public String getMoTaThem() {
        return moTaThem;
    }

    public void setMoTaThem(String moTaThem) {
        this.moTaThem = moTaThem;
    }
}
