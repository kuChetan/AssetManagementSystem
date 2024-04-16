package com.trb.clinical_equipment_maintenance.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "Staff")
public class Staff {
    @Id
    private String id;
    private String employeeCode;
    private String employeeName;
    private String accessLevel;
    
    
}
