package com.beans;

import com.pojos.Adres;
import com.pojos.Eczane;
import com.pojos.Hastane;
import com.util.HibernateUtil;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import javax.faces.event.ValueChangeEvent;
import org.hibernate.Query;
import org.hibernate.Session;
import org.primefaces.event.SelectEvent;
import org.primefaces.model.map.DefaultMapModel;
import org.primefaces.model.map.LatLng;
import org.primefaces.model.map.MapModel;
import org.primefaces.model.map.Marker;

@ManagedBean
@ViewScoped
public class dropDownBean implements Serializable {

    private Map<String, Map<String, String>> data = new HashMap<String, Map<String, String>>();
    private String country;
    private String city;
    private Hastane hstn;
    private Map<String, String> countries;
    private Map<String, String> cities;
    private List<Hastane> hastane;
    private Session ses;
    private HibernateUtil hu;
    private String konum;
    private MapModel model;
    private List<Eczane> eczane;
    private Eczane eczn;
    private List<Adres> adrs;

    public List<Adres> getAdrs() {
        return adrs;
    }

    public void setAdrs(List<Adres> adrs) {
        this.adrs = adrs;
    }

    public List<Eczane> getEczane() {
        return eczane;
    }

    public void setEczane(List<Eczane> eczane) {
        this.eczane = eczane;
    }

    public Eczane getEczn() {
        return eczn;
    }

    public void setEczn(Eczane eczn) {
        this.eczn = eczn;
    }

    public String getKonum() {
        return konum;
    }

    public void setKonum(String konum) {
        this.konum = konum;
    }

    public Hastane getHstn() {
        return hstn;
    }

    public void setHstn(Hastane hstn) {
        this.hstn = hstn;
    }

    public List<Hastane> getHastane() {
        return hastane;
    }

    public void setHastane(List<Hastane> hastane) {
        this.hastane = hastane;
    }

    @PostConstruct
    public void init() {
        countries = new HashMap<String, String>();
        countries.put("Kayseri", "Kayseri");

        Map<String, String> map = new HashMap<String, String>();
        map.put("Melikgazi", "Melikgazi");
        map.put("Kocasinan", "Kocasinan");
        map.put("Talas", "Talas");
        data.put("Kayseri", map);
    }

    public Map<String, Map<String, String>> getData() {
        return data;
    }

    public String getCountry() {
        return country;
    }

    public MapModel getModel() {
        return model;
    }

    public void setModel(MapModel model) {
        this.model = model;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Map<String, String> getCountries() {
        return countries;
    }

    public Map<String, String> getCities() {
        return cities;
    }

    public void onCountryChange() {
        if (country != null && !country.equals("")) {
            cities = data.get(country);
        } else {
            cities = new HashMap<String, String>();
        }
    }

    public void onCityChange() {
        if (city != null && !city.equals("")) {
            hastane = getirHastane();

        } else {
            hastane.clear();
        }
    }
    public void onCityChnge() {
        if (city != null && !city.equals("")) {
            eczane.clear();
            eczane = eczaneGetir();

        } else {
            eczane.clear();
        }
    }

    public void displayLocation() {
        FacesMessage msg;
        if (city != null && country != null) {
            msg = new FacesMessage("Seçili", city + " - " + country);
        } else {
            msg = new FacesMessage(FacesMessage.SEVERITY_ERROR, "Hata", "Şehir Seçilmedi!");
        }

        FacesContext.getCurrentInstance().addMessage(null, msg);
    }

    public List<Hastane> getirHastane() {
        ses = hu.getSessionFactory().openSession();
        ses.beginTransaction();
        Query query = ses.createQuery("from Hastane h where h.ilce=:ilce")
                .setParameter("ilce", city);
        hastane = query.list();
        ses.getTransaction().commit();
        ses.close();
        return hastane;
    }

    public List<Eczane> eczaneGetir() {
        ses = hu.getSessionFactory().openSession();
        ses.beginTransaction();
        Query query = ses.createQuery("from Eczane e where e.ilce=:ilce")
                .setParameter("ilce", city);
        eczane = query.list();
        ses.getTransaction().commit();
        ses.close();
        return eczane;
    }

    public String hKonum() {

        //String yer = null;
        if (hastane.isEmpty()) {
            konum = "38.7222113, 35.4874089";
            String[] geo = konum.split(",");
            double lat = Double.parseDouble(geo[0]);
            double lon = Double.parseDouble(geo[1]);
            model = new DefaultMapModel();
            LatLng cor = new LatLng(lat, lon);
            model.addOverlay(new Marker(cor));
        } else {
            konum = hastane.get(0).getKonum();
            String[] geo = konum.split(",");
            double lat = Double.parseDouble(geo[0]);
            double lon = Double.parseDouble(geo[1]);
            model = new DefaultMapModel();
            LatLng cor = new LatLng(lat, lon);
            model.addOverlay(new Marker(cor));
        }

        return konum;
    }

    public String eKonum() {

        String yer;
        if (eczane.isEmpty()) {
            yer = "38.7222113, 35.4874089";
            String[] geo = yer.split(",");
            double lat = Double.parseDouble(geo[0]);
            double lon = Double.parseDouble(geo[1]);
            model = new DefaultMapModel();
            LatLng cor = new LatLng(lat, lon);
            model.addOverlay(new Marker(cor));
        } else {
            yer = eczane.get(0).getKonum();
            String[] geo = yer.split(",");
            double lat = Double.parseDouble(geo[0]);
            double lon = Double.parseDouble(geo[1]);
            model = new DefaultMapModel();
            LatLng cor = new LatLng(lat, lon);
            model.addOverlay(new Marker(cor));
        }

        return yer;
    }
    public List<Adres> adresGetir(){
        List<Adres> adres = new ArrayList<>();
        ses = hu.getSessionFactory().openSession();
        ses.beginTransaction();
        Query q = ses.createQuery("from Adres");
        adres = q.list();
        ses.beginTransaction().commit();
        ses.close();
        return adres;
    }
}
