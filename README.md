#INSTRUCTIONS

git clone https://github.com/fuchicar/dockerharvey.git

cd dockerharvey

docker build -t harvey .

docker run -ti harvey start

##To run in background

docker run -d harvey start

##To update harvey

docker run -ti harvey update


#NOTE:

It doesn't work under Docker for macOS, I do not why
