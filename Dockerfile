FROM python:3.11-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install a compatible version of PyInstaller for Python 3.11
RUN pip install pyinstaller==5.13.0

# Change the ownership of the working directory to the non-root user (1000:1000)
RUN chown -R 1000:1000 /app

# Switch to the non-root user
USER 1000:1000
