package kfy;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

public class paramsTag extends TagSupport {

    private  String a;

    public String getA() {
        return a;
    }

    public void setA(String a) {
        this.a = a;
    }

    public String getB() {
        return b;
    }

    public void setB(String b) {
        this.b = b;
    }

    private  String b;
    @Override
    public int doStartTag() throws JspException {
        JspWriter out = pageContext.getOut();
        try {
            out.print(String.format("Argument a: %s<br/> ", a));
            out.print(String.format("Argument b: %s<br/> ", b));


            out.print("<br/>");

        } catch (IOException e) {

            throw new JspException(e);
        }
        return EVAL_BODY_INCLUDE;
    }
}
