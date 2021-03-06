package com.example.day10_javawebdemo3.controllers;

import com.example.day10_javawebdemo3.beans.Category;
import com.example.day10_javawebdemo3.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", value = "/Home/*")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if(path == null || path.equals("/")){
            path = "/Index";
        }
        switch (path){
            case "/Index":{
                ServletUtils.forward("/views/vmHome/Index.jsp",request,response);
                break;
            }
            case "/About":{
                List<Category> list =(List<Category>) request.getAttribute("categoriesWithDetails");
                ServletUtils.forward("/views/vmHome/About.jsp",request,response);
                break;
            }
            default:{
                ServletUtils.forward("/views/404.jsp",request,response);
                break;
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
