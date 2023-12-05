
package com.portfolio.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Majid
 */
@Entity
@Table(name="UserDetails")
public class Details{
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @Column(length=100)
    private String name;
    
    @Column(length=100)
    private String profession;
    
    @Column(length=500)
    private String bio;
    
    @Column(length=200)
    private String facebook;
    
    @Column(length=200)
    private String instagram;
    
    @Column(length=200)
    private String linkdin;
    
    @Column(length=100)
    private String photo;
    
    @Column(length=100)
    private String email;
    
    @Column(length=100)
    private String phone;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public String getFacebook() {
        return facebook;
    }

    public void setFacebook(String facebook) {
        this.facebook = facebook;
    }

    public String getInstagram() {
        return instagram;
    }

    public void setInstagram(String instagram) {
        this.instagram = instagram;
    }

    public String getLinkdin() {
        return linkdin;
    }

    public void setLinkdin(String linkdin) {
        this.linkdin = linkdin;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Details(String name, String profession, String bio, String facebook, String instagram, String linkdin, String photo, String email, String phone) {
        this.name = name;
        this.profession = profession;
        this.bio = bio;
        this.facebook = facebook;
        this.instagram = instagram;
        this.linkdin = linkdin;
        this.photo = photo;
        this.email = email;
        this.phone = phone;
    }

    public Details() {
    }

    @Override
    public String toString() {
        return "Details{" + "id=" + id + ", name=" + name + ", profession=" + profession + ", bio=" + bio + ", facebook=" + facebook + ", instagram=" + instagram + ", linkdin=" + linkdin + ", photo=" + photo + ", email=" + email + ", phone=" + phone + '}';
    }
    
    
}
