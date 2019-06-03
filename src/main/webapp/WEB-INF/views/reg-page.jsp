<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="reg-form-style.css">

<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/lux/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-hVpXlpdRmJ+uXGwD5W6HZMnR9ENcKVRn855pPbuI/mwPIEKAuKgTKgGksVGmlAvt"
	crossorigin="anonymous">

<title>G&C-Join Us!</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="home">G&C Roasting Collective</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarColor02" aria-controls="navbarColor02"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarColor02"
			bis_skin_checked="1">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="home">Home </a></li>
				<li class="nav-item"><a class="nav-link" href="login-page">Login</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="reg-page">Register<span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="admin-page">Admin</a></li>
				<li class="nav-item"><a class="nav-link" href="#">About</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="text" placeholder="Search">
				<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<br>
	<div class="regblurb">
		<h2>Stay in Touch!</h2>
		<h5>Be the first to hear about our newest artisan blends, keep
			track of your everyday favorites, and fall back in love with your
			favorite morning beverage.</h5>
	</div>

	<div class="row">
		<form action="regform" method="POST"
			onsubmit="return validateRegForm()">
			<div class="column">

				<h5 class="col1header">
					Fill out <small class="text-muted">this side - it'll help
						us get to know you.</small>
				</h5>
				<br>
				<div class="left">First name:</div>
				<div class="right">
					<input type="text" id="firstname" name="firstname" required>
				</div>
				<br>
				<div class="left">Last name:</div>
				<div class="right">
					<input type="text" id="lastname" name="lastname" required>
				</div>
				<br> <br>
				<div class="left">Gender:</div>
				<div class="right">
					<input type="radio" id="gender" name="gender" value="male" required>
					Male <input type="radio" id="gender" name="gender" value="female"
						required> Female <input type="radio" id="gender"
						name="gender" value="unknown" required> Prefer Not to Say
				</div>
				<br> <br>
				<div class="left">Phone w/ dashes:</div>
				<div class="right">
					<input type="text" id="phone" name="phone" required> <br>
					(ex: 123-456-7890)
				</div>
				<br>
				<div class="left">Email:</div>
				<div class="right">
					<input type="text" id="email" name="email" required>
				</div>
				<br>
				<div class="left">Password:</div>
				<div class="right">
					<input type="text" id="password" name="password" required>
				</div>
				<br>
				<div class="left">Confirm password:</div>
				<div class="right">
					<input type="text" id="cpwd" name="cpwd" required>
				</div>
			</div>

			<div class="column">
				<h5 class="col2header">
					Don't worry about this side <small class="text-muted">- you
						can fill out these details later.</small>
				</h5>
				<div class="leftcol2">Address:</div>
				<div class="rightcol2">
					<input type="text" id="street" name="street">
				</div>
				<br>
				<div class="leftcol2">City:</div>
				<div class="rightcol2">
					<input type="text" id="city" name="city">
				</div>
				<div class="leftcol2">State:</div>
				<div class="rightcol2">
					<select name="state" id="state">
						<option value="" selected="selected">--</option>
						<option value="AL">AL</option>
						<option value="AK">AK</option>
						<option value="AZ">AZ</option>
						<option value="AR">AR</option>
						<option value="CA">CA</option>
						<option value="CO">CO</option>
						<option value="CT">CT</option>
						<option value="DE">DE</option>
						<option value="DC">DC</option>
						<option value="FL">FL</option>
						<option value="GA">GA</option>
						<option value="HI">HI</option>
						<option value="ID">ID</option>
						<option value="IL">IL</option>
						<option value="IN">IN</option>
						<option value="IA">IA</option>
						<option value="KS">KS</option>
						<option value="KY">KY</option>
						<option value="LA">LA</option>
						<option value="ME">ME</option>
						<option value="MD">MD</option>
						<option value="MA">MA</option>
						<option value="MI">MI</option>
						<option value="MN">MN</option>
						<option value="MS">MS</option>
						<option value="MO">MO</option>
						<option value="MT">MT</option>
						<option value="NE">NE</option>
						<option value="NV">NV</option>
						<option value="NH">NH</option>
						<option value="NJ">NJ</option>
						<option value="NM">NM</option>
						<option value="NY">NY</option>
						<option value="NC">NC</option>
						<option value="ND">ND</option>
						<option value="OH">OH</option>
						<option value="OK">OK</option>
						<option value="OR">OR</option>
						<option value="PA">PA</option>
						<option value="RI">RI</option>
						<option value="SC">SC</option>
						<option value="SD">SD</option>
						<option value="TN">TN</option>
						<option value="TX">TX</option>
						<option value="UT">UT</option>
						<option value="VT">VT</option>
						<option value="VA">VA</option>
						<option value="WA">WA</option>
						<option value="WV">WV</option>
						<option value="WI">WI</option>
						<option value="WY">WY</option>
					</select>
				</div>
				<br>
				<div class="leftcol2">Zip Code:</div>
				<div class="rightcol2">
					<input type="text" id="zip" name="zip"> <br> <br>
					<input type="submit" id="submit" value="Submit">
				</div>

			</div>
		</form>
	</div>

	<div id="phoneMessage">
		<p id="phoneError" class="invalid">Not quite a valid number,
			please try again.</p>
	</div>

	<div id="message">
		<h4>Password must contain the following:</h4>
		<p id="letter" class="invalid">A lowercase letter</p>
		<p id="capital" class="invalid">An uppercase letter</p>
		<p id="number" class="invalid">A number</p>
		<p id="length" class="invalid">At least eight characters</p>

	</div>

	<div id="confMessage">
		<p id="matches" class="invalid">Password does not match</p>
	</div>



	<script src="${pageContext.request.contextPath}/js/login-validation.js"></script>
</body>
</html>