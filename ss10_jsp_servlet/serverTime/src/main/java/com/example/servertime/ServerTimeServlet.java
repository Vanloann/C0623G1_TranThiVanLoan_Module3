package com.example.servertime;

import java.io.*;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "serverTimeServlet", value = "/server-time-servlet")
public class ServerTimeServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Date today = new Date();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/result.jsp");
        request.setAttribute("today", today);
        requestDispatcher.forward(request,response);
    }

}