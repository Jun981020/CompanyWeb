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
  <link rel="stylesheet" href="/css/customer/customer03.css">
  
  
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
  <!-- 1:1문의 -->
  <!-- COMMON -->
  <div class="commonSection1">
    <div class="commonContent1">
      <img src="/img/member/sub-visual02.jpg" 
          style="width: 100%; height: 100%;">
      <div class="commonContent2 text-center">
        <div>
          <h3>COSTOMER</h3>
        </div>
        <div>
          <p><img src="/img/icon-home.png"> > 고객지원 > FAQ</p>
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
            고객지원
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
              FAQ
          </a>
          <ul class="dropdown-menu asd">
            <li><a class="dropdown-item" href="/customer/costomer01.html">1:1문의</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/customer/costomer02.html">묻고답하기</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="/customer/costomer03.html">FAQ</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </nav>

  <!-- FAQ -->
  <div class="communitySection2 container text-center">
    <div>
      <div>FAQ</div>
      <div>The design and maintenance are excellent.</div>
    </div>
    <div class="faq">
    <!--
      <table>
        <tr>
          <td>질문1</td>
          <td onclick="window.location.href='customer03_1?no=1'">자주하는 질문모음입니다.</td>
        </tr>
        <tr>
          <td>질문2</td>
          <td onclick="window.location.href='customer03_1?no=2'">자주하는 질문모음입니다.</td>
        </tr>
        <tr>
          <td>질문3</td>
          <td onclick="window.location.href='customer03_1?no=3'">자주하는 질문모음입니다.</td>
        </tr>
        <tr>
          <td>질문4</td>
          <td onclick="window.location.href='customer03_1?no=4'">자주하는 질문모음입니다.</td>
        </tr>
        <tr>
          <td>질문5</td>
          <td onclick="window.location.href='customer03_1?no=5'">자주하는 질문모음입니다.</td>
        </tr>
      </table>
      -->
      <table>
      	<c:forEach var = "dto" items="${list}">
      	<tr>
      		<td>
      			 질문${dto.faq_idx}
      		</td>
      		<td> 
      		<a href = "customer03_1?faq_idx=${dto.faq_idx}">${dto.faq_title}</a>
      		</td>
      	</tr>
      	</c:forEach>
      </table>
      
    </div>
  </div>

  <div class="search container">
    <table>
      <tr>
        <td>
          <select name="내용" id="">
            <option value="">제목</option>
            <option value="">내용</option>
            <option value="">작성자</option>
          </select>
        </td>
        <td>
          <input type="text">
        </td>
        <td>
          <input type="image" src="/img/customer/search.gif">
        </td>
      </tr>
    </table>
  </div>
<c:import url="../footer.jsp"/>