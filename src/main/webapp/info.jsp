<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<style type="text/css">
		a {
			color: blue;
		}
</style>
</head>
<body>
	<div class="outside">
		<div>
			方向：&nbsp;&nbsp;<a href="javascript:void(0);" class="all">全部</a>&nbsp;
			<a href="javascript:void(0);" id="java">Java开发</a>&nbsp;
			<a href="javascript:void(0);" id="bigData">大数据</a>&nbsp;
			<a href="javascript:void(0);" id="test">软件测试</a>&nbsp;
			<a href="javascript:void(0);" id="web">web前端</a>
		</div>
		<div>
			性别：&nbsp;&nbsp;<a href="javascript:void(0);" class="all">全部</a>&nbsp;
			<a href="javascript:void(0);" id="male">男</a>&nbsp;
			<a href="javascript:void(0);" id="female">女</a>
		</div>
		<div>
			<table border="1">
				<tr>
					<th>学号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>专业</th>
					<th>方向</th>
					<th>技术</th>
					<th>能力</th>
				</tr>
				<c:forEach items="${studentList }" var="temp">
					<tr>
						<td>${temp.no }</td>
						<td>${temp.name }</td>
						<td>${temp.sex }</td>
						<td>${temp.profession }</td>
						<td>${temp.direction }</td>
						<td>${temp.technology }</td>
						<td>${temp.ability }</td>
					</tr>
				</c:forEach>
			</table>
			<a href="to_addStudent">新增学生</a>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(function(){
		
		$(".all").click(function(e){
			$("table tr:gt(0)").remove();
			$.ajax({
				url:"findAll2", //发送请求的地址
				type:"post", //请求方式 ("POST" 或 "GET")
				data:{},  //发送到服务器的数据1
				dataType:"json", //预期返回的数据类型
				success:function(json){ //请求成功后的回调函数。
					for(var i=0;i<json.studentList.length;i++) {
						var no=json.studentList[i].no;
						var name=json.studentList[i].name;
						var sex=json.studentList[i].sex;
						var profession=json.studentList[i].profession;
						var direction=json.studentList[i].direction;
						var technology=json.studentList[i].technology;
						var ability=json.studentList[i].ability;
						$("table").append("<tr><td>"+no+
								"</td><td>"+name+
								"</td><td>"+sex+
								"</td><td>"+profession+
								"</td><td>"+direction+
								"</td><td>"+technology+
								"</td><td>"+ability+"</td></tr>");
					}
				}
			})
		})
		
		$("#java").click(function(e){
			$("table tr:gt(0)").remove();
			$.ajax({
				url:"findByDirection", //发送请求的地址
				type:"post", //请求方式 ("POST" 或 "GET")
				data:{direction:"Java开发"},  //发送到服务器的数据1
				dataType:"json", //预期返回的数据类型
				success:function(json){ //请求成功后的回调函数。
					for(var i=0;i<json.studentList.length;i++) {
						var no=json.studentList[i].no;
						var name=json.studentList[i].name;
						var sex=json.studentList[i].sex;
						var profession=json.studentList[i].profession;
						var direction=json.studentList[i].direction;
						var technology=json.studentList[i].technology;
						var ability=json.studentList[i].ability;
						$("table").append("<tr><td>"+no+
								"</td><td>"+name+
								"</td><td>"+sex+
								"</td><td>"+profession+
								"</td><td>"+direction+
								"</td><td>"+technology+
								"</td><td>"+ability+"</td></tr>");
					}
				}
			})
		})
		
		$("#bigData").click(function(e){
			$("table tr:gt(0)").remove();
			$.ajax({
				url:"findByDirection", //发送请求的地址
				type:"post", //请求方式 ("POST" 或 "GET")
				data:{direction:"大数据"},  //发送到服务器的数据1
				dataType:"json", //预期返回的数据类型
				success:function(json){ //请求成功后的回调函数。
					
					for(var i=0;i<json.studentList.length;i++) {
						var no=json.studentList[i].no;
						var name=json.studentList[i].name;
						var sex=json.studentList[i].sex;
						var profession=json.studentList[i].profession;
						var direction=json.studentList[i].direction;
						var technology=json.studentList[i].technology;
						var ability=json.studentList[i].ability;
						$("table").append("<tr><td>"+no+
								"</td><td>"+name+
								"</td><td>"+sex+
								"</td><td>"+profession+
								"</td><td>"+direction+
								"</td><td>"+technology+
								"</td><td>"+ability+"</td></tr>");
					}
				}
			})
		})
		
		$("#test").click(function(e){
			$("table tr:gt(0)").remove();
			$.ajax({
				url:"findByDirection", //发送请求的地址
				type:"post", //请求方式 ("POST" 或 "GET")
				data:{direction:"软件测试"},  //发送到服务器的数据1
				dataType:"json", //预期返回的数据类型
				success:function(json){ //请求成功后的回调函数。
					
					for(var i=0;i<json.studentList.length;i++) {
						var no=json.studentList[i].no;
						var name=json.studentList[i].name;
						var sex=json.studentList[i].sex;
						var profession=json.studentList[i].profession;
						var direction=json.studentList[i].direction;
						var technology=json.studentList[i].technology;
						var ability=json.studentList[i].ability;
						$("table").append("<tr><td>"+no+
								"</td><td>"+name+
								"</td><td>"+sex+
								"</td><td>"+profession+
								"</td><td>"+direction+
								"</td><td>"+technology+
								"</td><td>"+ability+"</td></tr>");
					}
				}
			})
		})
		
		$("#web").click(function(e){
			$("table tr:gt(0)").remove();
			$.ajax({
				url:"findByDirection", //发送请求的地址
				type:"post", //请求方式 ("POST" 或 "GET")
				data:{direction:"web前端"},  //发送到服务器的数据1
				dataType:"json", //预期返回的数据类型
				success:function(json){ //请求成功后的回调函数。
					
					for(var i=0;i<json.studentList.length;i++) {
						var no=json.studentList[i].no;
						var name=json.studentList[i].name;
						var sex=json.studentList[i].sex;
						var profession=json.studentList[i].profession;
						var direction=json.studentList[i].direction;
						var technology=json.studentList[i].technology;
						var ability=json.studentList[i].ability;
						$("table").append("<tr><td>"+no+
								"</td><td>"+name+
								"</td><td>"+sex+
								"</td><td>"+profession+
								"</td><td>"+direction+
								"</td><td>"+technology+
								"</td><td>"+ability+"</td></tr>");
					}
				}
			})
		})
		
		$("#male").click(function(e){
			$("table tr:gt(0)").remove();
			$.ajax({
				url:"findBySex", //发送请求的地址
				type:"post", //请求方式 ("POST" 或 "GET")
				data:{sex:"男"},  //发送到服务器的数据1
				dataType:"json", //预期返回的数据类型
				success:function(json){ //请求成功后的回调函数。
					
					for(var i=0;i<json.studentList.length;i++) {
						var no=json.studentList[i].no;
						var name=json.studentList[i].name;
						var sex=json.studentList[i].sex;
						var profession=json.studentList[i].profession;
						var direction=json.studentList[i].direction;
						var technology=json.studentList[i].technology;
						var ability=json.studentList[i].ability;
						$("table").append("<tr><td>"+no+
								"</td><td>"+name+
								"</td><td>"+sex+
								"</td><td>"+profession+
								"</td><td>"+direction+
								"</td><td>"+technology+
								"</td><td>"+ability+"</td></tr>");
					}
				}
			})
		})
		
		$("#female").click(function(e){
			$("table tr:gt(0)").remove();
			$.ajax({
				url:"findBySex", //发送请求的地址
				type:"post", //请求方式 ("POST" 或 "GET")
				data:{sex:"女"},  //发送到服务器的数据1
				dataType:"json", //预期返回的数据类型
				success:function(json){ //请求成功后的回调函数。
					
					for(var i=0;i<json.studentList.length;i++) {
						var no=json.studentList[i].no;
						var name=json.studentList[i].name;
						var sex=json.studentList[i].sex;
						var profession=json.studentList[i].profession;
						var direction=json.studentList[i].direction;
						var technology=json.studentList[i].technology;
						var ability=json.studentList[i].ability;
						$("table").append("<tr><td>"+no+
								"</td><td>"+name+
								"</td><td>"+sex+
								"</td><td>"+profession+
								"</td><td>"+direction+
								"</td><td>"+technology+
								"</td><td>"+ability+"</td></tr>");
					}
				}
			})
		})
	})
</script>
</html>