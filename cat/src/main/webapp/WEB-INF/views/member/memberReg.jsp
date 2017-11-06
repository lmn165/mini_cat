<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

<!-- 
   <link rel="stylesheet" type="text/css" href="css/member.css">
 -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>회원 가입</title>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  <!-- 합쳐지고 최소화된 최신 CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
  <!-- 부가적인 테마 -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<style type="text/css">
/* http://meyerweb.com/eric/tools/css/reset/
   v2.0 | 20110126
   License: none (public domain)
*/

html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed,
figure, figcaption, footer, header, hgroup,
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
  margin: 0;
  padding: 0;
  border: 0;
  font-size: 100%;
  font: inherit;
  vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure,
footer, header, hgroup, menu, nav, section {
  display: block;
}
body {
  line-height: 1;
}
ol, ul {
  list-style: none;
}
blockquote, q {
  quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
  content: '';
  content: none;
}
table {
  border-collapse: collapse;
  border-spacing: 0;
}
/*초기화 끝 css 시작*/
.body{
  width: auto;
  margin: 0 auto;
}

table .label{
  font-size: 1em;
  color : #aabbcc;
}
table .notice{
  color: blue;
  font-size: 0.7em;
  display : none;
}

.wrapper_table{
  margin: 50px auto;
  box-shadow :0 0 10px #bbb;
  /*border: 1px solid blue;*/
  height: auto;
  text-align: center;
  width: 500px;

}
/*join_header*/
.wrapper_table .join_header{
  background-color: #a3cca3;
  height: 50px;
}

.join_header p{
  float: left;
  font-size: 1.2em;
  font-weight: bold;
  padding: 13px 0px 30px 13px;
}
/*join_body*/
.wrapper_table .join_body{
  height: auto;
  text-align: center;
  padding: 5px 50px 20px 50px;
  background-color: #b5d692;
}

.join_body dt{
  margin-top: 20px;
  height: 20px;
  text-align: left;
}

.join_body dt label{
  font-size: 0.8em;
  color: black;
}

.join_body dd input{
  width: 360px;
  height: 40px;
  padding: 0 20px;
  font-size: 20px;
}

.join_body dd select{
  font-size: 20px;
  width: 115px;
  height: 40px;
}

#m_tel2, #m_tel3{
  width: 110px;
  height: 36px;
  padding : 0;
}

#m_gender{
  width: 100px;
}

/*join_footer*/
.wrapper_table .join_footer{
  height: 50px;
  text-align: center;
  background-color: #b5d692;
}

.join_footer input{
  border: 0px;
  background: #a3cca3;
  width: 400px;
  height: 40px;
  margin: 5px;
  font-size: 20px;
  color: black;
}

.arrow_box {
  margin-top:20px;
  position: relative;
  padding: 5px;
  background: #c2e1f5;
  border: 4px solid #88b7d5;
  text-align: left;
}
.arrow_box:after, .arrow_box:before {
  bottom: 100%;
  left: 50%;
  border: solid transparent;
  content: " ";
  height: 0;
  width: 0;
  position: absolute;
  pointer-events: none;
}

.arrow_box:after {
  border-color: rgba(194, 225, 245, 0);
  border-bottom-color: #c2e1f5;
  border-width: 10px;
  margin-left: -180px;
}
.arrow_box:before {
  border-color: rgba(136, 183, 213, 0);
  border-bottom-color: #88b7d5;
  border-width: 16px;
  margin-left: -186px;
}

.arrow_box a{
  font-size:0.7em;
}

</style>
</head>

<body>
<div class = "body">
  <form name="joinfrm" id="joinfrm" action="joinProc.do" method="post">
    <input type="hidden" id="id_ch" name="id_ch" value="false"/>
    <input type="hidden" id="pass_ch" name="pass_ch" value="false"/>
    <input type="hidden" id="email_ch" name="email_ch" value="false"/>
    <div class ="wrapper_table">
      <div class="join_header">
        <p>회원 가입</p>
      </div>
      <div class="join_body">
        <dl>
          <div>
            <dt><label>Email</label></dt>
            <dd><input id="m_email" name="m_email" type="text" placeholder="E-mail"/></dd>
            <div class='arrow_box' id="email_notice" style="display:none;">
              <ul>
                <li><a class = "notice" style="color:red;">이메일 형식이 맞지 않습니다.</a></li>
              </ul>
            </div>
          <div class='arrow_box' id="id_notice">
            <ul>
              <li><a class="notice" id="info_id1">* E-mail을 입력해주세요</a></li>
              <li><a class="notice" id="info_id2">* ex ) aaa@bbb.com</a></li>
            </ul>
          </div>
          <div>
            <dt><label>PassWord</label></dt>
            <dd><input id="m_pass" name="m_pass" type="password" size = "30" maxlegnth="10" placeholder="비밀번호"></dd>
          </div>
          <div class='arrow_box' id="pass_notice">
            <ul>
              <li><a class = "notice" id="info_pass1">* 영문과 숫자의 조합으로 설정해주시기 바랍니다.</li>
              <li><a class = "notice" id="info_pass2">* 8자 이상으로 설정 가능합니다.</a></li>
            </ul>
          </div>
          <dt><label>PassWord Check</label></dt>
          <dd><input id="m_pass_ch" name="m_pass_ch" type="password" size = "30" maxlength="10" placeholder="비밀번호 확인"></dd>
          <div class='arrow_box' id="pass_ch_notice" style="display:none;">
            <ul>
              <li><a class = "notice" style="color:red;">비밀번호를 확인해 주세요.</a></li>
            </ul>
          </div>
          <dt><label>Name</label></dt>
          <dd><input id="m_name" name="m_name" type="text" size = "30" maxlength="10" placeholder="별명"></dd>
        </dl>
      </div>
      <div class="join_footer">
        <input type="button" value="가입" onclick="doSubmit()">
      </div>
    </div>
  </form>

</div>
</body>

</html>

