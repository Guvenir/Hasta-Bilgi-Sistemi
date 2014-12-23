package com.beans;

import com.javas.Util;
import com.pojos.Adres;
import com.pojos.Akraba;
import com.pojos.Birey;
import com.pojos.Doktor;
import com.pojos.Hastane;
import com.pojos.Ilac;
import com.pojos.Khastalik;
import com.pojos.Personel;
import com.pojos.Recete;
import com.util.HibernateUtil;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.primefaces.model.map.DefaultMapModel;
import org.primefaces.model.map.LatLng;
import org.primefaces.model.map.MapModel;
import org.primefaces.model.map.Marker;

@ManagedBean
@SessionScoped
public class loginpBean {

    private MapModel model;
    private String tc;
    private String sifr;
    private List<Birey> liste;
    private Session ses;
    private HibernateUtil hu;
    private List<Personel> list;
    private List<Recete> recete;
    private List<Khastalik> hasta;
    private List<Akraba> akraba;
    private List<Doktor> doktor;
    private List<Hastane> hastane;
    private List<Adres> adres;
    private String btcno;
    private String bad;
    private String bsoyad;
    private String bdyeri;
    private Date bdtarih;
    private Birey birey;
    private String ilacad="a";
    private Ilac ilac;

    public Ilac getIlac() {
        return ilac;
    }

    public void setIlac(Ilac ilac) {
        this.ilac = ilac;
    }

    public String getIlacad() {
        return ilacad;
    }

    public void setIlacad(String ilacad) {
        this.ilacad = ilacad;
    }

    public MapModel getModel() {
        return model;
    }

    public loginpBean(String tcno, String sifre) {
        this.tc = tcno;
        this.sifr = sifre;
    }

    public Birey getBirey() {
        return birey;
    }

    public void setBirey(Birey birey) {
        this.birey = birey;
    }

    public Date getBdtarih() {
        return bdtarih;
    }

    public void setBdtarih(Date bdtarih) {
        this.bdtarih = bdtarih;
    }

    public String getBtcno() {
        return btcno;
    }

    public void setBtcno(String btcno) {
        this.btcno = btcno;
    }

    public String getBad() {
        return bad;
    }

    public void setBad(String bad) {
        this.bad = bad;
    }

    public String getBsoyad() {
        return bsoyad;
    }

    public void setBsoyad(String bsoyad) {
        this.bsoyad = bsoyad;
    }

    public String getBdyeri() {
        return bdyeri;
    }

    public void setBdyeri(String bdyeri) {
        this.bdyeri = bdyeri;
    }

    public List<Adres> getAdres() {
        return adres;
    }

    public void setAdres(List<Adres> adres) {
        this.adres = adres;
    }

    public String getTc() {
        return tc;
    }

    public void setTc(String tc) {
        this.tc = tc;
    }

    public String getSifr() {
        return sifr;
    }

    public void setSifr(String sifr) {
        this.sifr = sifr;
    }

    public List<Birey> getListe() {
        return liste;
    }

    public void setListe(List<Birey> liste) {
        this.liste = liste;
    }

    public Session getSes() {
        return ses;
    }

    public void setSes(Session ses) {
        this.ses = ses;
    }

    public HibernateUtil getHu() {
        return hu;
    }

    public void setHu(HibernateUtil hu) {
        this.hu = hu;
    }

    public List<Personel> getList() {
        return list;
    }

    public void setList(List<Personel> list) {
        this.list = list;
    }

    public List<Recete> getRecete() {
        return recete;
    }

    public void setRecete(List<Recete> recete) {
        this.recete = recete;
    }

    public List<Khastalik> getHasta() {
        return hasta;
    }

    public void setHasta(List<Khastalik> hasta) {
        this.hasta = hasta;
    }

    public List<Akraba> getAkraba() {
        return akraba;
    }

    public void setAkraba(List<Akraba> akraba) {
        this.akraba = akraba;
    }

    public List<Doktor> getDoktor() {
        return doktor;
    }

    public void setDoktor(List<Doktor> doktor) {
        this.doktor = doktor;
    }

    public List<Hastane> getHastane() {
        return hastane;
    }

    public void setHastane(List<Hastane> hastane) {
        this.hastane = hastane;
    }

    public loginpBean() {

    }

    public String personelLogin() {
        ses = hu.getSessionFactory().openSession();
        ses.beginTransaction();
        Query query = ses.createQuery("from Personel p where p.tcno=:tcno and p.sifre=:sifre")
                .setParameter("tcno", tc)
                .setParameter("sifre", sifr);
        list = query.list();
        ses.getTransaction().commit();
        ses.close();
        if (!list.isEmpty()) {
            HttpSession hs = Util.getSession();
            hs.setAttribute("username", tc);
            return "anasayfap.xhtml";
        } else {
            FacesContext.getCurrentInstance().addMessage(null,
                    new FacesMessage(FacesMessage.SEVERITY_WARN,
                            "hatalı giriş", "tekrar dene!"));
            return "login.xhtml";
        }

    }

    public String logout() {
        HttpSession hs = Util.getSession();
        hs.invalidate();
        return "login.xhtml";
    }

    public List<Personel> personelBilgi() {
        Personel prs = new Personel();
        List<Personel> prslist = new ArrayList<>();
        ses = hu.getSessionFactory().openSession();
        ses.beginTransaction();
        Query q = ses.createQuery("from Personel b join b.adres where b.tcno='" + tc + "'");
        Iterator iter = q.list().iterator();
        Object[] obje;
        while (iter.hasNext()) {
            obje = (Object[]) iter.next();
            prs = (Personel) obje[0];
            prslist.add(prs);
        }
        ses.getTransaction().commit();
        ses.close();

        return prslist;
    }

    public List<Birey> bireyGetir() {
        Birey bry = new Birey();
        List<Birey> brylist = new ArrayList<Birey>();
        ses = hu.getSessionFactory().openSession();
        ses.beginTransaction();
        Query q = ses.createQuery("from Birey b join b.adres where b.tcno like '" + "%" + btcno + "%" + "'");
        Iterator iter = q.list().iterator();
        Object[] obje;
        while (iter.hasNext()) {
            obje = (Object[]) iter.next();
            bry = (Birey) obje[0];
            brylist.add(bry);
        }
        ses.getTransaction().commit();
        ses.close();
        if (!brylist.isEmpty()) {

            String yer = brylist.get(0).getAdres().getKonum();
            String[] geo = yer.split(",");
            double lat = Double.parseDouble(geo[0]);
            double lon = Double.parseDouble(geo[1]);
            String konum = brylist.get(0).getAdres().getMahalle();
            model = new DefaultMapModel();
            LatLng cor = new LatLng(lat, lon);
            model.addOverlay(new Marker(cor));
        }
        return brylist;
    }

    public List<Ilac> ilacGetir() {
        List<Ilac> ilac = new ArrayList<>();
        ses = hu.getSessionFactory().openSession();
        ses.beginTransaction();
        Query q = ses.createQuery("from Ilac i where i.iad like '" + "%" + ilacad + "%" + "' ");
        ilac = q.list();
        //.setParameter("ad", ilacad);

        ses.getTransaction().commit();
        ses.close();
        return ilac;
    }
}
