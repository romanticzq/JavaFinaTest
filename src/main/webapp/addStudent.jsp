<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
		.add_outside {
			/*margin-left: 200px;*/
			text-align: center;
		}
		h1 {
			text-align: center;
		}
		input {
			width: 300px;
			height: 20px;
			margin-top: 10px;
		}
		.submit,.reset {
			width: 80px;
			height: 30px;
			margin-left: 60px;
		}
	</style>
</head>
<body>
	<div class="add_outside">
		<h1>新增学生</h1>
		<div>
			<form action="addStudent" method="post">
				姓名：<input type="text" name="name" required="required"><br>
				性别：<input type="text" name="sex" required="required"><br>
				专业：<input type="text" name="profession" required="required"><br>
				方向：<input type="text" name="direction" required="required"><br>
				技术：<input type="text" name="technology" required="required"><br>
				能力：<input type="text" name="ability" required="required"><br>
				<input type="submit" name="submit" value="提交" class="submit">
				<input type="reset" name="reset" value="重置" class="reset">
			</form>
		</div>
	</div>
</body>
</html>