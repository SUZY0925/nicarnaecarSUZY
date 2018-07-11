package com.prj.nicarnaecar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.prj.nicarnaecar.dao.VehicleDAO;
import com.prj.nicarnaecar.vo.VehicleVO;

@Service
public class VehicleServiceImplXML implements VehicleService{

   @Autowired
   @Qualifier("vehicleDAOImplXML")
   VehicleDAO vehicleDAO;
   
   @Override
   public List<VehicleVO> VehicleList() {
      return vehicleDAO.VehicleList();
   }

   @Override
   public void insertCar(VehicleVO vehicleVO) {
      vehicleDAO.insertCar(vehicleVO);
   }

   @Override
   public void updateCar(VehicleVO vehicleVO) {
      vehicleDAO.updateCar(vehicleVO);
   }

   @Override
   public void deleteCar(String vnumber) {
      vehicleDAO.deleteCar(vnumber);
   }

   

   
}