package WiredL1Cache;

import GetPut::*;

typedef struct {
    VAddr_t address;
    enum {
        Read,
        Prefetch
    } op;
    RobId robid;
    LSQId lsqid;
} CPURequest;

typedef struct {
    Bool valid;
    Data_t payload;
    Excp_t excp;
} CPUResponse;

typedef struct {
    VAddr_t address;
    Bool is_fetch;
} MMURequest;

typedef struct {
    Bool readable;
    Bool writeable;
    Bool executable;
} MMUPriv;

typedef struct {
    PAddr_t address;
    Bool valid;
    MMUPriv priv;
} MMUResponse;

typedef struct {
    PAddr_t address;
    enum {
        Refill,
        Prefetch
    } op;
    LSQId lsqid;
} ManagerRequest;

typedef struct {
} ManagerResponse;

typedef Server#(CPURequest, CPUResponse) L1PipeServer;
typedef Client#(MMURequest, MMUResponse) L1MMUClient;
typedef Client#(ManagerRequest, ManagerResponse) L1ManagerClient;

module mkWiredL1Cache(
);



endmodule

endpackage