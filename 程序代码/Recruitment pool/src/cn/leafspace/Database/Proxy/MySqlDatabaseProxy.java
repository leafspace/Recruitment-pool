package cn.leafspace.Database.Proxy;

import cn.leafspace.Database.Interface.DatabaseConnectorInterface;
import cn.leafspace.Database.Factory.DatabaseConnectorFactory;
import cn.leafspace.Database.Interface.DatabaseProxyInterface;
import cn.leafspace.ToolBean.CompanyInformation;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.SQLException;

public class MySqlDatabaseProxy implements DatabaseProxyInterface {
    private DatabaseConnectorInterface databaseConnection = null;

    public MySqlDatabaseProxy() {
        this.databaseConnection = new DatabaseConnectorFactory().getDatabaseConnection("MySQL");
    }

    public int findUser(String username, String password) {
        this.databaseConnection.getConnection();
        String sqlStr = "SELECT * FROM `user` WHERE u_name = '" + username + "' AND u_password = '" + password + "';";
        ResultSet resultSet = this.databaseConnection.query(sqlStr);
        try {
            while(resultSet.next()) {
                try {
                    return Integer.parseInt(resultSet.getString(1));
                } catch (NumberFormatException exception) {
                    return -1;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        } finally {
            this.databaseConnection.allClose();
        }
        return -1;
    }

    public boolean insertMessage(CompanyInformation companyInformation) {
        this.databaseConnection.getConnection();
        String sqlStr = "INSERT INTO information(u_id, c_name, c_address, c_jobs, c_salary, c_condition, c_work, c_welfare)\n" +
                "VALUES(" + companyInformation.getUser_ID() + ", '"+ companyInformation.getCompanyName() +"', '" +
                companyInformation.getCompanyAddress()+ "', '"+ companyInformation.getCompanyJobs() +"', '" +
                companyInformation.getCompanySalary() + "', '" + companyInformation.getCompanyCondition() + "', '" +
                companyInformation.getCompanyWork()+ "', '"+ companyInformation.getCompanyWelfare() +"');";
        this.databaseConnection.update(sqlStr);
        this.databaseConnection.allClose();
        return true;
    }

    public ArrayList<CompanyInformation> getInformationList() {
        this.databaseConnection.getConnection();
        String sqlStr = "SELECT * FROM information ORDER BY c_id DESC;";
        ResultSet resultSet = this.databaseConnection.query(sqlStr);
        ArrayList<CompanyInformation> companyInformations = new ArrayList<>();
        try {
            while(resultSet.next()) {
                int companyID = Integer.parseInt(resultSet.getString(1));
                int user_ID = Integer.parseInt(resultSet.getString(2));
                String companyName = resultSet.getString(3);
                String companyAddress = resultSet.getString(4);
                String companyJobs = resultSet.getString(5);
                String companySalary = resultSet.getString(6);
                String companyCondition = resultSet.getString(7);
                String companyWork = resultSet.getString(8);
                String companyWelfare = resultSet.getString(9);

                companyInformations.add(new CompanyInformation(user_ID, companyID, companyName, companyAddress, companyJobs, companySalary,
                        companyCondition, companyWork, companyWelfare));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.databaseConnection.allClose();
        }
        return companyInformations;
    }
}
