###### Class gateway.v1.UniversalRequestOuterClass (gateway.v1.UniversalRequestOuterClass)
.class public final Lgateway/v1/UniversalRequestOuterClass;
.super Ljava/lang/Object;
.source "UniversalRequestOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;,
        Lgateway/v1/UniversalRequestOuterClass$b;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 1

    return-void
.end method

###### Class gateway.v1.UniversalRequestOuterClass.UniversalRequest (gateway.v1.UniversalRequestOuterClass$UniversalRequest)
.class public final Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UniversalRequestOuterClass.java"

# interfaces
.implements Lgateway/v1/UniversalRequestOuterClass$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UniversalRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;,
        Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;,
        Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;,
        Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;,
        Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;",
        ">;",
        "Lgateway/v1/UniversalRequestOuterClass$b;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

.field private static volatile PARSER:Lcom/google/protobuf/g1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x2

.field public static final SHARED_DATA_FIELD_NUMBER:I = 0x1


# instance fields
.field private payload_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

.field private sharedData_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-direct {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;-><init>()V

    sput-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    const-class v1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$5600()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .registers 1

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object v0
.end method

.method static synthetic access$5700(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->setSharedData(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V

    return-void
.end method

.method static synthetic access$5800(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->mergeSharedData(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V

    return-void
.end method

.method static synthetic access$5900(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->clearSharedData()V

    return-void
.end method

.method static synthetic access$6000(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->setPayload(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V

    return-void
.end method

.method static synthetic access$6100(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->mergePayload(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V

    return-void
.end method

.method static synthetic access$6200(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->clearPayload()V

    return-void
.end method

.method private clearPayload()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->payload_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-void
.end method

.method private clearSharedData()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->sharedData_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .registers 1

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object v0
.end method

.method private mergePayload(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->payload_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->getDefaultInstance()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->payload_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->newBuilder(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->payload_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->payload_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    :goto_24
    return-void
.end method

.method private mergeSharedData(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->sharedData_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->getDefaultInstance()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->sharedData_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-static {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->newBuilder(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->sharedData_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->sharedData_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    :goto_24
    return-void
.end method

.method public static newBuilder()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;
    .registers 1

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;
    .registers 2

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/g1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/g1;

    move-result-object v0

    return-object v0
.end method

.method private setPayload(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->payload_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-void
.end method

.method private setSharedData(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->sharedData_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lgateway/v1/UniversalRequestOuterClass$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_58

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_13
    return-object p3

    :pswitch_14
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_19
    sget-object p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_32

    const-class p2, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->PARSER:Lcom/google/protobuf/g1;

    :cond_2d
    monitor-exit p2

    goto :goto_32

    :catchall_2f
    move-exception p1

    monitor-exit p2
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    throw p1

    :cond_32
    :goto_32
    return-object p1

    :pswitch_33
    sget-object p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    return-object p1

    :pswitch_36
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "sharedData_"

    aput-object v0, p1, p3

    const-string p3, "payload_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t"

    sget-object p3, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4b
    new-instance p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;

    invoke-direct {p1, p3}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;-><init>(Lgateway/v1/UniversalRequestOuterClass$a;)V

    return-object p1

    :pswitch_51
    new-instance p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-direct {p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;-><init>()V

    return-object p1

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_51
        :pswitch_4b
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getPayload()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .registers 2

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->payload_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->getDefaultInstance()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getSharedData()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .registers 2

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->sharedData_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->getDefaultInstance()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public hasPayload()Z
    .registers 2

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->payload_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasSharedData()Z
    .registers 2

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->sharedData_:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

###### Class gateway.v1.UniversalRequestOuterClass.UniversalRequest.Payload (gateway.v1.UniversalRequestOuterClass$UniversalRequest$Payload)
.class public final Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UniversalRequestOuterClass.java"

# interfaces
.implements Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Payload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;,
        Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;",
        ">;",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;"
    }
.end annotation


# static fields
.field public static final AD_DATA_REFRESH_REQUEST_FIELD_NUMBER:I = 0x9

.field public static final AD_PLAYER_CONFIG_REQUEST_FIELD_NUMBER:I = 0x6

.field public static final AD_REQUEST_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

.field public static final DIAGNOSTIC_EVENT_REQUEST_FIELD_NUMBER:I = 0x5

.field public static final GET_TOKEN_EVENT_REQUEST_FIELD_NUMBER:I = 0x7

.field public static final INITIALIZATION_COMPLETED_EVENT_REQUEST_FIELD_NUMBER:I = 0xa

.field public static final INITIALIZATION_REQUEST_FIELD_NUMBER:I = 0x2

.field public static final OPERATIVE_EVENT_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/g1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVACY_UPDATE_REQUEST_FIELD_NUMBER:I = 0x8


# instance fields
.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-direct {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;-><init>()V

    sput-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    const-class v1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method static synthetic access$2600()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .registers 1

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object v0
.end method

.method static synthetic access$2700(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearValue()V

    return-void
.end method

.method static synthetic access$2800(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setInitializationRequest(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-void
.end method

.method static synthetic access$2900(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeInitializationRequest(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-void
.end method

.method static synthetic access$3000(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearInitializationRequest()V

    return-void
.end method

.method static synthetic access$3100(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/AdRequestOuterClass$AdRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setAdRequest(Lgateway/v1/AdRequestOuterClass$AdRequest;)V

    return-void
.end method

.method static synthetic access$3200(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/AdRequestOuterClass$AdRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeAdRequest(Lgateway/v1/AdRequestOuterClass$AdRequest;)V

    return-void
.end method

.method static synthetic access$3300(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearAdRequest()V

    return-void
.end method

.method static synthetic access$3400(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setOperativeEvent(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V

    return-void
.end method

.method static synthetic access$3500(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeOperativeEvent(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V

    return-void
.end method

.method static synthetic access$3600(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearOperativeEvent()V

    return-void
.end method

.method static synthetic access$3700(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setDiagnosticEventRequest(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V

    return-void
.end method

.method static synthetic access$3800(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeDiagnosticEventRequest(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V

    return-void
.end method

.method static synthetic access$3900(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearDiagnosticEventRequest()V

    return-void
.end method

.method static synthetic access$4000(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setAdPlayerConfigRequest(Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V

    return-void
.end method

.method static synthetic access$4100(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeAdPlayerConfigRequest(Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V

    return-void
.end method

.method static synthetic access$4200(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearAdPlayerConfigRequest()V

    return-void
.end method

.method static synthetic access$4300(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setGetTokenEventRequest(Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)V

    return-void
.end method

.method static synthetic access$4400(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeGetTokenEventRequest(Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)V

    return-void
.end method

.method static synthetic access$4500(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearGetTokenEventRequest()V

    return-void
.end method

.method static synthetic access$4600(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setPrivacyUpdateRequest(Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V

    return-void
.end method

.method static synthetic access$4700(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergePrivacyUpdateRequest(Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V

    return-void
.end method

.method static synthetic access$4800(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearPrivacyUpdateRequest()V

    return-void
.end method

.method static synthetic access$4900(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setAdDataRefreshRequest(Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V

    return-void
.end method

.method static synthetic access$5000(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeAdDataRefreshRequest(Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V

    return-void
.end method

.method static synthetic access$5100(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearAdDataRefreshRequest()V

    return-void
.end method

.method static synthetic access$5200(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->setInitializationCompletedEventRequest(Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V

    return-void
.end method

.method static synthetic access$5300(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->mergeInitializationCompletedEventRequest(Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V

    return-void
.end method

.method static synthetic access$5400(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->clearInitializationCompletedEventRequest()V

    return-void
.end method

.method private clearAdDataRefreshRequest()V
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method private clearAdPlayerConfigRequest()V
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearAdRequest()V
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearDiagnosticEventRequest()V
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearGetTokenEventRequest()V
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearInitializationCompletedEventRequest()V
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method private clearInitializationRequest()V
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearOperativeEvent()V
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearPrivacyUpdateRequest()V
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method private clearValue()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .registers 1

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object v0
.end method

.method private mergeAdDataRefreshRequest(Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    invoke-static {}, Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;->getDefaultInstance()Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;

    move-result-object v2

    if-eq v0, v2, :cond_26

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;

    invoke-static {v0}, Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;->newBuilder(Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_28

    :cond_26
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :goto_28
    iput v1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeAdPlayerConfigRequest(Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    invoke-static {}, Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;->getDefaultInstance()Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;

    move-result-object v2

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;

    invoke-static {v0}, Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;->newBuilder(Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_27

    :cond_25
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :goto_27
    iput v1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeAdRequest(Lgateway/v1/AdRequestOuterClass$AdRequest;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    invoke-static {}, Lgateway/v1/AdRequestOuterClass$AdRequest;->getDefaultInstance()Lgateway/v1/AdRequestOuterClass$AdRequest;

    move-result-object v2

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgateway/v1/AdRequestOuterClass$AdRequest;->newBuilder(Lgateway/v1/AdRequestOuterClass$AdRequest;)Lgateway/v1/AdRequestOuterClass$AdRequest$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/AdRequestOuterClass$AdRequest$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_27

    :cond_25
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :goto_27
    iput v1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeDiagnosticEventRequest(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    invoke-static {}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;->getDefaultInstance()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;

    move-result-object v2

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;

    invoke-static {v0}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;->newBuilder(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_27

    :cond_25
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :goto_27
    iput v1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeGetTokenEventRequest(Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    invoke-static {}, Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;->getDefaultInstance()Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;

    move-result-object v2

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;

    invoke-static {v0}, Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;->newBuilder(Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_27

    :cond_25
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :goto_27
    iput v1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeInitializationCompletedEventRequest(Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    invoke-static {}, Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;->getDefaultInstance()Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;

    move-result-object v2

    if-eq v0, v2, :cond_26

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;

    invoke-static {v0}, Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;->newBuilder(Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_28

    :cond_26
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :goto_28
    iput v1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeInitializationRequest(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    invoke-static {}, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;->getDefaultInstance()Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;

    move-result-object v2

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;->newBuilder(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;)Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_27

    :cond_25
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :goto_27
    iput v1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergeOperativeEvent(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    invoke-static {}, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;->getDefaultInstance()Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    move-result-object v2

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    invoke-static {v0}, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;->newBuilder(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_27

    :cond_25
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :goto_27
    iput v1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private mergePrivacyUpdateRequest(Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    invoke-static {}, Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;->getDefaultInstance()Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;

    move-result-object v2

    if-eq v0, v2, :cond_26

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;

    invoke-static {v0}, Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;->newBuilder(Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    goto :goto_28

    :cond_26
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    :goto_28
    iput v1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method public static newBuilder()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;
    .registers 1

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;
    .registers 2

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/g1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/g1;

    move-result-object v0

    return-object v0
.end method

.method private setAdDataRefreshRequest(Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/16 p1, 0x9

    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setAdPlayerConfigRequest(Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setAdRequest(Lgateway/v1/AdRequestOuterClass$AdRequest;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setDiagnosticEventRequest(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setGetTokenEventRequest(Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setInitializationCompletedEventRequest(Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/16 p1, 0xa

    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setInitializationRequest(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setOperativeEvent(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method

.method private setPrivacyUpdateRequest(Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    const/16 p1, 0x8

    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lgateway/v1/UniversalRequestOuterClass$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_88

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_13
    return-object p3

    :pswitch_14
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_19
    sget-object p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_32

    const-class p2, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->PARSER:Lcom/google/protobuf/g1;

    :cond_2d
    monitor-exit p2

    goto :goto_32

    :catchall_2f
    move-exception p1

    monitor-exit p2
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    throw p1

    :cond_32
    :goto_32
    return-object p1

    :pswitch_33
    sget-object p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object p1

    :pswitch_36
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "value_"

    aput-object v0, p1, p3

    const-string p3, "valueCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-class p3, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lgateway/v1/AdRequestOuterClass$AdRequest;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-class p3, Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;

    aput-object p3, p1, p2

    const-string p2, "\u0000\t\u0001\u0000\u0002\n\t\u0000\u0000\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\u0008<\u0000\t<\u0000\n<\u0000"

    sget-object p3, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_7c
    new-instance p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    invoke-direct {p1, p3}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;-><init>(Lgateway/v1/UniversalRequestOuterClass$a;)V

    return-object p1

    :pswitch_82
    new-instance p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-direct {p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;-><init>()V

    return-object p1

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_82
        :pswitch_7c
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getAdDataRefreshRequest()Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;

    return-object v0

    :cond_b
    invoke-static {}, Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;->getDefaultInstance()Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;

    move-result-object v0

    return-object v0
.end method

.method public getAdPlayerConfigRequest()Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;

    return-object v0

    :cond_a
    invoke-static {}, Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;->getDefaultInstance()Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public getAdRequest()Lgateway/v1/AdRequestOuterClass$AdRequest;
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdRequestOuterClass$AdRequest;

    return-object v0

    :cond_a
    invoke-static {}, Lgateway/v1/AdRequestOuterClass$AdRequest;->getDefaultInstance()Lgateway/v1/AdRequestOuterClass$AdRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDiagnosticEventRequest()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;

    return-object v0

    :cond_a
    invoke-static {}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;->getDefaultInstance()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getGetTokenEventRequest()Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;

    return-object v0

    :cond_a
    invoke-static {}, Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;->getDefaultInstance()Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getInitializationCompletedEventRequest()Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;

    return-object v0

    :cond_b
    invoke-static {}, Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;->getDefaultInstance()Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getInitializationRequest()Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;

    return-object v0

    :cond_a
    invoke-static {}, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;->getDefaultInstance()Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getOperativeEvent()Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    return-object v0

    :cond_a
    invoke-static {}, Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;->getDefaultInstance()Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacyUpdateRequest()Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;

    return-object v0

    :cond_b
    invoke-static {}, Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;->getDefaultInstance()Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public getValueCase()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;
    .registers 2

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    invoke-static {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->forNumber(I)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasAdDataRefreshRequest()Z
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasAdPlayerConfigRequest()Z
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasAdRequest()Z
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasDiagnosticEventRequest()Z
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasGetTokenEventRequest()Z
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasInitializationCompletedEventRequest()Z
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasInitializationRequest()Z
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasOperativeEvent()Z
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasPrivacyUpdateRequest()Z
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->valueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

###### Class gateway.v1.UniversalRequestOuterClass.UniversalRequest.Payload.ValueCase (gateway.v1.UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase)
.class public final enum Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;
.super Ljava/lang/Enum;
.source "UniversalRequestOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

.field public static final enum b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

.field public static final enum c:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

.field public static final enum d:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

.field public static final enum e:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

.field public static final enum f:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

.field public static final enum g:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

.field public static final enum h:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

.field public static final enum i:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

.field public static final enum j:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

.field private static final synthetic k:[Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;


# instance fields
.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    const-string v1, "INITIALIZATION_REQUEST"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->a:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    new-instance v1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    const-string v4, "AD_REQUEST"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    new-instance v4, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    const-string v7, "OPERATIVE_EVENT"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v3, v8}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->c:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    new-instance v7, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    const-string v9, "DIAGNOSTIC_EVENT_REQUEST"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v6, v10}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->d:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    new-instance v9, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    const-string v11, "AD_PLAYER_CONFIG_REQUEST"

    const/4 v12, 0x6

    invoke-direct {v9, v11, v8, v12}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->e:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    new-instance v11, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    const-string v13, "GET_TOKEN_EVENT_REQUEST"

    const/4 v14, 0x7

    invoke-direct {v11, v13, v10, v14}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->f:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    new-instance v13, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    const-string v15, "PRIVACY_UPDATE_REQUEST"

    const/16 v10, 0x8

    invoke-direct {v13, v15, v12, v10}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->g:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    new-instance v15, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    const-string v12, "AD_DATA_REFRESH_REQUEST"

    const/16 v8, 0x9

    invoke-direct {v15, v12, v14, v8}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->h:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    new-instance v12, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    const-string v14, "INITIALIZATION_COMPLETED_EVENT_REQUEST"

    const/16 v6, 0xa

    invoke-direct {v12, v14, v10, v6}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->i:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    new-instance v14, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    const-string v10, "VALUE_NOT_SET"

    invoke-direct {v14, v10, v8, v2}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->j:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    new-array v6, v6, [Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v4, v6, v3

    const/4 v0, 0x3

    aput-object v7, v6, v0

    const/4 v0, 0x4

    aput-object v9, v6, v0

    const/4 v0, 0x5

    aput-object v11, v6, v0

    const/4 v0, 0x6

    aput-object v13, v6, v0

    const/4 v0, 0x7

    aput-object v15, v6, v0

    const/16 v0, 0x8

    aput-object v12, v6, v0

    aput-object v14, v6, v8

    sput-object v6, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->k:[Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->l:I

    return-void
.end method

.method public static forNumber(I)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;
    .registers 1

    if-eqz p0, :cond_22

    packed-switch p0, :pswitch_data_26

    const/4 p0, 0x0

    return-object p0

    :pswitch_7
    sget-object p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->i:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0

    :pswitch_a
    sget-object p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->h:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0

    :pswitch_d
    sget-object p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->g:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0

    :pswitch_10
    sget-object p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->f:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0

    :pswitch_13
    sget-object p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->e:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0

    :pswitch_16
    sget-object p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->d:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0

    :pswitch_19
    sget-object p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->c:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0

    :pswitch_1c
    sget-object p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0

    :pswitch_1f
    sget-object p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->a:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0

    :cond_22
    sget-object p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->j:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0x2
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method public static valueOf(I)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->forNumber(I)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;
    .registers 2

    const-class v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object p0
.end method

.method public static values()[Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;
    .registers 1

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->k:[Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    invoke-virtual {v0}, [Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;

    return-object v0
.end method

###### Class gateway.v1.UniversalRequestOuterClass.UniversalRequest.Payload.a (gateway.v1.UniversalRequestOuterClass$UniversalRequest$Payload$a)
.class public final Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "UniversalRequestOuterClass.java"

# interfaces
.implements Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;",
        ">;",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->access$2600()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/UniversalRequestOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->access$4900(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V

    return-object p0
.end method

.method public d(Lgateway/v1/AdRequestOuterClass$AdRequest;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->access$3100(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public e(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->access$3700(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V

    return-object p0
.end method

.method public f(Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->access$5200(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V

    return-object p0
.end method

.method public g(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->access$2800(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public getAdDataRefreshRequest()Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->getAdDataRefreshRequest()Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;

    move-result-object v0

    return-object v0
.end method

.method public getAdPlayerConfigRequest()Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->getAdPlayerConfigRequest()Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public getAdRequest()Lgateway/v1/AdRequestOuterClass$AdRequest;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->getAdRequest()Lgateway/v1/AdRequestOuterClass$AdRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDiagnosticEventRequest()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->getDiagnosticEventRequest()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getGetTokenEventRequest()Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->getGetTokenEventRequest()Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getInitializationCompletedEventRequest()Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->getInitializationCompletedEventRequest()Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getInitializationRequest()Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->getInitializationRequest()Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getOperativeEvent()Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->getOperativeEvent()Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacyUpdateRequest()Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->getPrivacyUpdateRequest()Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public h(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->access$3400(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V

    return-object p0
.end method

.method public hasAdDataRefreshRequest()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->hasAdDataRefreshRequest()Z

    move-result v0

    return v0
.end method

.method public hasAdPlayerConfigRequest()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->hasAdPlayerConfigRequest()Z

    move-result v0

    return v0
.end method

.method public hasAdRequest()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->hasAdRequest()Z

    move-result v0

    return v0
.end method

.method public hasDiagnosticEventRequest()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->hasDiagnosticEventRequest()Z

    move-result v0

    return v0
.end method

.method public hasGetTokenEventRequest()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->hasGetTokenEventRequest()Z

    move-result v0

    return v0
.end method

.method public hasInitializationCompletedEventRequest()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->hasInitializationCompletedEventRequest()Z

    move-result v0

    return v0
.end method

.method public hasInitializationRequest()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->hasInitializationRequest()Z

    move-result v0

    return v0
.end method

.method public hasOperativeEvent()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->hasOperativeEvent()Z

    move-result v0

    return v0
.end method

.method public hasPrivacyUpdateRequest()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->hasPrivacyUpdateRequest()Z

    move-result v0

    return v0
.end method

.method public i(Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    invoke-static {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;->access$4600(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V

    return-object p0
.end method

###### Class gateway.v1.UniversalRequestOuterClass.UniversalRequest.SharedData (gateway.v1.UniversalRequestOuterClass$UniversalRequest$SharedData)
.class public final Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UniversalRequestOuterClass.java"

# interfaces
.implements Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;",
        ">;",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;"
    }
.end annotation


# static fields
.field public static final APP_START_TIME_FIELD_NUMBER:I = 0x8

.field public static final CURRENT_STATE_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

.field public static final DEVELOPER_CONSENT_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/g1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;",
            ">;"
        }
    .end annotation
.end field

.field public static final PII_FIELD_NUMBER:I = 0x3

.field public static final SDK_START_TIME_FIELD_NUMBER:I = 0x9

.field public static final SESSION_TOKEN_FIELD_NUMBER:I = 0x1

.field public static final TEST_DATA_FIELD_NUMBER:I = 0x7

.field public static final TIMESTAMPS_FIELD_NUMBER:I = 0x2

.field public static final WEBVIEW_VERSION_FIELD_NUMBER:I = 0x5


# instance fields
.field private appStartTime_:Lcom/google/protobuf/Timestamp;

.field private bitField0_:I

.field private currentState_:Lcom/google/protobuf/ByteString;

.field private developerConsent_:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

.field private pii_:Lgateway/v1/PiiOuterClass$Pii;

.field private sdkStartTime_:Lcom/google/protobuf/Timestamp;

.field private sessionToken_:Lcom/google/protobuf/ByteString;

.field private testData_:Lgateway/v1/TestDataOuterClass$TestData;

.field private timestamps_:Lgateway/v1/TimestampsOuterClass$Timestamps;

.field private webviewVersion_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-direct {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;-><init>()V

    sput-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    const-class v1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->sessionToken_:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->currentState_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .registers 1

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-object v0
.end method

.method static synthetic access$100(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->setSessionToken(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1000(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->mergeDeveloperConsent(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;)V

    return-void
.end method

.method static synthetic access$1100(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->clearDeveloperConsent()V

    return-void
.end method

.method static synthetic access$1200(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->setWebviewVersion(I)V

    return-void
.end method

.method static synthetic access$1300(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->clearWebviewVersion()V

    return-void
.end method

.method static synthetic access$1400(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->setCurrentState(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->clearCurrentState()V

    return-void
.end method

.method static synthetic access$1600(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;Lgateway/v1/TestDataOuterClass$TestData;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->setTestData(Lgateway/v1/TestDataOuterClass$TestData;)V

    return-void
.end method

.method static synthetic access$1700(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;Lgateway/v1/TestDataOuterClass$TestData;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->mergeTestData(Lgateway/v1/TestDataOuterClass$TestData;)V

    return-void
.end method

.method static synthetic access$1800(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->clearTestData()V

    return-void
.end method

.method static synthetic access$1900(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;Lcom/google/protobuf/Timestamp;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->setAppStartTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$200(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->clearSessionToken()V

    return-void
.end method

.method static synthetic access$2000(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;Lcom/google/protobuf/Timestamp;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->mergeAppStartTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$2100(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->clearAppStartTime()V

    return-void
.end method

.method static synthetic access$2200(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;Lcom/google/protobuf/Timestamp;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->setSdkStartTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$2300(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;Lcom/google/protobuf/Timestamp;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->mergeSdkStartTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$2400(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->clearSdkStartTime()V

    return-void
.end method

.method static synthetic access$300(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;Lgateway/v1/TimestampsOuterClass$Timestamps;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->setTimestamps(Lgateway/v1/TimestampsOuterClass$Timestamps;)V

    return-void
.end method

.method static synthetic access$400(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;Lgateway/v1/TimestampsOuterClass$Timestamps;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->mergeTimestamps(Lgateway/v1/TimestampsOuterClass$Timestamps;)V

    return-void
.end method

.method static synthetic access$500(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->clearTimestamps()V

    return-void
.end method

.method static synthetic access$600(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;Lgateway/v1/PiiOuterClass$Pii;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->setPii(Lgateway/v1/PiiOuterClass$Pii;)V

    return-void
.end method

.method static synthetic access$700(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;Lgateway/v1/PiiOuterClass$Pii;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->mergePii(Lgateway/v1/PiiOuterClass$Pii;)V

    return-void
.end method

.method static synthetic access$800(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->clearPii()V

    return-void
.end method

.method static synthetic access$900(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->setDeveloperConsent(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;)V

    return-void
.end method

.method private clearAppStartTime()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->appStartTime_:Lcom/google/protobuf/Timestamp;

    return-void
.end method

.method private clearCurrentState()V
    .registers 2

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    invoke-static {}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->getDefaultInstance()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    move-result-object v0

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->getCurrentState()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->currentState_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearDeveloperConsent()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->developerConsent_:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    return-void
.end method

.method private clearPii()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->pii_:Lgateway/v1/PiiOuterClass$Pii;

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    return-void
.end method

.method private clearSdkStartTime()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->sdkStartTime_:Lcom/google/protobuf/Timestamp;

    return-void
.end method

.method private clearSessionToken()V
    .registers 2

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    invoke-static {}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->getDefaultInstance()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    move-result-object v0

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->getSessionToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->sessionToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearTestData()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->testData_:Lgateway/v1/TestDataOuterClass$TestData;

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    return-void
.end method

.method private clearTimestamps()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->timestamps_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    return-void
.end method

.method private clearWebviewVersion()V
    .registers 2

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->webviewVersion_:I

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .registers 1

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-object v0
.end method

.method private mergeAppStartTime(Lcom/google/protobuf/Timestamp;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->appStartTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->appStartTime_:Lcom/google/protobuf/Timestamp;

    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->appStartTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->appStartTime_:Lcom/google/protobuf/Timestamp;

    :goto_24
    return-void
.end method

.method private mergeDeveloperConsent(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->developerConsent_:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->getDefaultInstance()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->developerConsent_:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {v0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->newBuilder(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->developerConsent_:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->developerConsent_:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    :goto_24
    iget p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    return-void
.end method

.method private mergePii(Lgateway/v1/PiiOuterClass$Pii;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->pii_:Lgateway/v1/PiiOuterClass$Pii;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/PiiOuterClass$Pii;->getDefaultInstance()Lgateway/v1/PiiOuterClass$Pii;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->pii_:Lgateway/v1/PiiOuterClass$Pii;

    invoke-static {v0}, Lgateway/v1/PiiOuterClass$Pii;->newBuilder(Lgateway/v1/PiiOuterClass$Pii;)Lgateway/v1/PiiOuterClass$Pii$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/PiiOuterClass$Pii$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/PiiOuterClass$Pii;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->pii_:Lgateway/v1/PiiOuterClass$Pii;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->pii_:Lgateway/v1/PiiOuterClass$Pii;

    :goto_24
    iget p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    return-void
.end method

.method private mergeSdkStartTime(Lcom/google/protobuf/Timestamp;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->sdkStartTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->sdkStartTime_:Lcom/google/protobuf/Timestamp;

    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->sdkStartTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->sdkStartTime_:Lcom/google/protobuf/Timestamp;

    :goto_24
    return-void
.end method

.method private mergeTestData(Lgateway/v1/TestDataOuterClass$TestData;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->testData_:Lgateway/v1/TestDataOuterClass$TestData;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/TestDataOuterClass$TestData;->getDefaultInstance()Lgateway/v1/TestDataOuterClass$TestData;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->testData_:Lgateway/v1/TestDataOuterClass$TestData;

    invoke-static {v0}, Lgateway/v1/TestDataOuterClass$TestData;->newBuilder(Lgateway/v1/TestDataOuterClass$TestData;)Lgateway/v1/TestDataOuterClass$TestData$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/TestDataOuterClass$TestData$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/TestDataOuterClass$TestData;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->testData_:Lgateway/v1/TestDataOuterClass$TestData;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->testData_:Lgateway/v1/TestDataOuterClass$TestData;

    :goto_24
    iget p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    return-void
.end method

.method private mergeTimestamps(Lgateway/v1/TimestampsOuterClass$Timestamps;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->timestamps_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/TimestampsOuterClass$Timestamps;->getDefaultInstance()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->timestamps_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0}, Lgateway/v1/TimestampsOuterClass$Timestamps;->newBuilder(Lgateway/v1/TimestampsOuterClass$Timestamps;)Lgateway/v1/TimestampsOuterClass$Timestamps$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/TimestampsOuterClass$Timestamps$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/TimestampsOuterClass$Timestamps;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->timestamps_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->timestamps_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    :goto_24
    return-void
.end method

.method public static newBuilder()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;
    .registers 1

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;
    .registers 2

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/g1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/g1;

    move-result-object v0

    return-object v0
.end method

.method private setAppStartTime(Lcom/google/protobuf/Timestamp;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->appStartTime_:Lcom/google/protobuf/Timestamp;

    return-void
.end method

.method private setCurrentState(Lcom/google/protobuf/ByteString;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->currentState_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setDeveloperConsent(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->developerConsent_:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    iget p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    return-void
.end method

.method private setPii(Lgateway/v1/PiiOuterClass$Pii;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->pii_:Lgateway/v1/PiiOuterClass$Pii;

    iget p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    return-void
.end method

.method private setSdkStartTime(Lcom/google/protobuf/Timestamp;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->sdkStartTime_:Lcom/google/protobuf/Timestamp;

    return-void
.end method

.method private setSessionToken(Lcom/google/protobuf/ByteString;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->sessionToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setTestData(Lgateway/v1/TestDataOuterClass$TestData;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->testData_:Lgateway/v1/TestDataOuterClass$TestData;

    iget p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    return-void
.end method

.method private setTimestamps(Lgateway/v1/TimestampsOuterClass$Timestamps;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->timestamps_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    return-void
.end method

.method private setWebviewVersion(I)V
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    iput p1, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->webviewVersion_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lgateway/v1/UniversalRequestOuterClass$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_82

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_13
    return-object p3

    :pswitch_14
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_19
    sget-object p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_32

    const-class p2, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->PARSER:Lcom/google/protobuf/g1;

    :cond_2d
    monitor-exit p2

    goto :goto_32

    :catchall_2f
    move-exception p1

    monitor-exit p2
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    throw p1

    :cond_32
    :goto_32
    return-object p1

    :pswitch_33
    sget-object p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-object p1

    :pswitch_36
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "sessionToken_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "timestamps_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "pii_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "developerConsent_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "webviewVersion_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "currentState_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "testData_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "appStartTime_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "sdkStartTime_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001\u100a\u0000\u0002\t\u0003\u1009\u0001\u0004\u1009\u0002\u0005\u1004\u0003\u0006\u100a\u0004\u0007\u1009\u0005\u0008\t\t\t"

    sget-object p3, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->DEFAULT_INSTANCE:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_76
    new-instance p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;

    invoke-direct {p1, p3}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;-><init>(Lgateway/v1/UniversalRequestOuterClass$a;)V

    return-object p1

    :pswitch_7c
    new-instance p1, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-direct {p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;-><init>()V

    return-object p1

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_76
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getAppStartTime()Lcom/google/protobuf/Timestamp;
    .registers 2

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->appStartTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getCurrentState()Lcom/google/protobuf/ByteString;
    .registers 2

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->currentState_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDeveloperConsent()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .registers 2

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->developerConsent_:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->getDefaultInstance()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getPii()Lgateway/v1/PiiOuterClass$Pii;
    .registers 2

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->pii_:Lgateway/v1/PiiOuterClass$Pii;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/PiiOuterClass$Pii;->getDefaultInstance()Lgateway/v1/PiiOuterClass$Pii;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getSdkStartTime()Lcom/google/protobuf/Timestamp;
    .registers 2

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->sdkStartTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getSessionToken()Lcom/google/protobuf/ByteString;
    .registers 2

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->sessionToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTestData()Lgateway/v1/TestDataOuterClass$TestData;
    .registers 2

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->testData_:Lgateway/v1/TestDataOuterClass$TestData;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/TestDataOuterClass$TestData;->getDefaultInstance()Lgateway/v1/TestDataOuterClass$TestData;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getTimestamps()Lgateway/v1/TimestampsOuterClass$Timestamps;
    .registers 2

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->timestamps_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/TimestampsOuterClass$Timestamps;->getDefaultInstance()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getWebviewVersion()I
    .registers 2

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->webviewVersion_:I

    return v0
.end method

.method public hasAppStartTime()Z
    .registers 2

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->appStartTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasCurrentState()Z
    .registers 2

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasDeveloperConsent()Z
    .registers 2

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasPii()Z
    .registers 2

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasSdkStartTime()Z
    .registers 2

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->sdkStartTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasSessionToken()Z
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hasTestData()Z
    .registers 2

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasTimestamps()Z
    .registers 2

    iget-object v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->timestamps_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasWebviewVersion()Z
    .registers 2

    iget v0, p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

###### Class gateway.v1.UniversalRequestOuterClass.UniversalRequest.SharedData.a (gateway.v1.UniversalRequestOuterClass$UniversalRequest$SharedData$a)
.class public final Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "UniversalRequestOuterClass.java"

# interfaces
.implements Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;",
        ">;",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->access$000()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/UniversalRequestOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/protobuf/Timestamp;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-static {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->access$1900(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public d(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-static {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->access$900(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;)V

    return-object p0
.end method

.method public e(Lgateway/v1/PiiOuterClass$Pii;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-static {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->access$600(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;Lgateway/v1/PiiOuterClass$Pii;)V

    return-object p0
.end method

.method public f(Lcom/google/protobuf/Timestamp;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-static {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->access$2200(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public g(Lcom/google/protobuf/ByteString;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-static {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->access$100(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public getAppStartTime()Lcom/google/protobuf/Timestamp;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->getAppStartTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getDeveloperConsent()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->getDeveloperConsent()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    move-result-object v0

    return-object v0
.end method

.method public getPii()Lgateway/v1/PiiOuterClass$Pii;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->getPii()Lgateway/v1/PiiOuterClass$Pii;

    move-result-object v0

    return-object v0
.end method

.method public getSdkStartTime()Lcom/google/protobuf/Timestamp;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->getSdkStartTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getTestData()Lgateway/v1/TestDataOuterClass$TestData;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->getTestData()Lgateway/v1/TestDataOuterClass$TestData;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamps()Lgateway/v1/TimestampsOuterClass$Timestamps;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->getTimestamps()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object v0

    return-object v0
.end method

.method public h(Lgateway/v1/TimestampsOuterClass$Timestamps;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-static {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->access$300(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;Lgateway/v1/TimestampsOuterClass$Timestamps;)V

    return-object p0
.end method

.method public hasAppStartTime()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->hasAppStartTime()Z

    move-result v0

    return v0
.end method

.method public hasDeveloperConsent()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->hasDeveloperConsent()Z

    move-result v0

    return v0
.end method

.method public hasPii()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->hasPii()Z

    move-result v0

    return v0
.end method

.method public hasSdkStartTime()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->hasSdkStartTime()Z

    move-result v0

    return v0
.end method

.method public hasTestData()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->hasTestData()Z

    move-result v0

    return v0
.end method

.method public hasTimestamps()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->hasTimestamps()Z

    move-result v0

    return v0
.end method

###### Class gateway.v1.UniversalRequestOuterClass.UniversalRequest.a (gateway.v1.UniversalRequestOuterClass$UniversalRequest$a)
.class public final Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "UniversalRequestOuterClass.java"

# interfaces
.implements Lgateway/v1/UniversalRequestOuterClass$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;",
        ">;",
        "Lgateway/v1/UniversalRequestOuterClass$b;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->access$5600()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/UniversalRequestOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->access$6000(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V

    return-object p0
.end method

.method public d(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-static {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->access$5700(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V

    return-object p0
.end method

.method public getPayload()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->getPayload()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    move-result-object v0

    return-object v0
.end method

.method public getSharedData()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->getSharedData()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    move-result-object v0

    return-object v0
.end method

.method public hasPayload()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->hasPayload()Z

    move-result v0

    return v0
.end method

.method public hasSharedData()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    invoke-virtual {v0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->hasSharedData()Z

    move-result v0

    return v0
.end method

###### Class gateway.v1.UniversalRequestOuterClass.UniversalRequest.b (gateway.v1.UniversalRequestOuterClass$UniversalRequest$b)
.class public interface abstract Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;
.super Ljava/lang/Object;
.source "UniversalRequestOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract getAdDataRefreshRequest()Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;
.end method

.method public abstract getAdPlayerConfigRequest()Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;
.end method

.method public abstract getAdRequest()Lgateway/v1/AdRequestOuterClass$AdRequest;
.end method

.method public abstract getDiagnosticEventRequest()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;
.end method

.method public abstract getGetTokenEventRequest()Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;
.end method

.method public abstract getInitializationCompletedEventRequest()Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;
.end method

.method public abstract getInitializationRequest()Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;
.end method

.method public abstract getOperativeEvent()Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;
.end method

.method public abstract getPrivacyUpdateRequest()Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;
.end method

.method public abstract hasAdDataRefreshRequest()Z
.end method

.method public abstract hasAdPlayerConfigRequest()Z
.end method

.method public abstract hasAdRequest()Z
.end method

.method public abstract hasDiagnosticEventRequest()Z
.end method

.method public abstract hasGetTokenEventRequest()Z
.end method

.method public abstract hasInitializationCompletedEventRequest()Z
.end method

.method public abstract hasInitializationRequest()Z
.end method

.method public abstract hasOperativeEvent()Z
.end method

.method public abstract hasPrivacyUpdateRequest()Z
.end method

###### Class gateway.v1.UniversalRequestOuterClass.UniversalRequest.c (gateway.v1.UniversalRequestOuterClass$UniversalRequest$c)
.class public interface abstract Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;
.super Ljava/lang/Object;
.source "UniversalRequestOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract getAppStartTime()Lcom/google/protobuf/Timestamp;
.end method

.method public abstract getDeveloperConsent()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
.end method

.method public abstract getPii()Lgateway/v1/PiiOuterClass$Pii;
.end method

.method public abstract getSdkStartTime()Lcom/google/protobuf/Timestamp;
.end method

.method public abstract getTestData()Lgateway/v1/TestDataOuterClass$TestData;
.end method

.method public abstract getTimestamps()Lgateway/v1/TimestampsOuterClass$Timestamps;
.end method

.method public abstract hasAppStartTime()Z
.end method

.method public abstract hasDeveloperConsent()Z
.end method

.method public abstract hasPii()Z
.end method

.method public abstract hasSdkStartTime()Z
.end method

.method public abstract hasTestData()Z
.end method

.method public abstract hasTimestamps()Z
.end method

###### Class gateway.v1.UniversalRequestOuterClass.a (gateway.v1.UniversalRequestOuterClass$a)
.class synthetic Lgateway/v1/UniversalRequestOuterClass$a;
.super Ljava/lang/Object;
.source "UniversalRequestOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->values()[Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgateway/v1/UniversalRequestOuterClass$a;->a:[I

    :try_start_9
    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgateway/v1/UniversalRequestOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->SET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    return-void
.end method

###### Class gateway.v1.UniversalRequestOuterClass.b (gateway.v1.UniversalRequestOuterClass$b)
.class public interface abstract Lgateway/v1/UniversalRequestOuterClass$b;
.super Ljava/lang/Object;
.source "UniversalRequestOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract getPayload()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
.end method

.method public abstract getSharedData()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
.end method

.method public abstract hasPayload()Z
.end method

.method public abstract hasSharedData()Z
.end method
