from Person import Person
      

    
p = Person()


print Person.addone(3)
print p.add(2)

      
      

def sillycase(val):
    middle = int(round(len(val)/2))
    return val[:middle].lower() + val[middle:].upper()


print(sillycase("treehouse"))
