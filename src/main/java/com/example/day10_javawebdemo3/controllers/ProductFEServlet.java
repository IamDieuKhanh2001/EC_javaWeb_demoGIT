package com.example.day10_javawebdemo3.controllers;

import com.example.day10_javawebdemo3.beans.Product;
import com.example.day10_javawebdemo3.models.ProductModel;
import com.example.day10_javawebdemo3.utils.ServletUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductFEServlet", value = "/Product/*")
public class ProductFEServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();

        switch (path) {
            case "/ByCat": {
                int catId = 0;
                try {
                    catId = Integer.parseInt(request.getParameter("id"));
                } catch (NumberFormatException e) {
                    ServletUtils.forward("/views/204.jsp", request, response);
                }
                List<Product> list = ProductModel.findByCatId(catId);          //Cach day viewModel ra view su dung set attribute
                request.setAttribute("products", list);             //Cho phep day du lieu bat ki ra view, khi ben ngoai view nos la 1 attribute
                ServletUtils.forward("/views/vwProduct/ByCat.jsp", request, response);
                break;
            }
            case "/Detail": {
                int proId = Integer.parseInt(request.getParameter("id"));
                Product product = ProductModel.findById(proId);
                if(product == null){
                    ServletUtils.redirect("/Home",request,response);
                }else{
                    request.setAttribute("product",product);
                    ServletUtils.forward("/views/vwProduct/Detail.jsp", request, response);
                }
                break;
            }
            default: {
                ServletUtils.forward("/views/404.jsp", request, response);
                break;
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
