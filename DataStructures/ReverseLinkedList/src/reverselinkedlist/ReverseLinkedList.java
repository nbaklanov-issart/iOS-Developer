/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package reverselinkedlist;

import java.util.Iterator;
import java.util.LinkedList;

/**
 *
 * @author nbaklanov
 */
public class ReverseLinkedList {
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        ListElement listFirst = initList();
        ListElement current = listFirst;
        
        while (current.next != null) {
            System.out.println(current.data);
            current = current.next;
        }
        System.out.println(current.data);
        
        System.out.println("------------------");
        System.out.println("Разворачиваем в зад");
        System.out.println("------------------");
        
        current = listFirst;
        boolean exit = false;
        
        ListElement prevElement = null;
        while(!exit) {            
            ListElement oldNext = null;
            if (current.next == null) {
                exit = true;
            } else {
                oldNext = current.next;
            }
            current.next = prevElement;
            prevElement = current;     
            
            if (!exit) {
                current = oldNext;
            }            
        }                
        
        while (current.next != null) {
            System.out.println(current.data);
            current = current.next;
        }
        System.out.println(current.data);
    }
    
    public static ListElement initList() {
        ListElement veryFirst;
        ListElement currentElement, nextElement;
        
        currentElement = new ListElement();
        veryFirst = currentElement;
        currentElement.data = "АДЫН";
        
        nextElement = new ListElement();
        nextElement.data = "ТУ";
        currentElement.next = nextElement;        
        currentElement = nextElement;
        
        
        nextElement = new ListElement();
        nextElement.data = "ТРЫ";
        currentElement.next = nextElement;        
        currentElement = nextElement;
        
        
        nextElement = new ListElement();
        nextElement.data = "ЧАТЫРИ";
        currentElement.next = nextElement;        
        currentElement = nextElement;
        
        
        nextElement = new ListElement();
        nextElement.data = "ПЬЯТЬ";
        currentElement.next = nextElement;        
        currentElement = nextElement;
        
        
        nextElement = new ListElement();
        nextElement.data = "СИКС";
        currentElement.next = nextElement;        
        currentElement = nextElement;
        
        
        nextElement = new ListElement();
        nextElement.data = "СъОМ";
        currentElement.next = nextElement;        
        currentElement = nextElement;
        
        
        nextElement = new ListElement();
        nextElement.data = "ВОСИМЬ";
        currentElement.next = nextElement;        
        currentElement = nextElement;
        
        nextElement = new ListElement();
        nextElement.data = "ДОВЯТЬ";
        currentElement.next = nextElement;        
        currentElement = nextElement;
        
        
        nextElement = new ListElement();
        nextElement.data = "ОДИН и НУЛЬ";
        currentElement.next = nextElement;        
             
        return veryFirst;
    }
    
    
}
