<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

       
             
        <f:form method="post" action="/empsave"  modelAttribute="employee">
            
            <table class="table table-striped">
                <tr>
                    <td>
                        Name
                    </td>
                    <td>                        
                        <f:input path="name"></f:input>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Department
                        </td>
                        <td>                        
                        <f:input path="department"></f:input>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Salary
                        </td>
                        <td>                        
                        <f:input path="salary"></f:input>
                        </td>
                    </tr>


                    <tr>
                        <td>                      
                            <input  type="submit" value="Save"/>
                        </td>
                    </tr>
                  
                </table>
        </f:form>
       <a href="/viewallemp">View ALl</a> 

    </body>
</html>
