package com.softtek.academy.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.PrePersist;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

@MappedSuperclass
//@EntityListeners(AuditingEntityListener.class)
public class Audit implements Serializable {

	private static final long serialVersionUID = 1L;

	@Column(name = "created_date", nullable = false, updatable = false)
	@CreatedDate
	private Date createdDate;

	@Column(name = "modified_date", nullable = false, updatable = false)
	@LastModifiedDate
	private Date modifiedDate;

	@PrePersist
	protected void onCreate() {
		this.createdDate = new Date();
		this.modifiedDate = new Date();
	}

}
