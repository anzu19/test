var a = ["ayu","yuiha","mako","miki","yumiko","ayana","mayuko","seina","kouichi","aiko","ayano"]
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
