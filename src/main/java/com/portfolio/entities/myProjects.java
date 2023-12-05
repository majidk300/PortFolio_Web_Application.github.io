
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
public class myProjects {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int  id;
    
    @Column(length = 100, name="projectTitle")
    private String title;
    
    @Column(length = 100, name="projectName")
    private String topic;
    
    @Column(length = 200, name="projectLink")
    private String projectLink;
    
    @Column(length = 100, name="projectPhoto")
    private String pic;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getProjectLink() {
        return projectLink;
    }

    public void setProjectLink(String projectLink) {
        this.projectLink = projectLink;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }


    

    public myProjects(String title, String topic, String projectLink, String pic) {
        this.title = title;
        this.topic = topic;
        this.projectLink = projectLink;
        this.pic = pic;
    }

 

    public myProjects() {
    }

    @Override
    public String toString() {
        return "myProjects{" + "id=" + id + ", title=" + title + ", topic=" + topic + ", projectLink=" + projectLink + ", pic=" + pic + '}';
    }

 
    

   
       
    
    
}
