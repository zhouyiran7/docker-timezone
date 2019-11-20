# Build the image
docker build -f Dockerfile -t docker-timezone-sample:latest .

# Print local date to compare
date

# Pass the "TZ" environment variable values to container
docker run --rm -e TZ=Asia/Shanghai -it docker-timezone-sample:latest date

# It can show like `Tue Nov 19 19:36:10 CST 2019`