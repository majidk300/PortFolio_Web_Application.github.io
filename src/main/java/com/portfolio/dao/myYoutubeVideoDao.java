
package com.portfolio.dao;

import com.portfolio.entities.myYoutubeVideos;
import java.util.List;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author Majid
 */
public class myYoutubeVideoDao {
    
    private SessionFactory factory;
    
    public myYoutubeVideoDao(SessionFactory factory){
        this.factory=factory;
    }
    
    public boolean saveYoutubeVideos(myYoutubeVideos videos){
        
        boolean saveVideo = false;
        
        try{
            
            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();
            
            session.save(videos);
            
            tx.commit();
            session.close();
            
            saveVideo=true;
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
        return saveVideo;
        
    }
    
    
    public List<myYoutubeVideos> getAllVideos(){
        
        Session session = this.factory.openSession();
        
        Query q = session.createQuery("from myYoutubeVideos order by id desc");
        
        q.setMaxResults(3);
        
        List<myYoutubeVideos> list = q.list();
        
        session.close();;
        
        return list;
    }
    
}
