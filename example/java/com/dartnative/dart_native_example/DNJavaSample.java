package com.dartnative.dart_native_example;

import com.dartnative.another_package.Node;
import java.util.List;

// all extends Object!
public class DNJavaSample implements IDNJavaSample {

    public int argA, argB;

    public Node argC;

    protected int argD;

    private int argE;

    @Override
    public int printA(int a, long b, String c) {
        return a;
    }

    @Override
    public List<Node> insertToList(List<Node> nodeList, Node node) {
        nodeList.add(node);
        return nodeList;
    }
}