FROM swiftlang/swift:nightly-5.7-focal as build
WORKDIR /build
COPY . .
RUN swift build --configuration release -Xswiftc -static-executable

FROM ubuntu:focal as runtime
WORKDIR /runtime
COPY --from=build /build/.build ./
CMD release/FlyLogsTest >> /tmp/output.txt
