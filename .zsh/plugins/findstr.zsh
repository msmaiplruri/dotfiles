function findstr() {
    find "$1" -type f -print0 | xargs -0 grep -n "$2"
}
