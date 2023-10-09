package controller;

import model.LoaiThucPham;
import model.ThucPham;
import model.ThucPhamDto;
import service.IService;
import service.Service;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@WebServlet(name = "ThucPham", value = "/thuc-pham")
public class ThucPhamServlet extends HttpServlet {
    private IService service = new Service();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "hienThi":
                hienThiDanhSach(request, response);
                break;
            case "hienThiThemMoi":
                hienThiThemMoi(request, response);
                break;
            case "hienThiHetHan":
                hienThiHetHan(request, response);
                break;
        }
    }

    private void hienThiHetHan(HttpServletRequest request, HttpServletResponse response) {
        List<ThucPhamDto> danhSach = this.service.sanPhamHetHan();
        List<LoaiThucPham> danhSachLoaiThucPham = this.service.danhSachLoaiThucPham();
        request.setAttribute("danhSach", danhSach);
        request.setAttribute("danhSachLoaiThucPham", danhSachLoaiThucPham);
        RequestDispatcher dispatcher = request.getRequestDispatcher("san-pham-het-han.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void hienThiThemMoi(HttpServletRequest request, HttpServletResponse response) {
        List<LoaiThucPham> danhSachLoaiThucPham = this.service.danhSachLoaiThucPham();
        RequestDispatcher dispatcher = request.getRequestDispatcher("them-moi.jsp");
        try {
            request.setAttribute("danhSachLoaiThucPham", danhSachLoaiThucPham);
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void hienThiDanhSach(HttpServletRequest request, HttpServletResponse response) {
        List<ThucPhamDto> danhSach = this.service.hienThiDanhSach();
        List<LoaiThucPham> danhSachLoaiThucPham = this.service.danhSachLoaiThucPham();
        request.setAttribute("danhSachLoaiThucPham", danhSachLoaiThucPham);
        request.setAttribute("danhSach", danhSach);
        RequestDispatcher dispatcher = request.getRequestDispatcher("hien-thi.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "themMoi":
                themMoi(request, response);
                break;
            case "xoa":
                xoa(request, response);
                break;
        }
    }

    private void xoa(HttpServletRequest request, HttpServletResponse response) {
        int maHangThucPham = Integer.parseInt(request.getParameter("maHangThucPham"));
        this.service.xoa(maHangThucPham);
        try {
            response.sendRedirect("/thuc-pham?action=hienThi");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void themMoi(HttpServletRequest request, HttpServletResponse response) {
        List<LoaiThucPham> danhSachLoaiThucPham = this.service.danhSachLoaiThucPham();
        request.setAttribute("danhSachLoaiThucPham", danhSachLoaiThucPham);
        String tenHangThucPham = request.getParameter("tenHangThucPham");
        String ngaySanXuat = request.getParameter("ngaySanXuat");
        String ngayHetHan = request.getParameter("ngayHetHan");
        int maLoaiThucPham = Integer.parseInt(request.getParameter("maLoaiThucPham"));
        String moTaThem = request.getParameter("moTaThem");
        ThucPham thucPham = new ThucPham(tenHangThucPham, ngaySanXuat, ngayHetHan, maLoaiThucPham, moTaThem);
        this.service.themThucPham(thucPham);
        try {
            response.sendRedirect("/thuc-pham?action=hienThi");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}