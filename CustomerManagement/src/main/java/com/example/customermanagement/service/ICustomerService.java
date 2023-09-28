package com.example.customermanagement.service;

import com.example.customermanagement.model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> displayCustomer();

    void createCustomer (Customer customer);

    void removeCustomer (int id);

    Customer findByID (int id);

    void editCustomer (int id, Customer customer);

//    List<Customer> searchCustomerByName (String name);
}
