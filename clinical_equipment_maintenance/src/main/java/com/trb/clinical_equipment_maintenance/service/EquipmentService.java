package com.trb.clinical_equipment_maintenance.service;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.List;
import com.trb.clinical_equipment_maintenance.model.Equipment;

import net.coobird.thumbnailator.util.BufferedImages;

public interface EquipmentService {

    List<Equipment> getAllEquipments();
    Equipment addEquipment(Equipment equipment);
    List<Equipment> saveEquipments(List<Equipment> equipments);
    Equipment getEquipmentByModelNo(String modelNumber);
   // BufferedImage getQrCodeImageByModelNo(String modelNumber);
}
