package jaeHyeon.bean;

import java.util.Date;
import java.io.Serializable;

public class counter implements Serializable{
   private int count;
   private Date recentDate;

   public int getCount() {   //getter methods
      return count;
   }
   public Date getRecentDate() {
      return recentDate;
   }

   public void setCount(int count) {   //setter methods
      this.count = count;
   }
   public void setRecentDate(Date recentDate) {
      this.recentDate = recentDate;
   }
}
