#!bin/bash

# websites array
websites=('https://google.com' 'https://facebook.com' 'https://twitter.com' 'https://twitterrrr.com');

# log file name
logfile="website_status.log"

# clear the log file before usage
> "$logfile"

# move throug array of websites and check the status
for website in "${websites[@]}"; do
    # check the status of the website response using curl and write the result to the log file
    if curl -s -L --head --request GET -w "${http_code}\n" "$website" | grep "200"  > /dev/null
    then
        echo "$website is UP" >> $logfile
    else
        echo "$website is DOWN" >> $logfile
    fi
done

# display the result answer
echo "Results are written to the $logfile"
