<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/around/detail.css">
    <title>Detail</title>
</head>
<body>
 <%@ include file="../include/header.jsp" %>
    <article class="detail">
    
    <h1>캠핑장 상세보기</h1>
    <div class="container">
    <div class="item"><img src="${pageContext.request.contextPath}/img/cam1.jpg" alt="detailcam1"></div>
    
    <div class="item"><h2>캠핑장명</h2>
    
    <p class="detailinfo">상세정보 가나다라마바사아자차카타파하가나다라마바사아자차카타파하가나다라마바사아자차카타파하</p>

    <div class="weather"><h3>날씨 정보</h3><input type="date"></div>
    
    </div>
    </div>
    <button class="btn1">목록</button>
    <button class="btn2">예약하기</button>
</article>

 <%@ include file="../include/footer.jsp" %>