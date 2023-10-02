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

    User getUserById (int id);

    void insertUserStore (User user);

    List<User> displayUserProcedure();

    void editUserProcedure(int id, User user);

    void deleteUserProcedure(int id);

    void addUserTransaction(User user, List<Integer> permissions);

    void insertUpdateUseTransaction();



}
