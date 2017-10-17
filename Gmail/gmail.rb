require 'gmail'

USERMAIL = "skander.sakkaa@gmail.com"
PASSWORD = "TheHackingProject"

mail_list = ["skander.apollo@gmail.com"]
gmail = Gmail.connect!(USERMAIL, PASSWORD)
	gmail.deliver do
		to mail_list
		subject "Testing gmail gem"
		html_part do
			body "<p><strong><span style='color:orange;'>TURTLE</span> <span style='color:red;'>SPAM!</span></strong></p>"
		end
	end
gmail.logout