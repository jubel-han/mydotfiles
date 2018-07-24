# the collection of customed functions

# the shortcut for generating the random string particually for passwords
# examples:
# get_random 'a-zA-Z0-9' 64
# the default pattern is 'a-zA-Z0-9', and then length is 64

function get_random(){
  pattern=$1
  length=$2
  [ -z $pattern ] && pattern='a-zA-Z0-9'
  [ -z $length ] && length=64
  head -c 4096 /dev/urandom | LC_CTYPE=C tr -cd $pattern | head -c $length
}
