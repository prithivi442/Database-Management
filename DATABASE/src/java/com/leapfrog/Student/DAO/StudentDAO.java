/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.Student.DAO;

import com.leapfrog.Student.entity.Student;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Prithivi Raj
 */
public interface StudentDAO {
    int insert(Student S)throws ClassNotFoundException, SQLException;
    int update(Student S)throws ClassNotFoundException, SQLException;
    List<Student> getAll()throws ClassNotFoundException, SQLException;
    Student searchById(int id)throws ClassNotFoundException, SQLException;
    List<Student> searchByName(String name)throws ClassNotFoundException, SQLException;
    int delete(int S)throws ClassNotFoundException, SQLException;
   
    
}
