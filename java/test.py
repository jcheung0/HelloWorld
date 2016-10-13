

print("hello world")

f = open( 'out.txt', 'w')
print >> f, 'Filename:'  # or f.write( '...\n')
f.close()
