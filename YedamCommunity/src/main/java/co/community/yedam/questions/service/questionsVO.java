package co.community.yedam.questions.service;



import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class questionsVO {
	private int questionsId;
	private String questionsTitle;
	private String questionsContent;
	private Date questionsDate;
	private String memberId;
	
}
