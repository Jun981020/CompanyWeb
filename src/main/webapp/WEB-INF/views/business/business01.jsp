<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>사업분야01</title>

  <!-- Main CSS : Header, Main, Footer -->
  <link rel="stylesheet" href="/css/main.css">
  <link rel="stylesheet" href="/css/common.css">
  <link rel="stylesheet" href="/css/business/business01.css">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
  <!-- Bootstarp JS -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

  <script>
    $(document).ready(function(){
      $('#headerTop').load("/headerTop.html");
      $('#header').load("/header.html");     
      $('#footer').load("/footer.html");
    });
  </script>

</head>
<body>
  <!-- 헤더 -->
  <div id="headerTop"></div>
  <div id="header" class="sticky-top"></div>

  <!-- 메인 -->
  <!-- 사업분야 -->
  <!-- COMMON -->
  <div class="commonSection1">
    <div class="commonContent1">
      <img src="/img/member/sub-visual02.jpg" 
          style="width: 100%; height: 100%;">
      <div class="commonContent2 text-center">
        <div>
          <h3>BUSINESS</h3>
        </div>
        <div>
          <p><img src="/img/icon-home.png"> > 사업분야 > 사업분야01</p>
        </div>
      </div>
    </div>
  </div>
  <!-- COMMON - 드랍다운 -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/index.html"><button class="homeBtn">H</button></a>
      <ul class="navbar-nav mr-auto navbar-nav-scroll" 
          style="max-height: 100px;">
        
        <li class="nav-item dropdown dropdownHide">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" 
            data-toggle="dropdown" aria-expanded="false">
            사업분야
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="dropdown-item" href="#">회사소개</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">사업분야</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">제품안내</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">커뮤니티</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">고객지원</a></li>
          </ul>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" 
              role="button" data-toggle="dropdown" aria-expanded="false">
            사업분야01
          </a>
          <ul class="dropdown-menu asd">
            <li><a class="dropdown-item" href="business01.html">사업분야01</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">사업분야02</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">사업분야03</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </nav>

  <!-- 사업분야01 -->
  <div class="businessSection2 container">
    <div>
      <div>사업분야01</div>
      <div>The design and maintenance are excellent.</div>
      <div>우리회사는 끊임없는 열정과 도전으로 가치를 창조합니다.</div>
      <div>디자인을 통한 비지니스 네트워크를 구축하여 고객의 필요와 
        요구를 파악하고 기존 사업과 연계하여 시너지를 창출하며 
        고객 감동을 실현해 나갈 것입니다. 우리회사은 다양한 환경에 
        적응하며 경쟁하기 위해 모든 기술과 디자인 역량을 집중하고 
        고객과의 친밀한 소통과 협력을 통해 최고의 품질을 제공하고
        있습니다.</div>
    </div>
    <div>
      <img src="/img/buisness/img0101.jpg">
      <div>
        <h3>기업홍보/광고/서비스</h3>
        <h5>급속하게 진화하고 있는 웹기반의 테크놀로지, 
          인터넷을 무선영역으로 확장하는 새로운 무선 
          데이터 통신 기술을 근간으로 고객 환경에 맞는 
          최적화된 서비스를 제공하고 있습니다. 
          당사의 무선 데이터 통신 서비스는 최고의 품질, 
          기술, 디자인으로 국내 시장에서 고 부가가치를 지닌 
          브랜드로 성장하고 있습니다. 
          아울러 중국, 동남아시아를 비롯한 시장 진입에 이어, 
          EU와 미국 시장 진출을 위한 교두보를 세우고 있습니다.</h5>
      </div>
    </div>
    <div>
      <img src="/img/buisness/img0102.jpg">
      <div>
        <h3>패션/웨딩/헤어/미용</h3>
        <h5>급속하게 진화하고 있는 웹기반의 테크놀로지, 
          인터넷을 무선영역으로 확장하는 새로운 무선 데이터 
          통신 기술을 근간으로 고객 환경에 맞는 최적화된 
          서비스를 제공하고 있습니다. 당사의 무선 데이터 
          통신 서비스는 최고의 품질, 기술, 디자인으로 국내 
          시장에서 고 부가가치를 지닌 브랜드로 성장하고 있습니다. 
          아울러 중국, 동남아시아를 비롯한 시장 진입에 이어, 
          EU와 미국 시장 진출을 위한 교두보를 세우고 있습니다.</h5>
      </div>
      <div>
        <img src="/img/buisness/img0103.jpg">
        <div>
          <h3>식품/요리/음식/건강</h3>
          <h5>급속하게 진화하고 있는 웹기반의 테크놀로지,
            인터넷을 무선영역으로 확장하는 새로운 무선
            데이터 통신 기술을 근간으로 고객 환경에 맞는
            최적화된 서비스를 제공하고 있습니다. 당사의
            무선 데이터 통신 서비스는 최고의 품질, 기술,
            디자인으로 국내 시장에서 고 부가가치를 지닌
            브랜드로 성장하고 있습니다. 
            아울러 중국, 동남아시아를 비롯한 
            시장 진입에 이어, EU와 미국 시장 
            진출을 위한 교두보를 세우고 있습니다.</h5>
        </div>
      </div>
    </div>

  </div>

  <!-- 푸터 -->
  <div id="footer"></div>
</body>
</html>