package com.example.user_management.service.impl;

import com.example.user_management.model.User;
import com.example.user_management.repository.IUserRepo;
import com.example.user_management.repository.impl.UserRepoImpl;
import com.example.user_management.service.IUserService;

import java.util.List;

public class UserServiceImpl implements IUserService {
    private final IUserRepo userRepo = new UserRepoImpl();

    @Override
    public List<User> displayUserList() {
        return userRepo.displayUserList();
    }

    @Override
    public void createUser(User user) {
        userRepo.createUser(user);
    }

    @Override
    public void editUser(int id, User user) {
        userRepo.editUser(id, user);
    }

    @Override
    public User findById(int id) {
        return userRepo.findById(id);
    }

    @Override
    public void deleteUser(int id) {
        userRepo.deleteUser(id);
    }

    @Override
    public User findByCountry(String country) {
        return userRepo.findByCountry(country);
    }
}
