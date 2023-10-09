package model;

public class LoaiThucPham {
    private int maLoaiThucPham;
    private String tenLoaiThucPham;

    public LoaiThucPham(int maLoaiThucPham, String tenLoaiThucPham) {
        this.maLoaiThucPham = maLoaiThucPham;
        this.tenLoaiThucPham = tenLoaiThucPham;
    }

    public int getMaLoaiThucPham() {
        return maLoaiThucPham;
    }

    public void setMaLoaiThucPham(int maLoaiThucPham) {
        this.maLoaiThucPham = maLoaiThucPham;
    }

    public String getTenLoaiThucPham() {
        return tenLoaiThucPham;
    }

    public void setTenLoaiThucPham(String tenLoaiThucPham) {
        this.tenLoaiThucPham = tenLoaiThucPham;
    }

}
