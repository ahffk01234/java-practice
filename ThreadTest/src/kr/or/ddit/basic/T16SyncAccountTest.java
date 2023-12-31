package kr.or.ddit.basic;


/*
 	은행의 입출금 작업을 스레드로 처리하는 예제
 	(synchronized를 이용한 동기화 처리)
 */

public class T16SyncAccountTest {
	public static void main(String[] args) {
		
		
		SynchAccount sAcc = new SynchAccount();
		
		Thread th1 = new BankThread(sAcc);
		Thread th2 = new BankThread(sAcc);
		
		sAcc.deposite(10000);
		th1.start();
		th2.start();
	}

}


// 은행의 입출금 관리를 위한 클래스
class SynchAccount{
	private int balance; // 잔액이 저장될 변수

	public int getBalance() {
		return balance;
	}
	
	// 입금처리를 수행하는 메서드
	public void deposite(int money) {
		this.balance += money;
	}
	
	// 출금을 처리하는 메서드(출금 성공 : true, 출금 실패 : false 반환)
	// 동기화 영역에서 호출하는 메서드도 동기화 처리를 해 주어야 한다.
	public synchronized boolean withdraw(int money) {
		
		if(balance >= money) { // 잔액이 충분하다면...
			for(int i = 1; i < 1000000000; i++) {}
				balance -= money;
				System.out.println("메서드 안에서 balance = " + getBalance());
				return true;
			}else {
				return false;
			}
		}
}	
	
// 은행 업무를 처리하기 위한 스레드
class BankThread extends Thread{
	private SynchAccount sAcc;
	
	public BankThread(SynchAccount sAcc) {
		this.sAcc = sAcc;
		
	}
	
	@Override
	public void run() {
		boolean result = sAcc.withdraw(6000);
		System.out.println("스레드 안에서 result = " + result + ", balance = " + sAcc.getBalance());
	}
}