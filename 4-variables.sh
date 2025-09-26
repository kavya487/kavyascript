# #!/bin/bash

# source_dir=$1

# if  [ $# -lt 1 ]
# then
#     echo "usage: $0 <source-dir>"
#     exit 1
# fi

# if [ ! -d "$source_dir" ]
# then
#     echo "Please provde valid path of dir"
#     exit 1
# fi

large_file=$(du -sh \*| sort -rh | head -n 1)

echo "largest file is large_file"