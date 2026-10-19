###### Class gateway.v1.UniversalResponseOuterClass (gateway.v1.UniversalResponseOuterClass)
.class public final Lgateway/v1/UniversalResponseOuterClass;
.super Ljava/lang/Object;
.source "UniversalResponseOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;,
        Lgateway/v1/UniversalResponseOuterClass$b;
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

###### Class gateway.v1.UniversalResponseOuterClass.UniversalResponse (gateway.v1.UniversalResponseOuterClass$UniversalResponse)
.class public final Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UniversalResponseOuterClass.java"

# interfaces
.implements Lgateway/v1/UniversalResponseOuterClass$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UniversalResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;,
        Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;,
        Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;",
        "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;",
        ">;",
        "Lgateway/v1/UniversalResponseOuterClass$b;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

.field public static final ERROR_FIELD_NUMBER:I = 0x3

.field public static final MUTABLE_DATA_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/g1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private error_:Lgateway/v1/ErrorOuterClass$Error;

.field private mutableData_:Lgateway/v1/MutableDataOuterClass$MutableData;

.field private payload_:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-direct {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;-><init>()V

    sput-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    const-class v1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$1800()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
    .registers 1

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    return-object v0
.end method

.method static synthetic access$1900(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->setPayload(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V

    return-void
.end method

.method static synthetic access$2000(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->mergePayload(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V

    return-void
.end method

.method static synthetic access$2100(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->clearPayload()V

    return-void
.end method

.method static synthetic access$2200(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;Lgateway/v1/MutableDataOuterClass$MutableData;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->setMutableData(Lgateway/v1/MutableDataOuterClass$MutableData;)V

    return-void
.end method

.method static synthetic access$2300(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;Lgateway/v1/MutableDataOuterClass$MutableData;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->mergeMutableData(Lgateway/v1/MutableDataOuterClass$MutableData;)V

    return-void
.end method

.method static synthetic access$2400(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->clearMutableData()V

    return-void
.end method

.method static synthetic access$2500(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;Lgateway/v1/ErrorOuterClass$Error;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->setError(Lgateway/v1/ErrorOuterClass$Error;)V

    return-void
.end method

.method static synthetic access$2600(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;Lgateway/v1/ErrorOuterClass$Error;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->mergeError(Lgateway/v1/ErrorOuterClass$Error;)V

    return-void
.end method

.method static synthetic access$2700(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->clearError()V

    return-void
.end method

.method private clearError()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->error_:Lgateway/v1/ErrorOuterClass$Error;

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->bitField0_:I

    return-void
.end method

.method private clearMutableData()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->mutableData_:Lgateway/v1/MutableDataOuterClass$MutableData;

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->bitField0_:I

    return-void
.end method

.method private clearPayload()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->payload_:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
    .registers 1

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    return-object v0
.end method

.method private mergeError(Lgateway/v1/ErrorOuterClass$Error;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->error_:Lgateway/v1/ErrorOuterClass$Error;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/ErrorOuterClass$Error;->getDefaultInstance()Lgateway/v1/ErrorOuterClass$Error;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->error_:Lgateway/v1/ErrorOuterClass$Error;

    invoke-static {v0}, Lgateway/v1/ErrorOuterClass$Error;->newBuilder(Lgateway/v1/ErrorOuterClass$Error;)Lgateway/v1/ErrorOuterClass$Error$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/ErrorOuterClass$Error$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/ErrorOuterClass$Error;

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->error_:Lgateway/v1/ErrorOuterClass$Error;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->error_:Lgateway/v1/ErrorOuterClass$Error;

    :goto_24
    iget p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->bitField0_:I

    return-void
.end method

.method private mergeMutableData(Lgateway/v1/MutableDataOuterClass$MutableData;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->mutableData_:Lgateway/v1/MutableDataOuterClass$MutableData;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/MutableDataOuterClass$MutableData;->getDefaultInstance()Lgateway/v1/MutableDataOuterClass$MutableData;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->mutableData_:Lgateway/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0}, Lgateway/v1/MutableDataOuterClass$MutableData;->newBuilder(Lgateway/v1/MutableDataOuterClass$MutableData;)Lgateway/v1/MutableDataOuterClass$MutableData$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/MutableDataOuterClass$MutableData$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/MutableDataOuterClass$MutableData;

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->mutableData_:Lgateway/v1/MutableDataOuterClass$MutableData;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->mutableData_:Lgateway/v1/MutableDataOuterClass$MutableData;

    :goto_24
    iget p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->bitField0_:I

    return-void
.end method

.method private mergePayload(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->payload_:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getDefaultInstance()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->payload_:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->newBuilder(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->payload_:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->payload_:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    :goto_24
    return-void
.end method

.method public static newBuilder()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;
    .registers 1

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;
    .registers 2

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/g1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/g1;

    move-result-object v0

    return-object v0
.end method

.method private setError(Lgateway/v1/ErrorOuterClass$Error;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->error_:Lgateway/v1/ErrorOuterClass$Error;

    iget p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->bitField0_:I

    return-void
.end method

.method private setMutableData(Lgateway/v1/MutableDataOuterClass$MutableData;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->mutableData_:Lgateway/v1/MutableDataOuterClass$MutableData;

    iget p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->bitField0_:I

    return-void
.end method

.method private setPayload(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->payload_:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lgateway/v1/UniversalResponseOuterClass$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_62

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
    sget-object p1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_32

    const-class p2, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->PARSER:Lcom/google/protobuf/g1;

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
    sget-object p1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    return-object p1

    :pswitch_36
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "payload_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "mutableData_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "error_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\u1009\u0000\u0003\u1009\u0001"

    sget-object p3, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_55
    new-instance p1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;

    invoke-direct {p1, p3}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;-><init>(Lgateway/v1/UniversalResponseOuterClass$a;)V

    return-object p1

    :pswitch_5b
    new-instance p1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-direct {p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;-><init>()V

    return-object p1

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_55
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getError()Lgateway/v1/ErrorOuterClass$Error;
    .registers 2

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->error_:Lgateway/v1/ErrorOuterClass$Error;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/ErrorOuterClass$Error;->getDefaultInstance()Lgateway/v1/ErrorOuterClass$Error;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getMutableData()Lgateway/v1/MutableDataOuterClass$MutableData;
    .registers 2

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->mutableData_:Lgateway/v1/MutableDataOuterClass$MutableData;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/MutableDataOuterClass$MutableData;->getDefaultInstance()Lgateway/v1/MutableDataOuterClass$MutableData;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getPayload()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 2

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->payload_:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getDefaultInstance()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public hasError()Z
    .registers 2

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasMutableData()Z
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hasPayload()Z
    .registers 2

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->payload_:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

###### Class gateway.v1.UniversalResponseOuterClass.UniversalResponse.Payload (gateway.v1.UniversalResponseOuterClass$UniversalResponse$Payload)
.class public final Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UniversalResponseOuterClass.java"

# interfaces
.implements Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Payload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$a;,
        Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;",
        "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$a;",
        ">;",
        "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$b;"
    }
.end annotation


# static fields
.field public static final AD_DATA_REFRESH_RESPONSE_FIELD_NUMBER:I = 0x4

.field public static final AD_PLAYER_CONFIG_RESPONSE_FIELD_NUMBER:I = 0x3

.field public static final AD_RESPONSE_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

.field public static final INITIALIZATION_RESPONSE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/g1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVACY_UPDATE_RESPONSE_FIELD_NUMBER:I = 0x5


# instance fields
.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-direct {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;-><init>()V

    sput-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    const-class v1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method static synthetic access$000()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 1

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object v0
.end method

.method static synthetic access$100(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->clearValue()V

    return-void
.end method

.method static synthetic access$1000(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->clearAdPlayerConfigResponse()V

    return-void
.end method

.method static synthetic access$1100(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->setAdDataRefreshResponse(Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V

    return-void
.end method

.method static synthetic access$1200(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->mergeAdDataRefreshResponse(Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V

    return-void
.end method

.method static synthetic access$1300(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->clearAdDataRefreshResponse()V

    return-void
.end method

.method static synthetic access$1400(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->setPrivacyUpdateResponse(Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V

    return-void
.end method

.method static synthetic access$1500(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->mergePrivacyUpdateResponse(Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V

    return-void
.end method

.method static synthetic access$1600(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->clearPrivacyUpdateResponse()V

    return-void
.end method

.method static synthetic access$200(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->setInitializationResponse(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)V

    return-void
.end method

.method static synthetic access$300(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->mergeInitializationResponse(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)V

    return-void
.end method

.method static synthetic access$400(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->clearInitializationResponse()V

    return-void
.end method

.method static synthetic access$500(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgateway/v1/AdResponseOuterClass$AdResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->setAdResponse(Lgateway/v1/AdResponseOuterClass$AdResponse;)V

    return-void
.end method

.method static synthetic access$600(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgateway/v1/AdResponseOuterClass$AdResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->mergeAdResponse(Lgateway/v1/AdResponseOuterClass$AdResponse;)V

    return-void
.end method

.method static synthetic access$700(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->clearAdResponse()V

    return-void
.end method

.method static synthetic access$800(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->setAdPlayerConfigResponse(Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V

    return-void
.end method

.method static synthetic access$900(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->mergeAdPlayerConfigResponse(Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V

    return-void
.end method

.method private clearAdDataRefreshResponse()V
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearAdPlayerConfigResponse()V
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearAdResponse()V
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearInitializationResponse()V
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearPrivacyUpdateResponse()V
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearValue()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 1

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object v0
.end method

.method private mergeAdDataRefreshResponse(Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    invoke-static {}, Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->getDefaultInstance()Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    move-result-object v2

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    invoke-static {v0}, Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->newBuilder(Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    goto :goto_27

    :cond_25
    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :goto_27
    iput v1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private mergeAdPlayerConfigResponse(Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    invoke-static {}, Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getDefaultInstance()Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    move-result-object v2

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    invoke-static {v0}, Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->newBuilder(Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    goto :goto_27

    :cond_25
    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :goto_27
    iput v1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private mergeAdResponse(Lgateway/v1/AdResponseOuterClass$AdResponse;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    invoke-static {}, Lgateway/v1/AdResponseOuterClass$AdResponse;->getDefaultInstance()Lgateway/v1/AdResponseOuterClass$AdResponse;

    move-result-object v2

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0}, Lgateway/v1/AdResponseOuterClass$AdResponse;->newBuilder(Lgateway/v1/AdResponseOuterClass$AdResponse;)Lgateway/v1/AdResponseOuterClass$AdResponse$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/AdResponseOuterClass$AdResponse$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    goto :goto_27

    :cond_25
    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :goto_27
    iput v1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private mergeInitializationResponse(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    invoke-static {}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->getDefaultInstance()Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    move-result-object v2

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->newBuilder(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    goto :goto_27

    :cond_25
    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :goto_27
    iput v1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private mergePrivacyUpdateResponse(Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    invoke-static {}, Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;->getDefaultInstance()Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    move-result-object v2

    if-eq v0, v2, :cond_25

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    invoke-static {v0}, Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;->newBuilder(Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    goto :goto_27

    :cond_25
    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    :goto_27
    iput v1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method public static newBuilder()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$a;
    .registers 1

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$a;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$a;
    .registers 2

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/g1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/g1;

    move-result-object v0

    return-object v0
.end method

.method private setAdDataRefreshResponse(Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private setAdPlayerConfigResponse(Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private setAdResponse(Lgateway/v1/AdResponseOuterClass$AdResponse;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private setInitializationResponse(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method

.method private setPrivacyUpdateResponse(Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lgateway/v1/UniversalResponseOuterClass$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_70

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
    sget-object p1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_32

    const-class p2, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->PARSER:Lcom/google/protobuf/g1;

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
    sget-object p1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    return-object p1

    :pswitch_36
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "value_"

    aput-object v0, p1, p3

    const-string p3, "valueCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-class p3, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lgateway/v1/AdResponseOuterClass$AdResponse;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0001\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000"

    sget-object p3, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->DEFAULT_INSTANCE:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_64
    new-instance p1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$a;

    invoke-direct {p1, p3}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$a;-><init>(Lgateway/v1/UniversalResponseOuterClass$a;)V

    return-object p1

    :pswitch_6a
    new-instance p1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-direct {p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;-><init>()V

    return-object p1

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_64
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getAdDataRefreshResponse()Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    return-object v0

    :cond_a
    invoke-static {}, Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;->getDefaultInstance()Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAdPlayerConfigResponse()Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    return-object v0

    :cond_a
    invoke-static {}, Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;->getDefaultInstance()Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAdResponse()Lgateway/v1/AdResponseOuterClass$AdResponse;
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/AdResponseOuterClass$AdResponse;

    return-object v0

    :cond_a
    invoke-static {}, Lgateway/v1/AdResponseOuterClass$AdResponse;->getDefaultInstance()Lgateway/v1/AdResponseOuterClass$AdResponse;

    move-result-object v0

    return-object v0
.end method

.method public getInitializationResponse()Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object v0

    :cond_a
    invoke-static {}, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;->getDefaultInstance()Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacyUpdateResponse()Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->value_:Ljava/lang/Object;

    check-cast v0, Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    return-object v0

    :cond_a
    invoke-static {}, Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;->getDefaultInstance()Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getValueCase()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;
    .registers 2

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    invoke-static {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->forNumber(I)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasAdDataRefreshResponse()Z
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasAdPlayerConfigResponse()Z
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasAdResponse()Z
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasInitializationResponse()Z
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public hasPrivacyUpdateResponse()Z
    .registers 3

    iget v0, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

###### Class gateway.v1.UniversalResponseOuterClass.UniversalResponse.Payload.ValueCase (gateway.v1.UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase)
.class public final enum Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;
.super Ljava/lang/Enum;
.source "UniversalResponseOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

.field public static final enum b:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

.field public static final enum c:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

.field public static final enum d:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

.field public static final enum e:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

.field public static final enum f:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

.field private static final synthetic g:[Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    const-string v1, "INITIALIZATION_RESPONSE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->a:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    new-instance v1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    const-string v4, "AD_RESPONSE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->b:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    new-instance v4, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    const-string v6, "AD_PLAYER_CONFIG_RESPONSE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->c:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    new-instance v6, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    const-string v8, "AD_DATA_REFRESH_RESPONSE"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->d:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    new-instance v8, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    const-string v10, "PRIVACY_UPDATE_RESPONSE"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->e:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    new-instance v10, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    const-string v12, "VALUE_NOT_SET"

    invoke-direct {v10, v12, v11, v2}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->f:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    const/4 v12, 0x6

    new-array v12, v12, [Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    sput-object v12, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->g:[Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

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

    iput p3, p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->h:I

    return-void
.end method

.method public static forNumber(I)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;
    .registers 2

    if-eqz p0, :cond_22

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    const/4 v0, 0x4

    if-eq p0, v0, :cond_16

    const/4 v0, 0x5

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return-object p0

    :cond_13
    sget-object p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->e:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    return-object p0

    :cond_16
    sget-object p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->d:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    return-object p0

    :cond_19
    sget-object p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->c:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    return-object p0

    :cond_1c
    sget-object p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->b:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    return-object p0

    :cond_1f
    sget-object p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->a:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    return-object p0

    :cond_22
    sget-object p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->f:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    return-object p0
.end method

.method public static valueOf(I)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->forNumber(I)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;
    .registers 2

    const-class v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    return-object p0
.end method

.method public static values()[Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;
    .registers 1

    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->g:[Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    invoke-virtual {v0}, [Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    return-object v0
.end method

###### Class gateway.v1.UniversalResponseOuterClass.UniversalResponse.Payload.a (gateway.v1.UniversalResponseOuterClass$UniversalResponse$Payload$a)
.class public final Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "UniversalResponseOuterClass.java"

# interfaces
.implements Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;",
        "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$a;",
        ">;",
        "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$b;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$000()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/UniversalResponseOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload$a;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdDataRefreshResponse()Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getAdDataRefreshResponse()Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAdPlayerConfigResponse()Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getAdPlayerConfigResponse()Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAdResponse()Lgateway/v1/AdResponseOuterClass$AdResponse;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getAdResponse()Lgateway/v1/AdResponseOuterClass$AdResponse;

    move-result-object v0

    return-object v0
.end method

.method public getInitializationResponse()Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getInitializationResponse()Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacyUpdateResponse()Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getPrivacyUpdateResponse()Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public hasAdDataRefreshResponse()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->hasAdDataRefreshResponse()Z

    move-result v0

    return v0
.end method

.method public hasAdPlayerConfigResponse()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->hasAdPlayerConfigResponse()Z

    move-result v0

    return v0
.end method

.method public hasAdResponse()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->hasAdResponse()Z

    move-result v0

    return v0
.end method

.method public hasInitializationResponse()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->hasInitializationResponse()Z

    move-result v0

    return v0
.end method

.method public hasPrivacyUpdateResponse()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->hasPrivacyUpdateResponse()Z

    move-result v0

    return v0
.end method

###### Class gateway.v1.UniversalResponseOuterClass.UniversalResponse.a (gateway.v1.UniversalResponseOuterClass$UniversalResponse$a)
.class public final Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "UniversalResponseOuterClass.java"

# interfaces
.implements Lgateway/v1/UniversalResponseOuterClass$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;",
        "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;",
        ">;",
        "Lgateway/v1/UniversalResponseOuterClass$b;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->access$1800()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/UniversalResponseOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lgateway/v1/ErrorOuterClass$Error;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->access$2500(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;Lgateway/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public getError()Lgateway/v1/ErrorOuterClass$Error;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-virtual {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->getError()Lgateway/v1/ErrorOuterClass$Error;

    move-result-object v0

    return-object v0
.end method

.method public getMutableData()Lgateway/v1/MutableDataOuterClass$MutableData;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-virtual {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->getMutableData()Lgateway/v1/MutableDataOuterClass$MutableData;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-virtual {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->getPayload()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-virtual {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasMutableData()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-virtual {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->hasMutableData()Z

    move-result v0

    return v0
.end method

.method public hasPayload()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-virtual {v0}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;->hasPayload()Z

    move-result v0

    return v0
.end method

###### Class gateway.v1.UniversalResponseOuterClass.UniversalResponse.b (gateway.v1.UniversalResponseOuterClass$UniversalResponse$b)
.class public interface abstract Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$b;
.super Ljava/lang/Object;
.source "UniversalResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract getAdDataRefreshResponse()Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;
.end method

.method public abstract getAdPlayerConfigResponse()Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;
.end method

.method public abstract getAdResponse()Lgateway/v1/AdResponseOuterClass$AdResponse;
.end method

.method public abstract getInitializationResponse()Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
.end method

.method public abstract getPrivacyUpdateResponse()Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;
.end method

.method public abstract hasAdDataRefreshResponse()Z
.end method

.method public abstract hasAdPlayerConfigResponse()Z
.end method

.method public abstract hasAdResponse()Z
.end method

.method public abstract hasInitializationResponse()Z
.end method

.method public abstract hasPrivacyUpdateResponse()Z
.end method

###### Class gateway.v1.UniversalResponseOuterClass.a (gateway.v1.UniversalResponseOuterClass$a)
.class synthetic Lgateway/v1/UniversalResponseOuterClass$a;
.super Ljava/lang/Object;
.source "UniversalResponseOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalResponseOuterClass;
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

    sput-object v0, Lgateway/v1/UniversalResponseOuterClass$a;->a:[I

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
    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgateway/v1/UniversalResponseOuterClass$a;->a:[I

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

###### Class gateway.v1.UniversalResponseOuterClass.b (gateway.v1.UniversalResponseOuterClass$b)
.class public interface abstract Lgateway/v1/UniversalResponseOuterClass$b;
.super Ljava/lang/Object;
.source "UniversalResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract getError()Lgateway/v1/ErrorOuterClass$Error;
.end method

.method public abstract getMutableData()Lgateway/v1/MutableDataOuterClass$MutableData;
.end method

.method public abstract getPayload()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
.end method

.method public abstract hasError()Z
.end method

.method public abstract hasMutableData()Z
.end method

.method public abstract hasPayload()Z
.end method
