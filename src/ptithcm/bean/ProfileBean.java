package ptithcm.bean;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.web.multipart.MultipartFile;

public class ProfileBean {
	
	@NotBlank(message = "H�? và tên không được để trống!")
	private String fullname;
	
	@NotBlank(message = "Email không được b�? trống!")
	@Email(message = "Email không đúng định dạng!")
	private String email;
	
	@NotBlank(message = "Số điện thoại không được b�? trống!")
	private String phone;
	
	@NotBlank(message = "�?ịa chỉ liên hệ không được b�? trống!")
	private String address;
	
	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
}
