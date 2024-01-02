<%@taglib uri="http://www.springframework.org/tags/form"  prefix="f" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>



        <f:form method="post" action="/editempsave"  modelAttribute="employee">

            <f:hidden  path="id" />
            
            <table>
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
                            <input  type="submit" value="Update"/>
                        </td>
                    </tr>

                </table>
        </f:form>




    </body>
</html>
