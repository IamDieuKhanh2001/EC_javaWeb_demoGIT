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

<t:main>
    <jsp:body>
        <form action="" method="post">
            <div class="card">
                <h4 class="card-header">
                    New Products
                </h4>
                <div class="card-body">
                    <div class="form-group">
                        <label for="txtProName">Product name</label>
                        <input type="text" class="form-control" id="txtProName" name="ProName" autofocus>
                    </div>
                    <div class="form-group">
                        <label for="txtTinyDes">Tiny Des</label>
                        <input type="text" class="form-control" id="txtTinyDes" name="TinyDes">
                    </div>
                    <div class="form-group">
                        <label for="txtFullDes">Full Des</label>
                        <input type="text" class="form-control" id="txtFullDes" name="FullDes">
                    </div>
                    <div class="form-group">
                        <label for="txtProPrice">Price</label>
                        <input type="text" class="form-control" id="txtProPrice" name="ProPrice">
                    </div>
                    <div class="form-group">
                        <label for="txtCatID">CatID</label>
                        <input type="text" class="form-control" id="txtCatID" name="CatID">
                    </div>
                    <div class="form-group">
                        <label for="txtQuantity">Quantity</label>
                        <input type="text" class="form-control" id="txtQuantity" name="Quantity">
                    </div>
                </div>
                <div class="card-footer">
                    <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/Admin/Product/" role="button">
                        <i class="fa fa-backward" aria-hidden="true"></i>
                        Back
                    </a>
                    <button type="submit" class="btn btn-success">
                        Save <i class="fa fa-check" aria-hidden="true"></i>
                    </button>
                </div>
            </div>
        </form>

    </jsp:body>
</t:main>