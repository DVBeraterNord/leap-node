FROM opensuse/leap:15

RUN zypper install -y -t pattern devel_basis
RUN zypper install -y nodejs16 npm zip
RUN npm i -g corepack

RUN corepack enable

ENTRYPOINT /bin/bash
