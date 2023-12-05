
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
public class ResumePicEntities {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @Column(length = 200)
    private String resumePic;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getResumePic() {
        return resumePic;
    }

    public void setResumePic(String resumePic) {
        this.resumePic = resumePic;
    }

    public ResumePicEntities(String resumePic) {
        this.resumePic = resumePic;
    }

    public ResumePicEntities() {
    }

    @Override
    public String toString() {
        return "ResumePicEntities{" + "id=" + id + ", resumePic=" + resumePic + '}';
    }

       
    
    
}
