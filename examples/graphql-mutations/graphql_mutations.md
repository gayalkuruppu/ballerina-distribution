# Mutations

A remote function inside a GraphQL service represents a field in the root `Mutation` object type. Therefore, if a remote function is present inside the Ballerina GraphQL service, the auto-generated schema will have a `Mutation` type. Each remote function in the service will be added as a field of the `Mutation` type. The field name will be the remote function name and the field type will be the return type of the remote function.

For more information on the underlying package, see the [GraphQL package](https://lib.ballerina.io/ballerina/graphql/latest/).

::: code graphql_mutations.bal :::

Run the service by executing the following command.

::: out graphql_mutations.server.out :::

Invoke the service as follows.

::: out graphql_mutations.client.out :::
