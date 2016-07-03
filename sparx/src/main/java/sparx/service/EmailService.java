package sparx.service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import sparx.model.User;

@Service
public class EmailService {

    public static final String REPLY_TO_ADDRESS = "dontreply@sparx.com";
    public static final String FROM_ADDRESS = "registration@sparx.com";

    @Autowired
    private JavaMailSender javaMailSender;

    public void send(User user, String subject, String body) throws MessagingException {
        
    	System.out.println("Inside Mail");
    	MimeMessage mail = javaMailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(mail, true);
        helper.setTo(user.getEmail());
        helper.setReplyTo(REPLY_TO_ADDRESS);
        helper.setFrom(FROM_ADDRESS);
        helper.setSubject(subject);
        helper.setText(body);
        javaMailSender.send(mail);
    }
}