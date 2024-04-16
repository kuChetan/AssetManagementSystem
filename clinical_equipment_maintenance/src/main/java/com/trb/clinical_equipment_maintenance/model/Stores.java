package com.trb.clinical_equipment_maintenance.model;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
@Document(collection = "Stores")
public class Stores {

    @Id
    private String id;
    private String storeCode;
    private String storeName;

}
