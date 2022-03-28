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
          <p><img src="/img/icon-home.png"> > 고객지원 > 1:1문의</p>
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
              1:1문의
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

  <!-- 1:1문의 -->
  <div class="communitySection2 container text-center">
    <div>
      <div>1:1문의</div>
      <div>The design and maintenance are excellent.</div>
    </div>
    <div class="question">
      <form action="one2oneAction" name="questionForm" mthod="post">
        <table>
          <tr>
            <td>구분</td>
            <td><select name="cate">
                  <option value="1">로그인</option>
                  <option value="2">회원가입</option>
                  <option value="3">이용안내</option>
                </select>
            </td>
          </tr>
          <tr>
            <td>성명</td>
            <td><input type="text" class="inputStyle1" name="one2one_name"></td>
          </tr>
          <tr>
            <td>전화번호</td>
            <td><input type="text" class="inputStyle1" name="one2one_phone"></td>
          </tr>
          <tr>
            <td>이메일</td>
            <td><input type="text" class="inputStyle2" name="one2one_email"></td>
          </tr>
          <tr>
            <td>주소</td>
            <td><input type="text" class="inputStyle2" name="one2one_address"></td>
          </tr>
          <tr>
            <td>제목</td>
            <td><input type="text" class="inputStyle2" name="one2one_title"></td>
          </tr>
          <tr>
            <td>설명</td>
            <td><textarea name="one2one_content" rows="10" style="width: 90%;"></textarea></td>
          </tr>
        </table>
    </div>
    <div class="btn">
      <input type="image" src="/img/customer/btn_confirm.gif" onclick="submit()" name="submit">
      <input type="image" src="/img/customer/btn_cancel.gif">
     </form>
    </div>
  </div>

<c:import url="../footer.jsp"/>