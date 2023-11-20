package kr.or.ddit.basic;

public class T13ThreadStopTest {
	
	
	public static void main(String[] args) {
//		
//		ThreadStopEx1 th1 = new ThreadStopEx1();
//		th1.start();
//		
//		try {
//			Thread.sleep(1000);
//		}catch(InterruptedException ex) {
//			ex.printStackTrace();
//		}
//		
////		th1.stop();
//		th1.setStopped(true);
		
		ThreadStopEx2 th2 = new ThreadStopEx2();
		th2.start();
		
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		
		th2.interrupt(); // 인터럽트 걸기
	}
	
}

class ThreadStopEx1 extends Thread{
	private boolean isStopped;
	
	public void setStopped(boolean isStopped) {
		this.isStopped = isStopped;
	}
	
	@Override
	public void run() {
		while(!isStopped) {
			System.out.println("스레드 처리 작업 중...");
		}
		
		System.out.println("자원 정리 중...");
		System.out.println("실행 종료.");
	}
}
// interrupt()메서드를 이용하여 스레드를 멈추게 하는 방법
class ThreadStopEx2 extends Thread{
	@Override
	public void run() {
//		// 방법1 => sleep()메서드나 join() 메서드 등을 사용했을 때 interrupt()를 호출하면
//		//			InterruptedException이 발생한다. 이 예외를 이용하는 방법.
//		try {
//			while(true) {
//				System.out.println("스레드 작업 처리 중...");
//				Thread.sleep(1);
//			}
//			
//		}catch(InterruptedException ex) {System.out.println("인터럽트 발생했어요..."); }
//		
		
		// 방법2 => interrupt()메서드가 호출되었는지 검사하기
		while(true) {
			System.out.println("스레드 작업 처리 중...");
			
			// 검사방법1 => 스레드의 인스턴스용 메서드를 이용하는 방법
//			if(this.isInterrupted()) {
//				System.out.println("인스턴스용 isInterrupted() 호출됨.");
//				break;
//			}
//			
			// 검사방법2 => 스레드의 정적 메서드를 이용하는 방법
			if(Thread.interrupted()) {
				System.out.println("스레드의 정적 메서드 Interrupted() 호출됨.");
				break;
			
			}
			
		}
		
		
		System.out.println("자원 정리 중...");
		System.out.println("실행 종료.");
	}
}