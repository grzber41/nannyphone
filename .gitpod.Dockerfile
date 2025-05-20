FROM gitpod/workspace-full

USER gitpod

# Install Flutter
RUN git clone https://github.com/flutter/flutter.git /home/gitpod/flutter \
  && echo 'export PATH="$PATH:/home/gitpod/flutter/bin"' >> /home/gitpod/.bashrc \
  && /home/gitpod/flutter/bin/flutter precache

ENV PATH="$PATH:/home/gitpod/flutter/bin"
