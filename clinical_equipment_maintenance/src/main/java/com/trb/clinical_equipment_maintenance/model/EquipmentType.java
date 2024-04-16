package com.trb.clinical_equipment_maintenance.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "EquipmentType")
public class EquipmentType {

    @Id
    private String id;
    private String ipm_Procedure;
    private String ipm_frequency;
    private String riskLevel;
    private String responsibleStaff;

    
}
