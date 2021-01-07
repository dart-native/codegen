class ListOpNode {
  ListOpNode pre;

  ListOpNode enter(ListOpNode enterWhich) {
    pre = enterWhich;
    return this;
  }

  ListOpNode exit() {
    return pre;
  }
}