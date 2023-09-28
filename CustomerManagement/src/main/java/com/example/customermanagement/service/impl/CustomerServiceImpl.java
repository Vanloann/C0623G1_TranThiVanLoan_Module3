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
        return customerRepo.displayCustomer();
    }

    @Override
    public void createCustomer(Customer customer) {
        customerRepo.createCustomer(customer);
    }

    @Override
    public void removeCustomer(int id) {
        customerRepo.removeCustomer(id);
    }

    @Override
    public Customer findByID(int id) {
        return customerRepo.findByID(id);
    }

    @Override
    public void editCustomer(int id, Customer customer) {
        customerRepo.editCustomer(id, customer);
    }

//    @Override
//    public List<Customer> searchCustomerByName(String name) {
//        return null;
//    }
}
