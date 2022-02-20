package kfy;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;
import java.time.LocalDateTime;

public class EmptyTag extends TagSupport {

    @Override
    public int doStartTag() throws JspException {
        JspWriter out = pageContext.getOut();
        try {
            LocalDateTime now = LocalDateTime.now();
            int year = now.getYear();
            int dayYear = now.getDayOfYear();
            int hour = now.getHour();
            int minute = now.getMinute();
            out.print("Год:"+year);
            out.print("Номер дня:"+dayYear);
            out.print("Час:"+hour);
            out.print("Минут:"+minute);
            out.print("<br/>");
        } catch (IOException e) {

            throw new JspException(e);
        }
        return SKIP_BODY;
    }
}
