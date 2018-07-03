/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package arrayimplementation;

import java.util.Iterator;
import java.util.function.Consumer;

/**
 *
 * @author nbaklanov
 */
public class MyIterator<E> implements Iterator<E> {

    private int index = 0;
    private MyArray<E> collection;
    
    public MyIterator(MyArray<E> arr) {
        collection = arr;
    }
    
    @Override
    public boolean hasNext() {
        return index < collection.size();
    }

    @Override
    public E next() {
        if (hasNext()) {
            return collection.get(index++);
        } else {
            throw new IndexOutOfBoundsException();
        }
    }

    @Override
    public void remove() {
        if (!collection.isEmpty()) {
            collection.remove(index);
        }
    }

    @Override
    public void forEachRemaining(Consumer<? super E> action) {
        Iterator.super.forEachRemaining(action); //To change body of generated methods, choose Tools | Templates.
    }
}
