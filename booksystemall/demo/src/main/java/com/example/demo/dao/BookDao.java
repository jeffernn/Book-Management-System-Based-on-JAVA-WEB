package com.example.demo.dao;

import com.example.demo.entity.Book;
import com.example.demo.entity.Borrow;
import com.example.demo.entity.Relation;
import com.example.demo.entity.Users;

import java.sql.*;
import java.util.ArrayList;

public class BookDao {

    public static ArrayList<Book> getAllBook() throws SQLException {
        ArrayList<Book> list = new ArrayList<>();
        Connection conn = MyConn.getConn();
        String sql = "select * from book";
        com.mysql.jdbc.PreparedStatement pst = (com.mysql.jdbc.PreparedStatement) conn.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        while (rs.next()) {
            String id = rs.getString("id");
            String bookname = rs.getString("bookname");
            String author = rs.getString("author");
            String press = rs.getString("press");
            String pubdate = rs.getString("pubdate");
            String isbn = rs.getString("isbn");
            String available=rs.getString("available");
            Book book = new Book(id, bookname, author, press, pubdate, isbn,available);
            list.add(book);
        }
        rs.close();
        conn.close();
        return list;
    }
    //显示图书的方法
    public static ArrayList getAllBook1(int page) throws SQLException {
        int row=0;
        int pageSize=3;
        if(page>1){
            row=(page-1)*pageSize;
        }
        ArrayList list = new ArrayList();
        Connection conn = MyConn.getConn();
        String sql = "select * from book limit ?,?";
        PreparedStatement pst = conn.prepareStatement(sql);
        pst.setInt(1,row);
        pst.setInt(2,pageSize);
        ResultSet rs = pst.executeQuery();
        while (rs.next()) {
            String id = rs.getString("id");
            String bookname = rs.getString("bookname");
            String author = rs.getString("author");
            String press = rs.getString("press");
            String pubdate = rs.getString("pubdate");
            String isbn = rs.getString("isbn");
            String available=rs.getString("available");
            Book book = new Book(id,bookname,author,press,pubdate,isbn,available);
            list.add(book);
        }
        rs.close();
        conn.close();
        return list;
    }
    public static ArrayList<Users> getAllUsers() throws SQLException{
        ArrayList<Users> list=new ArrayList<>();
        Connection conn =MyConn.getConn();
        String sql = "select * from users";
        com.mysql.jdbc.PreparedStatement pst = (com.mysql.jdbc.PreparedStatement) conn.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        while (rs.next()){
            String user = rs.getString("id");
            String username=rs.getString("username");
            String password=rs.getString("password");
            String email=rs.getString("email");
            String registration=rs.getString("registration");
            Users users=new Users(user,username,password,email,registration);
            list.add(users);
        }
        rs.close();
        conn.close();
        return list;
    }
    public static ArrayList<Borrow> getAllBorrow() throws SQLException{
        ArrayList<Borrow> list=new ArrayList<>();
        Connection conn =MyConn.getConn();
        String sql = "select * from borrow";
        com.mysql.jdbc.PreparedStatement pst = (com.mysql.jdbc.PreparedStatement) conn.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        while (rs.next()){
            String record=rs.getString("record");
            String user=rs.getString("user");
            String id=rs.getString("id");
            String borrow=rs.getString("borrow");
            String returnn=rs.getString("returnn");
            Borrow borrow1=new Borrow(record,user,id,borrow,returnn);
            list.add(borrow1);
        }
        rs.close();
        conn.close();
        return list;

    }
    public static ArrayList<Relation> getAllRelation() throws SQLException{
        ArrayList<Relation> list=new ArrayList<>();
        Connection conn =MyConn.getConn();
        String sql = "select * from relation";
        com.mysql.jdbc.PreparedStatement pst = (com.mysql.jdbc.PreparedStatement) conn.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        while (rs.next()){
            String relaion=rs.getString("relation");
            String user=rs.getString("user");
            String id=rs.getString("id");
            Relation relation=new Relation(relaion,user,id);
            list.add(relation);
        }
        rs.close();
        conn.close();
        return list;
    }


