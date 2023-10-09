package model;

public class ThucPhamDto {
    private int maHangThucPham;
    private String tenHangThucPham;
    private String ngaySanXuat;
    private String ngayHetHan;
    private String tenLoaiThucPham;
    private String moTaThem;

    public ThucPhamDto(int maHangThucPham, String tenHangThucPham, String ngaySanXuat, String ngayHetHan, String tenLoaiThucPham, String moTaThem) {
        this.maHangThucPham = maHangThucPham;
        this.tenHangThucPham = tenHangThucPham;
        this.ngaySanXuat = ngaySanXuat;
        this.ngayHetHan = ngayHetHan;
        this.tenLoaiThucPham = tenLoaiThucPham;
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

    public String getTenLoaiThucPham() {
        return tenLoaiThucPham;
    }

    public void setTenLoaiThucPham(String tenLoaiThucPham) {
        this.tenLoaiThucPham = tenLoaiThucPham;
    }

    public String getMoTaThem() {
        return moTaThem;
    }

    public void setMoTaThem(String moTaThem) {
        this.moTaThem = moTaThem;
    }
}
