/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.DoDung;

/**
 *
 * @author HoangLam
 */
public class DoDungDAO extends DAO{
    
    public ArrayList<DoDung> getDoDungTheoTen(String ten){
        ArrayList<DoDung> resultList= new ArrayList<>();
        ArrayList<DoDung> result= new ArrayList<>();
        String query = "SELECT * FROM tbldodung"; 
                
        try{
            PreparedStatement ppstmt = con.prepareStatement(query);
            ResultSet rs = ppstmt.executeQuery(); 
            while(rs.next()){
                
                DoDung dodung = new DoDung();
                dodung.setId(rs.getInt("id"));
                dodung.setTen(rs.getString("ten"));
                dodung.setGia(rs.getDouble("gia"));
                dodung.setMota(rs.getString("mota"));
                dodung.setTinhtrang(rs.getString("tinhtrang"));
                dodung.setSoluong(rs.getInt("soluong"));
                dodung.setId_danhmuc(rs.getInt("id_danhmuc"));
                dodung.setId_loai(rs.getInt("id_loaidodung"));
                result.add(dodung);
            }
            if(result != null){
                for(int i=0; i<result.size(); i++){
                    if(result.get(i).getTen().contains(ten)){
                        resultList.add(result.get(i));
                        
                    }
                } 
                for(int i=0; i<resultList.size(); i++){
                    System.out.println(resultList.get(i).getTen());
                } 
            }
        }catch(Exception e){
            e.printStackTrace();
        }   
             
        return resultList;
    }
    public boolean luuThongtindodung(DoDung dodung){
        String query = "UPDATE tbldodung SET ten=?, gia=?, mota=?, tinhtrang=?, soluong=?, id_danhmuc=?, id_loaidodung=? WHERE id=?";
        try{
            PreparedStatement ppstmt = con.prepareStatement(query);
            ppstmt.setString(1, dodung.getTen());
            ppstmt.setDouble(2, dodung.getGia());
            ppstmt.setString(3, dodung.getMota());
            ppstmt.setString(4, dodung.getTinhtrang());
            ppstmt.setInt(5, dodung.getSoluong());
            ppstmt.setInt(6, dodung.getId_danhmuc());
            ppstmt.setInt(7, dodung.getId_loai());
            ppstmt.setInt(8, dodung.getId());
            int rs = ppstmt.executeUpdate(); 
            System.out.println(rs);
            return true;
            
        }catch(Exception e){
            e.printStackTrace();
            
        }
        return false;
    }
    
    
}
