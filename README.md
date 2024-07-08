# maaad

## Description

This is a minimalistic setup for running Aria2 with AriaNg in an Alpine Docker container.

## Deployment

### Using docker-compose

Use `build: https://github.com/simonmysun/minimalism-aria2-ariang-alpine-docker.git` in your `docker-compose.yml` file.

__Or__:

1. Clone the repository: `git clone https://github.com/simonmysun/minimalism-aria2-ariang-alpine-docker.git`
2. Navigate to the project directory: `cd minimalism-aria2-ariang-alpine-docker`

Then:

1. Modify the `docker-compose.yml` and `config/aria2.conf` to your liking.
2. Run the Docker container: `docker-compose up -d`

### without docker-compose

Run `docker build -t https://github.com/simonmysun/minimalism-aria2-ariang-alpine-docker.git`

__Or__ clone and build the image manually:

1. Clone the repository: `git clone https://github.com/simonmysun/minimalism-aria2-ariang-alpine-docker.git`
2. Navigate to the project directory: `cd minimalism-aria2-ariang-alpine-docker`
3. Build the Docker image: `docker build -t minimalism-aria2-ariang-alpine-docker .`

Then:

1. Modify `config/aria2.conf` to your liking.
2. Run the Docker container: `docker run -d -p 6800:6800 -p 6880:6880 -v /path-to-downloads:/downloads -v /path-to-config:/aria2/config minimalism-aria2-ariang-alpine-docker`

## Usage

1. Access the AriaNg web interface by opening `http://localhost:8080` in your browser and configure your RPC token.
2. Use the web interface to add and manage your downloads.
3. Monitor the download progress and status in the AriaNg interface.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
