package kr.or.ddit.basic;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/*
 	기본타입 입출력 보조 스트림 예제
 */
public class T13DataIOStreamTest {
	public static void main(String[] args) {
		
		FileOutputStream fos = null;
		
		// DataOutputStream은 출력용 데이터를 자료형에 맞게 출력해 준다
		DataOutputStream dos = null;
		
		
		
		try {
			
			fos = new FileOutputStream("d:/D_Other/test.dat");
			
			dos = new DataOutputStream(fos);
			
			dos.writeUTF("올길동");
			dos.writeInt(17); // 정수형으로 데이터 출력
			dos.writeFloat(3.14f); // 실수형(Float)으로 데이터 출력
			dos.writeDouble(3.14); // 실수형(Double)으로 데이터 출력
			dos.writeBoolean(true); // 논리형으로 데이터 출력
			
			System.out.println("출력 완료...");
			
		}catch(IOException ex) {
			ex.printStackTrace();
		}finally {
			try {
				dos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}	
		}
		
		FileInputStream fis = null;
		DataInputStream dis = null;
		
		try {
			fis = new FileInputStream("d:/D_Other/test.dat");
			dis = new DataInputStream(fis);
			
			System.out.println("문자열 데이터 : " + dis.readUTF());
			System.out.println("정수형 데이터 : " + dis.readInt());
			System.out.println("실수형(Float) 데이터 : " + dis.readFloat());
			System.out.println("실수형(Double) 데이터 : " + dis.readDouble());
			System.out.println("실수형 : " + dis.readBoolean());
			
		}catch(IOException ex) {
			ex.printStackTrace();
		}finally {}
		
	}
}
