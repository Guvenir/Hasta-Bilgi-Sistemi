package com.beans;

import com.javas.Theme;
import com.javas.Util;
import com.pojos.Adres;
import com.pojos.Aile;
import com.pojos.Akraba;
import com.pojos.Birey;
import com.pojos.Birim;
import com.pojos.Doktor;
import com.pojos.Doz;
import com.pojos.Durum;
import com.pojos.Eczane;
import com.pojos.Hastane;
import com.pojos.Htanim;
import com.pojos.Ilac;
import com.pojos.IlacBilgi;
import com.pojos.Khastalik;
import com.pojos.Konum;
import com.pojos.Personel;
import com.pojos.Recete;
import com.util.HibernateUtil;
import java.util.ArrayList;
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
public class loginBean {

    public loginBean() {
    }
    private MapModel model;
    private String tcno;
    private String sifre;
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
    private List<Durum> durum;
    private List<Konum> konum;
    private List<Aile> aile;
    private List<Eczane> eczane;
    private List<Ilac> ilac;
    private List<Doz> doz;
    private List<IlacBilgi> ibilgi;
    private Recete rec;
    private List<Birim> birim;
    private List<Htanim> ht;
    private Birey bry;
    private Adres adrs;
    private final String tema = "black-tie";
    private String theme;

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

    public Birey getBry() {
        return bry;
    }

    public void setBry(Birey bry) {
        this.bry = bry;
    }

    public Adres getAdrs() {
        return adrs;
    }

    public void setAdrs(Adres adrs) {
        this.adrs = adrs;
    }

    public List<Htanim> getHt() {
        return ht;
    }

    public void setHt(List<Htanim> ht) {
        this.ht = ht;
    }

    public MapModel getModel() {
        return model;
    }

    public List<Birim> getBirim() {
        return birim;
    }

    public void setBirim(List<Birim> birim) {
        this.birim = birim;
    }

    public Recete getRec() {
        return rec;
    }

    public void setRec(Recete rec) {
        this.rec = rec;
    }

    public List<Ilac> getIlac() {
        return ilac;
    }

    public void setIlac(List<Ilac> ilac) {
        this.ilac = ilac;
    }

    public List<Doz> getDoz() {
        return doz;
    }

    public void setDoz(List<Doz> doz) {
        this.doz = doz;
    }

    public List<IlacBilgi> getIbilgi() {
        return ibilgi;
    }

    public void setIbilgi(List<IlacBilgi> ibilgi) {
        this.ibilgi = ibilgi;
    }

    public List<Eczane> getEczane() {
        return eczane;
    }

    public void setEczane(List<Eczane> eczane) {
        this.eczane = eczane;
    }

    public List<Adres> getAdres() {
        return adres;
    }

    public void setAdres(List<Adres> adres) {
        this.adres = adres;
    }

    public List<Durum> getDurum() {
        return durum;
    }

    public void setDurum(List<Durum> durum) {
        this.durum = durum;
    }

    public List<Konum> getKonum() {
        return konum;
    }

    public void setKonum(List<Konum> konum) {
        this.konum = konum;
    }

    public List<Aile> getAile() {
        return aile;
    }

