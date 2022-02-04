package kfy;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/temp-serv")
public class JspServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //resp.sendRedirect("/myapp/first.jsp");
        ArrayList<User> users = new ArrayList<>() {{
            add(new User("Igor", "USA", 44));
            add(new User("Boris", "China", 33));
            add(new User(" Moe", "Canada", 24));

        }};

        req.setAttribute("users",users);

        getServletContext().getRequestDispatcher("/first.jsp").forward(req,resp);
    }
}
