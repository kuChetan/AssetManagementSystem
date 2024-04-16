package com.trb.clinical_equipment_maintenance.controller;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.google.zxing.WriterException;
import com.trb.clinical_equipment_maintenance.model.Equipment;
import com.trb.clinical_equipment_maintenance.service.EquipmentService;
import com.trb.clinical_equipment_maintenance.utils.QrCodeGenerator;
import java.awt.image.BufferedImage;


@RestController
@RequestMapping("/api")
public class EquipmentController {

    @Autowired
     private EquipmentService equipmentService;

     @GetMapping("/getEquipments")
     public List<Equipment> getAllEquipments(){
        return equipmentService.getAllEquipments();
     }

     @PostMapping("/addEquipment")
     public Equipment addEquipment(@RequestBody Equipment equipment) throws WriterException, IOException{
       // return equipmentService.addEquipment(equipment);
       byte[] equipmentQRImage=QrCodeGenerator.generateQrCode(equipment);
       
       //ByteArrayInputStream bis = new ByteArrayInputStream(equipmentQRImage);
        //BufferedImage image = ImageIO.read(bis);
        //bis.close();
       // return image;
      // ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
      // ImageIO.write(image, "png", outputStream);
       equipment.setQrCodeImage(equipmentQRImage);
       
       return equipmentService.addEquipment(equipment);
     }

     @PostMapping("/addEquipments")
     public List<Equipment> saveEquipments(@RequestBody List<Equipment> equipments) throws WriterException, IOException{
        return equipmentService.saveEquipments(equipments);
     }


     @GetMapping("/equipment/{modelNumber}")
     public Equipment getEquipment(@PathVariable String modelNumber) {
        return equipmentService.getEquipmentByModelNo(modelNumber);
     }
    
}
