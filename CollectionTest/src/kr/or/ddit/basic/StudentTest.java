package kr.or.ddit.basic;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class StudentTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		List<Student> stuList = new ArrayList<Student>();

		stuList.add(new Student(1000, "이순신", 90, 90, 80));
		stuList.add(new Student(1001, "강감찬", 80, 85, 78));
		stuList.add(new Student(1002, "홍길동", 86, 82, 82));
		stuList.add(new Student(1003, "변학도", 92, 92, 88));
		stuList.add(new Student(1004, "성춘향", 82, 78, 90));
		System.out.println("정렬 전 : ");
		for (Student stu : stuList) {

			System.out.println(stu);
		}
		System.out.println();

		System.out.println("기본 정렬 후");
		Collections.sort(stuList);
		for (Student stu : stuList) {

			System.out.println(stu);
		}

		int grade = 1;
		for (int i = 0; i < stuList.size(); i++) {
			Student st1 = stuList.get(i);
			if (i > 0) {
				Student st2 = stuList.get(i - 1);
				if (st1.getTotal() < st2.getTotal()) {
					grade = i + 1;
				}
			}
			st1.setGrade(grade);
		}

		System.out.println("총점 내림차순 정렬 후");
		Collections.sort(stuList, new TotalScore());
		for (Student stu : stuList) {

			System.out.println(stu.toString());
		}
		
		System.out.println();
		System.out.println("등수 오름차순 정렬 후");
		Collections.sort(stuList, new Ranking());
		for(Student stu : stuList) {
			System.out.println(stu.toString());
		}
	}

}

class Student implements Comparable<Student> {

	private int stunum;
	private String name;
	private int lanscore;
	private int engscore;
	private int mathscore;
	private int total;
	private int grade;

	public Student(int stunum, String name, int lanscore, int engscore, int mathscore) {
		super();
		this.stunum = stunum;
		this.name = name;
		this.lanscore = lanscore;
		this.engscore = engscore;
		this.mathscore = mathscore;
		this.total = lanscore + engscore + mathscore;
		this.grade = 1;
	}

	public int getStunum() {
		return stunum;
	}

	public void setStunum(int stunum) {
		this.stunum = stunum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getLanscore() {
		return lanscore;
	}

	public void setLanscore(int lanscore) {
		this.lanscore = lanscore;
	}

	public int getEngscore() {
		return engscore;
	}

	public void setEngscore(int engscore) {
		this.engscore = engscore;
	}

	public int getMathscore() {
		return mathscore;
	}

	public void setMathscore(int mathscore) {
		this.mathscore = mathscore;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	@Override
	public String toString() {
		return "stunum=" + stunum + ", name=" + name + ", lanscore=" + lanscore + ", engscore=" + engscore
				+ ", mathscore=" + mathscore + ", total=" + total + ", grade=" + grade;
	}

	@Override
	public int compareTo(Student o) {
		// TODO Auto-generated method stub
		return Integer.compare(this.getStunum(), o.getStunum());
	}

}

class TotalScore implements Comparator<Student> {

	@Override
	public int compare(Student o1, Student o2) {

		if (o1.getTotal() == o2.getTotal()) {
			return Integer.compare(o1.getStunum(), o2.getStunum()) * -1;
		}
		return Integer.compare(o1.getTotal(), o2.getTotal()) * -1;
	}

}

class Ranking implements Comparator<Student> {

	@Override
	public int compare(Student o1, Student o2) {
		if (o1.getGrade() > o2.getGrade()) {
			return 1;
		} else if (o1.getGrade() == o2.getGrade()) {
			return 0;
		} else {
			return -1;
		}
	}

}