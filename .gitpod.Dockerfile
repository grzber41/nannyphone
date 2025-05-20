FROM gitpod/workspace-full

# Install Flutter
RUN git clone https://github.com/flutter/flutter.git /opt/flutter \
  && echo 'export PATH="/opt/flutter/bin:$PATH"' >> /etc/profile \
  && flutter precache

ENV PATH="/opt/flutter/bin:$PATH"
RUN flutter doctor
