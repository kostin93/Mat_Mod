letters
iris
head(iris)
tail(iris)

iris[iris$Species==c("setosa"),"Sepal.Length"]
mean(iris[iris$Species==c("setosa"),"Sepal.Length"])
summary(factor(iris[iris$Petal.Length>2 & iris$Petal.Length<6,"Species"]))

kvadrat=function(x){
  y=x*x 
  return(y)
}

kvadrat(5)

koren=function(x){
  y=x^0.5
  return(y)
}
koren(25)

raastoy=function(a,b){
  f=length(a:b)
  f1=f-2
  return(f1)
  
}
raastoy(5,8)
koren=function(x){
  if(x>0){
  y=x^0.5
  return(y)
  } 
  else {
    return("число отрицательное")
    }
}
koren(25)

for(i in 1:10){
  print(i)
  
}

factorial=function(x){
  if(x<0){
    return("число отрицательное")
}
else{
  factorial=1
  for(a in 1:x){
    factorial=factorial*a
  }
  return(factorial)
}
}


factorial(-5)
