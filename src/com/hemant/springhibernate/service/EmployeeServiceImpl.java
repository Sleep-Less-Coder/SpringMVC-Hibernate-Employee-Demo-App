package com.hemant.springhibernate.service;

import java.util.List;

import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hemant.springhibernate.dao.EmployeeDAO;
import com.hemant.springhibernate.model.Employee;

@Service("employeeService")
@Transactional
@EnableTransactionManagement
public class EmployeeServiceImpl implements EmployeeService {
	@Autowired
	private EmployeeDAO employeeDAO;

	@Override
	@Transactional
	public void addEmployee(Employee employee) {
		employeeDAO.addEmployee(employee);
	}

	@Override
	@Transactional
	public List<Employee> listEmployeess() {
		return employeeDAO.listEmployeess();
	}

	@Override
	public Employee getEmployee(int empid) {
		return employeeDAO.getEmployee(empid);
	}

	@Override
	public void deleteEmployee(Employee employee) {
		employeeDAO.deleteEmployee(employee);
	}
}
