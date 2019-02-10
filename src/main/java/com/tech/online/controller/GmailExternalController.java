package com.tech.online.controller;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

public class GmailExternalController {
    
    
    public void sendOTPExternalGmail(int otp,String mailTo) {
        // SMTP server information
       /* String host = "smtp.gmail.com";
        String port = "587";*/
        String mailFrom = "sandeep.sm541@gmail.com";
        String password = "samhita416";

        String subject = "Online IPL Betting :: OTP";
        String message = otp + " is the OTP for your registation page \n Do not share with anyone"
        		             +"\n \n Thanks & Regards,\n Sandeep";

        GmailExternalController mailer = new GmailExternalController();

        try {
            mailer.sendPlainTextEmail("", "", mailFrom, password, mailTo,
                    subject, message);
            System.out.println("Email sent.");
        } catch (Exception ex) {
            System.out.println("Failed to sent email."+ex.toString());
            ex.printStackTrace();
        }
    }
   
    public void sendPlainTextEmail(String host, String port,
            final String userName, final String password, String toAddress,
            String subject, String message) throws AddressException,
            MessagingException {

        // sets SMTP server properties
    	
    	
         
         
         
        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.socketFactory.port", "465");
        properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.port", "465");
        /*properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", port);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        // *** BEGIN CHANGE
        properties.put("mail.smtp.user", userName);
        
        //properties.put("mail.smtps.host","smtp.gmail.com");
        properties.put("mail.transport.protocol", "smtp"); 
        //properties.put("mail.smtps.auth", "true"); 
        properties.put("mail.smtp.debug", "true"); 
       // properties.put("mail.smtp.port", 465); 
        properties.put("mail.smtp.socketFactory.port", port);
        properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory"); 
        properties.put("mail.smtp.socketFactory.fallback", "false"); 
        properties.put("mail.smtp.ssl.enable", true);*/

        // creates a new session, no Authenticator (will connect() later)
        Session session = Session.getDefaultInstance(properties,new Authenticator() {
        	@Override
        	 protected PasswordAuthentication getPasswordAuthentication() {
        		   return new PasswordAuthentication("sandeep.sm541@gmail.com","samhita416");
        		}
		});
        System.out.println("Session111111  ----> "+session);
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
        System.out.println("message");
        Transport.send(msg);

        // *** BEGIN CHANGE
        // sends the e-mail
       /* Transport t = session.getTransport("smtp");
        System.out.println("transport ----> "+t.isConnected());
        t.connect(userName, password);
        System.out.println("Connected with username and password");
        t.sendMessage(msg, msg.getAllRecipients());
        t.close();*/
        // *** END CHANGE

    }
}
