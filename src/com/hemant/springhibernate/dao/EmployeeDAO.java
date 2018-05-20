package com.hemant.springhibernate.dao;

import java.util.List;

import com.hemant.springhibernate.model.Employee;

public interface EmployeeDAO {
	public void addEmployee(Employee employee);

	public List<Employee> listEmployeess();

	public Employee getEmployee(int empid);

	public void deleteEmployee(Employee employee);
}
