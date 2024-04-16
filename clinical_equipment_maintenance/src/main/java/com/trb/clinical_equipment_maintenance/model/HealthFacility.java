package com.trb.clinical_equipment_maintenance.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "HealthFacility")
public class HealthFacility {
    @Id
    private String id;
    private String facilityCode;
    private String facilityName;
    private String buildingCode;
    private String buildingName;
    private String departmentCode;
    private String departmentName;
    private String typeOfFacility;
}
