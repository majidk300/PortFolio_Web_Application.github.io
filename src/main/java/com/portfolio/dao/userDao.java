
package com.portfolio.dao;

import com.portfolio.entities.UserRegister;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.hibernate.query.*;

/**
 *
 * @author Majid
 */
public class userDao {
    
    private SessionFactory factoty;
    
    public userDao(SessionFactory factory){
        this.factoty=factory;
    }
    
    public UserRegister getUserByEmailAndPassword(String email, String password){
        
        UserRegister user = null;
        
        try{
            
            String query = "from UserRegister where email=: e and password=:p";
            
            Session session = this.factoty.openSession();
            
            Query q = session.createQuery(query);
            
            q.setParameter("e", email);
            q.setParameter("p", password);
            
            user =(UserRegister) q.uniqueResult();
            
            session.close();
            
        }catch (Exception e){
            e.printStackTrace();
        }
        
        return user;
    }
}
