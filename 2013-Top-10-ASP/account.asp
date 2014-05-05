<!-- #include file="includes/functions.asp" -->
<!-- #include file="includes/databasesetup.asp" -->
<!-- #include file="includes/usersession.asp" -->
<!-- #include file="includes/links.asp" -->
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Home Page - My ASP.NET MVC Application</title>
        <link href="/favicon.ico" rel="shortcut icon" type="image/x-icon" />
        <meta name="viewport" content="width=device-width" />
        <link href="/Content/site.css" rel="stylesheet"/>

        <script src="/Scripts/modernizr-2.6.2.js"></script>

    </head>
    <body>
        <header>
            <div class="content-wrapper">
                <div class="float-left">
                    <p class="site-title"><a href="/"><img src="/images/logo.png" /></a></p>
                </div>
                <div class="float-right">
                    <section id="login">
                    	<ul>
                    		<li><%= createsecurelink() %></li>
                    	</ul>
                    </section>
                    <nav>
                        <ul id="menu">
                            <li><a href="/">Home</a></li>
                            <li><a href="/About">About</a></li>
                            <li><a href="/Contact">Contact</a></li>
                            <li><%= createaccountlink() %></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>
        <div id="body">

		<section class="featured">
			<div class="content-wrapper">
				<hgroup class="title">
					<h1>Welcome to Faux Bank, <%= ousersession.username %> .</h1><br />
					<h3>Statement for account number: <strong><%= ousersession.accountnumber %></strong></h3>
					<h3>Your account balance is: &pound;<%= ousersession.balance %></h3>
				</hgroup><br />

					<p><a href="/transfer">Transfer money to another account</a></p><br />

					<table id="transactions">
					<tr>
					<th>Transaction Ref</th><th>Account From</th><th>Account To</th><th>Amount</th>
					</tr>

					<!-- #include file="includes/transactions.asp" -->

					</table>

			</div>
		</section>

		<section class="content-wrapper main-content clear-fix">

		<ol class="round">

		</ol>

		</section>
        </div>
        <footer>
            <div class="content-wrapper">
                <div class="float-left">
                    <p>&copy; 2014 - That Coder Guy <a href="http://www.thatcoderguy.co.uk">www.thatcoderguy.co.uk</a></p>
                </div>
            </div>
        </footer>

        <script src="/Scripts/jquery-1.8.2.js"></script>

</body>
</html>


