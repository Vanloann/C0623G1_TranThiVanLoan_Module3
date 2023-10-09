package service;

import model.LoaiThucPham;
import model.ThucPham;
import model.ThucPhamDto;

import java.util.List;

public interface IService {
    List<ThucPhamDto> hienThiDanhSach();
    void themThucPham(ThucPham thucPham);
    List<LoaiThucPham> danhSachLoaiThucPham();
    void xoa(int maHangThucPham);
    List<ThucPhamDto> sanPhamHetHan();
}
