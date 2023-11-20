package kr.or.ddit.basic;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;

public class CopyImageTest {
	public static void main(String[] args) throws IOException {
	
		File file1 = new File("d://D_Other//Tulips.jpg");
		File file2 = new File("d://D_Other//복사본_Tulips.jpg");

		int data = 0;

		FileInputStream is = new FileInputStream(file1);
		FileOutputStream os = new FileOutputStream(file2);

		byte[] buf = new byte[16364];

		if (file1.exists()) {
			System.out.println(file1.getName() + "은 존재합니다");
			System.out.println("파일의 크기 : " + file1.length());
			
			
			if(file2.exists()) {
				System.out.println(file2.getName() +"은 존재합니다.");
			}else {
				System.out.println(file2.getName() +"은 존재하지 않습니다.");
				System.out.println("복사본을 생성합니다.");

			while ((data = is.read(buf)) > 0) {
				os.write(buf, 0, data);
				System.out.println("복사중....");
			}
			System.out.println("복사 완료!!!");
			}
		} else {
			System.out.println(file1.getName() + "은 존재하지 않습니다.");

		}

		is.close();
		os.close();
		
	}
}
