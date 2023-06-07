<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<title>예약 내역</title>
<link href="${pageContext.request.contextPath}/css/mypage.css" rel="stylesheet">

<%@ include file="../include/header.jsp" %>

<section>
    <div class="wrap">
        <div class="menuBox">
            <div id="clsBox" class="infoKind">
                <form name="clsForm" method="post">
                    <input type="text" name="userId" value="${login}" readonly hidden>
                    <a href="info" class="privacy">⦁ 개인 정보 수정</a> <br>
                    <a href="reservation" class="rsvInfo">⦁ 예약 정보</a> <br>
                    <a href="myBoard" class="myText">⦁ 내 게시글</a> <br>
                </form>
            </div>
        </div>
        <div class="reservationInfo">

            <form action="#">
                <div class="reservationBox">
                    <h3>예약 정보</h3>
                    <img src="../img/co.png" alt="예약한 캠핑장 사진" class="campImg"> <br>

                    <div class="campName">
                        <h2>(캠핑장이름받아오기)</h2>
                    </div>
                    <div class="campInfo">
                        <div class="resDate">예약날짜: </div>
                        <div class="resPlace">장소: </div>
                        <div class="resName">예약자: </div>
                        <div class="resStatus">상태: </div>
                    </div>

                    <div class="go-main-btn">
                        <button type="button" name="goMainBtn" class="goMainBtn">메인으로</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>

<%@ include file="../include/footer.jsp" %>

<script>

// 카테고리 a 태그 처리 폼
$clsForm = document.clsForm;

document.getElementById('clsBox').addEventListener('click', (e) => {
    e.preventDefault();

    if (!e.target.matches('a')) {
        return;
    }

    const targetLink = e.target.getAttribute('href');

    if(e.target.classList.contains('privacy')) {
        location.href('${pageContext.request.contextPath}/user/info');
    } else {
        $clsForm.action = '${pageContext.request.contextPath}/user/' + targetLink;
        $clsForm.submit();
    }

});

</script>