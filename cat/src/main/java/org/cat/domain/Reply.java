package org.cat.domain;

import lombok.Data;

@Data
public class Reply {
	private long rno, eno;
	private String rnick, rcontent;
	private String regDate;
}
