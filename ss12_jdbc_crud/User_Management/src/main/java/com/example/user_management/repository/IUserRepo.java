package com.example.user_management.repository;

import com.example.user_management.model.User;

import javax.jws.soap.SOAPBinding;
import java.util.List;

public interface IUserRepo {
    List<User> displayUserList();

    void createUser (User user);

    void editUser (int id, User user);

    User findById (int id);

    void deleteUser (int id);

    User findByCountry (String country);


}
