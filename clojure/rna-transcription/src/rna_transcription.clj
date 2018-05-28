(ns rna-transcription
  (:require [clojure.string :as str]))

(def dna->rna {
               "G" "C"
               "C" "G"
               "T" "A"
               "A" "U"
               })

(defn validate-code
  [s]
  (let [r (get dna->rna s)]
    (if (nil? r)
      (throw (AssertionError.))
      r)))

(defn to-rna [dna]
  (str/join (map validate-code (str/split dna #""))))
