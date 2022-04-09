/**
 * 
 */
package com.project.GroupF.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


import com.project.GroupF.Beans.LoginBean;


/**
 * @author Shilpy Nanda
 *
 */
public class LoginDao {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}


//	loginEmployee method is used to check the employee data from database.
	public boolean LoginEmployee(LoginBean loginBean) {
		
		System.out.println("1: "+loginBean.getEmployeeUsername());
		List<LoginBean> user = template.query("select user_name, passwords from employee"
				+ " where user_name='" + loginBean.getEmployeeUsername() 
				+ "' and passwords='" + loginBean.getEmployeePassword() + "'", new RowMapper<LoginBean>() {
					public LoginBean mapRow(ResultSet rs, int row) throws SQLException {
						System.out.println("2"+rs.getString(1));
						LoginBean e = new LoginBean();
						e.setEmployeeUsername(rs.getString(1));
						e.setEmployeePassword(rs.getString(2));

						return e;
					}
				});
		if (user.size() > 0) {
			return true;
		
		} else {
			return false;
		}
	}
	



//	loginClient method is used to check the client data from database.
	public boolean LoginClient(LoginBean loginBean) {
		
		System.out.println("1: "+loginBean.getClientEmail());
		List<LoginBean> user = template.query("select email, passwords from client_details"
				+ " where email='" + loginBean.getClientEmail() 
				+ "' and passwords='" + loginBean.getClientPassword() + "'", new RowMapper<LoginBean>() {
					public LoginBean mapRow(ResultSet rs, int row) throws SQLException {
						System.out.println("2"+rs.getString(1));
						LoginBean e = new LoginBean();
						e.setClientEmail(rs.getString(1));
						e.setClientPassword(rs.getString(2));

						return e;
					}
				});
		if (user.size() > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	
}
