package com.trb.clinical_equipment_maintenance.utils;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.file.FileSystem;
import java.nio.file.FileSystems;
import java.nio.file.Path;

import org.springframework.beans.factory.annotation.Autowired;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.trb.clinical_equipment_maintenance.model.Equipment;


public class QrCodeGenerator {

    public static byte[] generateQrCode(Equipment equipment) throws WriterException, IOException{
        
       byte[] imageBytes;
       
        var qrCodeWriter=new QRCodeWriter();
        BitMatrix bitMatrix=qrCodeWriter.encode(
            "ID :"+equipment.getId()+"\n"+
            "ModelNumber: "+equipment.getModelNumber()+"\n"+
            "SerialNumber: "+equipment.getSerialNumber()+"\n"+
            "SpareParts: "+equipment.getSpareParts()+"\n"+
            "WarrentyUpto: "+equipment.getWarrentyUpto()+"\n"+
            "DateOfPurchasing: "+equipment.getDateOfPurchasing()+"\n"+
            "Status: "+equipment.getStatus()+"\n"+
            "Maintenance: "+equipment.getMaintenances()+"\n"+
            "OrderList: "+equipment.getOrderList()+"\n"+
            "Manufacturer: "+equipment.getManufacturer()+"\n"+
            "EquipmentType: "+equipment.getEquipmentType(),BarcodeFormat.QR_CODE,200,200
         );
        // Path path=FileSystems.getDefault().getPath(qrCodeName);
         //MatrixToImageWriter.writeToPath(bitMatrix, "PNG", path);
        // BufferedImage qrImage=  MatrixToImageWriter.toBufferedImage(bitMatrix);
         //return qrImage;
         ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
         MatrixToImageWriter.writeToStream(bitMatrix, "PNG", outputStream);
             imageBytes = outputStream.toByteArray();
             return imageBytes;
        
        }

   
}
