#list out
#python print_out .txt
import sys
for i in range(1,100):
    print str(i)
    try:
        file1=open(str(i)+sys.argv[1],'r')
        content=file1.read()
        print repr(content)
        file1.close()
    except:
        break

