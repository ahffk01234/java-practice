package kr.or.ddit.basic;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Scanner;
import java.util.Set;

public class LottoTest {
	static Scanner sc = new Scanner(System.in);

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		menu();
	}

	public static void menu() {
		System.out.println("=================================");
		System.out.println("Lotto 프로그램");
		System.out.println("---------------------------------");
		System.out.println("1. Lotto 구입");
		System.out.println("2. 프로그램 종료");
		System.out.println("=================================");
		System.out.print("메뉴선택 : ");

		switch (sc.nextInt()) {
		case 1:
			buylotto();
		case 2:
			System.out.println("감사합니다.");
			break;
		default:
			return;
		}
	}

	public static void buylotto() {
		
		System.out.println("Lotto 구입 시작");
		System.out.println("(1000원에 로또번호 하나입니다.)");
		System.out.println("금액 입력 : ");
		int money = sc.nextInt();
//		int chn = money / 1000;
		
		System.out.println("행운의 로또번호는 아래와 같습니다.");
//		System.out.println(chn);
		for (int i = 1; i <= money/1000; i++) {
			Set<Integer> lot = new HashSet<>();
			System.out.println();
			for (int j = 0; j < 6; j++) {
				int rndlotto = (int)(Math.random() * 45 + 1);
				lot.add(rndlotto);
				

			}
			System.out.println("로또번호" + i+ " : " + lot);
			System.out.println();
		}
		System.out.println("받은 금액은 " + money + "원이고 거스름돈은 " + money % 1000 + "원입니다.");
		menu();
	}
}
