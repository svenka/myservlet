package kfy;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.UUID;
import java.util.stream.Collectors;


@WebServlet(urlPatterns = {"/file-servlet"})
@MultipartConfig(location = "D:/test")
public class FileServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //super.doPost(req, resp);
        for (Part part : req.getParts()) {
            if (part.getName().equals("author-name"))
            {
                InputStream inputStream = part.getInputStream();
                InputStreamReader isr = new InputStreamReader(inputStream);
                String author_name = new BufferedReader(isr).lines().collect(Collectors.joining("\n"));

                log(author_name);
            }
            else
            {
                part.write(UUID.randomUUID().toString()+part.getSubmittedFileName());
            }

        }
        resp.sendRedirect("/my-app/cool-servlet");
    }
}
