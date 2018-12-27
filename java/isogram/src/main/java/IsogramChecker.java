import java.util.ArrayList;
import java.util.List;

class IsogramChecker {
  boolean isIsogram(String phrase) {
    List<Character> charList = new ArrayList<>();

    for (int i = 0; i < phrase.length(); i++) {
      char c = phrase.toUpperCase().charAt(i);

      if (' ' != c && '-' != c) {
        if (charList.contains(c)) {
          return false;
        } else {
          charList.add(c);
        }
      }
    }

    return true;
  }
}
