package com.portfolio.dao;

import com.portfolio.entities.myProjects;
import java.util.List;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author Majid
 */
public class myProjectDao {

    private SessionFactory factory;

    public myProjectDao(SessionFactory factory) {
        this.factory = factory;
    }

    public boolean saveProjects(myProjects projects) {

        boolean f = false;

        try {

            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();

            session.save(projects);
            
            tx.commit();
            session.close();
            
            f=true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }
    
    public List<myProjects> getallProjects(){
        
        Session session = this.factory.openSession();
        
        Query q  = session.createQuery("from myProjects order by id desc");
        
        q.setMaxResults(6);
        
        List<myProjects> list = q.list();
        
        session.close();
        
        return list;
    }

}
