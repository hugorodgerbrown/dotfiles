echo Setting up bash aliases
alias clear_pyc="find . -type f -name "*.pyc" -exec rm -f {} \;"
alias ll="ls -al"
alias dc="docker-compose"
alias manage="docker-compose exec django python manage.py"
alias heroky="heroku run python manage.py"
alias run-tests="docker-compose run --rm --entrypoint='pytest --ds=yunojuno.settings.test_settings -s' django"
alias run-sql="docker-compose run --rm --no-deps postgres psql -h postgres -U postgres -c "
alias pip-make="docker-compose run --rm --workdir='/app/requirements' --no-deps --entrypoint='make' django"
alias frontend="docker-compose -f docker-compose-frontend.yml run --rm frontend"
# pyenv virtualenv shortcuts
alias virtualenv="pyenv virtualenv"
alias activate="pyenv activate"
alias deactivate="pyenv deactivate"
alias do-pylint="$HOME/.pyenv/shims/pylint --msg-template='{line}:{column}:{msg_id}: {msg} ({symbol})' --module-rgx=.* --reports=n --persistent=n"
# remove all <none> (unlabelled) docker images
alias docker-rmi="docker images | grep '<none>' | awk '{print $4}' | xargs docker rmi"
