<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>1.EL</h2>
	
	<p>
		학원명 : ${ academy } <br>
		강의장 : ${ classRoom } <br>
		강사 : ${ teacher.name }, ${ teacher.age }, ${ teacher.gender } <br><br>
	</p>
	
	<p>
		<ul>
			<li>이름 : ${ student.name }</li>
			<li>나이 : ${ student.age }</li>
			<li>성별 : ${ student.gender }</li>
		</ul>
	</p>
	
	<h2>2. EL 사용시 내장 객체에 저장된 키값이 동일할 경우</h2>
	
	<p>
		scope : ${ scope }
	</p>
	
	<h2>3. 특정 내장 객체를 지정하면서 키값을 제시</h2>
	
	<%
		pageContext.setAttribute("scope", "page");
	%>
	
	<P>
		pageScope에 담긴 값 : ${ scope } 또는 ${ pageScope.scope } <br>
		requestScope에 담긴 값 : ${ requestScope.scope } <br>
		sessionScopea에 담긴 값 : ${ sessionScope.scope } <br>
		applicationScope에 담긴 값 : ${ application.scope } 
	</P>
	

</body>
</html>