I tried both iOS 9.x and iOS 8.x but always encounter this problem

⚠️ [CoreStore: Error] DataStack.swift:279 addStorageAndWait
  ↪︎ Failed to add 'CoreStore.SQLiteStore' to the stack.
    (CoreStore.CoreStoreError) .InternalError (
    ._domain = "com.corestore.error";
    ._code = 4;
    .NSError = (
        .domain = "NSCocoaErrorDomain";
        .code = 134100;
        .userInfo = 2 key-value(s) [
            metadata = {
                NSPersistenceFrameworkVersion = 519;
                NSStoreModelVersionHashes =     {
                    Person = <544bdb3f f98a282c 25e330bc 09ddc378 9f7c0e58 8398b647 087395fe 3439653f>;
                };
                NSStoreModelVersionHashesVersion = 3;
                NSStoreModelVersionIdentifiers =     (
                    ""
                );
                NSStoreType = SQLite;
                NSStoreUUID = "99301844-C0FD-44B0-8927-4B18F2C3AFC3";
                "_NSAutoVacuumLevel" = 2;
            };
            reason = The model used to open the store is incompatible with the one used to create the store;
        ];
    );
)
