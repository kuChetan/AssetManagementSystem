package com.trb.clinical_equipment_maintenance.repo;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.trb.clinical_equipment_maintenance.model.EquipmentType;

public interface EquipmentTypeRepository extends MongoRepository<EquipmentType,String>{
    
}
