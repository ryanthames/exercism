class Twofer {
  String twofer(String name) {
    return "One for " + resolveName(name) + ", one for me.";
  }

  String resolveName(String name) {
    if (name == null || "".equals(name)) {
      return "you";
    } else {
      return name;
    }
  }
}