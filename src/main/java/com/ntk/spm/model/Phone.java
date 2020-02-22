package com.ntk.spm.model;

import javax.persistence.*;

@Entity
@Table(name = "Phones")
public class Phone extends Product{
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
    @ManyToOne()
    @JoinColumn(name = "id_brand")
    private Brand brand;
    @Column(name = "flash_light")
    private String flash_light;
    @Column(name = "record_video")
    private String record_video;
    @Column(name = "rear_camera_resolution")
    private String rear_camera_resolution;
    @Column(name = "rear_camera_advanced")
    private String rear_camera_advanced;
    @Column(name = "camera_info_more")
    private String camera_info_more;

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public String getFront_camera_resolution() {
        return front_camera_resolution;
    }

    public void setFront_camera_resolution(String front_camera_resolution) {
        this.front_camera_resolution = front_camera_resolution;
    }

    @Column(name = "front_camera_resolution")
    private String front_camera_resolution;
    @Column(name = "chipset")
    private String chipset;
    @Column(name = "speed_cpu")
    private String speed_cpu;
    @Column(name = "chip_graphic")
    private String chip_graphic;
    @Column(name = "internal_memory")
    private String internal_memory;
    @Column(name = "remaining_memory")
    private String remaining_memory;
    @Column(name = "external_memory_card")
    private String external_memory_card;
    @Column(name = "mobile_network")
    private String mobile_network;
    @Column(name = "sim")
    private String sim;
    @Column(name = "wifi")
    private String wifi;
    @Column(name = "gps")
    private String gps;
    @Column(name = "bluetooth")
    private String bluetooth;
    @Column(name = "charging_connector")
    private String charging_connector;
    @Column(name = "jack_headphone")
    private String jack_headphone;
    @Column(name = "more_connector")
    private String more_connector;
    @Column(name = "design")
    private String design;
    @Column(name = "advanced_security")
    private String advanced_security;
    @Column(name = "special_features")
    private String special_features;
    @Column(name = "movie")
    private String movie;
    @Column(name = "record")
    private String record;
    @Column(name = "radio")
    private String radio;
    @Column(name = "music")
    private String music;
    @Column(name = "videocall")
    private String videocall;

    public String getVideocall() {
        return videocall;
    }

    public void setVideocall(String videocall) {
        this.videocall = videocall;
    }

    public Phone() {
    }



    public String getFlash_light() {
        return flash_light;
    }

    public void setFlash_light(String flash_light) {
        this.flash_light = flash_light;
    }

    public String getRecord_video() {
        return record_video;
    }

    public void setRecord_video(String record_video) {
        this.record_video = record_video;
    }

    public String getRear_camera_resolution() {
        return rear_camera_resolution;
    }

    public void setRear_camera_resolution(String rear_camera_resolution) {
        this.rear_camera_resolution = rear_camera_resolution;
    }

    public String getRear_camera_advanced() {
        return rear_camera_advanced;
    }

    public void setRear_camera_advanced(String rear_camera_advanced) {
        this.rear_camera_advanced = rear_camera_advanced;
    }

    public String getCamera_info_more() {
        return camera_info_more;
    }

    public void setCamera_info_more(String camera_info_more) {
        this.camera_info_more = camera_info_more;
    }

    public String getChipset() {
        return chipset;
    }

    public void setChipset(String chipset) {
        this.chipset = chipset;
    }

    public String getSpeed_cpu() {
        return speed_cpu;
    }

    public void setSpeed_cpu(String speed_cpu) {
        this.speed_cpu = speed_cpu;
    }

    public String getChip_graphic() {
        return chip_graphic;
    }

    public void setChip_graphic(String chip_graphic) {
        this.chip_graphic = chip_graphic;
    }

    public String getInternal_memory() {
        return internal_memory;
    }

    public void setInternal_memory(String internal_memory) {
        this.internal_memory = internal_memory;
    }

    public String getRemaining_memory() {
        return remaining_memory;
    }

    public void setRemaining_memory(String remaining_memory) {
        this.remaining_memory = remaining_memory;
    }

    public String getExternal_memory_card() {
        return external_memory_card;
    }

    public void setExternal_memory_card(String external_memory_card) {
        this.external_memory_card = external_memory_card;
    }

    public String getMobile_network() {
        return mobile_network;
    }

    public void setMobile_network(String mobile_network) {
        this.mobile_network = mobile_network;
    }

    public String getSim() {
        return sim;
    }

    public void setSim(String sim) {
        this.sim = sim;
    }

    public String getWifi() {
        return wifi;
    }

    public void setWifi(String wifi) {
        this.wifi = wifi;
    }

    public String getGps() {
        return gps;
    }

    public void setGps(String gps) {
        this.gps = gps;
    }

    public String getBluetooth() {
        return bluetooth;
    }

    public void setBluetooth(String bluetooth) {
        this.bluetooth = bluetooth;
    }

    public String getCharging_connector() {
        return charging_connector;
    }

    public void setCharging_connector(String charging_connector) {
        this.charging_connector = charging_connector;
    }

    public String getJack_headphone() {
        return jack_headphone;
    }

    public void setJack_headphone(String jack_headphone) {
        this.jack_headphone = jack_headphone;
    }

    public String getMore_connector() {
        return more_connector;
    }

    public void setMore_connector(String more_connector) {
        this.more_connector = more_connector;
    }

    public String getDesign() {
        return design;
    }

    public void setDesign(String design) {
        this.design = design;
    }

    public String getAdvanced_security() {
        return advanced_security;
    }

    public void setAdvanced_security(String advanced_security) {
        this.advanced_security = advanced_security;
    }

    public String getSpecial_features() {
        return special_features;
    }

    public void setSpecial_features(String special_features) {
        this.special_features = special_features;
    }

    public String getMovie() {
        return movie;
    }

    public void setMovie(String movie) {
        this.movie = movie;
    }

    public String getRecord() {
        return record;
    }

    public void setRecord(String record) {
        this.record = record;
    }

    public String getRadio() {
        return radio;
    }

    public void setRadio(String radio) {
        this.radio = radio;
    }

    public String getMusic() {
        return music;
    }

    public void setMusic(String music) {
        this.music = music;
    }
}
