import java.security.GeneralSecurityException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import com.sun.mail.util.MailSSLSocketFactory;
import java.lang.*;
public class dataquery {
	public static Statement st=null;
	public static String register_clg(String clg_name,String clg_id,String email,String c_info,String password){
		int a=0;
		String result;
		try{
			st=dbconnection.myconnection();
			a=st.executeUpdate("insert into reg_clg1 values('"+clg_id+"','"+clg_name+"','"+email+"','"+c_info+"','"+password+"')" );
		}
		
		catch(Exception e){
			result="n";
			return result;
			
		}
		if(a!=0)
		{
			System.out.println("Registerd successfully"+a);
			result="y";
			
		}
		else
			result="n";
		
		
		return result;
	}
	public static String logincheck_college(String username,String password)
	{
		
		int a=0;
		String result="";
		try{
			st=dbconnection.myconnection();
			ResultSet res = st.executeQuery("select * from reg_clg1 where clg_email='"+username+"' and password='"+password+"'");

			if(res.next()){
				String data1 = res.getString(3);
				String data2 = res.getString(5);
			
				
				if(data1.equals(username)&& data2.equals(password)){
					result = "y";
						
					}
					
				else{
					result = "n";
				}
			}
		}
		
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		
		
		return result;
	}
	

public static int fetch_clg_strength(String companyid,String courseid)
{ int result=0;
	try{
		st=dbconnection.myconnection();
		ResultSet res = st.executeQuery("select * from company_reg where company_id='"+companyid+"' and course_id='"+courseid+"'");

		if(res.next()){
		
			int data1=res.getInt(3);
			int data2=res.getInt(5);
		
			
			if(data2<data1){
				result=1;
				data2=data2+1;
				st.executeUpdate("UPDATE company_reg SET no_of_reg='"+data2+"' where company_id='"+companyid+"' and course_id='"+courseid+"'");
				
			}
			else if(data2> data1){
				System.out.println("Registration full");
				result=0;
				
			}
					
				}
			
				
			
	}
	
	catch(Exception e){
		e.printStackTrace();
		
	}
	
	
	return result;
}

public static void sendmail1(String username1,String password1,String usermail)
{
	
	
	    //Creating a result for getting status that messsage is delivered or not!
	    String result="";

	    // Defining the gmail host
	    String host = "smtp.gmail.com";
	 
	    final String username = "vaishkr66@gmail.com";
	    final String password ="kundathi";

	        Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", "465");
		props.put("mail.transport.protocol", "smtp");
		props.put("mail.smtp.starttls.enable", "true");
		 props.put("mail.smtp.socketFactory.port", "465");   
	     props.put("mail.smtp.socketFactory.class",   
	             "javax.net.ssl.SSLSocketFactory");   
	     props.put("mail.smtp.socketFactory.fallback", "false");   
	     props.setProperty("mail.smtp.quitwait", "false");   
		MailSSLSocketFactory sf = null;
		try {
			sf = new MailSSLSocketFactory();
		} catch (GeneralSecurityException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		sf.setTrustAllHosts(true);
		props.put("mail.imap.ssl.trust", "*");
		props.put("mail.imap.ssl.socketFactory", sf);
	     Session session1 = Session.getInstance(props,
	              new javax.mail.Authenticator() {
	                protected PasswordAuthentication getPasswordAuthentication() {
	                    return new PasswordAuthentication(username, password);
	                }
	              });


	    try {
	        Transport transport=session1.getTransport();
	        Message message = new MimeMessage(session1);
	        message.setFrom(new InternetAddress(username));//formBean.getString("fromEmail")
	        message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(usermail));//changed
	        message.setSubject("Registeration at volunteer management system");//formBean.getString(
	        message.setText("Thanks for registering at Volunteer management system.Your useremail is"+username1+"password is "+password1+"");
	        transport.connect();
	        transport.send(message, InternetAddress.parse(usermail));//(message);//changed

	        //result = " send mail...";

	    } catch (MessagingException e) {
	        System.out.println("e="+e);
	        e.printStackTrace();
	        result = "Error: unable to send mail....";

	    }
	
	//<b><center><font color="red"><% out.println(result);%></b>
}

public static int fetch_stu_strength(String courseid)
{ int data1=0;
	try{
		st=dbconnection.myconnection();
		ResultSet res = st.executeQuery("select * from events where course_id='"+courseid+"'");

		if(res.next()){
		
			data1=res.getInt(6);
		
			
			
					
				}
			
				
			
	}
	
	catch(Exception e){
		e.printStackTrace();
		
	}
	
	
	return data1;
}

public static int insert_usn(String usn,String courseid){
	int a=0;
	String data2="";
    int result=0;
	try{
		st=dbconnection.myconnection();
		ResultSet res=st.executeQuery("select * from events where course_id='"+courseid+"'");
		if (res.next()){/*{
			System.out.println("usn if block");
			st.executeUpdate("UPDATE company_reg usn='"+usn+"' where company_id='"+companyid+"' and course_id='"+courseid+"'");
			System.out.println("usn stored successfull!!!!");
			result=1;
			}
		else{*/
			System.out.println("usn else block");
			String data1 = res.getString(8);
			System.out.println(data1);
			
				data2=data1+usn+",";
			

	st.executeUpdate("UPDATE events SET usn='"+data2+"' where course_id='"+courseid+"'");
	System.out.println("usn stored successfull!!!!");
	result=1;
		}
	}
	
	
	catch(Exception e){
		result=0;
		return result;
		
	}
	//if(a!=0)
	//{
		//System.out.println("usn is inserted"+a);
		//result=1;
		
	//}
	/*else
		result=0;*/
	
	
	return result;
}

public static void update_no_of_students(String courseid,int noofstu,int stu)
{ int updated_value=0;
	try{
		st=dbconnection.myconnection();
		updated_value=stu-noofstu;
		st.executeUpdate("UPDATE events set no_of_student='"+updated_value+"' where course_id='"+courseid+"' ") ;
	}
	
	catch(Exception e){
		e.printStackTrace();
		
	}
}

public static String get_desp_from_database()
{ String data1="",data2="",data3="";
	try{
		st=dbconnection.myconnection();
		ResultSet res = st.executeQuery("SELECT * FROM events ORDER BY RAND() LIMIT 3");

		if(res.next()){
			 data1 = res.getString(3);
			 data2=res.getString(5);
			
			}
	}
	
	catch(Exception e){
		e.printStackTrace();
		
	}
	return(data1+","+data2);

}

public static int register_vol(String fname,String lname,String phno,String addr,String email,String type,String skillset,String username){
	int a=0;
	int i=6;
	//String result="";
	try{
		st=dbconnection.myconnection();
		a=st.executeUpdate("insert into register_vol(firstname,lastname,phno,addr,email,type,skillset,username) values('"+fname+"','"+lname+"','"+phno+"','"+addr+"','"+email+"','"+type+"','"+skillset+"','"+username+"')");
		
	}
	catch(Exception e){
		e.printStackTrace();
		
		
	}
	if(a!=0){
		System.out.println("registered sucessfully "+a);
		i++;
		//result="y";
	}
	/*else
		result="n";*/
	return a;
}

public String logincheck_general(String username,String password)
{
	
	int a=0;
	String result="";
	try{
		st=dbconnection.myconnection();
		ResultSet res = st.executeQuery("select * from register_vol where email='"+username+"' and password='"+password+"'");

		if(res.next()){
			String data1 = res.getString(5);
			String data2 = res.getString(12);
		
			
			if(data1.equals(username)&& data2.equals(password)){
				result = "y";
					
				}
				
			else{
				result = "n";
			}
		}
		System.out.println(result);
	}
	
	catch(Exception e){
		e.printStackTrace();
		
	}
	
	
	
	return result;
}

public static void vol_check()
{
	int rem_stu=0,rem_vol=0;
	String sug_com="",comp_skillset="",com_type="",volt_id="3";
	try{
		st=dbconnection.myconnection();
//		DisplayDetails details = new DisplayDetails();

		ResultSet res1 =st.executeQuery("select * from register_vol where id='"+volt_id +"'");
		while(res1.next())
		{ 
			comp_skillset=res1.getString(7);
			 com_type=res1.getString(6);
			 //vol_id=res1.getString(10);
			 System.out.println(comp_skillset);
	       
		}		 
		
	 
		//String s  = "select * from vol_login where course='"+comp_skillset.toString()+"'";
		//System.out.println(s);
		ResultSet res =st.executeQuery("select * from vol_login where course='"+comp_skillset+"'");
		//System.out.println(res);
		while(res.next())
		{
			 
			 sug_com=res.getString(1);
			 System.out.println(sug_com);
			
			 rem_stu=Integer.parseInt(res.getString(3));
			 rem_vol=Integer.parseInt(res.getString(4));
	   }
		
		if(com_type.equals("student")&&rem_stu>0 )
		{
			System.out.println(comp_skillset);
			System.out.println(sug_com);
		}
		else if(com_type.equals("volunteer")&&rem_vol>0)
		{
			System.out.println(comp_skillset);
			System.out.println(sug_com);
		}
		
		
	}
	
	catch(Exception e){
		e.printStackTrace();
		
	}
}	

public static String forgot_password(String remail){
String result="";
int a=0;
try{
	
	
	st=dbconnection.myconnection();
ResultSet rs=st.executeQuery("select count(*) from register_vol where email='"+remail+"'");
while(rs.next()){
	a=Integer.parseInt(rs.getString(1));
	System.out.println(a);
	
}
	if(a==1){
		result= "y";
		System.out.println(result);
	}
	else{
		result="n";
	System.out.println(result);
	}
}
catch(Exception e){
	e.printStackTrace();
	
	
}
return result;
}
public static int change_pass(String cp,String np,String np1,String email){
int a=0,b=0;
int i=0;
//String result="";
try{
	st=dbconnection.myconnection();
	a=st.executeUpdate("update register_vol set password='"+np+"' where password='"+cp+"' and email='"+email+"'");
	b=st.executeUpdate("update company set password='"+np+"' where password='"+cp+"' and email='"+email+"'");
	System.out.println(b);
}
catch(Exception e){
	e.printStackTrace();
	
	
}
if(a!=0){
	System.out.println("registered sucessfully "+a);
	i=a;
}
if(b!=0){
	//result="n";*/
  i=b;}
return i;
}
public static int vol_include(String value,String email){

int a=0;
try{
	st=dbconnection.myconnection();
	a=st.executeUpdate("update register_vol set company='"+value+"',course=skillset where email='"+email+"'");
	System.out.println(a);
}
catch(Exception e){
	e.printStackTrace();
}
	
return a;
}
public static String login(String cname,String cid,String cemail,String caddress,String ccontact)
{
String result;
int a = 0;
try
{
	st=dbconnection.myconnection();
	//System.out.println("try");
	a=st.executeUpdate("insert into company values('"+cname+"','"+cid+"','"+cemail+"','"+caddress+"','"+ccontact+"','NULL')");		
	
}
catch(Exception e)
{
	//System.out.println(e);
	result="n";
	return result;
	
}
if(a!=0)
{
	result="y";
}
else
	result="n";

return result;

}
public static String logincheck_company(String username,String password)
{


String result="";
try{
	st=dbconnection.myconnection();
	ResultSet res = st.executeQuery("select * from company where email='"+username+"' and password='"+password+"'");

	if(res.next()){
		String data1 = res.getString(3);
		String data2 = res.getString(6);
	
		
		if(data1.equals(username)&& data2.equals(password)){
			result = "y";
				
			}
			
		else{
			result = "n";
		}
	}
}

catch(Exception e){
	e.printStackTrace();
	
}



return result;
}
public static String volreg(String cname,String cid,String vcid,String cemail,String caddress,String ccontact)
{
String result;
int a = 0;
try
{
	st=dbconnection.myconnection();
	a=st.executeUpdate("insert into volunteercom values('"+cname+"','"+cid+"','"+vcid+"','"+cemail+"','"+caddress+"','"+ccontact+"','NULL')");		
	
}
catch(Exception e)
{
	result="n";
	return result;
	
}
if(a!=0)
{
	result="y";
}
else
	result="n";

return result;

}
public static String events(String title,String cname,String cid,String descp,String nocol,String nostd)
{
String result;
int a = 0;
try
{
	st=dbconnection.myconnection();
	a=st.executeUpdate("insert into event values('"+title+"','"+cname+"','"+cid+"','"+descp+"','"+nocol+"','"+nostd+"')");		
	
}
catch(Exception e)
{
	result="n";
	return result;
	
}
if(a!=0)
{
	result="y";
}
else
	result="n";

return result;

}
public static ResultSet viewdata(){
ResultSet res=null;
try{
	st=dbconnection.myconnection();
	res=st.executeQuery("select * from event");
	System.out.println(res.getString(1));
}
catch(Exception e)
{
	e.printStackTrace();
}
return res;
}
public static void sendmail(String comemail) throws GeneralSecurityException, Exception
{

    //Creating a result for getting status that messsage is delivered or not!
    String result="";
 
 
    // Defining the gmail host
    String host = "smtp.gmail.com";
 
    final String username = "vidya96ks@gmail.com";
    final String password = "vidya1996**";

        Properties props = new Properties();
	props.put("mail.smtp.auth", "true");
	props.put("mail.smtp.host", host);
	props.put("mail.smtp.port", "465");
	props.put("mail.transport.protocol", "smtp");
	props.put("mail.smtp.starttls.enable", "true");
	 props.put("mail.smtp.socketFactory.port", "465");   
     props.put("mail.smtp.socketFactory.class",   
             "javax.net.ssl.SSLSocketFactory");   
     props.put("mail.smtp.socketFactory.fallback", "false");   
     props.setProperty("mail.smtp.quitwait", "false");   
	MailSSLSocketFactory sf = new MailSSLSocketFactory();
	sf.setTrustAllHosts(true);
	props.put("mail.imap.ssl.trust", "*");
	props.put("mail.imap.ssl.socketFactory", sf);
     Session session1 = Session.getInstance(props,
              new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(username, password);
                }
              });


    try {
    	st=dbconnection.myconnection();
    	String uuid=UUID.randomUUID().toString();
        Transport transport=session1.getTransport();
        Message message = new MimeMessage(session1);
        message.setFrom(new InternetAddress(username));//formBean.getString("fromEmail")
        message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(comemail));
        message.setSubject("Registration done");//formBean.getString(
        message.setText("Your temporary password: "+uuid);
        transport.connect();
        transport.send(message, InternetAddress.parse(comemail));//(message);
    	int a=0,b=0;
		a=st.executeUpdate("update register_vol set password='"+uuid+"' where email='"+comemail+"'");
		b=st.executeUpdate("update company set password='"+uuid+"' where email='"+comemail+"'");
        result = " send mail...";

    } catch (MessagingException e) {
        System.out.println("e="+e);
        e.printStackTrace();

    }
}



	
}