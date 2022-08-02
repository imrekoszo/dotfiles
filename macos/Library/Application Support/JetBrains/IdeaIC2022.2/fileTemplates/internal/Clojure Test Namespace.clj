(ns $NS_NAME
  (:require
   [clojure.test :refer :all]
#if($TEST_SUBJECT_NS != "")
   [$TEST_SUBJECT_NS :as sut])#else)#end)

