package com.trb.clinical_equipment_maintenance.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="Seller")
public class Seller {
    @Id
    private String id;
    private String sellerCode;
    private String sellerName;
    private String sellerEmail;
    private String sellerMobileNumber;
    private String sellerAddress;
    private String sellerContactName;
    
}
