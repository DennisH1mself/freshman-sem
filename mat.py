#p once a month
#month is 30 days
#360 days/year
#T number of years
# Formula Y = (inter + 1) * X
y = 0
T = int(input("YEARS> "))
inter = float(input("INTEREST> "))
p = int(input("CONTRIBUTION> "))
method = int(input("METHOD> "))

#method 1 is yearly, method 2 is monthly, method 3 is daily

meths = [1,2,3]

#Validation
if method not in meths:
    print(f'METHOD NOT VALID {method}')

if method == 2:
    T = T *12
if method == 3:
    T = T * 360

#Loop
i = 0
for i in range(0,T):
    
    if method == 1:
        x = p * 12 #Added per year
        y = (inter + 1) * x
        i += 1
    
    if method == 2:
        x = y + p
        y = (inter + 1) * x
        i += 1

    if method == 3:
        x = y
        if i % 30 == 0:
            x = y + p
        y = (inter + 1) * x
        i += 1


print(f'OUTPUT {y:.2f}')