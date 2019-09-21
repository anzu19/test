var a = [5,7,10,1,4,8,6,3,2,9]
print ("ソート前=",a)
var step = Int(a.count/2)
while step > 0 {
  for i in step..<a.count {
    let tmp = a[i]
    var j = i
    while(j >= step){
      if a[j-step] > tmp{
        a[j] = a[j-step]
      } else{
        break
      }
      j -= step
    }
    a[j] = tmp
  }
  step = Int(step/2)
}
print ("ソート後=",a)
