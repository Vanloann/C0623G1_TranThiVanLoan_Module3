package service;

import model.LoaiThucPham;
import model.ThucPham;
import model.ThucPhamDto;
import repository.IRepository;
import repository.Repository;

import java.util.List;

public class Service implements IService{
    private IRepository repository = new Repository();
    @Override
    public List<ThucPhamDto> hienThiDanhSach() {
        return this.repository.hienThiDanhSach();
    }
    public void themThucPham(ThucPham thucPham) {
        this.repository.themThucPham(thucPham);
    };

    @Override
    public List<LoaiThucPham> danhSachLoaiThucPham() {
        return this.repository.danhSachLoaiThucPham();
    }

    @Override
    public void xoa(int maHangThucPham) {
        this.repository.xoa(maHangThucPham);
    }
    public List<ThucPhamDto> sanPhamHetHan() {
        return this.repository.sanPhamHetHan();
    }

}
