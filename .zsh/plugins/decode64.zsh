function decode64 {
    echo $1 | base64 -D; echo
}
