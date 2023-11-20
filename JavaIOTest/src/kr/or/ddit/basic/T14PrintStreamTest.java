package kr.or.ddit.basic;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

/*
 	프린터 기능 제공 스트림
 */
public class T14PrintStreamTest {
	public static void main(String[] args) throws FileNotFoundException, UnsupportedEncodingException {
		
		/*
		 	PrintStream은 모는 자료형 데이터를 출력할 수 있는 기능을 제공하는 스트림 클래스이다.
		 */
		FileOutputStream fos = new FileOutputStream("d:/D_Other/print.txt");
		
		PrintStream out = new PrintStream(fos);
		out.print("안녕하세요. PrintStream 입니다.\n");
		out.println("안녕하세요. PrintStream 입니다2.");
		out.println("안녕하세요. PrintStream 입니다3.");
		out.println(3.14);
		System.out.println("작업 끝...");
		out.close();
		
		
		
		/*
		 	
		 	PrintStream은 데이털르 문자로 출력하는 기능을 제공함.
		 	향상된 기능의 PrintWriter가 추가되었지만 계속 사용됨
		 	
		 	PrintWriter가 PrintStream보다 다양한 인코딩방식의 문자를 처리하는데 적합하다.
		 
		 */
		
		FileOutputStream fos2 = new FileOutputStream("d:/D_Other/print.txt");
		
		PrintWriter pw = new PrintWriter(new OutputStreamWriter(fos2, "UTF-8"));
		
		pw.print("안녕하세요. PrintWriter입니다.\n");
		pw.println("안녕하세요. PrintWriter입니다2.");
		pw.println("안녕하세요. PrintWriter입니다3.");
		pw.println(fos2);
		pw.println(3.14f);
		
		pw.close();
		
		
		
		
		
		
		
	}
}
