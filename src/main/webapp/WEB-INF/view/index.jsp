<html>
  <head>
    <title>Employee Login</title>
    
  </head>
  <body>

    <header>
      <span>Diverse Bank of Canada</span>

    </header>
    <center>
    <table>
      <tr>
        <td>
          <div class="userImage" title="Click to login as an employee" onclick="openEmployeeForm()"">
            <img src="images/employee.jpg" alt="Employee Login" >
            <div class="userName">
              <p>Employee Login</p>
            </div>    
          </div>
        </td>

        <td>
          <div class="userImage" title="Click to login as a client" onclick="openClientForm()">
            <img src="images/client.png" alt="Client Login"  >
            <div class="userName">
              <p>Client Login</p>
            </div>
          </div>
        </td>
      </tr>
    </table>
  </center>


  <div  class="form-popup" id="employeeForm">
      <form action="clientDetails" method="POST">
        
        <center><h1>Employee Login</h1></center>
        <div class="row">
          <div class="col-25">
            <label>Username</label>
          </div>
          <div class="col-75">
            <input type="text" id="employeeUsername" title="Enter username i.e., email" required/>
          </div>
        </div>

        <div class="row">
          <div class="col-25">
            <label>Password</label>
          </div>
          <div class="col-75">
            <input type="password" id="employeePassword" title="Enter password" required/>
          </div>
        </div>

        <div class="row">
          <input type="submit" value="LOGIN"/>
          <button type="button" onclick="closeEmployeeForm()">CLOSE</button>
          <a href="clientDetails.html">LOGIN</a>
        </div>
      </form>
  </div>



  
  <div class="form-popup" id="clientForm">
    <form action="" method="POST" action="clientDetails.html">

      <center><h1>Client Login</h1></center>
      <div class="row">
        <div class="col-25">
          <label>Username</label>
        </div>
        <div class="col-75">
          <input type="text" id="clientUsername" title="Enter username i.e., email" required/>
        </div>
      </div>

      <div class="row">
        <div class="col-25">
          <label>Password</label>
        </div>
        <div class="col-75">
          <input type="password" id="clientPassword" title="Enter password" required/>
        </div>
      </div>

      <div class="row">
        <input type="submit" value="LOGIN"/>
        <button type="button" onclick="closeClientForm()">CLOSE</button>
        <a href="dashboard.html">LOGIN</a>
      </div>
    </form>
</div>
    <!--
    <center>
      <h1>EMPLOYEE LOGIN</h1>
    </center>

    <div class="container">
      
      <form action="" method="POST" action="clientDetails.html">

        <div class="row">
          <div class="col-25">
            <label>Username</label>
          </div>
          <div class="col-75">
            <input type="text" id="employeeUsername" title="Enter username i.e., email" required/>
          </div>
        </div>

        <div class="row">
          <div class="col-25">
            <label>Password</label>
          </div>
          <div class="col-75">
            <input type="password" id="employeePassword" title="Enter password" required/>
          </div>
        </div>

        <div class="row">
          <input type="submit" value="LOGIN"/>
          <a href="clientDetails.html">LOGIN</a>
        </div>
      </form>
    </div>
-->
    <footer >
        diversebankofcanada@gmail.com<br/>
        <span >
          Helpline: +1 (415) 567-9998 | Customer care: +1 (415) 567-9999
      </span>
    </footer>

<style>
/* ----------------- index.css ----------------------*/
.container {
    margin-top: 50px;
}

div.userImage {
  background-color: white;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  margin-bottom: 25px;
}

div.userName {
  text-align: center;
  padding: 10px 20px;
}

img{
    height: 300px; width: 300px;
}

table,tr,td{
    padding: 20px;
}

.userImage:hover {
    font-size: 15px;
    font-weight: bold;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  background-color: #f2f2f2;
  top: 70px;
  right: 200px;
  bottom: 70px;
  left: 200px;
  padding: 0px 50px 0px 50px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* ----------------- form.css ----------------------*/
* {
    box-sizing: border-box;
}

h1{
    margin: 50px 0px 30px 0px;
}

input[type=text], [type=password], [type=email], [type=number], select{
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    resize: vertical;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    width: 100%;
    background-color: #345B63;
    color: white;
    padding: 12px 20px;
    margin-top: 15px;
    border: none;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #152D35;
}

button {
    width: 100%;
    background-color: red;
    color: white;
    padding: 12px 20px;
    margin-top: 15px;
    border: none;
    cursor: pointer;
}

button:hover {
    background-color: #152D35;
}



.container {
    background-color: #f2f2f2;
    padding: 20px;
    margin: 10px 300px 0px 300px;       /*Top Right Bottom Left*/
}
  
.col-25 {
    float: left;
    width: 25%;
    margin-top: 15px;
}

.col-75 {
    float: left;
    width: 75%;
    margin-top: 15px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}
  
/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
      width: 100%;
      margin-top: 0;
    }
}

/* For welcome page */
h3{
    font-size: 45px;
}

/* ----------------- headerFooter.css ----------------------*/
header {
    padding: 30px;
    text-align: center;
    background-color: #152D35;
    color: #ffffff;
    font-size: 30px;
}

footer {
    margin-top: 50px;
    padding: 28px;
    text-align: center;
    background-color: #152D35;
    color: #ffffff;
    font-size: 15px;
}

nav{
    margin: 50px 0px 10px 0px;
    background-color: #152D35;
    font-size: 15px;
}
a{
 color: #000000;
 text-decoration: none;
 background-color: #ffffff;
 padding: 10px;
 margin: 0px 5px 0px 5px;
}
a:hover{
    font-weight: bold;
    font-size: 17px;
    border: 5px solid #345B63;
}

</style>

<script>
    function openEmployeeForm() {
      document.getElementById("employeeForm").style.display = "block";
    }
    
    function closeEmployeeForm() {
      document.getElementById("employeeForm").style.display = "none";
    }

    function openClientForm() {
      document.getElementById("clientForm").style.display = "block";
    }
    
    function closeClientForm() {
      document.getElementById("clientForm").style.display = "none";
    }
  </script>
  </body>
</html>