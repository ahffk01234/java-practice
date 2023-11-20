package kr.or.ddit.basic;

public class T15SyncThreadTest {
	public static void main(String[] args) {
		
		ShareObject so = new ShareObject();
		Thread th1 = new WorkerThread(so);
		th1.start();
	}

}

// 공통으로 사용할 객체
class ShareObject{
	
	private int sum;
	
	// 동기화 하는 방법 1 : 메서드 자체에 동기화 설정하기
	
//	public synchronized void add() {
	public void add() {
		for(int i = 0; i < 1000000000; i++) {
			// 동기화 하는 방법 2 : 동기화 블럭으로 설정하기
			// mutex : Mutual exclusion Object (상호 배제: 동시접근 차단)
//			synchronized(this) {
				
				int n = sum;
				
				n += 10; // 10 증가
				
				sum = n;
				
//			}
			
			
			System.out.println(Thread.currentThread().getName()+ "합계 : " + sum);
		}
	}
	
}

// 작업을 수행하는 스레드
class WorkerThread extends Thread{
	private ShareObject sObj;

	public WorkerThread(ShareObject sObj) {
		super();
		this.sObj = sObj;
	}

	public ShareObject getsObj() {
		return sObj;
	}

	public void setsObj(ShareObject sObj) {
		this.sObj = sObj;
	}
	
	@Override
	public void run() {
		for(int i = 1; i<=10;i++) {
			synchronized (sObj) {
				sObj.add();
				
			}
		}
		
	}

}