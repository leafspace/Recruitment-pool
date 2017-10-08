package cn.leafspace.ActionForm;

import org.apache.struts.action.ActionForm;

public class EditMessageActionForm extends ActionForm {
    private String companyName;
    private String companyAddress;
    private String companyJobs;
    private String companySalary;
    private String companyCondition;
    private String companyWork;
    private String companyWelfare;

    public String getCompanyName() {
        return companyName;
    }

    public String getCompanyAddress() {
        return companyAddress;
    }

    public String getCompanyJobs() {
        return companyJobs;
    }

    public String getCompanySalary() {
        return companySalary;
    }

    public String getCompanyCondition() {
        return companyCondition;
    }

    public String getCompanyWork() {
        return companyWork;
    }

    public String getCompanyWelfare() {
        return companyWelfare;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public void setCompanyAddress(String companyAddress) {
        this.companyAddress = companyAddress;
    }

    public void setCompanyJobs(String companyJobs) {
        this.companyJobs = companyJobs;
    }

    public void setCompanySalary(String companySalary) {
        this.companySalary = companySalary;
    }

    public void setCompanyCondition(String companyCondition) {
        this.companyCondition = companyCondition;
    }

    public void setCompanyWork(String companyWork) {
        this.companyWork = companyWork;
    }

    public void setCompanyWelfare(String companyWelfare) {
        this.companyWelfare = companyWelfare;
    }
}
