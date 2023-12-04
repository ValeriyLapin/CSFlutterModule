echo "Starting to generate protobuf files..."
for f in ./lib/data_transfer/protobufs/*.proto; do
    echo "Processing $f"
    protoc --dart_out=grpc:lib/gen -Ilib/data_transfer/protobufs "$f"
done
rm lib/gen/*.pbjson.dart
echo "Generation complete."