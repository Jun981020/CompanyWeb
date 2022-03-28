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
  <!-- 메인 -->
  <!-- COMMON -->
  <div class="commonSection1">
    <div class="commonContent1">
      <img src="/img/member/sub-visual02.jpg" 
          style="width: 100%; height: 100%;">
      <div class="commonContent2 text-center">
        <div>
          <h3>MEMBER</h3>
        </div>
        <div>
          <p><img src="/img/icon-home.png"> > 회원가입</p>
        </div>
      </div>
    </div>
  </div>

  <!-- 메인 -->
  <!-- 회원가입 -->
  <div class="joinForm container">
    <div class="joinSection1">
      <div><h3>회원가입</h3></div>
      <div><p>The design and maintenance are excellent.</p></div>
    </div>
    <div class="wellcome">
      <h3>OOO사이트에 오신 것을 환영합니다.</h3>
      <h5>-이름과 이메일을 입력해 주시면 가입여부를 확인 후 회원가입 절차가 이루어집니다.</h5>
    </div>

    <!-- 이용약관 -->
    <div class="term1">
      <div>이용약관</div>
      <div>
        <textarea name="" id="" cols="30" rows="10">
          이용약관
        </textarea>
        <div><input class="check" type="checkbox">위 약관에 동의합니다.</div>
      </div>
    </div>
    <!-- 개인정보보호정책 -->
    <div class="term2">
      <div>개인정보보호정책</div>
      <div>
        <textarea name="" id="" cols="30" rows="10">
          개인정보보호정책
        </textarea>
        <div><input class="check" type="checkbox">위 개인정보취급방침에 동의합니다.</div>
      </div>
    </div>
    <!-- 개인정보의 수집 및 이용목적 -->
    <div class="term3">
      <div>개인정보의 수집 및 이용목적</div>
      <div>
        <textarea name="" id="" cols="30" rows="10">
          개인정보의 수집 및 이용목적
        </textarea>
        <div><input class="check" type="checkbox">위 개인정보의 수집 및 이용목적에 동의합니다.</div>
      </div>
    </div>

    <div class="imageBtn">
      <input type="image" onclick="agree();" src="/img/member/btn_join.gif">
    </div>

  </div>

<c:import url="../footer.jsp" />
  <script>
    function agree() {
      //반복문전에 boolean변수에 초기값.
      var isAllCheck = true;
      var checkboxArray = document.getElementsByClassName('check');
      for(var cbx of checkboxArray) {
        if(cbx.checked == false){
          isAllCheck = false;
          break; //반복문을 탈출하는 키워드
          //continue; //반복문의 해당루프를 탈출하는 키워드
        }
      }
      if(isAllCheck == true){
        window.location.href = '/member/join2'
        
      }else{
        alert('이용약관에 모두 동의하셔야 회원으로 가입하실 수 있습니다.');
      }
    }
  </script>
