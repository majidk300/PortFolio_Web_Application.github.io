
package com.portfolio.dao;

import com.portfolio.entities.Details;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.hibernate.query.*;
/**
 *
 * @author Majid
 */
public class userDetailDao {
    
    private SessionFactory factory;
    
    public userDetailDao(SessionFactory factory){
        this.factory=factory;
    }
    
    public Details getaAllDetailsByEmail(String email){
        
        Details  d=null;
        
        try{
            
            String query = "from Details where email=:e";
            
            Session s = this.factory.openSession();
            
            Query q = s.createQuery(query);
            
            q.setParameter("e", email);
            
              d = (Details)q.uniqueResult();
              
              s.close();
            
        }catch(Exception e){
            e.printStackTrace();
        }
       
        return d;
    }
    
    public Details getUserDetails(){
        
        Details result = null;
        
        try{
            
            Session session  = this.factory.openSession();
            
            Query q = session.createQuery("from Details");
            
            result = (Details) q.uniqueResult();
            
            session.close();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return result;
    }
    
}
