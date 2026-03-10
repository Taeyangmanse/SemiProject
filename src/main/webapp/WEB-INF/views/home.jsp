<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common/header.jsp" %>

<div class="container my-5">
    <c:choose>
        <%-- 1. 로그인 전: 대문 화면 (로그인 유도) --%>
        <c:when test="${empty loginUser}">
            <div class="row py-5 text-center bg-dark rounded shadow border border-secondary">
                <div class="col-12 py-5">
                    <h1 class="display-3 fw-bold text-warning mb-4">TEMPORALIS ONLINE</h1>
                    <p class="lead mb-5 text-secondary">던전 탐험</p>
                    <div class="d-grid gap-3 d-sm-flex justify-content-sm-center">
                        <button onclick="location.href='${contextPath}/user/loginForm'" class="btn btn-warning btn-lg px-5 fw-bold">게임시작</button>
                        <button onclick="location.href='${contextPath}/user/enrollForm'" class="btn btn-outline-light btn-lg px-5">캐릭터등록</button>
                    </div>
                </div>
            </div>
        </c:when>

        <%-- 2. 로그인 후: 실제 게임 로비 화면 --%>
        <c:otherwise>
            <div class="row mb-4 border-start border-warning border-4 ps-3">
                <div class="col">
                    <h2 class="fw-bold text-warning">시작 로비</h2>
                    <p class="text-muted mb-0">현재 위치: <span class="text-white">${progress.nodeName}</span></p>
                </div>
            </div>

            <div class="row row-cols-1 row-cols-md-3 g-4">
                <%-- 지점(Node) 리스트 출력 --%>
                <c:forEach var="node" items="${nodeList}">
                    <div class="col">
                        <div class="card h-100 bg-dark text-white border-secondary">
                            <div class="card-body">
                                <h5 class="card-title fw-bold text-info">${node.nodeName}</h5>
                                <a href="${contextPath}/adventure/start?no=${node.nodeNo}" class="btn btn-sm btn-outline-warning">진입하기</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:otherwise>
    </c:choose>
</div>

<%@ include file="common/footer.jsp" %>