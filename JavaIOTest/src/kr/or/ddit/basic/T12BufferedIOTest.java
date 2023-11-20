package kr.or.ddit.basic;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

/*
 	성능향상을 위한 보조스트림 예제
 	(문자기반의 Buffered스트림 사용 예제)
 */
public class T12BufferedIOTest {
	public static void main(String[] args) {
		
		FileReader fr = null;
		BufferedReader br = null;
		
		try {
			fr = new FileReader("./src/kr/or/ddit/basic/T11BufferedIOTest.java");
			br = new BufferedReader(fr);
			
			String tempStr = "";
			
			int cnt = 1;
			while((tempStr = br.readLine()) != null) {
				System.out.printf("%4d : %s\n", cnt++,tempStr);
			}
			System.out.println();
			System.out.println( "읽기 종료");
			
		}catch(IOException ex) {
			ex.printStackTrace();
		}finally {
			try {
				br.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		
	}
}
