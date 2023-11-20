package kr.or.ddit.tcp;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.util.Scanner;

public class MultiChatClient {
	
	// 시작 메서드
	public void start() {
		
		Socket socket = null;
		
		try {
			
			socket = new Socket("192.168.144.41",7777);
			
			System.out.println("서버에 연결되었습니다.");
			
			ClientSender clientSender = new ClientSender(socket);
			ClientReceiver clientreceiver = new ClientReceiver(socket);
			
			clientSender.start();
			clientreceiver.start();
			
		}catch(IOException ex) {
			ex.printStackTrace();
		}finally{
			
		}
	}
	
	// 메시지 전송을 위한 스레드
	class ClientSender extends Thread {
		
		private DataOutputStream dos;
		private Scanner scan;
		
		public ClientSender(Socket socket) {
			scan = new Scanner(System.in);
			
			try {
				dos = new DataOutputStream(socket.getOutputStream());
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		@Override
		public void run() {
			
			try {
				
				if(dos != null) {
					// 시작하자 마자 자신의 대화명을 서버로 전송
					System.out.println("대화명 >> " );
					dos.writeUTF(scan.nextLine());
					
				}
				
				while(dos != null) {
					// 키보드로 입력받은 메시지 서버로 전송
					dos.writeUTF(scan.nextLine());
				}
				
			}catch(IOException ex) {
				ex.printStackTrace();
			}
		}
	}
	
	// 메시지 수신을 위한 스레드
	class ClientReceiver extends Thread {
		
		private DataInputStream dis;
		
		public ClientReceiver(Socket socket) {
			
			try {
				dis = new DataInputStream(socket.getInputStream());
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		@Override
		public void run() {
			
			while(dis != null) {
				// 서버로부터 수신한 메시지 출력하기
				try {
					System.out.println(dis.readUTF());
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	public static void main(String[] args) {
		new MultiChatClient().start();
		
	}
}
