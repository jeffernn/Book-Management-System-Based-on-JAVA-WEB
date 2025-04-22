package com.example.demo.ctr;

import com.example.demo.dao.BookDao;
import com.example.demo.entity.Book;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "DelbookServlet", value = "/DelbookServlet")
public class DelbookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
        int i=0;
        try{
            i = BookDao.delBook(id);
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
        if(i>0){
            response.sendRedirect("showbook.jsp");
        }else {
            response.sendRedirect("fail.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
