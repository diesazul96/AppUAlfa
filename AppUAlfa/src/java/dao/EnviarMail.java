package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
import java.util.Random;
import javax.mail.Authenticator;
import javax.mail.BodyPart;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class EnviarMail {

    private String cod;
    private static final String SMTP_HOST_NAME = "smtp.sendgrid.net";

    private static final String SMTP_AUTH_USER = System.getenv("SENDGRID_USERNAME");

    private static final String SMTP_AUTH_PWD  = System.getenv("SENDGRID_PASSWORD");

    public EnviarMail() {
        this.cod = Integer.toString((int) Math.floor(Math.random() * (1000000 - 100000 + 1) + (100000)));
        
    }

    public static void sendMail(String toEmail,String cod) throws Exception {
        Properties props = new Properties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.host", SMTP_HOST_NAME);
        props.put("mail.smtp.port", 587);
        props.put("mail.smtp.auth", "true");

        Authenticator auth = new SMTPAuthenticator();
        System.out.println("aauuutth"+auth.toString());
        Session mailSession = Session.getInstance(props, auth);
        System.out.println("mail sessioooooon: "+mailSession.getProperty("mail.smtp.auth"));

        Transport transport = mailSession.getTransport();

        MimeMessage message = new MimeMessage(mailSession);

        Multipart multipart = new MimeMultipart("alternative");

        BodyPart bodyPart = new MimeBodyPart();
        bodyPart.setContent("Tu código:"+cod, "text/html");
        multipart.addBodyPart(bodyPart);

        message.setContent(multipart);

        message.setFrom(new InternetAddress("appumartsw@gmail.com"));
        message.setSubject("Confirmación de correo");

        message.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));

 

        transport.connect(SMTP_AUTH_USER,SMTP_AUTH_PWD);

        transport.sendMessage(message,

        message.getRecipients(Message.RecipientType.TO));

        transport.close();
    }
    private static class SMTPAuthenticator extends javax.mail.Authenticator {

        public PasswordAuthentication getPasswordAuthentication() {

            String username = SMTP_AUTH_USER;

            String password = SMTP_AUTH_PWD;

            return new PasswordAuthentication(username, password);

        }

    }

    public String getCod() {

        return cod;

    }
    
    public static void sendMailCheckout(String toEmail,String map) throws Exception {
        Properties props = new Properties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.host", SMTP_HOST_NAME);
        props.put("mail.smtp.port", 587);
        props.put("mail.smtp.auth", "true");

        Authenticator auth = new SMTPAuthenticator();
        System.out.println("aauuutth"+auth.toString());
        Session mailSession = Session.getInstance(props, auth);
        System.out.println("mail sessioooooon: "+mailSession.getProperty("mail.smtp.auth"));

        Transport transport = mailSession.getTransport();

        MimeMessage message = new MimeMessage(mailSession);

        Multipart multipart = new MimeMultipart("alternative");

        BodyPart bodyPart = new MimeBodyPart();
        bodyPart.setContent(map, "text/html");
        multipart.addBodyPart(bodyPart);

        message.setContent(multipart);

        message.setFrom(new InternetAddress("appumartsw@gmail.com"));
        message.setSubject("¡¡Tienes un nuevo pepido!!");

        message.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));

 

        transport.connect(SMTP_AUTH_USER,SMTP_AUTH_PWD);

        transport.sendMessage(message,

        message.getRecipients(Message.RecipientType.TO));

        transport.close();
    }
    
    
    public void sendCheckOut(String toAdd,String map){
    
        try {
            System.out.println("***********EMPEZANDO A ENVIAR MAIL/INICIO CONFIGURACIONES**********");
            // Propiedades de la conexión
            Properties props = new Properties();
            props.setProperty("mail.smtp.host", "smtp.gmail.com");
            props.setProperty("mail.smtp.starttls.enable", "true");
            props.setProperty("mail.smtp.port", "587");
            props.setProperty("mail.smtp.user", "chuidiang@gmail.com");
            props.setProperty("mail.smtp.auth", "true");

            // Preparamos la sesion
            Session session = Session.getDefaultInstance(props);

            // Construimos el mensaje
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("appumartsw@gmail.com"));
            message.addRecipient(
                    Message.RecipientType.TO,
                    new InternetAddress(toAdd));
            message.setSubject("Tienes un nuevo pedido!!");
            
            System.out.println("ESTE ES EL HTML DEL PEDIDO!!"+map);

            final MimeBodyPart htmlPart = new MimeBodyPart();
            htmlPart.setContent(map, "text/html");
            // Create the Multipart.  Add BodyParts to it.
            final Multipart mp = new MimeMultipart("alternative");
            mp.addBodyPart(htmlPart);
            
            message.setContent(mp);

            // Lo enviamos.
            Transport t = session.getTransport("smtp");
            t.connect("appumartsw@gmail.com", "dondetusicompras");
            t.sendMessage(message, message.getAllRecipients());

            // Cierre.
            t.close();
            System.out.println("++++++++++++++++++CORREO ENVIADO DEL TODO/FINITO++++++++++++++++");
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
    }
    
    
    
    
    
    
    
    
}
//=======
//package dao;
//
//import java.util.Properties;
//import java.util.Random;
//
//import javax.mail.Message;
//import javax.mail.Session;
//import javax.mail.Transport;
//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;
//
//public class EnviarMail {
//
//    private String cod;
//
//    public EnviarMail() {
//        this.cod = Integer.toString((int) Math.floor(Math.random() * (1000000 - 100000 + 1) + (100000)));
//
//    }
//
//    public void sendMail(String toAdd) {
//        try {
//            // Propiedades de la conexión
//            Properties props = new Properties();
//            props.setProperty("mail.smtp.host", "smtp.gmail.com");
//            props.setProperty("mail.smtp.starttls.enable", "true");
//            props.setProperty("mail.smtp.port", "587");
//            props.setProperty("mail.smtp.user", "chuidiang@gmail.com");
//            props.setProperty("mail.smtp.auth", "true");
//
//            // Preparamos la sesion
//            Session session = Session.getDefaultInstance(props);
//
//            // Construimos el mensaje
//            MimeMessage message = new MimeMessage(session);
//            message.setFrom(new InternetAddress("appumartsw@gmail.com"));
//            message.addRecipient(
//                    Message.RecipientType.TO,
//                    new InternetAddress(toAdd));
//            message.setSubject("Verificación de cuenta");
//            message.setText("Tu código: "+this.cod);
//
//            // Lo enviamos.
//            Transport t = session.getTransport("smtp");
//            t.connect("appumartsw@gmail.com", "dondetusicompras");
//            t.sendMessage(message, message.getAllRecipients());
//
//            // Cierre.
//            t.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//
//    public String getCod() {
//
//        return cod;
//
//    }
//}
//>>>>>>> origin/nico