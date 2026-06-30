<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (con == null) {
        out.println("<script>alert('Database connection not established. Please check your Connection.jsp file.');window.location='Admin_Remove.jsp';</script>");
        return;
    }

    String maidID = request.getParameter("Maid_ID");
    Statement stmt = con.createStatement();

    try {
        String query = "DELETE FROM add_maid WHERE Maid_ID = '" + maidID + "'";
        int result = stmt.executeUpdate(query);

        if (result > 0) {
            out.println("<script>alert('Maid removed successfully!');window.location='Admin_Manage.jsp';</script>");
        } else {
            out.println("<script>alert('Error: Maid not found or cannot be removed.');window.location='Admin_Remove.jsp';</script>");
        }
    } catch (SQLException e) {
        e.printStackTrace();  // Print stack trace to server logs for debugging
        out.println("<script>alert('Error: " + e.getMessage() + "');window.location='Admin_Remove.jsp';</script>");
    }
%>
