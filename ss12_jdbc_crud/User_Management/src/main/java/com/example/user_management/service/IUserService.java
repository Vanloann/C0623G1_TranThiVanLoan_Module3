package com.example.user_management.service;

import com.example.user_management.model.User;

import java.util.List;

public interface IUserService {
    List<User> displayUserList();

    void createUser (User user);

    void editUser (int id, User user);

    User findById (int id);

    void deleteUser (int id);

    User findByCountry (String country);


}
