package com.example.dictionary;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "dictionaryServlet", value = "/dictionary-servlet")
public class DictionaryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String> dictionary = new HashMap<>();
        dictionary.put("hello", "Xin chào");
        dictionary.put("how", "Thế nào");
        dictionary.put("book", "Quyển vở");
        dictionary.put("computer", "Máy tính");
        String search = request.getParameter("search");
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/simple_dictionary.jsp");
        request.setAttribute("search", search);
        requestDispatcher.forward(request, response);

        String result = dictionary.get(search);
        if (result != null) {
            System.out.println("word: " + search);
            System.out.println("result: " + result);
        } else {
            System.out.println("Not found");
        }
    }
}
