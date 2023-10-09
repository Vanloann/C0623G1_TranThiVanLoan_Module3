package repository;

import model.LoaiThucPham;
import model.ThucPham;
import model.ThucPhamDto;

import java.util.List;

public interface IRepository {
    List<ThucPhamDto> hienThiDanhSach();
    void themThucPham(ThucPham thucPham);
    List<LoaiThucPham> danhSachLoaiThucPham();
    void xoa(int maHangThucPham);
    List<ThucPhamDto> sanPhamHetHan();
}
