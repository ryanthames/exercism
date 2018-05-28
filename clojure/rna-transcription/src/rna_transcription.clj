(ns rna-transcription
  (:require [clojure.string :as str]))

(defn translate-code
  [s]
  (case s
    "G" "C"
    "C" "G"
    "T" "A"
    "A" "U"
    (throw (AssertionError.))))

(defn to-rna [dna]
  (apply str (map translate-code (str/split dna #""))))
