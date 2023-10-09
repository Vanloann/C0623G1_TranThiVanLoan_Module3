package repository;

import model.LoaiThucPham;
import model.ThucPham;
import model.ThucPhamDto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Repository implements IRepository{
    private static final String HIEN_THI_DANH_SACH = "select thuc_pham.ma_hang_thuc_pham, thuc_pham.ten_hang_thuc_pham, thuc_pham.ngay_san_xuat, " +
            "thuc_pham.ngay_het_han, loai_thuc_pham.ten_loai_thuc_pham, thuc_pham.mo_ta_them " +
            "from thuc_pham join loai_thuc_pham " +
            "on thuc_pham.ma_loai_thuc_pham = loai_thuc_pham.ma_loai_thuc_pham " +
            "where thuc_pham.trang_thai_xoa = 0;";
    private static final String THEM_THUC_PHAM = "insert into thuc_pham (ten_hang_thuc_pham, ngay_san_xuat, ngay_het_han, " +
            " ma_loai_thuc_pham, mo_ta_them)" +
            " values (?,?,?,?,?);";
    private static final String LOAI_THUC_PHAM ="select * from loai_thuc_pham;";
    private static final String XOA_THUC_PHAM ="update thuc_pham set trang_thai_xoa = 1 where ma_hang_thuc_pham = ?;";
    private static final String SAN_PHAM_HET_HAN = "select thuc_pham.ma_hang_thuc_pham, thuc_pham.ten_hang_thuc_pham, thuc_pham.ngay_san_xuat, " +
            "thuc_pham.ngay_het_han, loai_thuc_pham.ten_loai_thuc_pham, thuc_pham.mo_ta_them " +
            "from thuc_pham join loai_thuc_pham " +
            "on thuc_pham.ma_loai_thuc_pham = loai_thuc_pham.ma_loai_thuc_pham " +
            "where (thuc_pham.trang_thai_xoa = 0) and (thuc_pham.ngay_het_han < curdate());";
    @Override
    public List<ThucPhamDto> hienThiDanhSach() {
        List<ThucPhamDto> danhSachThucPham = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(HIEN_THI_DANH_SACH);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int maHang = resultSet.getInt(1);
                String tenHang = resultSet.getString(2);
                String ngaySx = resultSet.getString(3);
                String ngayHetHan = resultSet.getString(4);
                String tenLoaiHang = resultSet.getString(5);
                String moTa = resultSet.getString(6);
                danhSachThucPham.add(new ThucPhamDto(maHang, tenHang, ngaySx, ngayHetHan, tenLoaiHang, moTa));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return danhSachThucPham;
    }

    @Override
    public void themThucPham(ThucPham thucPham) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(THEM_THUC_PHAM);
            preparedStatement.setString(1, thucPham.getTenHangThucPham());
            preparedStatement.setString(2, thucPham.getNgaySanXuat());
            preparedStatement.setString(3, thucPham.getNgayHetHan());
            preparedStatement.setInt(4, thucPham.getMaLoaiThucPham());
            preparedStatement.setString(5, thucPham.getMoTaThem());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<LoaiThucPham> danhSachLoaiThucPham() {
        List<LoaiThucPham> danhSach = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(LOAI_THUC_PHAM);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int maLoaiThucPham = resultSet.getInt(1);
                String tenLoaiThucPham = resultSet.getString(2);
                danhSach.add(new LoaiThucPham(maLoaiThucPham, tenLoaiThucPham));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return danhSach;
    }

    @Override
    public void xoa(int maHangThucPham) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(XOA_THUC_PHAM);
            preparedStatement.setInt(1, maHangThucPham);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<ThucPhamDto> sanPhamHetHan() {
        List<ThucPhamDto> sanPhamHetHan = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SAN_PHAM_HET_HAN);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int maHang = resultSet.getInt(1);
                String tenHang = resultSet.getString(2);
                String ngaySx = resultSet.getString(3);
                String ngayHetHan = resultSet.getString(4);
                String tenLoaiHang = resultSet.getString(5);
                String moTa = resultSet.getString(6);
                sanPhamHetHan.add(new ThucPhamDto(maHang, tenHang, ngaySx, ngayHetHan, tenLoaiHang, moTa));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return sanPhamHetHan;
    }
}
