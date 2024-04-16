package com.trb.clinical_equipment_maintenance.repo;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.trb.clinical_equipment_maintenance.model.Maintenance;

public interface MaintenanceRepository extends MongoRepository<Maintenance,String>{
    
}
