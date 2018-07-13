/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package removedublicates;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jdk.nashorn.internal.runtime.Debug;

/**
 *
 * @author nbaklanov
 */
public class RemoveDublicates {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        List<String> dubList = new ArrayList<String>();
        
        dubList.add("АДЫН");
        dubList.add("АДЫНАДЫН");
        dubList.add("ДВА-АПОСЛЯ-ОДНОГО");
        dubList.add("ТРЫ");
        dubList.add("ЧОТЫРЕ");
        dubList.add("ПЬЯТЬ");
        dubList.add("СОВСЕМПЬЯТ");
        dubList.add("АФТЕРПЬЯТЬ");
        dubList.add("ШОСТЬ");
        dubList.add("СИМЬ");
        
        dubList.add("АДЫН");
        dubList.add("АДЫНАДЫН");
        dubList.add("ДВА-АПОСЛЯ-ОДНОГО");
        dubList.add("ТРЫ");
        dubList.add("ЧОТЫРЕ");
        dubList.add("ПЬЯТЬ");
        dubList.add("СОВСЕМПЬЯТ");
        dubList.add("АФТЕРПЬЯТЬ");
        dubList.add("ШОСТЬ");
        dubList.add("СИМЬ");
        
        System.out.println("Сначала");
        System.out.println(dubList);
        System.out.println("----------------------------------------");
        
        removeDublicates(dubList);
        System.out.println(dubList);
    }
    
    public static void removeDublicates(List<String> list) {
        Iterator<String> listIterator = list.iterator();
        List<String> uniqList = new ArrayList<String>();
        
        while(listIterator.hasNext()) {
            String currentElement = listIterator.next();
            
            if (uniqList.contains(currentElement)) {
                listIterator.remove();
            } else {
                uniqList.add(currentElement);
            }
        }        
    }    
}
