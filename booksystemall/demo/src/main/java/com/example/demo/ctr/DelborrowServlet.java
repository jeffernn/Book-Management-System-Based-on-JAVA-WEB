package com.example.demo.ctr;

import com.example.demo.dao.BookDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "DelborrowServlet", value = "/DelborrowServlet")
public class DelborrowServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String record=request.getParameter("record");
        int i =0;
        try{
            i = BookDao.delBorrow(record);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        if(i>0){
            response.sendRedirect("showborrow.jsp");
        }else {
            response.sendRedirect("fail.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
