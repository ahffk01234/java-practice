package kr.or.ddit.basic;


public class MySingleton {
	
	/*
	 	싱글턴 클래스 구성하는 방법
	 	
	 	1. 자기 자신 탕비의 참조변수를 멤버변수로 선언한다.
	 		(이 변수는 private static으로 선언한다.)
	 	2. 생성자를 private으로  설정한다.
	 	(외부에서 생성자에 접근하지 못하게 하기 위해서, 즉 외부에서 new 키워드 사용 못하게 하기 위해서
	 	3. 객체(인스턴스)는 내부에서 생성해서 이 생성된 객체를 반환하는 메서드를 만든다.
	 	(이 메서드의 이름은 보통 getInstance()로 지정한다. 접근제어자는 static으로 지정한다.
	 */

	
	// 자기 자신의 타입의 참조값을 지정하기 위한 멤버변수 선언
	private static MySingleton single;
	
	// 생성자를 private으로 지정한다.
	private MySingleton() {
		
	}
	
	public static MySingleton getInstance() {
		if(single == null) {
			single = new MySingleton();
		}
		return single;
	}

	public void displayText() {
		System.out.println("안녕하세요. 싱글턴 객체입니다");
	}
}
