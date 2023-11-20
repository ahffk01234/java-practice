package kr.or.ddit.basic;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class HorseTest {
	
	
	static int CURR_RANK =1;
	
	
	public static void main(String[] args) {
	
		
		List<Horse> horseList = new ArrayList<Horse>();
		horseList.add(new Horse("1번말"));
		horseList.add(new Horse("2번말"));
		horseList.add(new Horse("3번말"));
		horseList.add(new Horse("4번말"));
		horseList.add(new Horse("5번말"));
		horseList.add(new Horse("6번말"));
		horseList.add(new Horse("7번말"));
		horseList.add(new Horse("8번말"));
		horseList.add(new Horse("9번말"));
		horseList.add(new Horse("10번말"));
		
		
		for(Horse hs: horseList) {
			hs.start();
		}
		
		for(Horse hs : horseList) {
			try {
				hs.join();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		Collections.sort(horseList);
		for(Horse hs : horseList) {
			System.out.println(hs.getHorsename() + "\t:\t" + hs.getRanking() );
		}
		
		
	}
}


class Horse extends Thread implements Comparable<Horse>{
	
	private String horsename;
	private int ranking = 1;
	
	public Horse(String horsename) {
		super();
		this.horsename = horsename;
	}
	
	public String getHorsename() {
		return horsename;
	}
	public void setHorsename(String horsename) {
		this.horsename = horsename;
	}
	public int getRanking() {
		return ranking;
	}
	public void setRanking(int rank) {
		this.ranking = rank;
	}
	
	@Override
	public void run() {
		
		for(int i=1; i<=50; i++) {
//			System.out.print(name + "의 지나는 구간 : " + i);
			System.out.print(horsename);
			
			for (int j = 1; j <= 50; j++) {
				if ( i == j) {
					System.out.print(">");
				}else {
					System.out.print("-");
				}
			}
			System.out.println();
			
		try {
			// 200 ~ 500 사이의 난수를 이용한다
			Thread.sleep((int)(Math.random()* 300 + 200));
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
		System.out.println(horsename + " 완주");
		setRanking(HorseTest.CURR_RANK++); // 순위 정보 설정
		
	}
	@Override
	public int compareTo(Horse hs) {
		return new Integer(this.getRanking()).compareTo(hs.getRanking());
	}
}
