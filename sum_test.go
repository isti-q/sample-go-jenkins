package main

import "testing"

func TestSum(t *testing.T) {
	actual := Sum(1, 2)
	expect := 3

	if actual != expect {
		t.Errorf("Sum(1,2): actual %v, expected %v", actual, expect)
	}

}
