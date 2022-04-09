<html>
  <head>
    <title>Client Registration</title>
  </head>
  <body>

    <header>
      <span>Diverse Bank of Canada</span>
    </header>

    <center>
      <h1>Create an account for a client</h1>
    </center>

    <div class="container">
      
      <form action="" method="POST" action="account.html">

        <div class="row">
          <div class="col-25">
            <label>First Name</label>
          </div>
          <div class="col-75">
            <input type="text" name="firstName" id="firstName" title="Enter first name" required/>
          </div>
        </div>

        <div class="row">
            <div class="col-25">
              <label>Last Name</label>
            </div>
            <div class="col-75">
              <input type="text" name="lastName" id="lastName" title="Enter last name" required/>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
              <label>Date Of Birth</label>
            </div>
            <div class="col-75">
              <input type="date" name="dateOfBirth" id="dateOfBirth" title="Enter date of birth" required/>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
              <label>House/Apartment No</label>
            </div>
            <div class="col-75">
              <input type="number" name="houseNo" id="houseNo" title="Enter house or Apartment no" required/>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
              <label>Street</label>
            </div>
            <div class="col-75">
              <input type="text" name="street" id="street" title="Enter street name" required/> 
            </div>
        </div>

        <div class="row">
            <div class="col-25">
              <label>City</label>
            </div>
            <div class="col-75">
              <input type="text" name="city" id="city" title="Enter city name" required/>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
              <label>State</label>
            </div>
            <div class="col-75">
              <input type="text" name="state" id="state" title="Enter state name" required/>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
              <label>Postal Code</label>
            </div>
            <div class="col-75">
              <input type="text" name="postalCode" id="postalCode" title="Enter postal code" required/>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
              <label>Contact No</label>
            </div>
            <div class="col-75">
              <input type="number" name="contact" id="contact" title="enter contact client" required/>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
              <label>Email</label>
            </div>
            <div class="col-75">
              <input type="email" name="email" id="email" title="Enter email account" required/>
            </div>
        </div>

        <div class="row">
          <div class="col-25">
            <label>Password</label>
          </div>
          <div class="col-75">
            <input type="password" name="password" id="password" title="Enter password" required/>
          </div>
        </div>

        <div class="row">
            <div class="col-25">
              <label>Confirm Password</label>
            </div>
            <div class="col-75">
              <input type="password" name="confirmPassword" id="confirmPassword" title="Confirm password" required/>
            </div>
        </div>
  
        <div class="row">
          <input type="submit" onclick="checkPassword()" value="REGISTER"/>
          <a href="accountCreate.html">account create</a>
        </div>
      </form>
    </div>

    <footer >
        diversebankofcanada@gmail.com<br/>
        <span >
          Helpline: +1 (415) 567-9998 | Customer care: +1 (415) 567-9999
      </span>
    </footer>

<style>
/*--------------- Form ---------------*/
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


/*--------------- headerFooter ---------------*/
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
    function checkPassword() {
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirmPassword").value;
        if (password == confirmPassword) {

        } else {
            alert("Password confirmation failed, Please try again!");
        }
    }
</script>
  </body>
</html>