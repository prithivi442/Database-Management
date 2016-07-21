/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.Student.DAO;

import com.leapfrog.Student.dbutil.DbConnection;
import com.leapfrog.Student.entity.Student;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Prithivi Raj
 */
public class StudentDAOImpl implements StudentDAO {

    private DbConnection db = new DbConnection();

    @Override
    public int insert(Student s) throws ClassNotFoundException, SQLException {
       // List<Student> studentList = new ArrayList<>();
        String sql = "insert into student(id,fname,lname,phone,email,username,pass,college) values(?,?,?,?,?,?,?,?)";
        db.open();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setInt(1, s.getId());
        stmt.setString(2, s.getFname());
        stmt.setString(3, s.getLname());
        stmt.setString(4, s.getPhone());
        stmt.setString(5, s.getEmail());
        stmt.setString(6, s.getUsername());
        stmt.setString(7, s.getPassword());
        stmt.setString(8, s.getCollege());

        int result = db.executeUpdate();
        db.close();
        //studentList.add(S);
        return result;
    }

    @Override
    public List<Student> getAll() throws ClassNotFoundException, SQLException {
        List<Student> studentList = new ArrayList<>();
        String sql = "SELECT * FROM student ORDER BY id desc";
        db.open();
        db.initStatement(sql);
        ResultSet rs = db.executeQuery();
        while (rs.next()) {
            Student student = new Student();

            student.setId(rs.getInt("id"));
            student.setFname(rs.getString("fname"));
            student.setLname(rs.getString("lname"));
            student.setPhone(rs.getString("phone"));
            student.setUsername(rs.getString("email"));
            student.setEmail(rs.getString("username"));
            student.setCollege(rs.getString("college"));
            studentList.add(student);
        }
        
        db.close();

        return studentList;
    }

    @Override
    public Student searchById(int id) throws ClassNotFoundException, SQLException {
        Student student = new Student();
        String sql = "SELECT * FROM student where id=?";
        db.open();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setInt(1, id);
        ResultSet rs = db.executeQuery();
        while (rs.next()) {
            

            student.setId(rs.getInt("id"));
            student.setFname(rs.getString("fname"));
            student.setLname(rs.getString("lname"));
            student.setPhone(rs.getString("phone"));
            student.setUsername(rs.getString("email"));
            student.setEmail(rs.getString("username"));
            student.setCollege(rs.getString("college"));
        }
        
        db.close();

        return student;
    }

    @Override
    public List<Student> searchByName(String name) throws ClassNotFoundException, SQLException {
         List<Student> studentList = new ArrayList<>();
        String sql = "SELECT * FROM student where fname=?";
        db.open();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setString(1, name);
        ResultSet rs = db.executeQuery();
        while (rs.next()) {
            Student student = new Student();

            student.setId(rs.getInt("id"));
            student.setFname(rs.getString("fname"));
            student.setLname(rs.getString("lname"));
            student.setPhone(rs.getString("phone"));
            student.setUsername(rs.getString("email"));
            student.setEmail(rs.getString("username"));
            student.setCollege(rs.getString("college"));
            studentList.add(student);
        }
        
        db.close();

        return studentList;
    }

    @Override
    public int update(Student s) throws ClassNotFoundException, SQLException {
        String sql = "update from student set fname=?,lname=?,phone=?,email=?,username=?,pass=?,college=? where id=?";
        db.open();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setInt(8, s.getId());
        stmt.setString(1, s.getFname());
        stmt.setString(2, s.getLname());
        stmt.setString(3, s.getPhone());
        stmt.setString(4, s.getEmail());
        stmt.setString(4, s.getUsername());
        stmt.setString(6, s.getPassword());
        stmt.setString(7, s.getCollege());

        int result = db.executeUpdate();
        db.close();
        //studentList.add(S);
        return result;
    
    }

    @Override
    public int delete(int s) throws ClassNotFoundException, SQLException {
        String sql = "DELETE from student WHERE id=?";
        db.open();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setInt(1, s);
        int result = db.executeUpdate();
        db.close();
        //studentList.remove(S);
        //System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%");
        return result;
    }


    

}
