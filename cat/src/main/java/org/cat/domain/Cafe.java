package org.cat.domain;

import lombok.Data;

@Data
public class Cafe {

	private int cno;
	private String cname, addr, url, ctel, ctime, atagurl;
	private double lat, lng;

}

