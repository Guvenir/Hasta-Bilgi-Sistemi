/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.beans;

import com.util.HibernateUtil;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author omer
 */
@ManagedBean(name = "adres")
@RequestScoped
public class adresBean {

    private Session ses;
    private HibernateUtil hu;
    private String cadde;
    private String mahalle;
    private String sokak;
    private String apt;
    private Integer diskapi;
    private Integer ickapi;
    private Integer postakod;
    private String il;
    private String ilce;

    public String getCadde() {
        return cadde;
    }

    public void setCadde(String cadde) {
        this.cadde = cadde;
    }

    public String getMahalle() {
        return mahalle;
    }

    public void setMahalle(String mahalle) {
        this.mahalle = mahalle;
    }

    public String getSokak() {
        return sokak;
    }

    public void setSokak(String sokak) {
        this.sokak = sokak;
    }

    public String getApt() {
        return apt;
    }

    public void setApt(String apt) {
        this.apt = apt;
    }

    public Integer getDiskapi() {
        return diskapi;
    }

    public void setDiskapi(Integer diskapi) {
        this.diskapi = diskapi;
    }

    public Integer getIckapi() {
        return ickapi;
    }

    public void setIckapi(Integer ickapi) {
        this.ickapi = ickapi;
    }

    public Integer getPostakod() {
        return postakod;
    }

    public void setPostakod(Integer postakod) {
        this.postakod = postakod;
    }

    public String getIl() {
        return il;
    }

    public void setIl(String il) {
        this.il = il;
    }

    public String getIlce() {
        return ilce;
    }

    public void setIlce(String ilce) {
        this.ilce = ilce;
    }

    public adresBean() {
    }
    public void adresKaydet(){
        int i = (int) (Math.random() * 1000);
        ses = hu.getSessionFactory().openSession();
        ses.beginTransaction();
        Query q = ses.createSQLQuery("insert into Adres(adresid, cadde, mahalle, sokak, apt,  diskapi, ickapi, postakod, il , ilce values(select :adresid, :cadde, :mahalle, :sokak, :apt,  :diskapi, :ickapi, :postakod, :il , :ilce")
        .setParameter("adresid", i)
        .setParameter("cadde", cadde)
        .setParameter("mahalle", mahalle)
        .setParameter("sokak", sokak)
        .setParameter("apt", apt)
        .setParameter("diskapi", diskapi)
        .setParameter("ickapi", ickapi)
        .setParameter("postakod", postakod)
        .setParameter("il", il )
        .setParameter("ilce", ilce);
        int result = q.executeUpdate();
        ses.getTransaction().commit();
        ses.close();
    }

}
