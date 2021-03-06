<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:url var="submitUrl" value="${spanner.id == null ? '/addSpanner' : '/editSpanner'}"/>

<form:form modelAttribute="spanner" action="${submitUrl}" class="form">
    <form:label path="name">Spanner name:</form:label>
    <form:input path="name" class="input-block-level"/>
    <form:errors path="name" element="p" class="text-error"/>
    <form:label path="size">Spanner size:</form:label>
    <form:input path="size" class="input-block-level"/>
    <form:errors path="size" element="p" class="text-error"/>

    <c:if test="${spanner.id != null}" >
        <form:hidden path="id" value="${spanner.id}" />
    </c:if>

    <a href="<c:url value="/displaySpanners"/>" class="btn btn-default">Cancel</a>
    <input type="submit" class="btn btn-primary" value="Save changes" />
</form:form>
