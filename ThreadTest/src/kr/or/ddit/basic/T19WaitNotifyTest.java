package kr.or.ddit.basic;

public class T19WaitNotifyTest {
	/*
	 * wait()메서드 => 동기화 영역에서 락을 풀고 Wait-Set영역(공유객체별 존재)으로 이동시킨다.
	 * 
	 * notify() 또는 notifyAll() 메서드 => Wait-Set영역에 있는 스레드를 깨워서 실행될 수 있도록 한다.
	 * (notify()는 하나, notifyAll()은 Wait-Set에 있는 전부를 깨운다.)
	 * 
	 * => wait()과, notify(), notifyAll()메서드는 동기화 영역에서만 실행할 수 있고, Object클래스에서 제공하는
	 * 메서드이다.
	 * 
	 */

	public static void main(String[] args) {
		
		WorkObject workObj = new WorkObject();
		
		Thread thA = new ThreadA(workObj);
		Thread thB = new ThreadB(workObj);
		
		thA.start();
		thB.start();
		
		

	}
}

// 공통으로 사용할 객체
class WorkObject {
	public synchronized void methodA() {
		System.out.println("methodA()메서드 작업 중...");

		System.out.println(Thread.currentThread().getName() + " : notify() 호출");
		notify();

		try {
			System.out.println(Thread.currentThread().getName() + " : wait() 호출");
			wait();
		} catch (InterruptedException ex) {
			ex.printStackTrace();

		}
	}

	public synchronized void methodB() {
		System.out.println("methodB()메서드 작업 중...");

		System.out.println(Thread.currentThread().getName() + " : notify() 호출");
		notify();

		try {
			System.out.println(Thread.currentThread().getName() + " : wait() 호출");
			wait();
		} catch (InterruptedException ex) {
			ex.printStackTrace();

		}
	}
}

// WorkObject의 methodA만 호출하는 스레드
class ThreadA extends Thread{
	private WorkObject workObj;
	
	public ThreadA(WorkObject workObj) {
		this.workObj = workObj;
	}
	
	@Override
	public void run() {
		for(int i = 1; i <= 5; i++) {
			workObj.methodA();
		}
		System.out.println("ThreadA 종료 ...");
	}
}


class ThreadB extends Thread{
	private WorkObject workObj;
	public ThreadB(WorkObject workObj) {
		super("ThreadB");
		this.workObj = workObj;
	}
	
	@Override
	public void run() {
		for(int i = 1; i <= 5; i++) {
			workObj.methodB();
		}
		System.out.println("ThreadB 종료 ...");
	}
}