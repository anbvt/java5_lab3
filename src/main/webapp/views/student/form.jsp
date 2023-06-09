<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Form</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div class="container bg-light" style="width: 500px">
		<h4 class="text-center text-danger pt-3">Student Form</h4>
		<form:form class="my-3" action="/student/save" modelAttribute="sv">

			<form:label class="form-label w-100" path="name">Name: </form:label>
			<form:input class="w-100" path="name" />
			<form:errors class="text-danger w-100" path="name" />

			<form:label class="form-label w-100 mt-3" path="email">Email: </form:label>
			<form:input class="w-100" path="email" />
			<form:errors class="text-danger w-100" path="email" />

			<form:label class="form-label w-100 mt-3" path="marks">Marks: </form:label>
			<form:input class="w-100" path="marks" />
			<form:errors class="text-danger w-100" path="marks" />

			<form:label class="form-label w-100 mt-3" path="gender">Gender: </form:label>
			<div class="form-check form-check-inline">
				<form:radiobutton class="form-check-input" path="gender"
					value="true" label="Male" />
			</div>
			<div class="form-check form-check-inline">
				<form:radiobutton class="form-check-input" path="gender"
					value="false" label="Female" />
			</div>
			<form:errors class="text-danger" path="gender" />

			<form:label class="form-label w-100 mt-3" path="faculty">Faculty: </form:label>
			<form:select path="faculty" class="form-select form-select-lg mb-3">
				<c:forEach var="f" items="${faculties}">
					<form:option value="${f}"></form:option>
				</c:forEach>
			</form:select>
			<form:errors class="text-danger w-100 mb-3" path="faculty" />

			<form:label path="hobbies">Hobbies: </form:label>
			<form:checkboxes items="${hobbies}" cssClass="form-check-input ms-3 me-2" path="hobbies" />
			<br>
			<form:errors class="text-danger mb-3 w-100" path="hobbies" />
			<h4 class="mt-3">${message}</h4>
			<form:errors class="text-danger" path="*" delimiter=", <br>" />
			<p>
				<form:button class="btn btn-danger my-3">Save</form:button>
		</form:form>
	</div>
</body>
</html>