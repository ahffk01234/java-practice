package kr.or.ddit.basic;

public class T20WatNotifyTest {
	public static void main(String[] args) {
		
		DataBox dataBox = new DataBox();
		
		Thread pTh = new ProducerThread(dataBox);
		Thread cTh = new ConsumerThread(dataBox);
		
		pTh.start();
		cTh.start();
		
	}
}


class DataBox{
	private String data;
	public synchronized String getData() {
		System.out.println(Thread.currentThread().getName() + " : getData() 메서드 시작...");
		if(this.data ==null) {
			try {
				System.out.println(Thread.currentThread().getName());
				wait();
			}catch(InterruptedException ex) {
				ex.printStackTrace();
			}
		}
		String returnData = this.data;
		System.out.println("읽어온 데이터 : " + returnData);
		this.data = null; // 데이터 제거...
		System.out.println(Thread.currentThread().getName() + " : getData() 메서드 끝...");
		
		return returnData;
		
	}
	
	// data가 null 일 경우에만 데이털르 세팅하는 메서드
	public synchronized void setData(String data) {
		System.out.println(Thread.currentThread().getName() + " : setData() 메서드 시작...");
		
		if(this.data != null) {
			try {
				System.out.println(Thread.currentThread().getPriority() + " : setData() 메서드 안에서 wait() 호출 ...");
				wait();
			}catch(InterruptedException ex) {
				ex.printStackTrace();
			}
		}
		this.data = data;
		System.out.println("세팅한 데이터 : " + this.data);
		System.out.println(Thread.currentThread().getName() + " : setData() 메서드 안에서 notify() 호출 ...");
		notify();
		
		System.out.println(Thread.currentThread().getName() + " : setData() 메서드 끝...");
	}
}

// 데이터를 세팅만하는 스레드
class ProducerThread extends Thread{
	private DataBox dataBox;
	public ProducerThread(DataBox dataBox) {
		super("ProducerThread");
		this.dataBox = dataBox;
	}
	
	@Override
	public void run() {
		
		for(int i = 1; i <= 5; i++) {
			String data = "Data-" + i;
			System.out.println(this.getName() + "가 dataBox.setData(" + data + ") 호출함.");
			dataBox.setData(data);
			
		}
	}
}

// 데이터를 읽어오기만 하는 스레드
class ConsumerThread extends Thread{
	private DataBox dataBox;

	public ConsumerThread(DataBox dataBox) {
		super("ConsumerThread");
		this.dataBox = dataBox;
	}
	
	@Override
	public void run() {
		
		for(int i = 1; i <= 5; i++) {
			String data = dataBox.getData();
			System.out.println(this.getName() + "가 dataBox.getData() 호출 후 결과 : " + data);
		}
	}
}