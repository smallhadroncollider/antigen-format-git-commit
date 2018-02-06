format-git-commit() {
    if [ -z "$1" ]; then
        display_error "Description required"
        return
    fi

    printf "Type: "
    select opt in "feat" "fix" "docs" "style" "refactor" "test" "chore";
    do
        printf "Scope: "
        read scope
        git commit -m "$opt ($scope): $1"
        return
    done
}
