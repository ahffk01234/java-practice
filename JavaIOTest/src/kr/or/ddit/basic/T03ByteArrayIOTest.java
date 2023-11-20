package kr.or.ddit.basic;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Arrays;

public class T03ByteArrayIOTest {
	public static void main(String[] args) throws IOException {
		
		byte[] inSrc = {0,1,2,3,4,5,6,7,8,9};
		byte[] outSrc = null;
		
		/* // 직접 복사하는 방법
		outSrc = new byte[inSrc.length]; // 공간 확보
		
		for(int i = 0; i < inSrc.length; i++) {
			outSrc[i] = inSrc[i];
		}
		
		System.out.println("직접 복사 후 outSrc => " + Arrays.toString(outSrc));
		*/
		
		//arrayCopy를 이용한 배열 복사방법
		outSrc = new byte[inSrc.length];
		
		/*// 원본배열을 대상배열에 복사하기
		System.arraycopy(inSrc, 0, outSrc, 0, inSrc.length);		
		
		System.out.println("arrayCopy를 이용한 배열 복사 후 outSrc => " + Arrays.toString(outSrc));
		*/
		
		
		// 스트림 객체 생성하기
		ByteArrayInputStream bais = new ByteArrayInputStream(inSrc);
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		
		int data = 0; // 읽어온 데이터르 저장할 변수 선언
		
		//  read() 메서드 => byte 단위로 데이터를 읽어와 int형으로 반환한다.
		//					 더 이상 읽어올 데이터가 없으면 -1을 리턴한다.
		while((data = bais.read()) != -1) {
			baos.write(data);
		}
		
		// 출력된 데이터를 바이트 배열로 반환하기
		outSrc = baos.toByteArray();
		
		System.out.println("inSrc => " + Arrays.toString(inSrc));
		System.out.println("outSrc => " + Arrays.toString(outSrc));
		
		// 사용한 스트림 객체 닫아주기
		bais.close();
		baos.close();
		
	}
}
