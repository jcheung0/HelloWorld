

def combine(abs_path, paths):
    cds = paths.split("/")
    pwd = abs_path.split("/")

    for cd in cds: 
        if(len(pwd) > 1 and cd == ".."):
            pwd.pop(len(pwd) - 1)
        elif(cd == "."):
            pass
        else:
            pwd.append(cd)

    return "/".join(pwd)


print(combine("test/foo/test", "hello/jlfk/magic/../"))
