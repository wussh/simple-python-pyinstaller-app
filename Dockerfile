FROM wushie/my_pyinstaller_image:5

# Set the working directory to /app
WORKDIR /app

# Change the ownership of the /app directory to allow the default user to write to it
USER root
RUN chown -R 1000:1000 /app

# Switch back to the non-root user
USER 1000
