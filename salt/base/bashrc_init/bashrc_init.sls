bashrc-init:
  file.append:
    - name: /root/.bashrc
    - text:
      - export HISTTIMEFORMAT="%F %T "
      - export PROMPT_COMMAND='{ msg=$(history 1|{ read x y;echo $y; } );logger "[euid=$(whoami)]":$(who am i):[`pwd`]"$msg";}'
