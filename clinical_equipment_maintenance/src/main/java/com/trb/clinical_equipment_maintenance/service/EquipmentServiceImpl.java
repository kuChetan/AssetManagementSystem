package com.trb.clinical_equipment_maintenance.service;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.trb.clinical_equipment_maintenance.model.Equipment;
import com.trb.clinical_equipment_maintenance.repo.EquipmentRepository;
import javax.imageio.ImageIO;
import javax.imageio.ImageWriter;
@Service
public class EquipmentServiceImpl implements EquipmentService{

    @Autowired
    private EquipmentRepository equipmentRepository;

    @Override
    public List<Equipment> getAllEquipments() {
       return equipmentRepository.findAll();
    }

    @Override
    public Equipment addEquipment(Equipment equipment) {
      
       return equipmentRepository.save(equipment);
    }

   @Override
   public List<Equipment> saveEquipments(List<Equipment> equipments) {
     return equipmentRepository.saveAll(equipments);
   }


   @Override
   public Equipment getEquipmentByModelNo(String modelNumber) {
      return equipmentRepository.findByModelNo(modelNumber);
   }

  
}
