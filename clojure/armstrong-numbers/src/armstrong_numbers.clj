(ns armstrong-numbers)

(defn explode-to-digits [n]
  (map #(Character/digit % 10) (str n)))

(defn armstrong? [n]
  (let [digits (explode-to-digits n)
        digit-count (count digits)]
    (= n (reduce #(+ %1 (reduce * (repeat digit-count %2))) 0 digits))))
