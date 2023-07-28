FROM python:2-alpine

# Install a compatible version of PyInstaller for Python 2.7
RUN pip install pyinstaller==3.6

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app
