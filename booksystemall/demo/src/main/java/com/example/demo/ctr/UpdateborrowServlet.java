package com.example.demo.ctr;

import com.example.demo.dao.BookDao;
import com.example.demo.entity.Borrow;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateborrowServlet", value = "/UpdateborrowServlet")
public class UpdateborrowServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String record=request.getParameter("record");
        String user=request.getParameter("user");
        String id=request.getParameter("id");
        String borrow=request.getParameter("borrow");
        String returnn = request.getParameter("returnn");
        Borrow borrow1=new Borrow(record,user,id,borrow,returnn);
        int i = BookDao.updateBorrow(borrow1);
        if(i>0){
            response.sendRedirect("showborrow.jsp");
        }else {
            response.sendRedirect("fail.jsp");
        }


    }
}
