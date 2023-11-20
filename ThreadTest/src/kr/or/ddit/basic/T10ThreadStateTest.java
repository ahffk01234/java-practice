package kr.or.ddit.basic;

public class T10ThreadStateTest {
/*
 	스레드의 상태에 대하여...
 	
 	NEW : 스레드가 생성되고 아직 start()가 호출되지 않은 상태
 	RUNNABLE : 실행 중 또는 실행 가능한 상태
 	BLOCKED 동기화에 의해서 일시정지 된 상태(LOCK이 풀릴 때까지 기다리는 상태)
 	WAITING, TIMED_WAITING : 스레드의 작업이 종료되지는 않았지만 실행가능하지 않은 일시정지
 							TIMED_WAITIN은 일시정지 시간이 지정된 경우임.
 	TERMINATED : 스레드의 작업이 종료된 상태
 */
	
	public static void main(String[] args) {
		
		Thread target = new TargetThread();
		StatePrintThread spt = new StatePrintThread(target);
		spt.start();
		
	}
}

// 스레드의 상태를 출력하는 스레드
class StatePrintThread extends Thread{
	
	private Thread targetThread; // 상태를 출력할 스레드가 저장될 변수
	
	public StatePrintThread(Thread targetThead) {
		this.targetThread = targetThead;
	}

	@Override
	public void run() {
		
		while(true) {
			
			Thread.State state = targetThread.getState();
			System.out.println("타겟 스레드의 상태값 : " + state);
			
			// NEW 상태인지 검사
			if(state == Thread.State.NEW) {
				targetThread.start();
			}
			
			// 타겟스레드가 종료 상태인지 검사
			if(state == Thread.State.TERMINATED) {
				break;
			}
			
			try {
				Thread.sleep(500);
			}catch(InterruptedException ex) {
				ex.printStackTrace();
			}
		}
	}
	
	
}


class TargetThread extends Thread{

	@Override
	public void run() {
		for(long i = 1; i<= 1000000000; i++) { }
		try {
			Thread.sleep(1500);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		for(long i = 1; i <= 1000000000; i++) {}
	}
	
	
}