package com.ltts.HibernateDemo.TestHibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        Configuration cfg=new Configuration();
        cfg.configure("hibernate.cfg.xml");
        SessionFactory factory=cfg.buildSessionFactory();
        Session session=factory.openSession();
        Transaction t=session.beginTransaction();
        Employee e=new Employee();
        e.setId(664);
        e.setFirstName("Bhagyasree");
        e.setLastName("Kuchipudi");
        session.save(e);
        t.commit();
        factory.close();
        session.close();
    }
}
