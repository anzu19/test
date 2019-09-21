var a = [10,3,1,4,2]
for i in 0..<(a.count - 1) {
  for j in ((i+1)...(a.count - 1)).reverse() {
   if a[j] < a[j - 1] {
    var tmp = a[j]
    a[j] = a[j-1]
    a[j-1] = tmp
   }
  }
}
print("ソート後=",a)
