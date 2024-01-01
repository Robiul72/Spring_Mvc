<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Student View Form</h1>
        
        
         <table>
                    <thead>
                        <tr  >
                            <th>ID</th>
                            <th>Name</th>
                            <th>Gender</th>
                            <th>Department</th>
                            <th>Hobby</th>
                            <th>Action</th>
                        </tr>
                    </thead>


                    <tbody >

                        <c:forEach var="stu" items="${stuList}">
                            <tr>
                                <td>${stu.id}</td> 
                                <td>${stu.name}</td> 
                                <td>${stu.gender}</td> 
                                <td>${stu.department}</td> 
                                <td>${stu.hobby}</td> 
                                <td>
                                    <a class="btn btn-warning" href="/stueditform/${stu.id}">Edit</a> 
                                    <a class="btn btn-danger" href="/deletestu/${stu.id}">Delete</a>
                                </td> 
                            </tr>                  

                        </c:forEach>


                    </tbody>

                </table>
        
        
    </body>
</html>
