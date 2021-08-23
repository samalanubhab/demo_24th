# Using official python image
FROM python:3.7

# Setting the working directory of container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

#expose container port
EXPOSE 8501

# installing python into our environment
RUN pip install -r requirements.txt

# Run app file when the container launches
CMD ["gunicorn"  , "-b", "0.0.0.0:5000", "main:app"]