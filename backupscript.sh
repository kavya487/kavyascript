# archive the logs 

# create soirce dir 
# dest dir 
# days


source_dir=$1
dest_dir=$2
days=${3: -14}

if [ $# -lt 2 ]
then
    echo "please provide sh script-name <source-dir> <dest-dir> <optional><days>"
        exit 1
fi

log_folder="/home/ec2-user/shellscript-logs"
log_file=$(echo $0 | cut -d "." -f1)
timestamp=$(date +%Y-%m-%d)
log_file_name="$log_folder/$log_file-$timestamp.log"

mkdir -p /home/ec2-user/shellscript-logs
if [  ! -d  $source_dir ]
then
    echo "please provide valid source path"
    exit 1
fi

if [ ! -d  $dest_dir ]
then
    echo "please provide valid dest path"
    exit 1
fi

files=$(find $source_dir - name "*.log" +mtime $days)

if [ -n $files ]
then
    echo "files are $files"
else
    echo "no files found older than $days"
fi
