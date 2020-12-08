/* JavaBean
객체 단위의 관련 단위를 저장 및 관리하는 Java객체, DataBase와 JSP의 중간에서 데이터 관리의 매개체 역할을 함
구성요소: 생성자 / property(멤버변수) / getter메소드 / setter메소드
*/

package jaeHyeon.bean;                          //일반적으로 class는 public

import java.util.Date;
import java.io.Serializable;

public class Member implements Serializable{    //Serializable을 무조건 implement해야 한다.
   private String id;                           //일반적으로 property는 private, 소문자 사용을 권장
   private String name;
   private String password;   
   private String email;                        // !! 외부에서 간주하게 되는 property는 멤버변수 명이 아닌 get/set 메소드에 의해 결정된다.
   private Date registerDate;                   //boolean type의, 배열의 property도 사용 가능

   public String getId() {                      //getter methods   //일반적으로 method는 public, 오버로딩도 사용 가능
      return id;
   }
   public String getName() {                    //get/set뒤에 따라오는 단어는 프로퍼티와 일치하며 대문자로 시작할 것을 권장
      return name;
   }
   public String getPassword() {
      return password;
   }
   public String getEmail() {
      return email;
   }
 public Date getRegisterDate() {
      return registerDate;
   }

   public void setId(String id) {               //setter methods
      this.id = id;
   }
   public void setName(String name) {
      this.name = name;
   }
   public void setPassword(String passwordl) {
      this.password = password;
   }
   public void setEmail(String email) {
      this.email = email;
   }
   public void setRegisterDate(Date registerDate) {
      this.registerDate = registerDate;
   }
}
