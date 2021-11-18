<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 10/29/2021
  Time: 5:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<%--De su dung JSTL, can mo ta--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--Su dung JSTL formatnumber de format gia tien--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--Nhan view model tu controler tra ve r ta hien thi ra view (JSP EL)--%>
<jsp:useBean id="product" scope="request"
             type="com.example.day10_javawebdemo3.beans.Product"/>

<t:main>
    <jsp:body>
        <div class="card">
        <div class="card-header">
                ${product.proName}
        </div>
        <div class="card-body">
            <img src="${pageContext.request.contextPath}/public/imgs/sp/${product.proID}/main.jpg"
                 alt="${product.proName}" title="${product.proName}">
            <p class="card-text mt-3">
                Gia ban:
                <span class="text-danger font-weight-bold">
                    <fmt:formatNumber value="${product.price}" type="number"/>
                </span>
            </p>
            <p class="card-text">
                Ton kho: ${product.quantity}
                Mo ta: ${product.fullDes}
            </p>
        </div>
        </div>
    </jsp:body>
</t:main>
