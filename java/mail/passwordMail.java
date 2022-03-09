package mail;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail; 

public class passwordMail {
	public static void main(String[] args) {
		SimpleEmail email = new SimpleEmail();  
		String mail = "PCShopをご利用ありがとうございます。\n"
				+ "画面の確認コード入力欄に上記の数字を入力してください！\n"
				+	"確認コードは 123456です。\n"
				+	"2022年01月17日03時59分まで有効です。";
		//送り先
		try {
			email.setHostName("1252JY02");
			//送り先
			email.addTo("20jy0222@jynet2.jec.ac.jp");
			//送信元
			email.setFrom("20jy0222@jynet2.jec.ac.jp","PCShop");
			email.setSubject("パスワード再設定メール");  
			email.setMsg(mail);  
			email.send();
			System.out.println("メール送信完了");
		} catch (EmailException e) {
			e.printStackTrace();
			System.out.println("メール送信失敗");
		}
	}
}