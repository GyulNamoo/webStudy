package com.sist.manager;

import java.io.FileReader;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailManager {
	public static void main(String[] args) {
		MailManager m = new MailManager();
		m.mailSender("Hello");
	}
	/*private String style="body{"
						 +"padding:1.5em;"
						 +"background:#F5F5F5;"
						 +"}"  // email에 들어가는 스타일 지정
						 +"table{"
						 +"border:1px #EDEDED solid;"
						 +"font-size:.9em;"
						 +"box-shadow:0 2px 5px rgba(0,0,0,.25);"
						 + "widht:100%;"
						 +"border-collapse:cooapse"; */   // CSS파일 이용시 <=== 사용
	public void mailSender(String result)
	{	
		String data="";
		try
		{
			FileReader fr = new FileReader("c:\\webDev\\pwd.txt");
			int i=0;
			while((i=fr.read())!=-1)
			{
				data+=String.valueOf((char)i);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		String host="smtp.naver.com";
		String user="7176lee@naver.com";
		String password="1234";
		
		Properties props=new Properties();
		props.put("mail.smtp.host", host); // host => mail서버
		props.put("mail.smtp.port", 587); // 587: 포트번호(네이버)
		props.put("mail.smtp.auth", true);
		// naver 인증 
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				// TODO Auto-generated method stub
				return new PasswordAuthentication(user, password);
			}
			
		}) ;
		try
		{
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO,new InternetAddress("7176lee@naver.com"));
			message.setSubject("제목"); 
			message.setContent(result,"text/html;charset=UTF-8");
			//message.setContent(html,"text/html;charset=UTF-8");
			Transport.send(message);
			System.out.println("정상수행");
		}catch(Exception ex)
		{
			System.out.println("비정상수행");
			ex.printStackTrace();
		}
		
		
	}
	
}
