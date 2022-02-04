package kfy;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;
import java.util.stream.Collector;
import java.util.stream.Collectors;

@WebServlet(urlPatterns={"/cool-servlet"})
public class MainServlet extends HttpServlet {

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        log("method init");
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        log("method service");
        resp.getWriter().write("Method service\n");
        super.service(req, resp);
        resp.getWriter().write("Method service exit\n");

    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       // super.doGet(req, resp);
        String uri = req.getRequestURI();
        String params = formatParams(req);
        resp.getWriter().write("Method doGet\nUri:"+uri+"\nParams:\n"+params+"\n");
        log("method doGET");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //super.doPost(req, resp);
        String uri=req.getRequestURI();
        String params=formatParams(req);
        resp.getWriter().write("Method doPost\nUri:"+uri+"\nParams:\n"+params+"\n");
    }

    private String formatParams(HttpServletRequest req) {
        return req.getParameterMap()
                .entrySet()
                .stream()
                .map(entry ->
                {
                    String param = String.join("and", entry.getValue());
                    return entry.getKey() + "=>" + param;

                })
                .collect(Collectors.joining("\n"));
    }

    @Override
    public void destroy() {
        //super.destroy();
        log("method destroy");
    }


}
