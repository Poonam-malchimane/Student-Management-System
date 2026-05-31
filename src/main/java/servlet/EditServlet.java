package servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import dao.UserDAO;
import model.User;

@WebServlet("/edit")
public class EditServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        User user = UserDAO.getUserByEmail(email);
        request.setAttribute("user", user);
        request.getRequestDispatcher("editUser.jsp").forward(request, response);
    }
}
