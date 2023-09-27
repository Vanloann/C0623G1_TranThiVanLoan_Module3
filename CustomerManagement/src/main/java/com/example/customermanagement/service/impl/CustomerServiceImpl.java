package com.example.customermanagement.service.impl;

import com.example.customermanagement.model.Customer;
import com.example.customermanagement.repo.ICustomerRepo;
import com.example.customermanagement.repo.impl.CustomerRepoImpl;
import com.example.customermanagement.service.ICustomerService;

import java.util.List;

public class CustomerServiceImpl implements ICustomerService {
    private static ICustomerRepo customerRepo = new CustomerRepoImpl();

    @Override
    public List<Customer> displayCustomer() {
        return null;
    }

    @Override
    public void createCustomer(Customer customer) {

    }

    @Override
    public void removeCustomer(int id) {

    }

    @Override
    public void editCustomer(int id, Customer customer) {

    }

    @Override
    public List<Customer> searchCustomerByName(String name) {
        return null;
    }
}
