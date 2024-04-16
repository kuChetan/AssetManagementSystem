package com.trb.clinical_equipment_maintenance.model;

import java.awt.image.BufferedImage;
import java.util.Date;
import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "Equipment")
public class Equipment {
 
    @Id
    private String id;
    private byte[] qrCodeImage;
    private String modelNumber;
    private String serialNumber;
    private List<Parts> spareParts;
    private Date warrentyUpto;
    private Date dateOfPurchasing;
    private String status;
    private List<Maintenance> maintenances;
    private List<Parts> orderList;
    private Manufacturer manufacturer;
    private EquipmentType equipmentType;

    public Equipment(String id, byte[] qrCodeImage, String modelNumber, String serialNumber, List<Parts> spareParts,
            Date warrentyUpto, Date dateOfPurchasing, String status, List<Maintenance> maintenances,
            List<Parts> orderList, Manufacturer manufacturer, EquipmentType equipmentType) {
        this.id = id;
        this.qrCodeImage = qrCodeImage;
        this.modelNumber = modelNumber;
        this.serialNumber = serialNumber;
        this.spareParts = spareParts;
        this.warrentyUpto = warrentyUpto;
        this.dateOfPurchasing = dateOfPurchasing;
        this.status = status;
        this.maintenances = maintenances;
        this.orderList = orderList;
        this.manufacturer = manufacturer;
        this.equipmentType = equipmentType;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public byte[] getQrCodeImage() {
        return qrCodeImage;
    }

    public void setQrCodeImage(byte[] qrImage) {
        this.qrCodeImage = qrImage;
    }

    public String getModelNumber() {
        return modelNumber;
    }

    public void setModelNumber(String modelNumber) {
        this.modelNumber = modelNumber;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    public List<Parts> getSpareParts() {
        return spareParts;
    }

    public void setSpareParts(List<Parts> spareParts) {
        this.spareParts = spareParts;
    }

    public Date getWarrentyUpto() {
        return warrentyUpto;
    }

    public void setWarrentyUpto(Date warrentyUpto) {
        this.warrentyUpto = warrentyUpto;
    }

    public Date getDateOfPurchasing() {
        return dateOfPurchasing;
    }

    public void setDateOfPurchasing(Date dateOfPurchasing) {
        this.dateOfPurchasing = dateOfPurchasing;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public List<Maintenance> getMaintenances() {
        return maintenances;
    }

    public void setMaintenances(List<Maintenance> maintenances) {
        this.maintenances = maintenances;
    }

    public List<Parts> getOrderList() {
        return orderList;
    }

    public void setOrderList(List<Parts> orderList) {
        this.orderList = orderList;
    }

    public Manufacturer getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(Manufacturer manufacturer) {
        this.manufacturer = manufacturer;
    }

    public EquipmentType getEquipmentType() {
        return equipmentType;
    }

    public void setEquipmentType(EquipmentType equipmentType) {
        this.equipmentType = equipmentType;
    }
   
    
    
}
