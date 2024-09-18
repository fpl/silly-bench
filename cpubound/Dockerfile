# Use a light Alpine image
FROM alpine:latest

# Create a work directory
WORKDIR /usr/myapp

# Copy the Rust exe into the container
COPY code_rs .
RUN cp code_rs /usr/local/bin/cpu_bound_rust

# Install needed libs to run Rust on Alpine
RUN apk add libc6-compat
RUN apk add libgcc


# copy the gcc exe into the container
copy code_gcc .
run cp code_gcc /usr/local/bin/cpu_bound_gcc

# copy the clang exe into the container
copy code_clang .
run cp code_clang /usr/local/bin/cpu_bound_clang


# Prepare the benchmark
RUN echo "echo running gcc" > benchmark.sh
RUN echo "time /usr/local/bin/cpu_bound_gcc" >> benchmark.sh
RUN echo "echo running rust" >> benchmark.sh
RUN echo "time /usr/local/bin/cpu_bound_rust" >> benchmark.sh
RUN echo "echo running clang" >> benchmark.sh
RUN echo "time /usr/local/bin/cpu_bound_clang" >> benchmark.sh

RUN chmod +x benchmark.sh

# Command to run the compiled Rust program
CMD ["sh","/usr/myapp/benchmark.sh"]
