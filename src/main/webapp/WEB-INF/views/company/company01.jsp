<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %> 
<!DOCTYPE html>
<html lang="en">
<head>
  <title>회사홈페이지</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="/css/common.css">
  <link rel="stylesheet" href="/css/main.css">
  <link rel="stylesheet" href="/css/company/company01.css">
  
  
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
  <!-- Bootstarp JS -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>
<c:import url="../header.jsp" />
<body>
  <!-- 헤더 -->
  <div id="headerTop"></div>
  <div id="header" class="sticky-top"></div>
  <!-- 메인 -->
  <!-- 회사소개1 -->
  <!-- COMMON -->
  <div class="commonSection1">
    <div class="commonContent1">
      <img src="/img/member/sub-visual01.jpg" 
          style="width: 100%; height: 100%;">
      <div class="commonContent2 text-center">
        <div>
          <h3>COMPANY</h3>
        </div>
        <div>
          <p><img src="/img/icon-home.png"> > 회사소개 > 회사개요</p>
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
            회사소개
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
            회사개요
          </a>
          <ul class="dropdown-menu asd">
            <li><a class="dropdown-item" href="company01.html">회사개요</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">CEO인사말</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="company03.html">오시는길</a></li>
          </ul>
        </li>
      </ul>
  </nav>

  <!-- 회사개요 -->
  <div class="companySection2 container text-center my-4 d-flex flex-column">
  	  <span>회사개요</span>
  	  <span>The design and maintenance are excellent.</span>
  	  <span>고객과의 신뢰와 디자인 가치 창출을, 최우선으로 생각합니다.</span>
  	  <span>디자인을 통한 비지니스 네트워크를 구축하여 고객의 필요와 요구를 파악하고 
        기존 사업과 연계하여 시너지를 창출하며 고객 감동을 실현해 나갈 것입니다. 
        다양한 환경에 적응하며 경쟁하기 위해 모든 기술과 디자인 역량을 집중하고 
        고객과의 친밀한 소통과 협력을 통해 최고의 품질을 제공하고 있습니다.</span>
  </div>
   <div class="d-flex flex-row justify-content-center my-3 w-100">
   <img src="/img/company/img0101.gif">
   </div>
  <div class="companySection3 d-flex flex-column justify-content-center w-100">
    <div class="container companyMain">
      <div class="section3_1">
        <img src="/img/company/img0102.jpg">
      </div>
      <div class="section3_2">
        <div>우리회사는 끊임없는 열정으로<br>디자인 가치를 창조합니다.</div>
        <div>우리회사는 다양한 환경에 적응하며 경쟁하기 위해 모든 기술과 디자인 역량을 집중하고 고객과의 친밀한 소통과 협력을 통해 최고의 품질을 제공하고 있습니다. 오랫동안 쌓은 전문지식과 노하우를 바탕으로 고객과 함께하겠습니다.</div>
        <div>
          <span>회 사 : </span>
          <span>우리회사</span>
        </div>
        <div>
          <span>업 종 : </span>
          <span>홈페이지제작</span>
        </div>
        <div>
          <span>사 업 : </span>
          <span>기업 홈페이지 구축(반응형웹, 모바일웹), 디자인, 그래픽</span>
        </div>
        <div>
          <span>비 전 : </span>
          <span>정직과 신뢰를 기반으로 한 디자인 가치창출</span>
        </div>
        <div>
          <span>대 표 : </span>
          <span>홍길동</span>
        </div>
      </div>
    </div>
  </div>

  <!-- 비젼 -->
  <div class="companySection4">
    <div><h4>VISION</div>
    <div><p>우리회사는 정직과 신뢰 디자인으로 고객과 함께합니다.</p></div>
    <div class="vision container">
      <div class="visionCard">
        <div>
          <div>
            <img src="/img/company/img0103.png">
          </div>
          <div>
            <h3>CREATIVE</h3>
            <h5>우리회사는 창조적인 디자인으로 고객과 함께합니다.</h5>
          </div>
        </div>
      </div>
      <div class="visionCard">
        <div>
          <div>
            <img src="/img/company/img0104.png">
          </div>
          <div>
            <h3>CONFIDENCE</h3>
            <h5>우리회사는 고객과의 신뢰를 최우선으로 생각합니다.</h5>
          </div>
        </div>
      </div>
      <div class="visionCard">
        <div>
          <div>
            <img src="/img/company/img0105.png">
          </div>
          <div>
            <h3>PARTNERSHIP</h3>
            <h5>우리회사는 고객과의 협력을 통해 파트너쉽을 쌓아갑니다.</h5>
          </div>
        </div>
      </div>
      <div class="visionCard">
        <div>
          <div>
            <img src="/img/company/img0106.png">
          </div>
          <div>
            <h3>PASSION</h3>
            <h5>우리회사는 끊임없는 열정으로 고객과 함께 성장합니다.</h5>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- 역사 -->
  <div class="companySection5 container">
    <div><h4>HISTORY</h4></div>
    <div><p>설립이후 우리회사가 걸어온 길을 알립니다.</p></div>
    <div>
      <!-- ul, ol, dl : 용어에 대한 정의 목록 -->
      <!-- 점, 123, none -->
      <!-- dl, dt 제목,줄바꿈, dd: 용어에 설명,줄바꿈 -->
      <dl>
        <dt>2017</dt>
        <dd>
          <ul>
            <li>
              <span>10</span>
              정직과 신뢰의 기업 우리회사
            </li>
            <li>
              <span>06</span>
              홈페이지 구축을 위한 최고의 선택 우리회사
            </li>
            <li>
              <span>05</span>
              함께 할 수 있는 좋은 친구 우리회사
            </li>
          </ul>
        </dd>
      </dl>
      <dl>
        <dt>2016</dt>
        <dd>
          <ul>
            <li>
              <span>10</span>
              정직과 신뢰의 기업 우리회사
            </li>
            <li>
              <span>06</span>
              홈페이지 구축을 위한 최고의 선택 우리회사
            </li>
            <li>
              <span>05</span>
              함께 할 수 있는 좋은 친구 우리회사
            </li>
          </ul>
        </dd>
      </dl>
      <dl>
        <dt>2015</dt>
        <dd>
          <ul>
            <li>
              <span>10</span>
              정직과 신뢰의 기업 우리회사
            </li>
            <li>
              <span>06</span>
              홈페이지 구축을 위한 최고의 선택 우리회사
            </li>
            <li>
              <span>05</span>
              함께 할 수 있는 좋은 친구 우리회사
            </li>
          </ul>
        </dd>
      </dl>
    </div>
  </div>
<c:import url="../footer.jsp"/>