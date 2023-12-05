
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
public class myYoutubeVideos {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @Column(length = 100)
    private String videoTitle;
    
    @Column(length = 100)
    private String videoTopic;
    
    @Column(length = 200)
    private String videoLink;
    
    @Column(length = 100)
    private String videoPic;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getVideoTitle() {
        return videoTitle;
    }

    public void setVideoTitle(String videoTitle) {
        this.videoTitle = videoTitle;
    }

    public String getVideoTopic() {
        return videoTopic;
    }

    public void setVideoTopic(String videoTopic) {
        this.videoTopic = videoTopic;
    }

    public String getVideoLink() {
        return videoLink;
    }

    public void setVideoLink(String videoLink) {
        this.videoLink = videoLink;
    }

    public String getVideoPic() {
        return videoPic;
    }

    public void setVideoPic(String videoPic) {
        this.videoPic = videoPic;
    }

    public myYoutubeVideos(String videoTitle, String videoTopic, String videoLink, String videoPic) {
        this.videoTitle = videoTitle;
        this.videoTopic = videoTopic;
        this.videoLink = videoLink;
        this.videoPic = videoPic;
    }

    public myYoutubeVideos() {
    }

    @Override
    public String toString() {
        return "myYoutubeVideos{" + "id=" + id + ", videoTitle=" + videoTitle + ", videoTopic=" + videoTopic + ", videoLink=" + videoLink + ", videoPic=" + videoPic + '}';
    }

    
    
    
    
}
