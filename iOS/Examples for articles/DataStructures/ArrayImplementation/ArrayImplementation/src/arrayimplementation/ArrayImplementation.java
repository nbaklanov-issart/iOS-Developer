/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package arrayimplementation;

import java.util.Iterator;

/**
 *
 * @author Гений
 */
public class ArrayImplementation {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        MyArray<String> arrayTest = new MyArray(String.class);
        arrayTest.add("АДЫН");
        arrayTest.add("ДВЫА");
        arrayTest.add("ТРЫ");
        arrayTest.add("ЧАДЫРИ");
        arrayTest.add("ПятЮНЯ");
        arrayTest.add("ЖЭСТЬ");
        arrayTest.add("СОМ");
        
        System.out.println(arrayTest.get(5));
        
        Iterator counter = arrayTest.iterator();
        while (counter.hasNext()) {
            System.out.println(counter.next());
        }
    }
}
