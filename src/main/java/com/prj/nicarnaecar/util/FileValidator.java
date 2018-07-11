package com.prj.nicarnaecar.util;
import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.Validator;
import javax.validation.executable.ExecutableValidator;
import javax.validation.metadata.BeanDescriptor;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;

import com.prj.nicarnaecar.vo.UploadFile;

@Component
public class FileValidator implements Validator {

	//파일 유무 확인용
	public boolean supports(Class<?> arg0) {
	
		return false;
	}
	
	public void validate(Object upFile, Errors errors) {
		UploadFile file = (UploadFile)upFile;
		
		if(file.getFile().getSize() == 0) {
			errors.rejectValue("file", ""," 업로드할 파일을 선택하시오");
		}
	}

	@Override
	public ExecutableValidator forExecutables() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BeanDescriptor getConstraintsForClass(Class<?> arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T> T unwrap(Class<T> arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T> Set<ConstraintViolation<T>> validate(T arg0, Class<?>... arg1) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T> Set<ConstraintViolation<T>> validateProperty(T arg0, String arg1, Class<?>... arg2) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T> Set<ConstraintViolation<T>> validateValue(Class<T> arg0, String arg1, Object arg2, Class<?>... arg3) {
		// TODO Auto-generated method stub
		return null;
	}
}
