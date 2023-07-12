<!DOCTYPE html>
<html lang="en">
<head>
    
    <title>Document</title>
   <style>
    form{
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .container{
    display: flex; 
    flex-direction: column;
    width: 25vw;
    background-color: cadetblue; 
}
h1, p{
    text-align: center;
}

button {
  padding: 0.75em;
  border: none;
  outline: none;
  background-color: rgb(68, 18, 232);
  color: white;
  border-radius: 0.25em;
}

button:hover {
  cursor: pointer;
  background-color: rgb(41, 4, 164);
}
   </style>
</head>

<body>
    <form action="<%=request.getContextPath() %>/showroom" method="post">
 <fieldset>
<div class="container">
    <h1>WELCOME TO SHOWROOM</h1>
    
    <label>Enter Car ID</label>
<input type="number" name="carno">
<br><br>

<label>Enter Car Name</label>
<input type="text" name="carname">
<br><br>

<label>Enter Car Price</label>
<input type="number" name="carprice">
<br><br>

    <button type="submit">SUBMIT </button>
  </div>
  
    </fieldset >

</form> 
</body>
</html>