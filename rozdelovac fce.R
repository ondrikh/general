rozdelovac = function (data, seed=1989, ratio = 0.8, type = "train"){
  set.seed(seed)
  if (type == "train") {temp = data
  temp$split = 0
  temp$split = unlist(lapply(temp$split, function(X) runif(1,0,1)))
  output = temp[temp$split<=0.8,1:ncol(data)]
  }
  else if (type == "test") {temp = data
  temp$split = 0
  temp$split = unlist(lapply(temp$split, function(X) runif(1,0,1)))
  output = temp[temp$split>0.8,1:ncol(data)]}
  
  return (output)
}
