FROM rust:1
COPY . /app
WORKDIR /app
RUN cargo build --release
RUN chmod ugo+x /app/target/release/hello-world
CMD /app/target/release/hello-world