package com.tech.online.util;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.context.ApplicationContext;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;

/**
 * This Class is used to send an emails by using Gmail SMTP Server
 * @author intel
 *
 */

public class GmailUtil implements Email {
	
	private ApplicationContext applicationContext;
	
    @Override
	public void sendAnEmail(String toMailId, String subject,String msg){
		JavaMailSenderImpl mailSender;
		try{
			mailSender = applicationContext.getBean("mailSender",JavaMailSenderImpl.class);
	        MimeMessage message = mailSender.createMimeMessage();
	        MimeMessageHelper helper = new MimeMessageHelper(message);
	        helper.setFrom(FROM_EMAIL_ID);
	        helper.setTo(toMailId);
	        helper.setSubject(subject);       
	        helper.setText(msg, true);
	        mailSender.send(message);
		}catch(MessagingException msgExp){
			System.out.println(msgExp.toString());
			msgExp.printStackTrace();
		}finally {
			System.out.println("Finally block");
		}
	}
	
	public GmailUtil(ApplicationContext applicationContext) {
		this.applicationContext = applicationContext;
	}

}
