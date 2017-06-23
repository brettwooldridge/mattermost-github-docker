FROM ubuntu:xenial

# Mattermost-github-docker instructions start -----------------

ENV PATH="/mattermost-github/bin:${PATH}"

RUN apt-get update && apt-get -y --no-install-recommends install netcat python python-pip python-setuptools git

RUN pip install --upgrade pip setuptools

RUN git clone https://github.com/softdevteam/mattermost-github-integration /mattermost-github

WORKDIR /mattermost-github

RUN pip install -r requirements.txt

COPY server.py server.py

EXPOSE 5000

ENTRYPOINT ["python", "server.py"]

# Mattermost-github-docker instructions end -----------------

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

