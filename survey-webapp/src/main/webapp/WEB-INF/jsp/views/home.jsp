<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="util" tagdir="/WEB-INF/tags/util" %>
<%@ taglib prefix="tb" uri="/WEB-INF/taglib/taglib.tld" %>

<util:dust path="/template/survey_list" cache="false"/>
<util:js value="/resources/js/pages/home.js" />

<div class="btn-toolbar" style="margin: 0;">
  <div class="btn-group">
    <a href="./addnew" role="button" class="btn btn-success" data-toggle="modal">创建问卷</a>
    <button class="btn btn-success" type="button">编辑问卷</button>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button class="btn btn-danger" type="button">删除问卷</button>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button class="btn btn-info dropdown-toggle" data-toggle="dropdown">查看<span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="#">设计中</a></li>
      <li><a href="#">已发布</a></li>
      <li><a href="#">已关闭</a></li>
      <li class="divider"></li>
      <li><a href="#">Separated link</a></li>
    </ul>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button class="btn btn-success dropdown-toggle" data-toggle="dropdown">排序<span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="#">Action</a></li>
      <li><a href="#">Another action</a></li>
      <li><a href="#">Something else here</a></li>
      <li class="divider"></li>
      <li><a href="#">Separated link</a></li>
    </ul>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button class="btn btn-info dropdown-toggle" data-toggle="dropdown">Info <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="#">Action</a></li>
      <li><a href="#">Another action</a></li>
      <li><a href="#">Something else here</a></li>
      <li class="divider"></li>
      <li><a href="#">Separated link</a></li>
    </ul>
  </div><!-- /btn-group -->
  <div class="control-group pull-right input-append">
    <input type="text" class="">
    <button class="btn btn-success " type="button"><i class="icon-search"></i></button>
    
  </div><!-- /btn-group -->
</div><!-- /btn-toolbar -->

<hr>

<div id="survey_list"></div>           
