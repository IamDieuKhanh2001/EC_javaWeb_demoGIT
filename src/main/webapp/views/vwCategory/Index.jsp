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

<%--Nhan view model tu controler tra ve r ta hien thi ra view (JSP EL)--%>
<%--<jsp:useBean id="category" scope="request" type="com.example.day10_javawebdemo3.beans.Category"></jsp:useBean>--%>
<jsp:useBean id="categories" scope="request"
             type="java.util.List<com.example.day10_javawebdemo3.beans.Category>"/>

<t:main>
    <jsp:body>
        <div class="card">
            <h4 class="card-header d-flex justify-content-between">
                Categories index
                <a class="btn btn-outline-success" href="${pageContext.request.contextPath}/Admin/Category/Add" role="button">
                    Add Category
                    <i class="fa fa-plus" aria-hidden="true"></i>
                </a>
            </h4>
<%--            if else trong JSTL --%>
<%--            Neu viewModel la rong thi tra ve p--%>
            <c:choose>
                <c:when test="${categories.size() == 0}">
                    <div class="card-body">
                        <p class="card-text">Khong co du lieu</p>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="card-body">
                            <%--Hien thi attribute da nhan--%>
                            <%--               ${categorys.catID} - ${category.catName}--%>
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Category</th>
                                <th>&nbsp;</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${categories}" var="c">
                                <tr>
                                    <td>${c.catID}</td>
                                    <td>${c.catName}</td>
                                    <td class="text-right">
                                        <a class="btn btn-success" href="${pageContext.request.contextPath}/Admin/Category/Edit?id=${c.catID}" role="button">
                                            <i class="fa fa-pencil" aria-hidden="true"></i>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>

                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </jsp:body>
</t:main>