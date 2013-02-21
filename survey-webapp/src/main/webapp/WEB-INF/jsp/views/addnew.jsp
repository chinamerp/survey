<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="util" tagdir="/WEB-INF/tags/util" %>
<%@ taglib prefix="tb" uri="/WEB-INF/taglib/taglib.tld" %>

<util:dust path="/template/survey_question" cache="false"/>
<util:dust path="/template/survey_edit" cache="false"/>
<util:js value="/resources/js/pages/edit.js" />

<div class="btn-toolbar" style="margin: 0;">
  <div class="btn-group">
    <button id="tbar_add_m" class="btn btn-success" type="button"><i class="icon-plus icon-white"></i>多项选择题</button>
    <button id="tbar_add_s" class="btn btn-success" type="button"><i class="icon-plus icon-white"></i>单项选择题</button>
    <button id="tbar_add_a" class="btn btn-success" type="button"><i class="icon-plus icon-white"></i>简答题</button>
    <button id="tbar_del_q" class="btn btn-danger" type="button"><i class="icon-minus icon-white"></i>题目</button>
  </div><!-- /btn-group -->

  <div class="btn-group">
    <button id="tbar_add_qi" class="btn btn-success" type="button"><i class="icon-plus icon-white"></i>选项</button>
    <button id="tbar_del_qi" class="btn btn-danger" type="button"><i class="icon-minus icon-white"></i>选项</button>
  </div><!-- /btn-group -->
  <div class="btn-group">
    
  </div><!-- /btn-group -->
  <div class="btn-group pull-right">
    <button id="tbar_save" class="btn btn-success" type="button"><i class="icon-edit icon-white"></i>保存</button>
    <button id="tbar_del" class="btn btn-danger" type="button"><i class="icon-trash icon-white"></i>删除</button>
  </div><!-- /btn-group -->
</div><!-- /btn-toolbar -->

<hr>

<div id="survey_editor" class="container"></div>           
