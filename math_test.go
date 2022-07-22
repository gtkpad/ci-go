package main

import "testing"

func TestSoma(t *testing.T) {
	total := Soma(15, 15)
	if total != 20 {
		t.Errorf("Soma de 15 e 15 deve ser 20, mas foi %d", total)
	}
}