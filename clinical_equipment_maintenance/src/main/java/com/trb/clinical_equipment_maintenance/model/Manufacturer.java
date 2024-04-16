package com.trb.clinical_equipment_maintenance.model;

import java.util.List;

import org.springframework.data.mongodb.core.mapping.Document;
@Document(collection="Manufacture")
public class Manufacturer {

    private String id;
    private String manufracturerCode;
    private String manufracturerName;
    private String manufracturerEmail;
    private String manufracturerMobileNumber;
    private String manufracturerAddress;
    private String manufracturerContactName;
    private List<Seller> sellers;

}
