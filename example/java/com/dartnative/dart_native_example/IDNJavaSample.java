package com.dartnative.dart_native_example;

import com.dartnative.another_package.Node;
import java.util.List;

public interface IDNJavaSample {

    int arg(int a, byte b, short c, long d, float e, double f, char g, boolean h, String i);

    List<Node> insertToList(List<Node> nodeList, Node node);
}
