package xyz.btpink.www.TensorflowAPI;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;

public class PythonSocket {
	private Thread sent;
	private Socket socket;
	private String result;

	public String SocketTest(String path) {
		try {
			socket = new Socket("localhost", 5882);
			sent = new Thread(new Runnable() {
				@Override
				public void run() {
					try {
						OutputStream os = socket.getOutputStream();
						InputStream is = socket.getInputStream();
						
						InputStreamReader isr = new InputStreamReader(is);
						BufferedReader stdIn = new BufferedReader(isr);
						PrintWriter out = new PrintWriter(os, true);
//						System.out.println("Trying to read...");
						
//						System.out.println("Message sent");
						out.print(path);
						out.flush();
						
						result = stdIn.readLine();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
			});
			sent.start();
			sent.join();
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		return result;
	}
}