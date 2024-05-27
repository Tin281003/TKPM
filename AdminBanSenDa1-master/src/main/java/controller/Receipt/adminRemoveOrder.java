package controller.Receipt;

import bean.User;
import service.ReceiptService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "adminRemoveOrder", value = "/adminRemoveOrder")
//4.3.5. Load data -> 4.3.6. valid -> 4.3.7. update(model.Recipt) -> 4.3.8. success
public class adminRemoveOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession(true);
        String mahd = request.getParameter("mahd");

        ReceiptService.updateTonKhoWhenCancelOrder(mahd);
        ReceiptService.cancelOrder(mahd);


        User user = (User) session.getAttribute("auth");

//        4.3.9. Display -> 4.3.10. Display cancelled status
        response.sendRedirect("./ListReceipt_full_Admin");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
