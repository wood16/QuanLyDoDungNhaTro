/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/**
 *
 * @author HoangLam
 */
public class DoDung implements Serializable{
    
    private Integer id;
    private String ten;
    private String mota;
    private double gia;
    private String tinhtrang;
    private Integer id_loai;
    private Integer id_danhmuc;
    private int soluong;

    public DoDung(Integer id, String ten, String mota, double gia, String tinhtrang, Integer id_loai, Integer id_danhmuc, int soluong) {
        this.id = id;
        this.ten = ten;
        this.mota = mota;
        this.gia = gia;
        this.tinhtrang = tinhtrang;
        this.id_loai = id_loai;
        this.id_danhmuc = id_danhmuc;
        this.soluong = soluong;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    

    
    
    public String getTinhtrang() {
        return tinhtrang;
    }

    public void setTinhtrang(String tinhtrang) {
        this.tinhtrang = tinhtrang;
    }

    
    
    

    public Integer getId_loai() {
        return id_loai;
    }

    public void setId_loai(Integer id_loai) {
        this.id_loai = id_loai;
    }

    public Integer getId_danhmuc() {
        return id_danhmuc;
    }

    public void setId_danhmuc(Integer id_danhmuc) {
        this.id_danhmuc = id_danhmuc;
    }

    public DoDung() {
    }
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public double getGia() {
        return gia;
    }

    public void setGia(double gia) {
        this.gia = gia;
    }
    
}
