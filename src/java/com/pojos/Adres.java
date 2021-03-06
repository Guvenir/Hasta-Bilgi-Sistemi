package com.pojos;
// Generated 01.Ara.2014 13:53:21 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Adres generated by hbm2java
 */
public class Adres  implements java.io.Serializable {


     private int adresid;
     private String cadde;
     private String mahalle;
     private String sokak;
     private String apt;
     private Integer diskapi;
     private Integer ickapi;
     private Integer postakod;
     private String il;
     private String ilce;
     private String konum;
     private Set<Personel> personels = new HashSet<Personel>(0);
     private Set<Birey> bireys = new HashSet<Birey>(0);

    public Adres() {
    }

	
    public Adres(int adresid) {
        this.adresid = adresid;
    }
    public Adres(int adresid, String cadde, String mahalle, String sokak, String apt, Integer diskapi, Integer ickapi, Integer postakod, String il, String ilce, String konum, Set<Personel> personels, Set<Birey> bireys) {
       this.adresid = adresid;
       this.cadde = cadde;
       this.mahalle = mahalle;
       this.sokak = sokak;
       this.apt = apt;
       this.diskapi = diskapi;
       this.ickapi = ickapi;
       this.postakod = postakod;
       this.il = il;
       this.ilce = ilce;
       this.konum = konum;
       this.personels = personels;
       this.bireys = bireys;
    }
   
    public int getAdresid() {
        return this.adresid;
    }
    
    public void setAdresid(int adresid) {
        this.adresid = adresid;
    }
    public String getCadde() {
        return this.cadde;
    }
    
    public void setCadde(String cadde) {
        this.cadde = cadde;
    }
    public String getMahalle() {
        return this.mahalle;
    }
    
    public void setMahalle(String mahalle) {
        this.mahalle = mahalle;
    }
    public String getSokak() {
        return this.sokak;
    }
    
    public void setSokak(String sokak) {
        this.sokak = sokak;
    }
    public String getApt() {
        return this.apt;
    }
    
    public void setApt(String apt) {
        this.apt = apt;
    }
    public Integer getDiskapi() {
        return this.diskapi;
    }
    
    public void setDiskapi(Integer diskapi) {
        this.diskapi = diskapi;
    }
    public Integer getIckapi() {
        return this.ickapi;
    }
    
    public void setIckapi(Integer ickapi) {
        this.ickapi = ickapi;
    }
    public Integer getPostakod() {
        return this.postakod;
    }
    
    public void setPostakod(Integer postakod) {
        this.postakod = postakod;
    }
    public String getIl() {
        return this.il;
    }
    
    public void setIl(String il) {
        this.il = il;
    }
    public String getIlce() {
        return this.ilce;
    }
    
    public void setIlce(String ilce) {
        this.ilce = ilce;
    }
    public String getKonum() {
        return this.konum;
    }
    
    public void setKonum(String konum) {
        this.konum = konum;
    }
    public Set<Personel> getPersonels() {
        return this.personels;
    }
    
    public void setPersonels(Set<Personel> personels) {
        this.personels = personels;
    }
    public Set<Birey> getBireys() {
        return this.bireys;
    }
    
    public void setBireys(Set<Birey> bireys) {
        this.bireys = bireys;
    }




}


