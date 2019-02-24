package com.tech.online.util;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.context.ApplicationContext;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;

/**
 * This Class is used to send an emails.
 * @author intel
 *
 */

public class EmailUtil {
	
	private ApplicationContext applicationContext;
	private static final String FROM_EMAIL_ID="";
	private String toEmailId;
	

	public void sendMail(String subject,String msg){
		JavaMailSenderImpl mailSender;
		try{
			mailSender = applicationContext.getBean("mailSender",JavaMailSenderImpl.class);
	        MimeMessage message = mailSender.createMimeMessage();
	        MimeMessageHelper helper = new MimeMessageHelper(message);
	        helper.setFrom(FROM_EMAIL_ID);
	        helper.setTo(toEmailId);
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
	
	public EmailUtil(ApplicationContext applicationContext,String toEmailId) {
		this.applicationContext = applicationContext;
		this.toEmailId = toEmailId;
	}
}
