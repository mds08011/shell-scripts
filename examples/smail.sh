#!/usr/bin/env bash
#It is quite straightforward to send emails from bash scripts. The following simple example will demonstrate one way of doing this from bash applications.
# It will send an email to the recipient containing the given subject and message.
# Send Mails from Shell Scripts
recipient=”admin@example.com”
subject=”Greetings”
message=”Welcome to UbuntuPit”
`mail -s $subject $recipient <<< $message`

