package com.example.day10_javawebdemo3.models;

import com.example.day10_javawebdemo3.beans.Product;
import com.example.day10_javawebdemo3.utils.DbUtils;
import org.sql2o.Connection;

import java.util.List;

public class ProductModel {
    //    public static List<Category> findAll() {
//        return new ArrayList<>(
//                Arrays.asList(
//                        new Category(1, "Sach"),
//                        new Category(2, "Quan ao"),
//                        new Category(3, "Dien thoai"),
//                        new Category(4, "Laptop"),
//                        new Category(5, "Loa")
//                )
//        );
//    }
    public static List<Product> findAll() {
        final String query = "select * from products";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(query)
                    .executeAndFetch(Product.class);
        }
    }

    public static Product findById(int id) {
        final String query = "select * from products where ProID = :ProID";
        try (Connection con = DbUtils.getConnection()) {
            List<Product> list = con.createQuery(query)
                    .addParameter("ProID", id)
                    .executeAndFetch(Product.class);
            if (list.size() == 0) {
                return null;
            }
            return list.get(0);
        }
    }

    public static void add(Product c) {
        String insertSql = "INSERT INTO products (ProName, TinyDes, FullDes, Price, CatID, Quantity) VALUES (:proname,:tinydes,:fulldes,:price,:catid,:quantity)";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(insertSql)
                    .addParameter("proname", c.getProName())
                    .addParameter("tinydes", c.getTinyDes())
                    .addParameter("fulldes", c.getFullDes())
                    .addParameter("price", c.getPrice())
                    .addParameter("catid", c.getCatID())
                    .addParameter("quantity", c.getQuantity())
                    .executeUpdate();
        }
    }

    public static void update(Product c) {
        String sql = "UPDATE products SET  ProName = :proname, TinyDes = :tinydes, FullDes = :fulldes, Price = :price, CatID = :catid, Quantity = :quantity WHERE ProID = :proid";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("proid", c.getProID())
                    .addParameter("proname", c.getProName())
                    .addParameter("tinydes", c.getTinyDes())
                    .addParameter("fulldes", c.getFullDes())
                    .addParameter("price", c.getPrice())
                    .addParameter("catid", c.getCatID())
                    .addParameter("quantity", c.getQuantity())
                    .executeUpdate();
        }
    }

    public static void delete(int id) {
        String sql = "delete from products where ProID = :ProID";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("ProID", id)
                    .executeUpdate();
        }
    }
}
