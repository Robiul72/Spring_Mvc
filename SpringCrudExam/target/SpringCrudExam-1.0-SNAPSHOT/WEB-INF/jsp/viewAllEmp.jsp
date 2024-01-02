<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
         <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Department</th>
                    <th>Salary</th>                    
                    <th>Action</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach var="emp" items="${empList}">
                    <tr>
                        <td>${emp.id}</td> 
                        <td>${emp.name}</td> 
                        <td>${emp.department}</td> 
                        <td>${emp.salary}</td> 
                        
                        <td><a href="/empeditform/${emp.id}">Edit</a> 
<<<<<<< HEAD
                        <a href="/deleteemp/${emp.id}">Delete</a></td> 
                    </tr>                  
                   
                </c:forEach>
                    
                <tr> <a href="/empsaveform">Add</a> </tr>
=======
                            <a href="/deleteemp/${emp.id}">Delete</a></td> 
                    </tr>                  

                </c:forEach>
>>>>>>> b6a6aeae6c03bea2f765b20f80b5350b2cfa1d76


            </tbody>

        </table>
        
        
    </body>
</html>