    public static int delBook(String id) throws SQLException{
        Connection conn =MyConn.getConn();
        String sql="delete from book where id=?";
        PreparedStatement pst =conn.prepareStatement(sql);
        pst.setString(1,id);
        int i=pst.executeUpdate();
        conn.close();
        return i;
    }
    public static int delUsers(String user) throws SQLException{
        Connection conn =MyConn.getConn();
        String sql="delete from users where user=?";
        PreparedStatement pst =conn.prepareStatement(sql);
        pst.setString(1,user);
        int i=pst.executeUpdate();
        conn.close();
        return i;
    }
    public static int delBorrow(String record) throws SQLException{
        Connection conn =MyConn.getConn();
        String sql="delete from borrow where record=?";
        PreparedStatement pst =conn.prepareStatement(sql);
        pst.setString(1,record);
        int i=pst.executeUpdate();
        conn.close();
        return i;
    }
    public static int delRelation(String relation) throws SQLException{
        Connection conn =MyConn.getConn();
        String sql="delete from relation where relation=?";
        PreparedStatement pst =conn.prepareStatement(sql);
        pst.setString(1,relation);
        int i=pst.executeUpdate();
        conn.close();
        return i;
    }
    public static int updateBook(Book book){
        Connection conn=MyConn.getConn();
        String sql="update book set bookname=?,author=?,press=?,pubdate=?,isbn=? where id=?";
        PreparedStatement pst= null;
        int i =0;
        try {
            pst = conn.prepareStatement(sql);
            pst.setString(1,book.getBookname());
            pst.setString(2,book.getAuthor());
            pst.setString(3,book.getPress());
            pst.setString(4,book.getPubdate());
            pst.setString(5,book.getIsbn());
            pst.setString(6,book.getId());
            i=pst.executeUpdate();
            conn.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return i;
    }
    public static int updateUsers(Users users){
        Connection conn=MyConn.getConn();
        String sql="update users set username=?,password=?,email=?,registration=? where user=?";
        PreparedStatement pst= null;
        int i =0;
        try{
            pst=conn.prepareStatement(sql);
            pst.setString(1,users.getUsername());
            pst.setString(2,users.getPassword());
            pst.setString(3,users.getEmail());
            pst.setString(4,users.getRegistration());
            pst.setString(5,users.getUser());
            i= pst.executeUpdate();
            conn.close();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return i;
    }
    public static int updateBorrow(Borrow borrow){
        Connection conn=MyConn.getConn();
        String sql="update borrow set user=?,id=?,borrow=?,returnn=? where record=?";
        PreparedStatement pst=null;
        int i =0;
        try{
            pst=conn.prepareStatement(sql);
            pst.setString(1,borrow.getUser());
            pst.setString(2,borrow.getId());
            pst.setString(3,borrow.getBorrow());
            pst.setString(4,borrow.getReturnn());
            pst.setString(5,borrow.getRecord());
            i= pst.executeUpdate();
            conn.close();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return i;
    }


    public static int updateRelation(Relation relation){
        Connection conn=MyConn.getConn();
        String sql="update relation set user=?,id=? where relation=?";
        PreparedStatement pst=null;
        int i =0;
        try{
            pst=conn.prepareStatement(sql);
            pst.setString(1,relation.getUser());
            pst.setString(2,relation.getId());
            pst.setString(3,relation.getRelation());
            i= pst.executeUpdate();
            conn.close();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return i;
    }
    public static int addBook(Book book){
        Connection conn=MyConn.getConn();
        String sql="insert into book(bookname,author,press,pubdate,isbn,available)"+"value(?,?,?,?,?)";
        PreparedStatement pst=null;
        int i=0;
        try{
             pst =conn.prepareStatement(sql);
             pst.setString(1,book.getBookname());
             pst.setString(2,book.getAuthor());
             pst.setString(3,book.getPress());
             pst.setString(4,book.getPubdate());
             pst.setString(5,book.getIsbn());
             pst.setString(6,book.getAvailable());
             i=pst.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return i;
    }
public  static int getRows() throws  SQLException{
        int rows=0;
        
        Connection conn =MyConn.getConn();
        String sql="select * from book";
        PreparedStatement pst=conn.prepareStatement(sql);
        ResultSet rs= pst.executeQuery();

    if(rs.last()){
            rows=rs.getRow();
        }
        rs.close();
        conn.close();
        return rows;
}
}
