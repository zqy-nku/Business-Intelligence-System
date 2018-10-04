<%@ page session="true" contentType="text/html; charset=UTF-8" %>

<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery id="query01" 

	catalogUri="/WEB-INF/queries/sales.xml"  

	jdbcDriver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 

	jdbcUrl="jdbc:sqlserver://localhost\\SQLEXPRESS;databaseName=FoodMart 2005;IntegratedSecurity=True">

select {[Measures].[总销售额],[Measures].[总支出额],[Measures].[总销售量]} ON columns,
  {([产品类别].[所有产品],[客户].[所有客户],[产品推广].[所有推广],[商场地域].[所有商场],[时间].[所有时间])} ON rows
from [Sales]

</jp:mondrianQuery>
<c:set var="title01" scope="session">Sales Analysis</c:set>
