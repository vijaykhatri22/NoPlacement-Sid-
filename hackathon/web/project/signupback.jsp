    
<%@page import="connect.config"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.security.*, connect.config.*,sun.misc.*"%>
<%@page import="sun.misc.BASE64Encoder" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
                        try
                        {
                            config c=new config();
                            Connection con = c.getcon();
                          
                            String fname = request.getParameter("fname");
                            
                            String email = request.getParameter("email");
                            String pass = request.getParameter("password");
                            
                            MessageDigest md5 = MessageDigest.getInstance("MD5");
                            md5.update(pass.getBytes(),0, pass.getBytes().length);
                            byte[] newpass=md5.digest(pass.getBytes());
        
                            String encpass = new BASE64Encoder().encode(newpass);
                            
                            String sql;
                            sql = " insert into seekers(name,email,password)" + " values (?, ?, ?)";
 
                            // create the mysql insert preparedstatement
                            PreparedStatement preparedStmt = con.prepareStatement(sql);
                           
                            preparedStmt.setString (1, fname);
                            
                            preparedStmt.setString (2, email);
                            preparedStmt.setString (3, encpass);
                           
      
                            // execute the preparedstatement
                            preparedStmt.execute();
                            con.close();
                            
                            response.sendRedirect("login.jsp");                                                     
                        }
                        catch (Exception e)
                        {
                            out.println(e.getMessage());
                        }
                    %>