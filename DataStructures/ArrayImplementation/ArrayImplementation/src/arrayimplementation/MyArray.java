/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package arrayimplementation;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/**
 *
 * @author Гений
 */
public class MyArray<E> implements List<E>, RandomAccess {

    private static final int DEFAULT_CAPACITY = 10;
    private static final int WRONG_INDEX = -1;
    
    private int size = 0;    
    private E elements[];
    private Class<E> arrayType;
    
    public MyArray(Class<E> ArrayClass) {
        arrayType = ArrayClass;
        elements = (E[]) Array.newInstance(ArrayClass, DEFAULT_CAPACITY);
    }
    
    private void ensureCapa() {
        int newSize = elements.length * 2;
        elements = Arrays.copyOf(elements, newSize);
    }
    
    private void removeItem(int removeIndex) {
        for(int i = removeIndex; i < elements.length -1; i++){
            elements[i] = elements[i + 1];
        }
    }
    
    @Override
    public int size() {
        return elements.length;
    }

    @Override
    public boolean isEmpty() {
        return elements.length == 0;
    }

    @Override
    public boolean contains(Object o) {
        Boolean haveObject = false;
        for (E element : elements) {
            if (element == o) {
                haveObject = true;
                break;
            }
        }
        return haveObject;
    }

    @Override
    public Iterator<E> iterator() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object[] toArray() {
        return (Object[])elements;
    }

    @Override
    public <T> T[] toArray(T[] a) {
        return a;
    }

    @Override
    public boolean add(E e) {
        if (size == elements.length) {
            ensureCapa();
        }
        elements[size++] = e;
        return true;
    }

    @Override
    public boolean remove(Object o) {
        Boolean canBeRemoved = contains(o);
        if (canBeRemoved) {
            int itemIndex = indexOf(o);
            if (itemIndex == WRONG_INDEX) {
                canBeRemoved = false;
            } else {
                removeItem(itemIndex);
            }
        }
        return canBeRemoved;
    }

    @Override
    public void clear() {
        elements = (E[]) Array.newInstance(arrayType, DEFAULT_CAPACITY);
    }

    @Override
    public E get(int index) {
        if (index < elements.length) {
            return elements[index];
        } else {
            throw new IndexOutOfBoundsException();
        }
    }

    @Override
    public E set(int index, E element) {
        if (index < elements.length) {
            elements[index] = element;
            return  element;
        } else {
            throw new IndexOutOfBoundsException();
        }
    }

    @Override
    public void add(int index, E element) {
        if (index < elements.length) {
            if (size == elements.length) {
                ensureCapa();
            }     
            for(int i = elements.length - 1; i > index; i--){
                elements[i] = elements[i - 1];
            }
            elements[index] = element;
        } else {
            throw new IndexOutOfBoundsException();
        }
    }

    @Override
    public E remove(int index) {
        removeItem(index);
    }

    @Override
    public int indexOf(Object o) {
        int foundedIndex = -1;
        for (int i = 0; i < elements.length; i++) {
            if (elements[i] == o) {
                foundedIndex = i;
                break;
            }
        }
        return foundedIndex;
    }

    @Override
    public int lastIndexOf(Object o) {
        int foundedIndex = -1;
        for (int i = elements.length - 1; i >= 0 ; i--) {
            if (elements[i] == o) {
                foundedIndex = i;
                break;
            }
        }
        return foundedIndex;
    }

    @Override
    public ListIterator<E> listIterator() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ListIterator<E> listIterator(int index) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<E> subList(int fromIndex, int toIndex) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean containsAll(Collection<?> c) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean addAll(Collection<? extends E> c) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean addAll(int index, Collection<? extends E> c) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean removeAll(Collection<?> c) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean retainAll(Collection<?> c) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
