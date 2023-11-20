package kr.or.ddit.basic;

import java.util.ArrayList;
import java.util.List;

public class T03LambdaTest {
	public static void main(String[] args) {
		
		List<String> list = new ArrayList<String>();
		list.add("김명철");
		list.add("박성민");
		list.add("박지석");
		list.add("박유빈97");
		
		for(String str : list) {
			System.out.println(str);
		}
		
		System.out.println("-------------------------------------");
		list.forEach(name -> System.out.println(name)); // 람다식...
		System.out.println();
		
		list.forEach(System.out::println); // '::' -> 메서드 참조
	}
}