    public void setAile(List<Aile> aile) {
        this.aile = aile;
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

    public List<Personel> getList() {
        return list;
    }

    public void setList(List<Personel> list) {
        this.list = list;
    }

    public String getTcno() {
        return tcno;
    }

    public void setTcno(String tcno) {
        this.tcno = tcno;
    }

    public String getSifre() {
        return sifre;
    }

    public void setSifre(String sifre) {
        this.sifre = sifre;
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

    public String bireyLogin() {
        ses = hu.getSessionFactory().openSession();
        ses.beginTransaction();
        Query query = ses.createQuery("from Birey b where b.tcno=:tcno and b.sifre=:sifre ")
                .setParameter("tcno", tcno)
                .setParameter("sifre", sifre);
        liste = query.list();
        ses.getTransaction().commit();
        ses.close();

        if (!liste.isEmpty()) {
            HttpSession hs = Util.getSession();
            hs.setAttribute("username", liste.get(0).getAd());
            return "anasayfa.xhtml";
        } else {

            return "index.xhtml";
        }
    }

    public void gecersiz() {
        FacesContext context = FacesContext.getCurrentInstance();

        context.addMessage("growl", new FacesMessage("Başarısız", "Tekrar Deneyin!"));
    }

    public List<Recete> receteGetir() {
        Recete rcte = new Recete();
        List<Recete> rctlist = new ArrayList<Recete>();
        ses = hu.getSessionFactory().openSession();
        ses.beginTransaction();
        Query q = ses.createQuery("from Recete r  join r.birey join r.doktor "
                + "rd join rd.hastane join r.hbirim join r.ilacBilgi  rib join "
                + "rib.ilac join rib.doz where r.birey.tcno=:tcno")
                .setParameter("tcno", tcno);
        Iterator iter = q.list().iterator();
        Object[] obje;
        while (iter.hasNext()) {
            obje = (Object[]) iter.next();
            rcte = (Recete) obje[0];
            rctlist.add(rcte);
        }
        ses.getTransaction().commit();
        ses.close();
        return rctlist;
    }

    public List<Birey> bireyBilgi() {
        Birey bryadrs = new Birey();
        List<Birey> brylist = new ArrayList<>();
        ses = hu.getSessionFactory().openSession();
        ses.beginTransaction();
        Query q = ses.createQuery("from Birey b join b.adres where b.tcno='" + tcno + "'");
        Iterator iter = q.list().iterator();
        Object[] obje;
        while (iter.hasNext()) {
            obje = (Object[]) iter.next();
            bryadrs = (Birey) obje[0];
            brylist.add(bryadrs);
        }
        ses.getTransaction().commit();
        ses.close();
        return brylist;
    }

    public List<Akraba> akrabaGetir() {
        Akraba akr = new Akraba();
        List<Akraba> akrlist = new ArrayList<Akraba>();
        ses = hu.getSessionFactory().openSession();
        ses.beginTransaction();
        Query q1 = ses.createQuery("from Akraba a where a.birey.tcno= '" + tcno + "'");
        Query q2 = ses.createQuery("from Durum");
        Query q3 = ses.createQuery("from Konum");
        Query q4 = ses.createQuery("from Birey");
        liste = q4.list();
        konum = q3.list();
        durum = q2.list();
        akraba = q1.list();
        int i = akraba.get(0).getAile().getAileid();
        Query q5 = ses.createQuery("from Akraba a where a.aile.aileid= '" + i + "'");
        akraba = q5.list();

        ses.getTransaction().commit();
        ses.close();
        return akraba;
    }

    public List<Recete> ilacBilgi() {
        ses = hu.getSessionFactory().openSession();
        ses.beginTransaction();
        Query q2 = ses.createQuery("from Recete r where r.birey.tcno = '" + tcno + "'");
        recete = q2.list();
        ses.getTransaction().commit();
        ses.close();
        return recete;
    }

    public String yerGetir() {
        Birey bryadrs = new Birey();
        List<Birey> brylist = new ArrayList<>();
        ses = hu.getSessionFactory().openSession();
        ses.beginTransaction();
        Query q = ses.createQuery("from Birey b join b.adres where b.tcno='" + tcno + "'");
        Iterator iter = q.list().iterator();
        ses.getTransaction().commit();
        ses.close();
        Object[] obje;
        while (iter.hasNext()) {
            obje = (Object[]) iter.next();
            bryadrs = (Birey) obje[0];
            brylist.add(bryadrs);
        }
        String yer = brylist.get(0).getAdres().getKonum();
        String[] geo = yer.split(",");
        double lat = Double.parseDouble(geo[0]);
        double lon = Double.parseDouble(geo[1]);
        String konum = brylist.get(0).getAdres().getMahalle();
        model = new DefaultMapModel();
        LatLng cor = new LatLng(lat, lon);
        model.addOverlay(new Marker(cor));
        return yer;
    }

    public String logout() {
        HttpSession hs = Util.getSession();
        hs.invalidate();
        return "login.xhtml";
    }

    public List<Khastalik> kHastalik() {
        Khastalik kh = new Khastalik();
        List<Khastalik> khlist = new ArrayList<Khastalik>();
        ses = hu.getSessionFactory().openSession();
        ses.beginTransaction();
        Query q = ses.createQuery("from Khastalik kh join kh.htanim where kh.birey.tcno=:tcno")
                .setParameter("tcno", tcno);
        Iterator iter = q.list().iterator();
        ses.getTransaction().commit();
        ses.close();
        Object[] obje;
        while (iter.hasNext()) {
            obje = (Object[]) iter.next();
            kh = (Khastalik) obje[0];
            khlist.add(kh);
        }
        return khlist;
    }

    public String temaGetir() {
        String theme = tema;
        List<Birey> brylist = new ArrayList<>();
        if (liste.isEmpty()) {
            return theme;
        } else {
            ses = hu.getSessionFactory().openSession();
            ses.beginTransaction();
            Query q = ses.createQuery("from Birey b where b.tcno =:tcno ")
                    .setParameter("tcno", tcno);
            brylist = q.list();
            ses.getTransaction().commit();
            ses.close();
            theme = brylist.get(0).getTema();
            return theme;
        }
    }

    public void saveTheme() {

        if (theme != null && !theme.equals("")) {

            ses = hu.getSessionFactory().openSession();
            ses.beginTransaction();
            Query q = ses.createQuery("update Birey b set tema=:tema where b.tcno=:tcno");
            q.setParameter("tema", theme);
            q.setParameter("tcno", tcno);
            int result = q.executeUpdate();
            ses.getTransaction().commit();
            ses.close();
        } else {
            theme = tema;
            ses = hu.getSessionFactory().openSession();
            ses.beginTransaction();
            Query q = ses.createQuery("update Birey b set tema=:tema where b.tcno=:tcno");
            q.setParameter("tema", theme);
            q.setParameter("tcno", tcno);
            int result = q.executeUpdate();
            ses.getTransaction().commit();
            ses.close();
        }
        FacesContext fc = FacesContext.getCurrentInstance();
        fc.addMessage(null, new FacesMessage("Tema Başarı ile kaydedildi" + theme));
    }
}
