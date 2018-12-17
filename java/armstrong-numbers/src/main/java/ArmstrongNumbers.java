import java.util.ArrayList;
import java.util.List;

class ArmstrongNumbers {

  boolean isArmstrongNumber(int numberToCheck) {
    List<Integer> digitList = convertToArrayOfDigits(numberToCheck);
    int power = digitList.size();

    int result = digitList
        .stream()
        .reduce(0, (sum, i) ->  sum + (int) Math.pow(i, power));

    return result == numberToCheck;
  }

  private List<Integer> convertToArrayOfDigits(int num) {
    List<Integer> digitList = new ArrayList<>();

    do {
      digitList.add(num % 10);
      num /= 10;
    } while(num > 0);

    return digitList;
  }
}
