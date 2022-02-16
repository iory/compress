function compress -d "Compress target directory"
    set --local extension (echo $argv[1] | awk -F. '{print $NF}')
    set --local filename (basename $argv[1] .$extension)
    tar zcvf $filename.tar.gz $argv[1]
end
