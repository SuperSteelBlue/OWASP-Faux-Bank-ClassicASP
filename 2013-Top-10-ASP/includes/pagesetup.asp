<!-- #include virtual="/handlers/securitymode.asp" -->
<!-- #include file="functions.asp" -->
<!-- #include file="databasesetup.asp" -->
<!-- #include file="usersession.asp" -->
<!-- #include file="links.asp" -->
<!-- #include file="errormessages.asp" -->
<%

dim ousersession

'##################################################
'##### if we have a session cookie, then validate the user #####
'##################################################

if GetSessionKey()<>"" then

	set ousersession = validateSession()

	if ousersession is nothing then

		clearSessionCookie()

	end if

else
	set ousersession = nothing
end if

%>