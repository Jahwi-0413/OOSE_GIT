<%--
  Created by IntelliJ IDEA.
  User: samsung
  Date: 2020-06-01
  Time: 오후 4:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="OOSE.model.*" %>
<%@ page import="java.util.*" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../../css/browseProduct.css" rel="stylesheet" type="text/css">

    <title>소공도 관광지</title>
</head>
<body>
<%--jsp파일 그대로도 작동하긴 하지만 url 패턴은 /browseProductPackage로 적용--%>
<%@include file="../default/header.jsp"%>

<!-- 절  취  선 -->

<div class="sub-body">
    <div class="side-menu">
        <ul>
            <li><a href="#" class="selected">관리</a></li>
            <li><a href="${pageContext.request.contextPath}/view/productPackage/performanceAggregate.jsp">판매 실적</a></li>
            <li><a href="#">상품 구입</a></li>
        </ul>
    </div>
    <div class="table">
        <table>
            <tr>
                <th>No.</th>
                <th>상품 명</th>
                <th>가격</th>
                <th>상품 상태</th>
                <th>재고</th>
                <th>비고</th>
                <th>선택</th>
            </tr>

            <% Object[] productPackages = (Object[]) request.getAttribute("productPackages");
                if (productPackages == null || productPackages.length == 0) { %>
        </table>
        <p>조회된 내용이 없습니다.</p>
        <% } else {
            for (int i = 0; i < productPackages.length; i++) {
                pageContext.setAttribute("productPackage", productPackages[i]);
        %>

        <tr>
            <td>${productPackage.id}</td>
            <td>${productPackage.name}</td>
            <td>${productPackage.price}</td>
            <td>${productPackage.state}</td>
            <td>${productPackage.stock}</td>
            <td>${productPackage.note}</td>
            <td><input type="checkbox"></td>
        </tr>
        <%}%>
        </table>
        <%}%>
    </div>
    <div class="button-frame">
        <button><a>등록</a></button>
        <button><a>수정</a></button>
        <button><a href="#">삭제</a></button>
    </div>
</div>
</body>
</html>
