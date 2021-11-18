<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>login</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="../style/coupon.css" />

</head>

<body>
  <nav class="main-navi">
    <a class="logoo" href="../index.jsp">
      <img class="logoo" src="../img/logo.png">
    </a>
    </div>
    <div class="button" type="button" onclick="location.href='mypage.jsp'">
      <!-- <a href="mypage.jsp"> -->
        <img
          src="../images/profile.png"
          alt="마이페이지" 
          id="profile" style="height:40px;" />
        </a>
    </div>
  </nav>

  <div class="main-page">
    <div class="login-form">


      <form id="loginForm" method="post">

      </form>


      <h2 id="couponTitle">쿠폰/할인코드</h2>
      <!-- <div class="logo"> -->
      <!--         <a href="index.html"> -->
      <!--           <div class="logo"> -->
      <!--             <img -->
      <!--               src="../img/logo.png" -->
      <!--               width="80px" -->
      <!--               height="80px" -->
      <!--               alt="잠자리" -->
      <!--               class="mx-2" -->
      <!--             /> -->
      <!--           </div> -->
      <!--         </a> -->
      <!--       </div> -->
      </nav>
      <div class="content">
        <br />
        <h3>쿠폰/할인코드 적용</h3>
        <hr />
        <br />

        <select name="coupon" style="width : 300px; height: 30px; ">
          <option>쿠폰번호</option>
          <option>1</option>
          <option>2</option>
          <option>3</option>
        </select>
        <br> <br>
        <h3>쿠폰/할인코드 적용</h3><br>
        <div id="cardList">
        </div>

        <br>
        <button onclick="addCard" id="addCardBut" value="결제 수단 등록">결제 수단 등록</button>

      </div>


    </div>
  </div>

  <script>


  </script>
</body>

</html>