package com.simpson.kisen.product.model.vo;

import org.springframework.stereotype.Repository;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Repository
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
	private int pdNo; // ��ǰ��ȣ
	private int idolNo; // ���̵���ȣ
 	private String pdCategory; // �з�
	private String pdName; // ��ǰ�̸�
	private String pdImg; // ��ǰ�̹���
	private String pdContent; //��ǰ ����
	private int price; // ��ǰ����
	private int pdStock; // �����
	private int pdSale;  // �Ǹŷ�
	
	//git test
}