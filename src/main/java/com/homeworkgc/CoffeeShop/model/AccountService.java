package com.homeworkgc.CoffeeShop.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.homeworkgc.CoffeeShop.entity.User;

@Component
public class AccountService {
	
	private List<User> accounts = new ArrayList<>();
	
	// add accounts
	public void addAccount(User account) {
		accounts.add(account);
	}
}
