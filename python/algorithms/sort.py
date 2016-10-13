


def print_arr(arr):
    print " ".join(str(val) for val in arr)



def bubble_sort(arr):
    for i in range(0,len(arr)):
        for j in range(0, len(arr)-1-i):
            if(arr[j] > arr[j+1]):
                arr[j], arr[j+1] = arr[j+1], arr[j]
    
    print_arr(arr)
    return


def insertion_sort(arr):
    
    for i in range(0,len(arr)):
        pos = i
        while pos > 0 and arr[pos] > arr[pos - 1]:
            arr[pos],arr[pos-1] = arr[pos-1], arr[pos]
            pos -= 1
        print_arr(arr)
    return


def quick_sort(arr):
    if len(arr) > 1:
        pivot_index = len(arr)/2


insertion_sort([23,23,11,23,11,23])
bubble_sort([ 23,17,28,40,20,10])


