import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "discountServlet", value = "/discount-servlet")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));
        double discount = Double.parseDouble(request.getParameter("discount"));
        double dis_amount = price * discount * 0.01;
        double dis_price = price - dis_amount;

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/discount.jsp");
        request.setAttribute("dis_amount", dis_amount);
        request.setAttribute("dis_price", dis_price);
        requestDispatcher.forward(request, response);
    }
}
