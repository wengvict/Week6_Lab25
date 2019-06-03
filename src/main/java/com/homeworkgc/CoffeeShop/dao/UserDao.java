package com.homeworkgc.CoffeeShop.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.homeworkgc.CoffeeShop.entity.User;

@Repository
@Transactional
public class UserDao {
	
	@PersistenceContext
	EntityManager eManager;
	
	public User findById(int id) {
		return eManager.find(User.class, id);
	}
	
	public User addAccount(User account) {
		return eManager.merge(account);
	}
		
}
