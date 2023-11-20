package kr.or.ddit.basic;

import javax.swing.JOptionPane;

public class ThreadTest {
	
	public static void main(String[] args) {
		Thread th1 = new Input();
		Thread th2 = new Count();
		
		th1.start();
		th2.start();
	}
	
}
	/*
 	데이터를 입력받기 위한 스레드
 */
class Input extends Thread{
	
	private String[] rsp = {"가위", "바위", "보"};
	private int rnd = (int)(Math.random() * 2 + 0);
	@Override
	public void run() {
		
		String st1 = rsp[rnd];
		
		String str = JOptionPane.showInputDialog("가위, 바위, 보를 입력하세요.");
		
		String lose = "당신이 졌습니다";
		String win = "당신이 이겼습니다";
		String draw = "비겼습니다";
		
		T06ThreadTest.inputcheck = true;
		
		if(str == st1) {
			System.out.println("입력한 값은 " + str + "입니다");
			System.out.println("컴퓨터 : " + st1);
			System.out.println(draw);
		}
		else if((str =="가위" && st1 == "바위") || (str =="바위" && st1 =="보")|| (str == "보") && st1 == "가위") {
			System.out.println("컴퓨터 : " + st1);
			System.out.println("입력한 값은 " + str + "입니다");
			System.out.println(lose);
		}
		else {
			System.out.println("컴퓨터 : " + st1);
			System.out.println("입력한 값은 " + str + "입니다");
			System.out.println(win);
		}
		
		
		
		
		
	}
}

/*
 	카운트다운 처리를 위한 스레드
 */
class Count extends Thread{
	
	@Override
	public void run() {
	
		for(int i = 5; i >= 1; i--) {
			
			if(T06ThreadTest.inputcheck) {
				return ; // run() 메서드가 종료되면 스레드도 끝난다.
			}
			System.out.println(i);
			
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		
		// 5초가 경과되었는데 입력이 없으면 프로그램을 종료한다.
		System.out.println("5초가 지났습니다. 당신이 졌습니다");
		System.out.println("프로그램을 종료합니다.");
		System.exit(0); // 시스템 종료 메서드
		
	}
}

class RockSissorsPaper extends Thread{
	private String[] rsp = {"가위", "바위", "보"};
	private int rnd = (int)(Math.random() * 3 + 1);
	@Override
	public void run() {
		String st1 = rsp[rnd];
		
	}
	
	
}

