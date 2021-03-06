package com.alf.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.alf.highest.login.controller.ValidateCodeController;


/**
 * 生成随机的验证码
 * @author lhao
 * 
 */
public class RandomValidate {

	private static final long serialVersionUID = 1L;
	private static Log log = LogFactory.getLog(ValidateCodeController.class);
	// 验证码图片的宽度。
	private static int width = 150;
	// 验证码图片的高度。
	private static int height = 42;
	// 验证码字符个数
	private static int codeCount = 4;

	private static int x = 0;
	// 字体高度
	private static int fontHeight;
	private static int codeY;

	private static char[] codeSequence = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
			'K', 'L', 'M', 'N',  'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W',
			'X', 'Y', 'Z',  '1', '2', '3', '4', '5', '6', '7', '8', '9' };
	
	
	public static BufferedImage getBufferedImage(HttpSession session){
		// randomCode用于保存随机产生的验证码，以便用户登录后进行验证。
		StringBuffer randomCode = new StringBuffer();
		BufferedImage buffImg=null;
		
		x = width / (codeCount + 1);
		fontHeight = height - 2;
		codeY = height - 4;
		try{
			// 定义图像buffer
		    buffImg = new BufferedImage(width, height,
					BufferedImage.TYPE_INT_RGB);
			Graphics2D g = buffImg.createGraphics();

			// 创建一个随机数生成器类
			Random random = new Random();

			// 将图像填充为白色
			g.setColor(Color.WHITE);
			g.fillRect(0, 0, width, height);

			// 创建字体，字体的大小应该根据图片的高度来定。
			Font font = new Font("Fixedsys", Font.PLAIN, fontHeight);
			// 设置字体。
			g.setFont(font);

			// 画边框。
			g.setColor(Color.BLACK);
			g.drawRect(0, 0, width - 1, height - 1);

			// 随机产生160条干扰线，使图象中的认证码不易被其它程序探测到。
			g.setColor(Color.BLACK);
			for (int i = 0; i < 1; i++) {
				int x = random.nextInt(width);
				int y = random.nextInt(height);
				int xl = random.nextInt(12);
				int yl = random.nextInt(12);
				g.drawLine(x, y, x + xl, y + yl);
			}

			
			int red = 0, green = 0, blue = 0;

			// 随机产生codeCount数字的验证码。
			for (int i = 0; i < codeCount; i++) {
				// 得到随机产生的验证码数字。
				String strRand = String.valueOf(codeSequence[random.nextInt(34)]);
				// 产生随机的颜色分量来构造颜色值，这样输出的每位数字的颜色值都将不同。
				red = random.nextInt(255);
				green = random.nextInt(255);
				blue = random.nextInt(255);

				// 用随机产生的颜色将验证码绘制到图像中。
				g.setColor(new Color(red, green, blue));
				g.drawString(strRand, (i + 1) * x, codeY);

				// 将产生的四个随机数组合在一起。
				randomCode.append(strRand);
			    session.setAttribute("validatecode", randomCode
							.toString());
			}
		}catch(Exception e){
			e.printStackTrace();
			log.error(e);
		}
		
		return buffImg ;
	}
	
}
