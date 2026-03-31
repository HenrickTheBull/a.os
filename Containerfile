
RUN rm -f /etc/profile.d/ublue-fastfetch.sh /usr/libexec/ublue-fastfetch
RUN sed -i 's/SHELL=\/bin\/bash/SHELL=\/usr\/bin\/zsh/g' /etc/default/useradd