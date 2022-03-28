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
  <div class="main">
    <form action="qna_pw_check_Action" method="post">
      <table>
        <tr>
          <td colspan="2">비밀번호입력</td>
        </tr>
        <tr>
          <td colspan="2">글 작성시 입력한 비밀번호를 입력하세요.</td>
        </tr>
        <tr>
          <td style="width: 20%;"><img src="/img/customer/txt_pass.gif"></td>          
          <td style="width: 80%;"><input type="password" name="qna_pw_check"></td>
          <input type="hidden" name="qna_idx" value="${qna_idx}">
        </tr>
        	
      </table>
    <div><input type="image" src="/img/customer/btn_confirm.gif" name="submit"></div>
    <div><input class="closeBtn" type="image" onclick="window.close()" src="/img/member/btn_close.gif"></a></div>
    </form>
  </div>
<c:import url="../footer.jsp"/>