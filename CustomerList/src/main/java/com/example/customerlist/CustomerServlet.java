package com.example.customerlist;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "customerServlet", value = "/customer-servlet")
public class CustomerServlet extends HttpServlet{
    private static List<Customer> customerList;

    static {
        customerList = new ArrayList<>();
        customerList.add(new Customer(1, "Mai Văn Hoàn", "1983-08-20", "Hà Nội", "https://i.pinimg.com/originals/1e/4e/72/1e4e721ed6fc93312e84fae565e890b2.jpg"));
        customerList.add(new Customer(2, "Nguyễn Văn Nam", "1983-08-21", "Băc Giang", "https://i.pinimg.com/originals/1e/4e/72/1e4e721ed6fc93312e84fae565e890b2.jpg"));
        customerList.add(new Customer(3, "Nguyễn Thái Hòa", "1983-08-22", "Nam Định", "https://i.pinimg.com/originals/1e/4e/72/1e4e721ed6fc93312e84fae565e890b2.jpg"));
        customerList.add(new Customer(4, "Trần Đăng Khoa", "1983-08-17", "Hà Tây", "https://i.pinimg.com/originals/1e/4e/72/1e4e721ed6fc93312e84fae565e890b2.jpg"));
        customerList.add(new Customer(5, "Nguyễn Đình Thi", "1983-08-19", "Hà Nội", "https://i.pinimg.com/originals/1e/4e/72/1e4e721ed6fc93312e84fae565e890b2.jpg"));
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("customerList", customerList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/customer_list.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
