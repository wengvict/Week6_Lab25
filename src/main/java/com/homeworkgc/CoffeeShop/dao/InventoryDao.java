package com.homeworkgc.CoffeeShop.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.homeworkgc.CoffeeShop.entity.Inventory;

@Repository
@Transactional
public class InventoryDao {
	
	@PersistenceContext
	EntityManager eManager;
	
	public Inventory findById(int id) {
		return eManager.find(Inventory.class, id);
	}
	
	public List<Inventory> findAll() {
		TypedQuery<Inventory> namedQuery = eManager.createNamedQuery("find_all_items", Inventory.class);
		return namedQuery.getResultList();
	}
	
	public Inventory addOrUpdate(Inventory item) {		
		return eManager.merge(item);
	}
	
	public void deleteById(int id) {
		eManager.remove(findById(id));
	}
	
}
