package kr.or.ddit.basic;

public class T02ThreadTest {
	
	public static void main(String[] args) {
		
		// 멀티 스레드 프로그램
		
		// 방법 1 : Thread 클래스를 상속한 클래스의 인스턴스를 생성한 후
		// 			이 인스턴스의 start()메서드를 호출한다.
		
		Thread th1 = new MyThread1();
		th1.start();
		
		// 방법 2 : Runnable 인터페이스를 구현한 클래스의 인스턴스를 생성한 후
		// 이 인스턴스를 Thread 객체를 생성할 때 생성자의 매개변수로 넘겨준다.
		// 이렇게 생성한 스레드객체의 start() 메서드를 호출한다.
		
		Runnable r = new MyThread2();
		Thread th2 = new Thread(r);
		th2.start();
		
		// 방법 3 : 익명클래스를 이용하는 방법
		// Runnable 인터페이스를 구현한 익명클래스를 Thread 객체를 생성할 때 매개변수로 넘겨준다.
		Thread th3 = new Thread(new Runnable() {
			
			@Override
			public void run() {
				for(int i = 1; i <=200; i++) {
					System.out.print("@");
					
					try {
						// Thread.sleep(시간) => 주어진 시간동안 작업을 잠시 멈춘다
						// 시간은 밀리세컨드 단위를 사용한다. ( 1초는 1000밀리세컨드)
						Thread.sleep(100);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
				System.out.println("th3 스레드 종료");

			}
		});
		th3.start();
		
		
		System.out.println("메인스레드 종료");
	}
	
}

class MyThread1 extends Thread{ // Thread는 클래스 객체이기 때문에 extends를 통한 클래스 상속

	@Override
	public void run() {
		for(int i = 1; i <=200; i++) {
			System.out.print("*");
			
			try {
				// Thread.sleep(시간) => 주어진 시간동안 작업을 잠시 멈춘다
				// 시간은 밀리세컨드 단위를 사용한다. ( 1초는 1000밀리세컨드)
				Thread.sleep(100);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		System.out.println("th1 스레드 종료");
	}
	
}


class MyThread2 implements Runnable{ // Runnable은 인터페이스 객체이기 때문에 implements 키워드로 Runnable과 같은 인터페이스 구현

	@Override
	public void run() {
		
		for(int i = 1; i <=200; i++) {
			System.out.print("$");
			
			try {
				// Thread.sleep(시간) => 주어진 시간동안 작업을 잠시 멈춘다
				// 시간은 밀리세컨드 단위를 사용한다. ( 1초는 1000밀리세컨드)
				Thread.sleep(100);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		System.out.println("th2 스레드 종료");

	}
	
}
