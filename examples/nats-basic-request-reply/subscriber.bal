import ballerina/log;
import ballerinax/nats;

// Initializes the NATS listener.
listener nats:Listener subscription = new (nats:DEFAULT_URL);

// Binds the consumer to listen to the messages published to the 'demo.bbe' subject.
service "demo.bbe" on subscription {
    remote function onRequest(nats:Message message) returns string|error {
        // Logs the incoming message.
        string messageContent = check string:fromBytes(message.content);
        log:printInfo("Received message: " + messageContent);
        // Sends the reply message to the `replyTo` subject of the received message.
        return "Hello Back!";
    }
}
