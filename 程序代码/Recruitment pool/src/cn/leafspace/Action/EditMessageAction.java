package cn.leafspace.Action;

import cn.leafspace.Database.Interface.DatabaseProxyInterface;
import cn.leafspace.Database.Factory.DatabaseProxyFactory;
import cn.leafspace.ActionForm.EditMessageActionForm;
import cn.leafspace.ToolBean.CompanyInformation;
import cn.leafspace.ToolBean.User;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditMessageAction  extends Action {
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        EditMessageActionForm editMessageActionForm = (EditMessageActionForm) form;

        int user_ID = ((User) request.getSession().getAttribute("user")).getID();
        String companyName = editMessageActionForm.getCompanyName();
        String companyAddress = editMessageActionForm.getCompanyAddress();
        String companyJobs = editMessageActionForm.getCompanyJobs();
        String companySalary = editMessageActionForm.getCompanySalary();
        String companyCondition = editMessageActionForm.getCompanyCondition();
        String companyWork = editMessageActionForm.getCompanyWork();
        String companyWelfare = editMessageActionForm.getCompanyWelfare();

        CompanyInformation companyInformation = new CompanyInformation(user_ID, companyName, companyAddress, companyJobs, companySalary,
                companyCondition, companyWork, companyWelfare);
        DatabaseProxyFactory databaseProxyFactory = new DatabaseProxyFactory();
        DatabaseProxyInterface databaseProxyInterface = databaseProxyFactory.getDatabaseProxy("MySQL");
        databaseProxyInterface.insertMessage(companyInformation);

        return mapping.findForward("index");
    }
}
