package com.trb.clinical_equipment_maintenance.repo;

import java.awt.image.BufferedImage;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import com.trb.clinical_equipment_maintenance.model.Equipment;

public interface EquipmentRepository extends MongoRepository<Equipment,String>{

    @Query(value = "{ 'modelNumber' : ?0 }")
    Equipment findByModelNo(String modelNumber);

   

   
}
