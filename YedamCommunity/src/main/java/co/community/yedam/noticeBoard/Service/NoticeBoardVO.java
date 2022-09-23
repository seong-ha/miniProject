package co.community.yedam.noticeBoard.Service;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeBoardVO {
	private int noticeBoardId;
	private String noticeboardTitle;
	private String noticeboardSubject;
	private Date noticeboardDate;
	private String noticeboardAttech;
	private String noticeboardAttechDir;
	private int noticeboardHit;
	private int memberID;
}
