
export SVN_EDITOR=vim
alias docker-regenerate=". deploy_settings/local_configuration_env && docker-compose --develop -f docker-compose.yml -f docker-compose-develop.yml up --build -d"
alias migration-prepare="python3 manage.py makemigrations --settings=hoba_env.settings.local2docker"
alias migration-do="python3 manage.py migrate --settings=hoba_env.settings.local2docker"
alias docker-clean="docker ps --filter \"status=exited\" | awk '{print \$1}' | xargs --no-run-if-empty docker rm"
alias docker-stop="docker stop $(docker ps -aq)"
alias docker-rm="docker rm -f $(docker ps -aq)"

