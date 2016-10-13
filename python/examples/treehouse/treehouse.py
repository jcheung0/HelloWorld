
import sys

def word_count(val):
    word_dict = dict()
    words = val.split()
    for word in words:
        if(word not in word_dict):
            word_dict[word] = 0
        else:
            word_dict[word] += 1
    return word_dict


def stringcases(val):
    upper = val.upper()
    lower = val.lower()
    title = val.title()
    reverse = val[len(val)::-1]
    return (upper,lower,title,reverse)

def combo(iter1,iter2):
    list_of_tuples = []
    for i in range(0,len(iter1)):
        list_of_tuples.append((iter1[i],iter2[i]))
    return list_of_tuples


def nchoices():
    pass
#print( word_count("I am sure this is not right"))

#print(stringcases("hello"))

#print(combo([1,2,3],'abc'))
def main(argv):
    pass


if __name__ == "__main__":
    print("hello")
    main(sys.argv[1:])

