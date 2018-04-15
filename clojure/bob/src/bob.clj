(ns bob
  (:require [clojure.string :as s]))

(defn response-for [statement]
  (cond
    (s/blank? statement) "Fine. Be that way!"
    (and (re-find #"[a-zA-Z]" statement) (= (s/upper-case statement) statement)) "Whoa, chill out!"
    (s/ends-with? statement "?") "Sure."
    :else "Whatever."))

