package user;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class ReadFileProperties {
 public Properties readFile(){
	 Properties properties=new Properties();
		try {
			properties.load(new FileInputStream("\\WebContent\\WEB-INF\\class\\config.properties"));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 return properties;
 }
}
