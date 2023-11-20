package kr.or.ddit.basic;

public class EnumTest {
	public static void main(String[] args) {
		
		
//		Planet planet1;
		
		
		Planet[] planetArray = Planet.values(); // enum 객체를 values메서드를 통해서 배열에 추가
		System.out.println("행성의 반지름(KM):");
		for(int i = 0; i < planetArray.length; i++) {
			System.out.print(planetArray[i].name() + "(" + planetArray[i].getRadius()+")");
			if( i < planetArray.length -1) { // 배열크기 - 1 만큼 ',' 출력(배열의 마지막출력에선 ','출력 안하도록)
				System.out.println(",");
			}
		}
		System.out.println();
		System.out.println();
		
		// 행성을 구의 형태라고 가정했을때 표면적 구하기 => 구의 겉넓이 : 4 x π x 반지름의 제곱
		Planet[] areaArray = Planet.values();
		System.out.println("행성의 표면적:");
		for(int i = 0; i < areaArray.length; i++) {
			System.out.print(areaArray[i].name()+"("+ areaArray[i].getArea()+")");
			if( i < areaArray.length -1) { // 배열크기 - 1 만큼 ',' 출력(배열의 마지막출력에선 ','출력 안하도록)
				System.out.println(",");
			}
		}
		
		System.out.println();
		
	}
	public enum Planet{
		수성(2439), 금성(6052), 지구(6371), 화성(3390), 목성(69911), 토성(58232), 천왕성(25362), 해왕성(24622);

		private int radius;

		private Planet(int radius) {
			this.radius = radius;
		}

		public double getArea() {
			double area = 4 * radius * radius * Math.PI;
			return area;
		}

		public int getRadius() {
			return radius;
		}
		
	}
}

