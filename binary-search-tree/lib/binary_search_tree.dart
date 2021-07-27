class BinarySearchTree {
  BinarySearchTree right;
  BinarySearchTree left;
  BinarySearchTree root;
  String data;

  BinarySearchTree(String a) {
    root = this;
    data = a;
  }

  List<String> sortedData() {
    List<String> list = [];
    if (right != null) {
      list.addAll(right.sortedData());
    }
    list.add(data);
    if (left != null) {
      list.addAll(left.sortedData());
    }
    return list;
  }

  void insert(String s) {
    if (int.parse(s) > int.parse(data)) {
      if (right == null) {
        right = BinarySearchTree(s);
      } else {
        right.insert(s);
      }
    } else {
      if (left == null) {
        left = BinarySearchTree(s);
      } else {
        left.insert(s);
      }
    }
  }
  // Put your code here
}
