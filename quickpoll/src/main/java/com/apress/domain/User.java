package com.apress.domain;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

import org.hibernate.annotations.NaturalId;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)

@Entity
@Table(name = "USERS")
public class User {

	@Id
	@GeneratedValue
	@Column(name = "ID")
	private Long id;

	@NaturalId(mutable = false)
	@EqualsAndHashCode.Include
	@Column(name = "EMAIL", nullable = false, updatable = false, unique = true)
	private String email;

	@Column(name = "FULL_NAME")
	private String fullName;

	@Column(name = "MOBILE")
	private String mobile;

	@Column(name = "ROLE")
	private String role;

	@Column(name = "PASSWORD")
	private String password;

	@Column(name = "CREATED_AT", insertable = true, updatable = false)
	private LocalDateTime created;

	@Column(name = "MODIFIED_AT")
	private LocalDateTime modified;

	@PrePersist
	void onCreate() {
		this.setCreated(LocalDateTime.now());
		this.setModified(LocalDateTime.now());
	}

	@PreUpdate
	void onUpdate() {
		this.setModified(LocalDateTime.now());
	}

}
