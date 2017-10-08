package cn.leafspace.ToolBean;

public class CompanyInformation {
    private int companyID;
    private int user_ID;
    private String companyName;
    private String companyAddress;
    private String companyJobs;
    private String companySalary;
    private String companyCondition;
    private String companyWork;
    private String companyWelfare;

    public CompanyInformation(String companyName, String companyAddress, String companyJobs, String companySalary,
                              String companyCondition, String companyWork, String companyWelfare) {
        this.companyName = companyName;
        this.companyAddress = companyAddress;
        this.companyJobs = companyJobs;
        this.companySalary = companySalary;
        this.companyCondition = companyCondition;
        this.companyWork = companyWork;
        this.companyWelfare = companyWelfare;
    }

    public CompanyInformation(int user_ID, String companyName, String companyAddress, String companyJobs, String companySalary,
                              String companyCondition, String companyWork, String companyWelfare) {
        this(companyName, companyAddress, companyJobs, companySalary, companyCondition, companyWork, companyWelfare);
        this.user_ID = user_ID;
    }

    public CompanyInformation(int user_ID, int companyID, String companyName, String companyAddress, String companyJobs, String companySalary,
                              String companyCondition, String companyWork, String companyWelfare) {
        this(companyName, companyAddress, companyJobs, companySalary, companyCondition, companyWork, companyWelfare);
        this.user_ID = user_ID;
        this.companyID = companyID;
    }

    public int getCompanyID() {
        return companyID;
    }

    public int getUser_ID() {
        return user_ID;
    }

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

    public void setCompanyID(int companyID) {
        this.companyID = companyID;
    }

    public void setUser_ID(int user_ID) {
        this.user_ID = user_ID;
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
