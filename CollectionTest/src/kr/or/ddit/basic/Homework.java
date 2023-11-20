package kr.or.ddit.basic;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;

public class Homework {

	static Scanner scan;
	private Map<String, Hotel> hotelMap;
	private static String filename = "d:/D_Other/hotelObj.bin";

	public Homework() {
		scan = new Scanner(System.in);
		hotelMap = readHotel();

		if (hotelMap == null) {

			hotelMap = new HashMap<String, Hotel>();
		}
	}

	public static void main(String[] args) {
		// 파일 정보 읽기
		Homework homework = new Homework();
		homework.hotelService();
	}

	public void hotelService() {

		while (true) {
			System.out.println("**************************");
			System.out.println("호텔 문을 열었습니다.");
			System.out.println("**************************");
			System.out.println();
			System.out.println("*******************************************");
			System.out.println("어떤 업무를 하시겠습니까?");
			System.out.println("1.체크인  2.체크아웃 3.객실상태 4.업무종료");
			System.out.println("*******************************************");
			System.out.print("메뉴선택 => ");
			int num = scan.nextInt();
			switch (num) {
			case 1:
				checkIn();
				break;
			case 2:
				checkOut();
				break;
			case 3:
				displayHotel();
				break;
			case 4:
				System.out.println();
				System.out.println("*********************");
				System.out.println("호텔 문을 닫았습니다.");
				System.out.println("*********************");
				save();
				return;
			default:
				System.out.println("잘못된 입력잆니다.");
			}
		}
	}

	private void save() {

		// 객체로 저장하려면 ObjectOutputStream 필요
		ObjectOutputStream oos = null;

		try {
			// 객체 저장용 출력 스트림 객체 생성
			oos = new ObjectOutputStream(new FileOutputStream(filename));

			// Map객체를 파일로 저장한다.
			oos.writeObject(hotelMap);

			System.out.println("저장이 완료되었습니다.");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 사용했던 스트림 객체 닫기
			if (oos != null)
				try {
					oos.close();
				} catch (IOException e) {
				}
		}
	}

	private Map<String, Hotel> readHotel() {

		// 읽어온 데이터가 저장될 변수 선언
		ObjectInputStream ois = null;

		Map<String, Hotel> hMap = null;

		File file = new File(filename);

		if (!file.exists()) { // 저장된 파일이 없으면
			try {
				file.createNewFile();
			} catch (IOException e) {
				e.printStackTrace();
			}
			return null;
		} else {
			try {
				ois = new ObjectInputStream(new FileInputStream(file));
				try {
					hMap = (Map<String, Hotel>) ois.readObject();
					if (hMap == null) {
						// 파일 내용이 없을 경우 처리
						hMap = new HashMap<>(); // 빈 Map 객체 생성
						System.out.println("파일 내용이 없습니다. 기본값으로 초기화되었습니다.");
					}
				} catch (ClassNotFoundException e) {
					System.out.println("파일읽기 오류" + e.getMessage());
				}
			} catch (FileNotFoundException e) {
				System.out.println("파일이 존재하지 않음");
			} catch (IOException e) {
				System.out.println("파일읽기 오류" + e.getMessage());
			}
			return hMap;
		}
	}

	private void displayHotel() {

		System.out.println();

		if (hotelMap.size() == 0) {

			System.out.println("체크인된 방이 존재하지 않습니다.");
		} else {
			Set<String> keySet = hotelMap.keySet();
			Iterator<String> it = keySet.iterator();

			while (it.hasNext()) {
				String key = it.next();
				Hotel ht = hotelMap.get(key);

				System.out.println(ht.getName() + "호");
				System.out.println("이름 : " + ht.getNum());
				System.out.println("**************************");
			}
		}

	}

	private void checkOut() {
		System.out.println();
		System.out.println("어느방을 체크아웃 하시겠습니까?");
		System.out.print("방번호 입력 => ");
		String room = scan.next();

		if (hotelMap.remove(room) == null) {
			System.out.println(room + "방에는 체크인한 사람이 없습니다.");
		} else {
			System.out.println("체크아웃 되었습니다.");
		}
	}

	private void checkIn() {

		System.out.println();
		System.out.println("어느방에 체크인 하시겠습니까?");
		System.out.print("방번호 입력 => ");
		String room = scan.next();

		if (hotelMap.get(room) != null) {
			System.out.println(room + "호실에는 이미 체크인되어있습니다.");
			return;
		} else {
			System.out.print("이름 입력 => ");
			String name = scan.next();

			Hotel hotel = new Hotel(room, name);
			hotelMap.put(room, hotel);
			System.out.println(name + "님이 " + room + "호실을 체크인했습니다.");

			System.out.println("체크인 되었습니다");
		}
	}
}

class Hotel implements Serializable {
	
	private String num;
	private String name;
	
	public Hotel() {
	}

	public Hotel(String name, String num) {
		super();
		this.name = name;
		this.num = num;
	}

	public Hotel(String name) {
		super();
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}
}