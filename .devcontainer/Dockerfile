FROM node:lts

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

# Configure apt and install packages
RUN apt-get update \
  && apt-get -y install --no-install-recommends apt-utils dialog 2>&1 \
  #
  # Install git, process tools, lsb-release
  && apt-get install -y wget git openssh-client iproute2 procps lsb-release zsh \
  #
  # Install oh-my-zsh
  && wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh \
  && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
  #
  # Clean up
  && apt-get autoremove -y \
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/* \
  #
  # Set time zone
  && ln -sf /usr/share/zoneinfo/Europe/Zurich /etc/localtime

# Install mermaid js dependencies
RUN apt-get update \
  && apt-get y install chromium

# Switch back to dialog for any ad-hoc use of apt-get
ENV DEBIAN_FRONTEND=dialog
