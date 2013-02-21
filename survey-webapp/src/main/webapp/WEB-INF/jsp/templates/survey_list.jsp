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
{#table}
  <table class="table table-hover table-bordered">
    <thead>
      <tr>
      {#columns}
        <th>{.title}</th>
      {/columns}
      </tr>
    </thead>
    
    <tbody>
      {#data}
      <tr class="success">
        {#columns}
        <td>{data.id}</td>
        {/columns}
      </tr>
      {/data}
    </tbody>
  </table>
{/table}


