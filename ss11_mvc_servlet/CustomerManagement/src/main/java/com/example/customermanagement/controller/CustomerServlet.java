package com.example.customermanagement.controller;

import com.example.customermanagement.model.Customer;
import com.example.customermanagement.service.ICustomerService;
import com.example.customermanagement.service.impl.CustomerServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "customerServlet", value = "/customer-servlet")
public class CustomerServlet extends HttpServlet {
   private ICustomerService customerService = new CustomerServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createForm(request, response);
                break;
            case "edit":
                editForm(request, response);
                break;
            case "remove":
                removeForm(request, response);
            case "view":
                viewCustomer(request, response);
            default:
                displayCustomerList(request, response);
                break;
        }
    }

    private void displayCustomerList(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("customerList", customerService.displayCustomer());
        RequestDispatcher display = request.getRequestDispatcher("/customer_list.jsp");
        display.forward(request, response);
    }

    private void createForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("customerList", customerService.displayCustomer());
        RequestDispatcher create = request.getRequestDispatcher("/create_customer.jsp");
        create.forward(request, response);
    }

    private void editForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer = customerService.findByID(id);
        request.setAttribute("customer", customer);
        RequestDispatcher edit = request.getRequestDispatcher("/edit_customer.jsp");
        edit.forward(request, response);
    }

    private void removeForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer = customerService.findByID(id);
        request.setAttribute("customer", customer);
        RequestDispatcher remove = request.getRequestDispatcher("/remove_customer.jsp");
        remove.forward(request, response);
    }

    private void viewCustomer(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer = customerService.findByID(id);
        request.setAttribute("customer", customer);
        RequestDispatcher view = request.getRequestDispatcher("/view.jsp");
        view.forward(request, response);
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
                break;
            case "edit":
                edit(request, response);
                break;
            case "remove":
                remove(request, response);
                break;
            default:
                break;
        }

    }

    private void create(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Customer customer = new Customer(id, name, email, address);
        customerService.createCustomer(customer);
        response.sendRedirect("/customer-servlet");
    }

    private void edit(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Customer customer = customerService.findByID(id);
        customer.setName(name);
        customer.setEmail(email);
        customer.setAddress(address);
        customerService.editCustomer(id, customer);
        response.sendRedirect("/customer-servlet");
    }

    private void remove(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        customerService.findByID(id);
        customerService.removeCustomer(id);
        response.sendRedirect("/customer-servlet");
    }
}
