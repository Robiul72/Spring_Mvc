<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        
         <style>
            table {
                border-collapse: collapse;
                width: 80%;
                margin-left: 10%;
            }

            th, td {
                border: 1px solid #ddd;
                padding: 7px;
                text-align: left;
            }

            th {
                background-color: gainsboro;
            }
            
            h1{
                text-align: center;
                background-color: buttonface;
                padding: 10px;
               margin-left: 10%;
               margin-right: 10%;
            }

           
        </style>
        
        
        
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
