<!DOCTYPE html>
<%@page import="com.session.Dtodata"%>
<%@page import="java.util.List"%>
<html>
<head>
<style>
html, body {
	height: 100%;
	margin: 0;
	font-family: sans-serif;
    background-image: linear-gradient( 109.6deg,  rgba(103,30,117,1) 11.2%, rgba(252,76,2,1) 91.1% ); */
	color: whitesmoke;
}

table {
	margin-left: auto;
	margin-right: auto;
	background-color: bisque;
	border: 1px solid black;
}

th, td {
	padding: 8px;
	text-align: center;
}

h1 {
	color: purple;
}

h3 {
	color: blue;
}
<%-- .ab
{
    background-color: #A0C49D;
}
.cd
{
    background-color: 213555;
}
.ef
{
    background-color: #E1ECC8;
}
.gh
{
    background-color: #F7FFE5;
} --%>
td
{
   color: black;
}
</style>
</head>

<body>
    <div class="ab" style="height: 250px;">
        <div>
            <table rules="all" style="width: 1600px;">
                <tr>
                    <th><h3>Car No</h3></th>
                    <th><h3>Car Name</h3></th>
                    <th><h3>Car Price</h3></th>
                </tr>

                <%! List<Dtodata> d;%>
                    <% d=(List<Dtodata>) request.getSession().getAttribute("li"); %>
                    <% for(Dtodata sd:d) 
                       { %>
                       <tr>
                        <td>
                        <%! int i; %>
                        <% i=sd.getCarno(); %>
                        <%= i %>
                        </td>
                        
                        <td>
                        <%! String st; %>
                        <% st=sd.getCarname(); %>
                        <%= st %>
                        </td>
                        
                        <td>
                        <%! int i1; %>
                        <% i1=sd.getCarprice(); %>
                        <%= i1 %>
                        </td>
                      
                         <% } %>   
                       </tr>

                </table>
        </div></div>
    <div class="cd" style="height: 200px;"></div>
    <div class="ef" style="height: 150px;"></div>
    <div class="gh" style="height: 150px;"></div>


</body>
</html>