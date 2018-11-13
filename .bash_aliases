echo Setting up bash aliases
alias clear_pyc="find . -type f -name "*.pyc" -exec rm -f {} \;"
alias ll="ls -al"
alias dc="docker-compose"
alias manage="docker-compose exec django python3 manage.py"
alias heroky="heroku run python manage.py"
alias run-sql="docker-compose run --rm --no-deps postgres psql -h postgres -U postgres -c "
alias do-pylint="$HOME/.pyenv/shims/pylint --msg-template='{line}:{column}:{msg_id}: {msg} ({symbol})' --module-rgx=.* --reports=n --persistent=n"
# remove all <none> (unlabelled) docker images
alias docker-rmi="docker images | grep '<none>' | awk '{print $4}' | xargs docker rmi"
