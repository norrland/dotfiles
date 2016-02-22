function getinstanceid {
    if [[ -z $1 ]]; then
        echo "Need something to search for!"
        return 1
    fi
    aws ec2 describe-instances --filters "Name=tag:Name,Values=$1" | \
      jq '.Reservations[].Instances[] | {id:.InstanceId,ip:.PrivateIpAddress} | "\(.id) \(.ip)"'
    return $?
}
function getsubnetinfo {
    if [[ -z $1 ]]; then
        echo "Need something to search for!"
        return 1
    fi
    aws ec2 describe-subnets --filters "Name=tag:Name,Values=$1" | \
      jq '.Subnets[] | {id:.SubnetId,ip:.CidrBlock,name:.Tags[].Key,nameval:.Tags[].Value} | "\(.name) \(.nameval) \(.id) \(.ip)"'
    return $?
}
