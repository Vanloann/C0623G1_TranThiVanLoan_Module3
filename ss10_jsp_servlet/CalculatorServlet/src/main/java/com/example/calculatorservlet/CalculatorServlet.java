package com.example.calculatorservlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "calculatorServlet", value = "")
public class CalculatorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/calculate.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        int firstOperator = Integer.parseInt(request.getParameter("firstOperator"));
        int secondOperator = Integer.parseInt(request.getParameter("secondOperator"));
        String operator = request.getParameter("operator");
        float result = 0;
        switch (operator) {
            case "+":
                result = firstOperator + secondOperator;
                break;
            case "-":
                result = firstOperator - secondOperator;
                break;
            case "x":
                result = firstOperator * secondOperator;
                break;
            case "/":
                try {
                    result = firstOperator / secondOperator;
                } catch (ArithmeticException e) {
                    RequestDispatcher requestDispatcher = request.getRequestDispatcher("/result.jsp");
                    request.setAttribute("result", "Cannot divide by 0");
                    requestDispatcher.forward(request, response);
                }
        }
        request.setAttribute("firstOperator", firstOperator);
        request.setAttribute("secondOperator", secondOperator);
        request.setAttribute("operator", operator);
        request.setAttribute("result", result);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/result.jsp");
        requestDispatcher.forward(request, response);
    }
}
