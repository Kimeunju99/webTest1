<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>

<body>
    <h3>회원 정보</h3>
    <form action="queryTest" method="post"> <!-- action = "~"url을 호출하겠다. -->
        ID: <input type="text" name="id" value="user1"><br>
        PW: <input type="password" name="pwd" value="1111"><br>
        NAME: <input type="text" name="name" value="홍길동"><br>
        Hobby:  <input type="checkbox" name="hobby" value="ckliming">등산
                <input type="checkbox" name="hobby" value="sport">운동
                <input type="checkbox" name="hobby" value="reading">독서
                <input type="checkbox" name="hobby" value="travaling">여행<br>
        성별: <input type="radio" name="gender" value="male">남자
              <input type="radio" name="gender" value="female">여자
        <br>종교: <select name="religion">
                <option value="Christinity">기독교</option>
                <option value="Buddhism">불교</option>
                <option value="Catholicism">천주교</option>
                <option value="Atheism">무교</option>
        </select>
        <br>자기소개: <textarea name="intro" cols="30" rows="10"></textarea>
        <br>
        <input type="submit" value="전송">
        <input type="reset" value="취소">
    </form>
</body>

</html>