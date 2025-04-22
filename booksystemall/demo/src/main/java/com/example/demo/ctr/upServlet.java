package com.example.demo.ctr;

import com.jspsmart.upload.File;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "upServlet", value = "/upServlet")
public class upServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out= response.getWriter();
        SmartUpload su=new SmartUpload();
        su.initialize(this.getServletConfig(),request,response);

        try {
            request.setCharacterEncoding("UTF-8");
            su.upload();
            su.save("/upload");
            out.print("Sucess!");
            for(int i=0;i<su.getFiles().getCount();i++){
                File file=su.getFiles().getFile(i);
                out.print(file.getFileName());
        }

        } catch (SmartUploadException e) {
            e.printStackTrace();
        }
    }
}
