<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 10/29/2021
  Time: 5:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<%--De su dung JSTL, can mo ta--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="product" scope="request" type="com.example.day10_javawebdemo3.beans.Product" />
<t:main>
    <jsp:body>
        <form action="" method="post">
            <div class="card">
                <h4 class="card-header">
                    Product edit
                </h4>
                <div class="card-body">
                    <div class="form-group">
                        <label for="txtProID">#</label>
                        <input type="text" class="form-control" id="txtProID" name="ProID" readonly value="${product.proID}">
                    </div>
                    <div class="form-group">
                        <label for="txtProName">Name</label>
                        <input type="text" class="form-control" id="txtProName" name="ProName" autofocus value="${product.proName}">
                    </div>
                    <div class="form-group">
                        <label for="txtTinyDes">Tiny des</label>
                        <input type="text" class="form-control" id="txtTinyDes" name="TinyDes" autofocus value="${product.tinyDes}">
                    </div>
                    <div class="form-group">
                        <label for="txtFullDes">Full des</label>
                        <input type="text" class="form-control" id="txtFullDes" name="FullDes" rows="4" autofocus value="${product.fullDes}">
                    </div>
                    <div class="form-group">
                        <label for="txtPrice">Price</label>
                        <input type="text" class="form-control" id="txtPrice" name="ProPrice" autofocus value="${product.price}">
                    </div>
                    <div class="form-group">
                        <label for="txtCatID">Category ID</label>
                        <input type="text" class="form-control" id="txtCatID" name="CatID" autofocus value="${product.catID}">
                    </div>
                    <div class="form-group">
                        <label for="txtQuantity">Quantity</label>
                        <input type="text" class="form-control" id="txtQuantity" name="Quantity" autofocus value="${product.quantity}">
                    </div>
                </div>
                <div class="card-footer">
                    <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/Admin/Product/" role="button">
                        <i class="fa fa-backward" aria-hidden="true"></i>
                        Back
                    </a>
                    <button type="submit" class="btn btn-danger" formaction="${pageContext.request.contextPath}/Admin/Product/Delete">
                        Delete <i class="fa fa-trash-o" aria-hidden="true"></i>
                    </button>
                    <button type="submit" class="btn btn-success" formaction="${pageContext.request.contextPath}/Admin/Product/Update">
                        Save <i class="fa fa-check" aria-hidden="true"></i>
                    </button>
                </div>
            </div>
        </form>

    </jsp:body>
</t:main>