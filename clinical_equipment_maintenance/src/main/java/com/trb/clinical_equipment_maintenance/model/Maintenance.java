package com.trb.clinical_equipment_maintenance.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="Maintenance")
public class Maintenance {

    @Id
    private String id;
    private String inventoryNumber;
    private String workOrderNumber;
    private String serviceProvider;
    private String serviceEngineerCode;
    private String faultName;
    
}
