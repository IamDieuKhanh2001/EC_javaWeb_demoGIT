<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="categoriesWithDetails" scope="request"
             type="java.util.List<com.example.day10_javawebdemo3.beans.Category>"/>
<div class="card" style="width: 14rem;">
    <h4 class="card-header">
        Featured
    </h4>
    <div class="list-group list-group-flush">
        <c:forEach items="${categoriesWithDetails}" var="c">
            <a href="${pageContext.request.contextPath}/Product/ByCat?id=${c.catID}" class="list-group-item list-group-item-action">
                <i class="fa fa-caret-right" aria-hidden="true"></i>
                ${c.catName}
            </a>
        </c:forEach>
    </div>
</div>
<div class="card mt-3" style="width: 14rem;">
    <h4 class="card-header">
        Featured
    </h4>
    <div class="list-group list-group-flush">
        <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
            The current link item
        </a>
        <a href="#" class="list-group-item list-group-item-action">A second link item</a>
        <a href="#" class="list-group-item list-group-item-action">A third link item</a>
        <a href="#" class="list-group-item list-group-item-action">A fourth link item</a>
        <a class="list-group-item list-group-item-action disabled">A disabled link item</a>
    </div>
</div>
