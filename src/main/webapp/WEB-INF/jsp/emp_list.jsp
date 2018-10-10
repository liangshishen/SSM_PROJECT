<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>员工列表</title>
	<style type="text/css">
		.name:hover {
			color: #f66;
		}

		.tips {
			display: none;
			position: absolute;
			padding: 3px 5px;
			background-color: #fbf0db;
			border: 1px solid #ff9000;
		}

		.name:hover + .tips {
			display: block;
		}
	</style>
</head>
<body>

<h2>员工列表</h2>

<table border="1" cellspacing="0" cellpadding="5">
	<thead>
	<tr>
		<th>编号</th>
		<th>姓名</th>
		<th>职位</th>
		<th>领导</th>
		<th>入职日期</th>
		<th>薪资</th>
		<th>奖金</th>
		<th>部门</th>
		<th></th>
	</tr>
	</thead>

	<tbody>
	<c:forEach items="${emps}" var="emp">
		<tr>
			<td>${emp.empno}</td>
			<td>
				<a class="name" href="#">${emp.ename}</a>
				<div class="tips">部门:${emp.deptno}</div>
			</td>
			<td>${emp.job}</td>
			<td>${emp.mgr}</td>
			<td>${emp.hiredate}</td>
			<td>${emp.sal}</td>
			<td>${emp.comm}</td>
			<td>${emp.deptno}</td>
			<td>
				<a href="#">[查看]</a>
				<a href="#">[修改]</a>
				<a href="#">[删除]</a>
			</td>
		</tr>
	</c:forEach>
	</tbody>
</table>

</body>
</html>
