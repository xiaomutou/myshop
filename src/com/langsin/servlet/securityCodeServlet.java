package com.langsin.servlet;


import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sun.security.provider.PolicyParser.GrantEntry;

public class securityCodeServlet extends HttpServlet {

	private int width = 80;
	private int height = 40;
	private int fontNum = 4;
	private int lineNum = 8;
	private String randString = "0123456789abcdefghklmnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ";
	private Random rand = new Random();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
		HttpSession session = req.getSession();
		BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		Graphics g = image.getGraphics();
		g.fillRect(0, 0, width, height);
		
		for(int i = 0;i<lineNum;i++){
			drawLine(g);
		}
		
		g.translate(5, 22);
		String data = "";
		for(int i =0;i<fontNum;i++){
			data = drawData(g, data, i);
		}
		session.setAttribute("securitycode", data);
		
		ImageIO.write(image, "JPEG", resp.getOutputStream());
			
	}
	
	
	private Font getFont(){
		Font font = new Font("ËÎÌו", Font.CENTER_BASELINE, 25);
		return font;
	}
	private Color getColor(){
		Color color = new Color(rand.nextInt(255), rand.nextInt(255), rand.nextInt(255));
		return color;
	}
	
	private void drawLine(Graphics g){
		g.setColor(getColor());
		int x = rand.nextInt(width);
		int y = rand.nextInt(height);
		
		int x1 = rand.nextInt(13);
		int y1 = rand.nextInt(15);
		g.drawLine(x, y, x+x1,y+y1);
	}
	
	private String drawData(Graphics g,String data,int num){
		g.setFont(getFont());
		g.setColor(getColor());
		String randData = randString.charAt(rand.nextInt(randString.length()))+"";
		data +=randData;
		g.drawString(randData, num*18, 6);
		return data;
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
	
	
	
}
