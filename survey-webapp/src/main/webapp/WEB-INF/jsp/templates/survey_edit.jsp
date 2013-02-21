<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="util" tagdir="/WEB-INF/tags/util" %>
<%@ taglib prefix="tb" uri="/WEB-INF/taglib/taglib.tld" %>

<%-- Emppty dust.js template --%>

{#data.survey}
<div id="survey_title" > <h1 contentEditable="true" class="focusable" style="text-align: center">{title}</h1> </div>
<br>
<div id="survey_desc" style="text-indent: 2em" > <p contentEditable="true" class="focusable" >{desc}</p> </div>
<br>
<ol id='survey_qstns'> 
  {>"template/survey_question" /}
  <div id="qstn_addnew"></div>
</ol>
{/data.survey}


