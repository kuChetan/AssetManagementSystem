package com.trb.clinical_equipment_maintenance.repo;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.trb.clinical_equipment_maintenance.model.Seller;

public interface SellerRepository extends MongoRepository<Seller,String>{
    
}
