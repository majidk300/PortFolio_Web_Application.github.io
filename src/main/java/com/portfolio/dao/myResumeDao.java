
package com.portfolio.dao;

import com.portfolio.entities.ResumePicEntities;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import com.portfolio.entities.myResume;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author Majid
 */
public class myResumeDao {
    
    private SessionFactory factory;
    
    public myResumeDao(SessionFactory factory){
        this.factory=factory;
    }
    
    public boolean getAllResumeData(myResume resume){
        
        boolean flag = false;
        
        try{
            
            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();
            
            session.save(resume);
            
            tx.commit();
            session.close();
            
            return flag=true;
            
        }catch (Exception e){
            e.printStackTrace();
        }
        
        
        return flag;
    }
    
    public myResume getResume(){
        
        myResume result = null;
        
        try{
            
            Session session  =this.factory.openSession();
            
            Query q = session.createQuery("from myResume");
            result = (myResume) q.uniqueResult();
            
            session.close();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return result;
        
    }
    
    public boolean saveResumePic(ResumePicEntities resumePic){
        
        boolean flag = false;
        
        try{
            
            Session session  = this.factory.openSession();
            Transaction tx = session.beginTransaction();
            
            session.save(resumePic);
            
            tx.commit();
            session.close();
            
            return flag = true;
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
        return flag;
        
    }
    
    public ResumePicEntities getResumPic(){
        
        ResumePicEntities resume = null;
        
        try{
            
            Session session  = this.factory.openSession();
            
            Query q = session.createQuery("from ResumePicEntities");
            resume = (ResumePicEntities) q.uniqueResult();
            
            session.close();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
        return resume;
    }
    
}
