package com.example.day10_javawebdemo3.filters;

import com.example.day10_javawebdemo3.beans.Category;
import com.example.day10_javawebdemo3.models.CategoryModel;

import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebFilter(filterName = "LayoutFilter", value = "/*")
public class LayoutFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
        
    }

    public void destroy() {
    }

//    khi nhap duong dan, filter se chay truoc sau do se den Servlet
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        List<Category> list = CategoryModel.findAll();
        request.setAttribute("categoriesWithDetails",list);

        chain.doFilter(request, response);
    }
}
