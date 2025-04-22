package com.example.demo.ctr;

import com.example.demo.dao.BookDao;
import com.example.demo.entity.Book;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateServlet", value = "/UpdateServlet")
public class UpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String id=request.getParameter("id");
        String bookname=request.getParameter("bookname");
        String author=request.getParameter("author");
        String press=request.getParameter("press");
        String pubdate = request.getParameter("pubdate");
        String isbn=request.getParameter("isbn");
        String available=request.getParameter("available");
        Book book=new Book(id,bookname,author,press,pubdate,isbn,available);
        int i= BookDao.updateBook(book);
        if(i>0){
            response.sendRedirect("showbook.jsp");
        }else {
            response.sendRedirect("fail.jsp");
        }
            // 接下来的代码逻辑...




    }
}
