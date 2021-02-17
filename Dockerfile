
FROM opensuse/tumbleweed:latest
RUN zypper -vv ref && \
	zypper dup -y && \
	zypper install -y \
		cargo \
		rust \
		gcc \
		bash

COPY . /usr/src/demo
WORKDIR /usr/src/demo

RUN cargo build --release

CMD ["/usr/src/demo/target/release/jemallocator_build_docker"]


