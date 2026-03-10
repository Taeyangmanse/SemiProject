<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #121212; color: #e0e0e0; }
        .navbar { background-color: #1f1f1f !important; border-bottom: 2px solid #333; }
        .nav-link { font-weight: 500; transition: 0.3s; }
        .nav-link:hover { color: #ffca28 !important; }
        .navbar-brand { letter-spacing: 2px; }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark sticky-top">
        <div class="container">
            <a class="navbar-brand fw-bold text-warning" href="${contextPath}">TEMPORALIS ONLINE</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#gameNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="gameNav">
                <ul class="navbar-nav me-auto">
                    <%-- 로그인한 경우에만 보이는 게임 메뉴 --%>
                    <c:if test="${not empty loginUser}">
                        <li class="nav-item"><a class="nav-link" href="${contextPath}/map/list">모험하기</a></li>
                        <li class="nav-item"><a class="nav-link" href="${contextPath}/card/collection">카드도감</a></li>
                        <li class="nav-item"><a class="nav-link" href="${contextPath}/battle/status">현재전투</a></li>
                    </c:if>
                </ul>
                
                <div class="d-flex align-items-center">
                    <c:choose>
                        <%-- 로그인 전: 로그인/회원가입 메뉴 --%>
                        <c:when test="${empty loginUser}">
                            <a href="${contextPath}/user/loginForm" class="btn btn-outline-warning btn-sm me-2">로그인</a>
                            <a href="${contextPath}/user/enrollForm" class="btn btn-warning btn-sm text-dark fw-bold">회원가입</a>
                        </c:when>
                        <%-- 로그인 후: 용사 정보 및 로그아웃 --%>
                        <c:otherwise>
                            <span class="me-3 text-light small">
                                <span class="badge bg-primary me-1">${loginUser.role}</span> <%-- USER/ADMIN 권한 표시 --%>
                                <strong class="text-info">${loginUser.userNick}</strong>님
                            </span>
                            <a href="${contextPath}/user/logout" class="btn btn-outline-danger btn-sm">로그아웃</a>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </nav>