<%@ page session="true" contentType="text/html; charset=UTF-8" %>

<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery id="query01" 

	catalogUri="/WEB-INF/queries/warehouse.xml"  

	jdbcDriver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 

	jdbcUrl="jdbc:sqlserver://localhost\\SQLEXPRESS;databaseName=FoodMart 2005;IntegratedSecurity=True">

select {[Measures].[仓库销售],[Measures].[仓库支出],[Measures].[仓库进货]} ON columns,
  {([仓库].[所有仓库],[商场地域].[所有商场],[时间].[所有时间])} ON rows
from [Warehouse]

</jp:mondrianQuery>
<c:set var="title01" scope="session">Warehouse Analysis</c:set>