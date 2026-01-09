<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
// Test what happens when we hash a password
String password = "test123";
java.security.MessageDigest md = java.security.MessageDigest.getInstance("SHA-512");
byte[] hash = md.digest(password.getBytes("UTF-8"));
StringBuilder hexString = new StringBuilder();
for (byte b : hash) {
    String hex = Integer.toHexString(0xff & b);
    if (hex.length() == 1) hexString.append('0');
    hexString.append(hex);
}
String hashedPassword = hexString.toString();

out.println("Original password: " + password + "<br>");
out.println("Length: " + password.length() + "<br>");
out.println("SHA-512 hash: " + hashedPassword + "<br>");
out.println("Hash length: " + hashedPassword.length() + "<br>");

// Test Base64 encoding
String base64Hash = java.util.Base64.getEncoder().encodeToString(hash);
out.println("Base64 hash: " + base64Hash + "<br>");
out.println("Base64 length: " + base64Hash.length() + "<br>");
%>
