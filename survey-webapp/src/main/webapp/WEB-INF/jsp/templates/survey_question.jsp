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
{#questions q_seq="{seq}"}
<div class="survey_q" opt_type={type}>
  <li class="text-success focusable" data-type="survey_q_head" contentEditable="true">
    <label>{head}</label>
  </li>
  <div style="padding-left:1em">
    {@select key=type}
      {@eq value=10}
        {#options}
        <label class="checkbox focusable" data-type="survey_q_item">
          <span><input type="checkbox"/> <div contentEditable="true" >{name}</div></span>
        </label>
        {/options}
      {/eq}
      {@eq value=20}
        {#options}
        <label class="radio focusable" data-type="survey_q_item">
          <span><input type="radio" name="q_i_{q_seq}"/> <div contentEditable="true" >{name}</div></span>
        </label>
        {/options}
      {/eq}
      {@eq value=30}
        {#options}
        <textarea class="input-xxlarge" placeholder="Please anser at here."rows="4"></textarea>
        {/options}
      {/eq}
    {/select}
  </div>
<br>
</div>
{/questions}


			

 