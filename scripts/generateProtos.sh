echo "Starting to generate protobuf files..."
for f in ./lib/protobufs/*.proto; do
    echo "Processing $f"
    protoc --dart_out=grpc:lib/gen -Ilib/protobufs "$f"
done
rm lib/gen/*.pbjson.dart
echo "Generation complete."