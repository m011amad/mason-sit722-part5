# Base image
FROM python:3.12-slim

ENV DATABASE_URL=${DATABASE_URL}

# Set working directory
WORKDIR /app


COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY app /app/app

# Expose the port that the app will run on
EXPOSE 8000

# Command to run the application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
