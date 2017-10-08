package cn.leafspace.Database.Interface;

import cn.leafspace.ToolBean.CompanyInformation;

import java.util.ArrayList;

public interface DatabaseProxyInterface {
    int findUser(String username, String password);
    boolean insertMessage(CompanyInformation companyInformation);
    ArrayList<CompanyInformation> getInformationList();
}
