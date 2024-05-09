# Use the official Python image as the base image
FROM python:3.7

# Set environment variables
ENV PYTHONUNBUFFERED 1
ENV TZ=UTC

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt /app/

# Install dependencies from requirements file
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Django project files into the container
COPY . /app/

# Expose the port that Django runs on
EXPOSE 8000

# Command to run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
