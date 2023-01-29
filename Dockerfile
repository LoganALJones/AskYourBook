FROM python:3.9
ENV PYTHONUNBUFFERED 1

# Set the working directory
WORKDIR /app

# Copy the requirements file to workdir
COPY requirements.txt /app/requirements.txt

# Install the dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application files into workdir
COPY . /app

# Run the command to start the application
CMD python manage.py runserver 0.0.0.0:8000

