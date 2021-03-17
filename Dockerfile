# Dockerfile

# The FROM keyword specify the base image
FROM python:3

# 2. set a working directory fot the app
WORKDIR /usr/src/app

# 3. copy all the files to the container
COPY . .

# 4. install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. specify the port number that must be exposed
EXPOSE 5555

# 6. write the command for running the application
CMD ["python", "./app.py"]