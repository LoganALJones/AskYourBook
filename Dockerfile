FROM python:3.9

# Set the working directory
WORKDIR /AskYourBook

# Copy the requirements file
COPY requirements.txt .

# Install the dependencies
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . .

# Expose the port for the application
EXPOSE 8000

# Run the command to start the application
CMD python manage.py runserver 0.0.0.0:8000


