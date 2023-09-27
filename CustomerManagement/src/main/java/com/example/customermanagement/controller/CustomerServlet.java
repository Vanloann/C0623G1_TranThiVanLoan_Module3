package com.example.customermanagement.controller;

import com.example.customermanagement.model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "customerServlet", value = "/customer-servlet")
public class CustomerServlet extends HttpServlet {
    private static List<Customer> customerList;

    static {
        customerList = new ArrayList<>();
        customerList.add(new Customer(1, "John", "john@codegym.vn", "Hanoi"));
        customerList.add(new Customer(2, "Bill", "bill@codegym.vn", "Danang"));
        customerList.add(new Customer(3, "Alex", "alex@codegym.vn", "Saigon"));
        customerList.add(new Customer(4, "Adam", "adam@codegym.vn", "Beijin"));
        customerList.add(new Customer(5, "Sophia", "sophia@codegym.vn", "Miami"));
        customerList.add(new Customer(6, "Rose", "rose@codegym.vn", "Newyork"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createCustomer(request, response);
            default:
                displayCustomerList(request, response);
        }
    }

    private void displayCustomerList(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("customerList", customerList);
        RequestDispatcher display = request.getRequestDispatcher("/customer_list.jsp");
        display.forward(request, response);
    }

    private void createCustomer(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("customerList", customerList);
        RequestDispatcher create = request.getRequestDispatcher("/create_customer.jsp");
        create.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                create(request, response);
        }

    }

    private void create(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Customer customer = new Customer(id, name, email, address);
        customerList.add(customer);
        response.sendRedirect("/customer-servlet");
    }
}
