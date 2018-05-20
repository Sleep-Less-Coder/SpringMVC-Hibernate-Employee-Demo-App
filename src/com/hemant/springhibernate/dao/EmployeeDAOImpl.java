package com.hemant.springhibernate.dao;

import java.util.List;

import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hemant.springhibernate.model.Employee;

@Repository("employeeDAO")
@Transactional
@EnableTransactionManagement
public class EmployeeDAOImpl implements EmployeeDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addEmployee(Employee employee) {
		sessionFactory.getCurrentSession().saveOrUpdate(employee);
	}

	@Override
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Employee> listEmployeess() {
		Session session = sessionFactory.getCurrentSession();
		return (List<Employee>) session.createCriteria(Employee.class).list();
	}

	@Override
	public Employee getEmployee(int empid) {
		return sessionFactory.getCurrentSession().get(Employee.class, empid);
	}

	@Override
	public void deleteEmployee(Employee employee) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM Employee WHERE empid = "+ employee.getEmpId()).executeUpdate();
	}
}
