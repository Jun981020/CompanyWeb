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
  <link rel="stylesheet" href="/css/member/join.css">
  
  
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
  <!-- 제품안내 -->
  <!-- COMMON -->
  <div class="commonSection1">
    <div class="commonContent1">
      <img src="/img/member/sub-visual02.jpg" 
          style="width: 100%; height: 100%;">
      <div class="commonContent2 text-center">
        <div>
          <h3>PRODUCT</h3>
        </div>
        <div>
          <p><img src="/img/icon-home.png"> > 제품안내 > 제품안내01</p>
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
            제품안내
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
              제품안내01
          </a>
          <ul class="dropdown-menu asd">
            <li><a class="dropdown-item" href="business01.html">제품안내01</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">제품안내02</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">제품안내03</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </nav>

  <!-- 제품안내01 -->
  <div class="productSection2">
    <div>
      <div>제품안내01</div>
      <div>The design and maintenance are excellent.</div>
    </div>
    <div class="productMain container">
      <div class="productCard">
        <div>
          <div>
            <a href="/product/product01_1.html">
              <img src="/img/product/1.jpg">
            </a>
          </div>
          <div>
            <h3>IM101</h3>
          </div>
        </div>
      </div>
      <div class="productCard">
        <div>
          <div>
            <a href="/product/product01_1.html">
              <img src="/img/product/2.jpg">
            </a>
          </div>
          <div>
            <h3>IM102</h3>
          </div>
        </div>
      </div>
      <div class="productCard">
        <div>
          <div>
            <a href="/product/product01_1.html">
              <img src="/img/product/3.jpg">
            </a>
          </div>
          <div>
            <h3>IM103</h3>
          </div>
        </div>
      </div>
      <div class="productCard">
        <div>
          <div>
            <a href="/product/product01_1.html">
              <img src="/img/product/4.jpg">
            </a>
          </div>
          <div>
            <h3>IM104</h3>
          </div>
        </div>
      </div>
      <div class="productCard">
        <div>
          <div>
            <a href="/product/product01_1.html">
              <img src="/img/product/5.jpg">
            </a>
          </div>
          <div>
            <h3>IM105</h3>
          </div>
        </div>
      </div>
      <div class="productCard">
        <div>
          <div>
            <a href="/product/product01_1.html">
              <img src="/img/product/6.jpg">
            </a>
          </div>
          <div>
            <h3>IM106</h3>
          </div>
        </div>
      </div>
      <div class="productCard">
        <div>
          <div>
            <a href="/product/product01_1.html">
              <img src="/img/product/7.jpg">
            </a>
          </div>
          <div>
            <h3>IM107</h3>
          </div>
        </div>
      </div>
      <div class="productCard">
        <div>
          <div>
            <a href="/product/product01_1.html">
              <img src="/img/product/8.jpg">
            </a>
          </div>
          <div>
            <h3>IM108</h3>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- search bar -->
  <div class="search container">
    <form action="#">
      <table>
        <tr>
          <td>
            <select name="cate">
              <option value="1">제목</option>
              <option value="2">내용</option>
              <option value="3">작성자</option>
            </select>
          </td>
          <td>
            <input type="text">
          </td>
          <td>
            <input type="image" onclick="submit()" src="/img/product/search.gif">
          </td>
        </tr>
      </table>
    </form>
  </div>
<c:import url="../footer.jsp"/>