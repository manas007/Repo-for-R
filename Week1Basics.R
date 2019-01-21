sex <- c("male", "female", "male", "female", "male", "male")

# 1. Factors are stored as integers, and have labels associated with these unique integers.
sex <- factor(sex) # male will be stored as int 2 , and female will be stored as int 1 , because f comes before m alphabetically.

# 2. the int 1 and 2 above are stored in the background as ints, but has char labels associated to them called levels.
# levels are "male" and "female" :)
levels(sex)

# 3. checking the number of levels
nlevels(sex)

# 4. if you want your levels to be ordered according to you, instead of as R does it in 1., you cab specify it 
fever <- c("medium", "low", "high", "high", "medium")
fever <- factor(fever, levels = c("low", "medium", "high"))
levels(fever)

#5. to see the minimum level, you do this, but it wont work right now because we have given the levels but not mentioned 
# to R to treat it as ordered.
min(fever)

#6. to fix 5. , you do the below
fever <- factor(fever, levels = c("low", "medium", "high"), ordered = TRUE)
min(fever)

#7. Vectors are the most basic R data objects and there are six types of atomic vectors.
#They are logical, integer, double, complex, character and raw.
#A vector is a sequence of data elements of the same basic type
vec <- c(1, 2, 3)

#8. Get the length of the vector
length(vec)

#9. A list is a generic vector containing other objects.
el1 <- c(1,2)
el2 <- c("hello", "hi")
el3 <- list(el1, el2) 

#10. Length of list is different. it will tell you number of objects in the list, not the total number of elemnts in the list
# Below returns two, because we el3 has el1 and el2
length(el3)

#11. lets see why 10 behaves the way it does. lets create another list mylist below.
# Now the list "mylist" contains three things, named "a," "b," and "c." Their lengths are different: a has length 5, b has length 1, and c is a function, so it doesn't really have a length. 
# (Technically, it has length 1, just because somebody decided that the "length" of a function should be one.) 
# To extract an item from a list, you can use the single brackets, but that will give you back a list. 
mylist <- list (a = 1:5, b = "Hi There", c = function(x) x * sin(x))
test <- mylist[1] # you are only extracting the first element, which will be returned as a list always !
class(test)
mylist[1] + 1 # wont work, you are adding list with int 1.
mylist[[1]] + 1 # this will work :)
print(mylist[[1]][1]) # ask prof ben. Why this works but mylist[1][1] does not . I am trying to get the first member from the element a in the list mylist.
print(mylist[1][1])

#12.Matrices
#the first argument is a vector, then number of rows, then number of cols. By row is false by defatult which means data will be filled by columns , not by rows.
mymatrix1 <- matrix(1:16, nrow = 4, ncol = 4, byrow = FALSE)
mymatrix2<- matrix(1, nrow = 4, ncol = 4, byrow = FALSE)
print(mymatrix1)

#13.matrix multiplication can be both element-wise or the true matric multiplication.
matrixmul = mymatrix1 * mymatrix2 # elemnt wise
print(matrixmul)

matrixmul = mymatrix1 %*% mymatrix2 # actualt maths 
print(matrixmul)

# 14. Can assign NA and NULL to a variable, but can only assign NA as an entry in a vector or matrix
NAmatrix <- matrix(NA, nrow = 2, ncol = 2) 
print(NAmatrix)

print(NULL > 0)

#15. Generating sequnces is easy in R. use the ":" or the seq() 
print(1:10)

#16. print a sequence of 20 numbers between 1 and 10.
seq(1, 10, length.out = 20)

#17. increment the sequence vt 0.5 
seq(1, 10, by = 0.5)

#18. creating functions
addThem = function (x, y) return (x + y)
addThem(2, 3)

# #19. dim() return dimensions of a multidimensional object
# nrow() number of rows of a multidimensional object
# ncol() number of columns of a multidimensional object
# length() length a vector or list
# head() display first n rows
# tail() display last n rows
# colnames() get names of columns
# rownames() get names of columns

apply(Seatbeltsdata, 1, sum, na.rm = TRUE)