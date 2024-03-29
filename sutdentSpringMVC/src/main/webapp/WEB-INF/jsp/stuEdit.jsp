<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>   

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

             td {
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
        <h1>Student Edit Form</h1>

 <f:form method="post" action="/editstusave"  modelAttribute="student">

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
                            Gender
                        </td>
                        <td>                        
                     <f:radiobutton path="gender" value="Male" label="Male"/>
                     <f:radiobutton path="gender" value="Female" label="Female"/>  
                </td>
            </tr>


            <tr>
                <td>
                    Hobby
                </td>
                <td>                        
            <f:checkbox path="hobby" value="Reading" label="Reading"/>  
            <f:checkbox path="hobby" value="Gaming" label="Gaming"/>  
           
        </td>
    </tr>
    
    <tr>
        <td>
             Department:
       
        </td>
        
        <td>
        <f:select path="department">  
        <f:option value="MD" label="MD"/>  
        <f:option value="Manager" label="Manager"/>  
        <f:option value="Sales Man" label="Sales Man"/>        
        </f:select>  
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
