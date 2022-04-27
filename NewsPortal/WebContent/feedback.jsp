<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><link rel="stylesheet" href="feedback.css">
</head><body><section id="contact">
	<div class="sectionheader">	<h1>FEEDBACK</h1></div>
	<article>
	<p>Please Drop your Valuable FeedBack on exploring our website.If there are any Suggestions please kindly mention in the Text-Area</p>
		
			<label for="checkcontact" class="contactbutton"><div class="mail"></div></label><input id="checkcontact" type="checkbox">
	
			<form action="Feedback" method="post" class="contactform">
				<p class="input_wrapper"><input type="text" name="contact_nom" value="" id="contact_nom"><label for="contact_nom">NAME</label></p>
				<p class="input_wrapper"><input type="text" name="contact_email" value="" id="contact_email"><label for="contact_email">EMAIL</label></p>
				<p class="input_wrapper"><input type="text" name="contact_sujet" value="" id="contact_sujet"><label for="contact_sujet">SUBJECT</label></p>
				<p class="textarea_wrapper"><textarea name="contact_message" id="contact_message"></textarea></p>
				<p class="submit_wrapper"><input type="submit" value="SUBMIT"></p>			
			</form>
	</article>
</section>
</body></html>