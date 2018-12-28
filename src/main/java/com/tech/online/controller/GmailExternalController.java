package com.tech.online.controller;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

public class GmailExternalController {
    
    public void sendMessageTOExternalGmail(String bettingTeam,String mailID) {
        // SMTP server information
        String host = "smtp.gmail.com";
        String port = "587";
        String mailFrom = "sandeep.sm541";
        String password = "samhita416";

        // outgoing message information
        	mailID="asudheer.sai@gmail.com";
        String mailTo = "asudheer.sai@gmail.com";
        String subject = "Hello my friend";
        String message = "Hi guy,"+bettingTeam;

        GmailExternalController mailer = new GmailExternalController();

        try {
            mailer.sendPlainTextEmail(host, port, mailFrom, password, mailTo,
                    subject, message);
            System.out.println("Email sent.");
        } catch (Exception ex) {
            System.out.println("Failed to sent email.");
            ex.printStackTrace();
        }
    }
    public void sendOTPExternalGmail(int otp,String mailTo) {
        // SMTP server information
        String host = "smtp.gmail.com";
        String port = "587";
        String mailFrom = "sandeep.sm541";
        String password = "samhita416";

        String subject = "Online IPL Betting :: OTP";
        String message = otp + " is the OTP for your registation page \n Do not share with anyone"
        		             +"\n \n Thanks & Regards,\n Sandeep";

        GmailExternalController mailer = new GmailExternalController();

        try {
            mailer.sendPlainTextEmail(host, port, mailFrom, password, mailTo,
                    subject, message);
            System.out.println("Email sent.");
        } catch (Exception ex) {
            System.out.println("Failed to sent email.");
            ex.printStackTrace();
        }
    }
   
    public void sendPlainTextEmail(String host, String port,
            final String userName, final String password, String toAddress,
            String subject, String message) throws AddressException,
            MessagingException {

        // sets SMTP server properties
        Properties properties = new Properties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", port);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        // *** BEGIN CHANGE
        properties.put("mail.smtp.user", userName);

        // creates a new session, no Authenticator (will connect() later)
        Session session = Session.getDefaultInstance(properties);
        // *** END CHANGE

        // creates a new e-mail message
        Message msg = new MimeMessage(session);

        msg.setFrom(new InternetAddress(userName));
        InternetAddress[] toAddresses = { new InternetAddress(toAddress) };
        msg.setRecipients(Message.RecipientType.TO, toAddresses);
        msg.setSubject(subject);
        msg.setSentDate(new Date());
        // set plain text message
        msg.setText(message);

        // *** BEGIN CHANGE
        // sends the e-mail
        Transport t = session.getTransport("smtp");
        t.connect(userName, password);
        t.sendMessage(msg, msg.getAllRecipients());
        t.close();
        // *** END CHANGE

    }
}
