package kr.or.ddit.basic;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class T11DisplayCharacterTest {
/*
 	3개(명)의  스레드가 각각 알파벳 대문자를 출력하는데, 출력을 끝낸 순서대로 결과를
 	나타내는 프로그램을 작성하시오
 */
	
	static int CURR_RANK =1; // 현재 순위 정보
	public static void main(String[] args) {
		
		
		
		
		List<DisplayCharacter> discharList = new ArrayList<DisplayCharacter>();
		discharList.add(new DisplayCharacter("김명철"));
		discharList.add(new DisplayCharacter("박성민"));
		discharList.add(new DisplayCharacter("박지석"));
		discharList.add(new DisplayCharacter("박유빈"));
		
		
		for(DisplayCharacter dc: discharList) {
			dc.start();
		}
		
		for(DisplayCharacter dc : discharList) {
			try {
				dc.join();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		
		System.out.println("경기 끝...");
		System.out.println("-----------------------");
		System.out.println("경기 결과");
		System.out.println();
		System.out.println("=======================");
		System.out.println("순위\t:\t이름");
		System.out.println("-----------------------");
		
		Collections.sort(discharList);
		for(DisplayCharacter dc : discharList) {
			System.out.println(dc.getRank() + "\t:\t" + dc.getName());
		}
		
	}
	
}


// 영어 대문자를 출력하는 스레드
class DisplayCharacter extends Thread implements Comparable<DisplayCharacter>{
	
	private String name;
	
	private int rank;
	
	public DisplayCharacter(String name) {
		super(name);
		this.name = name;
	}
	
	public int getRank() {
		return rank;
	}


	public void setRank(int rank) {
		this.rank = rank;
	}


	@Override
	public void run() {
		for(char ch = 'A'; ch <= 'Z'; ch++) {
			System.out.println(name +"의 출력 문자 : " + ch);
			try {
				// 200 ~ 500 사이의 난수를 이용한다
				Thread.sleep((int)(Math.random()*301 + 200));
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		System.out.println(name + " 출력 끝...");
		setRank(T11DisplayCharacterTest.CURR_RANK++); // 순위 정보 설정
	}

	@Override
	public int compareTo(DisplayCharacter dc) {
		
		return new Integer(this.getRank()).compareTo(dc.getRank());
	}
	
}