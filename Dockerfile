FROM ubuntu:latest

# Install development tools in one layer.
RUN apt update \
    && apt install -y --no-install-recommends \
    ca-certificates \
    git \
    curl \
    wget \
    nano \
    net-tools \
    python3 \
    python3-pip \
    python3-venv \
    python-is-python3 \
    build-essential \
    sudo \
    zsh \
    bats\
    shellcheck \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*

ARG USERNAME=user
ARG USER_UID=1001
ARG USER_GID=1001

# Create the user and grant passwordless sudo.
RUN groupadd --gid "${USER_GID}" "${USERNAME}" \
    && useradd --create-home \
    --shell /bin/zsh \
    --uid "${USER_UID}" \
    --gid "${USER_GID}" \
    "${USERNAME}" \
    && printf '%s ALL=(ALL) NOPASSWD: ALL\n' "${USERNAME}" \
    > /etc/sudoers.d/dev-user \
    && chmod 0440 /etc/sudoers.d/dev-user \
    && visudo -cf /etc/sudoers.d/dev-user

ENV USER=${USERNAME}
ENV HOME=/home/${USERNAME}

USER ${USERNAME}
WORKDIR ${HOME}

# Ubuntu's default Python is 3, but we still need to create a virtual environment for the user.
RUN python3 -m venv "${HOME}/.venv"

# Make the virtual environment's python and pip the defaults.
ENV PATH="${HOME}/.venv/bin:${PATH}"
RUN pip install --upgrade pip
# install python packages from requirements.txt
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Configure Zsh as the user who will run it.
# -x skips package installation; dependencies are installed above.
RUN curl -fsSL \
    https://github.com/deluan/zsh-in-docker/releases/download/v1.1.5/zsh-in-docker.sh \
    -o /tmp/zsh-in-docker.sh \
    && sh /tmp/zsh-in-docker.sh \
    -x \
    -t bira \
    -p git \
    -p ssh-agent \
    -p https://github.com/zsh-users/zsh-autosuggestions \
    -p https://github.com/zsh-users/zsh-completions \
    && rm /tmp/zsh-in-docker.sh

CMD ["zsh"]