// This file allocates large quantities of memory
// to test how k8s enforces container resource limits
package main

import "fmt"


func main() {
	var veryLargeArray [4*1024*1024*1024]byte

	// do some fake work so that our job isn't instantly killed
	var result byte
	attemptCount := 25
	for attempt :=0; attempt < attemptCount; attempt++ {
		for i := 0; i < len(veryLargeArray); i++ {
			result = result & veryLargeArray[i]
		}
	}
	fmt.Println(result)
}
