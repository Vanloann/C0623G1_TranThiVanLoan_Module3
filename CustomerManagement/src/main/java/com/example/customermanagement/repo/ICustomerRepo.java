package com.example.customermanagement.repo;

import com.example.customermanagement.model.Customer;

import java.util.List;

public interface ICustomerRepo {

    List<Customer> displayCustomer();

    void createCustomer (Customer customer);

    void removeCustomer (int id);

    void editCustomer (int id, Customer customer);

//    List<Customer> searchCustomerByName (String name);

    Customer findByID (int id);
}
