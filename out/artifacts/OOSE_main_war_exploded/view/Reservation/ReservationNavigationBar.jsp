<%--
  Created by IntelliJ IDEA.
  User: haejun
  Date: 2020-06-25
  Time: 오후 5:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<body>
    <div class="sub-nav-wrapper">
        <ul class="sub-nav-list">
            <li class="title"><span>예약 관리</span></li>
            <li>
                <a title="예약 정보 조회" href="${pageContext.request.contextPath}/view/Reservation/BrowseReservation.jsp">예약 정보 조회</a>
            </li>
            <li>
                <a title="예약 취소정보 조회" href="${pageContext.request.contextPath}/view/Reservation/BrowseReservationForCancel.jsp">예약 취소정보 조회</a>
            </li>
        </ul>
    </div>
</body>

