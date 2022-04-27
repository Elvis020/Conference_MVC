<%--
  Created by IntelliJ IDEA.
  User: elvis
  Date: 22/04/26
  Time: 7:51 AN
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Registration</title>
    <style>
        .error{
            color: #ff0000;
        }
        .errorblock{
            color: #000;
            background-color: #ffEEEE;
            border: 1px solid #ff0000;
            margin: 8px;
            padding: 16px;
        }
    </style>
</head>
<body>
    <h1>Welcome to the registration page!</h1>
    <form:form modelAttribute="registration">
        <form:errors path="*" cssClass="errorblock" element="div" />
        <table>
            <tr>
                <td>
                    <spring:message code="name" text="default"/>
                </td>
                <td><form:input path="name"/></td>
                <td><form:errors path="name" cssClass="error"/></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Add Registration">
                </td>
            </tr>
        </table>
    </form:form>
</body>
</html>