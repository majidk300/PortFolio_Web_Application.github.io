
package com.portfolio.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Majid
 */
@Entity
public class myResume {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @Column(length=100)
    private String ProgrammingLanguage;
    
    @Column(length=100)
    private String webTechnology;
    
    @Column(length=100)
    private String DatabaseName;
    
    @Column(length=100)
    private String frameWorks;
            
   @Column(length=100)
    private String DevelopmetTools;
   
   @Column(length=100)
    private String otherSkills;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProgrammingLanguage() {
        return ProgrammingLanguage;
    }

    public void setProgrammingLanguage(String ProgrammingLanguage) {
        this.ProgrammingLanguage = ProgrammingLanguage;
    }

    public String getWebTechnology() {
        return webTechnology;
    }

    public void setWebTechnology(String webTechnology) {
        this.webTechnology = webTechnology;
    }

    public String getDatabase() {
        return DatabaseName;
    }

    public void setDatabase(String Database) {
        this.DatabaseName = Database;
    }

    public String getFrameWorks() {
        return frameWorks;
    }

    public void setFrameWorks(String frameWorks) {
        this.frameWorks = frameWorks;
    }

    public String getDevelopmetTools() {
        return DevelopmetTools;
    }

    public void setDevelopmetTools(String DevelopmetTools) {
        this.DevelopmetTools = DevelopmetTools;
    }

    public String getOtherSkills() {
        return otherSkills;
    }

    public void setOtherSkills(String otherSkills) {
        this.otherSkills = otherSkills;
    }

    public myResume(String ProgrammingLanguage, String webTechnology, String Database, String frameWorks, String DevelopmetTools, String otherSkills) {
        this.ProgrammingLanguage = ProgrammingLanguage;
        this.webTechnology = webTechnology;
        this.DatabaseName = Database;
        this.frameWorks = frameWorks;
        this.DevelopmetTools = DevelopmetTools;
        this.otherSkills = otherSkills;
    }

    public myResume() {
    }

    @Override
    public String toString() {
        return "myResume{" + "id=" + id + ", ProgrammingLanguage=" + ProgrammingLanguage + ", webTechnology=" + webTechnology + ", Database=" + DatabaseName + ", frameWorks=" + frameWorks + ", DevelopmetTools=" + DevelopmetTools + ", otherSkills=" + otherSkills + '}';
    }

    
}
