

function combin(abs_path, path){
    cds = path.split("/");
    pwd = abs_path.split("/");

    for(cd in cds){
        if(pwd.length > 1 && cds[cd] == ".."){
            pwd.pop();
        }else if(cds[cd]== "."){
            continue;
        }else{
            pwd.push(cds[cd]);
        }
    }
    
    return pwd.join("/");

}

console.log(combin("test/sdfs/test", "ete/setst/../."));
