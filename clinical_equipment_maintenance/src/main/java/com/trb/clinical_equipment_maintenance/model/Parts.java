package com.trb.clinical_equipment_maintenance.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
@Document(collation ="Parts")
public class Parts {

    @Id
    private String id;
    private String partsCode;
    private String partsName;

    
}
