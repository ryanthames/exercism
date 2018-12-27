class IsogramChecker {
  boolean isIsogram(String phrase) {
    phrase = phrase.replaceAll("-", "").replaceAll(" ", "").toUpperCase();
    return phrase.chars().distinct().count() == phrase.length();
  }
}
