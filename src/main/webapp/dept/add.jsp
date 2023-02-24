<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
<style type="text/css">
   form label+span{
      color: red;
      font-style: italic;
   }
</style>
<script
  src="https://code.jquery.com/jquery-1.12.4.js"
  integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="
  crossorigin="anonymous"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
</head>
<body>
	<div>
		<a href="index.do">HOME</a>
		<a href="intro.do">INTRO</a>
		<a href="dept/list.do">LIST</a>
		<a href="dept/add.do">INSERT</a>
	</div>
	<h2>입력페이지</h2>
	<form action="insert.do" method ="post">
      <div class = "form-group">
         <label for="deptno">deptno</label><span>${errs.deptno }</span>
         <input name="deptno" id="deptno" value="${deptno==0?'':deptno }" class ="form-control"/>
      </div>
      <div class = "form-group">
         <label for="dname">dname</label><span>${errs.dname }</span>
         <input name="dname" id="dname" value="${dname }" class ="form-control"/>
      </div>
      <div class = "form-group">
         <label for="loc">loc</label><span>${errs.loc }</span>
         <input name="loc" id="loc" value="${loc }" class ="form-control"/>
      </div>
      <div class = "form-group">
         <button class="btn btn-default">입력</button>
         <button type = "reset" class="btn btn-default">취소</button>
      </div>
   </form>
</body>
</html>