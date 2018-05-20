package com.hemant.springhibernate.bean;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class EmployeeBean {
	private Integer id;
	
	@NotNull(message = "is required")
	@Size(min=1, message = "is required")
	private String name;
	
	@NotNull(message = "is required")
	@Min(value = 0, message = "Value must be greater or equal to zero")
    @Max(value = 100, message = "Value must be less than or equal to hundred")
	private Integer age;
	
	@NotNull(message = "is required")
	private Long salary;
	
	@NotNull(message = "is required")
	@Size(min=1, message = "is required")
	private String address;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Long getSalary() {
		return salary;
	}

	public void setSalary(Long salary) {
		this.salary = salary;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
}
