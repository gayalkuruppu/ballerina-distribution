# Server streaming RPC

The gRPC Server Connector is used to expose gRPC services over HTTP/2. In a gRPC server streaming scenario, a client sends a request to the server and gets a stream to read the messages until all the messages are read.

>**Info:** For more information on the underlying module, see the [`grpc` module](https://lib.ballerina.io/ballerina/grpc/latest/).

## Generate the service definition

1. Create new Protocol Buffers definition file `grpc_server_streaming.proto` and add service definition.

    ::: code grpc_server_streaming.proto :::

2. Run the command below in the Ballerina tools distribution for stub generation.

   ::: out grpc_server_streaming.out :::

Once you run the command, the `grpc_server_streaming_pb.bal` file is generated inside the stubs directory.

>**Info:** For more information on how to use the Ballerina Protocol Buffers tool, see the [Proto To Ballerina](https://ballerina.io/learn/by-example/proto-to-ballerina.html) example.

## Implement and run the service

1. Create a Ballerina package.

2. Copy the generated `grpc_server_streaming_pb.bal` stub file to the package. For example, if you create a package named `service`, copy the stub file to the `service` package.

3. Create a new `grpc_server_streaming.bal` Ballerina file inside the `service` package and add the service implementation.

   ::: code grpc_server_streaming_service.bal :::

4. Execute the commands below to build and run the `service` package.

   ::: out grpc_server_streaming_service.out :::

## Implement and run the client

1. Create a Ballerina package.

2. Copy the generated `grpc_server_streaming_pb.bal` stub file to the package. For example, if you create a package named `client`, copy the stub file to the `client` package.

3. Create a new `grpc_server_streaming_client.bal` Ballerina file inside the `client` package and add the client implementation.

   ::: code grpc_server_streaming_service_client.bal :::

4. Execute the commands below to build and run the `client` package.

   ::: out grpc_server_streaming_service_client.out :::