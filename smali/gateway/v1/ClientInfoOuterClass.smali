###### Class gateway.v1.ClientInfoOuterClass (gateway.v1.ClientInfoOuterClass)
.class public final Lgateway/v1/ClientInfoOuterClass;
.super Ljava/lang/Object;
.source "ClientInfoOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/ClientInfoOuterClass$ClientInfo;,
        Lgateway/v1/ClientInfoOuterClass$MediationProvider;,
        Lgateway/v1/ClientInfoOuterClass$Platform;
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

###### Class gateway.v1.ClientInfoOuterClass.ClientInfo (gateway.v1.ClientInfoOuterClass$ClientInfo)
.class public final Lgateway/v1/ClientInfoOuterClass$ClientInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ClientInfoOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/ClientInfoOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/ClientInfoOuterClass$ClientInfo$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/ClientInfoOuterClass$ClientInfo;",
        "Lgateway/v1/ClientInfoOuterClass$ClientInfo$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final CUSTOM_MEDIATION_NAME_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

.field public static final GAME_ID_FIELD_NUMBER:I = 0x3

.field public static final MEDIATION_PROVIDER_FIELD_NUMBER:I = 0x6

.field public static final MEDIATION_VERSION_FIELD_NUMBER:I = 0x8

.field private static volatile PARSER:Lcom/google/protobuf/g1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/ClientInfoOuterClass$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLATFORM_FIELD_NUMBER:I = 0x5

.field public static final SDK_VERSION_FIELD_NUMBER:I = 0x1

.field public static final SDK_VERSION_NAME_FIELD_NUMBER:I = 0x2

.field public static final TEST_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private customMediationName_:Ljava/lang/String;

.field private gameId_:Ljava/lang/String;

.field private mediationProvider_:I

.field private mediationVersion_:Ljava/lang/String;

.field private platform_:I

.field private sdkVersionName_:Ljava/lang/String;

.field private sdkVersion_:I

.field private test_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-direct {v0}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;-><init>()V

    sput-object v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    const-class v1, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->sdkVersionName_:Ljava/lang/String;

    iput-object v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->gameId_:Ljava/lang/String;

    iput-object v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->customMediationName_:Ljava/lang/String;

    iput-object v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->mediationVersion_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lgateway/v1/ClientInfoOuterClass$ClientInfo;
    .registers 1

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    return-object v0
.end method

.method static synthetic access$100(Lgateway/v1/ClientInfoOuterClass$ClientInfo;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->setSdkVersion(I)V

    return-void
.end method

.method static synthetic access$1000(Lgateway/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->clearTest()V

    return-void
.end method

.method static synthetic access$1100(Lgateway/v1/ClientInfoOuterClass$ClientInfo;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->setPlatformValue(I)V

    return-void
.end method

.method static synthetic access$1200(Lgateway/v1/ClientInfoOuterClass$ClientInfo;Lgateway/v1/ClientInfoOuterClass$Platform;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->setPlatform(Lgateway/v1/ClientInfoOuterClass$Platform;)V

    return-void
.end method

.method static synthetic access$1300(Lgateway/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->clearPlatform()V

    return-void
.end method

.method static synthetic access$1400(Lgateway/v1/ClientInfoOuterClass$ClientInfo;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->setMediationProviderValue(I)V

    return-void
.end method

.method static synthetic access$1500(Lgateway/v1/ClientInfoOuterClass$ClientInfo;Lgateway/v1/ClientInfoOuterClass$MediationProvider;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->setMediationProvider(Lgateway/v1/ClientInfoOuterClass$MediationProvider;)V

    return-void
.end method

.method static synthetic access$1600(Lgateway/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->clearMediationProvider()V

    return-void
.end method

.method static synthetic access$1700(Lgateway/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->setCustomMediationName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lgateway/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->clearCustomMediationName()V

    return-void
.end method

.method static synthetic access$1900(Lgateway/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->setCustomMediationNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lgateway/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->clearSdkVersion()V

    return-void
.end method

.method static synthetic access$2000(Lgateway/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->setMediationVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lgateway/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->clearMediationVersion()V

    return-void
.end method

.method static synthetic access$2200(Lgateway/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->setMediationVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$300(Lgateway/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->setSdkVersionName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lgateway/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->clearSdkVersionName()V

    return-void
.end method

.method static synthetic access$500(Lgateway/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->setSdkVersionNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lgateway/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->setGameId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lgateway/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->clearGameId()V

    return-void
.end method

.method static synthetic access$800(Lgateway/v1/ClientInfoOuterClass$ClientInfo;Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->setGameIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lgateway/v1/ClientInfoOuterClass$ClientInfo;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->setTest(Z)V

    return-void
.end method

.method private clearCustomMediationName()V
    .registers 2

    iget v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    invoke-static {}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->getCustomMediationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->customMediationName_:Ljava/lang/String;

    return-void
.end method

.method private clearGameId()V
    .registers 2

    invoke-static {}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->getGameId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->gameId_:Ljava/lang/String;

    return-void
.end method

.method private clearMediationProvider()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->mediationProvider_:I

    return-void
.end method

.method private clearMediationVersion()V
    .registers 2

    iget v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    invoke-static {}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->getMediationVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->mediationVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearPlatform()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->platform_:I

    return-void
.end method

.method private clearSdkVersion()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->sdkVersion_:I

    return-void
.end method

.method private clearSdkVersionName()V
    .registers 2

    invoke-static {}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->getDefaultInstance()Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->getSdkVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->sdkVersionName_:Ljava/lang/String;

    return-void
.end method

.method private clearTest()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->test_:Z

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/ClientInfoOuterClass$ClientInfo;
    .registers 1

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    return-object v0
.end method

.method public static newBuilder()Lgateway/v1/ClientInfoOuterClass$ClientInfo$a;
    .registers 1

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo$a;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/ClientInfoOuterClass$ClientInfo;)Lgateway/v1/ClientInfoOuterClass$ClientInfo$a;
    .registers 2

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/ClientInfoOuterClass$ClientInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/ClientInfoOuterClass$ClientInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/ClientInfoOuterClass$ClientInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/ClientInfoOuterClass$ClientInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/ClientInfoOuterClass$ClientInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/ClientInfoOuterClass$ClientInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/ClientInfoOuterClass$ClientInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/ClientInfoOuterClass$ClientInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/ClientInfoOuterClass$ClientInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/ClientInfoOuterClass$ClientInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/ClientInfoOuterClass$ClientInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/ClientInfoOuterClass$ClientInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/g1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/ClientInfoOuterClass$ClientInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/g1;

    move-result-object v0

    return-object v0
.end method

.method private setCustomMediationName(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    iput-object p1, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->customMediationName_:Ljava/lang/String;

    return-void
.end method

.method private setCustomMediationNameBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->customMediationName_:Ljava/lang/String;

    iget p1, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    return-void
.end method

.method private setGameId(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->gameId_:Ljava/lang/String;

    return-void
.end method

.method private setGameIdBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->gameId_:Ljava/lang/String;

    return-void
.end method

.method private setMediationProvider(Lgateway/v1/ClientInfoOuterClass$MediationProvider;)V
    .registers 2

    invoke-virtual {p1}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->getNumber()I

    move-result p1

    iput p1, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->mediationProvider_:I

    return-void
.end method

.method private setMediationProviderValue(I)V
    .registers 2

    iput p1, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->mediationProvider_:I

    return-void
.end method

.method private setMediationVersion(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    iput-object p1, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->mediationVersion_:Ljava/lang/String;

    return-void
.end method

.method private setMediationVersionBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->mediationVersion_:Ljava/lang/String;

    iget p1, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    return-void
.end method

.method private setPlatform(Lgateway/v1/ClientInfoOuterClass$Platform;)V
    .registers 2

    invoke-virtual {p1}, Lgateway/v1/ClientInfoOuterClass$Platform;->getNumber()I

    move-result p1

    iput p1, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->platform_:I

    return-void
.end method

.method private setPlatformValue(I)V
    .registers 2

    iput p1, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->platform_:I

    return-void
.end method

.method private setSdkVersion(I)V
    .registers 2

    iput p1, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->sdkVersion_:I

    return-void
.end method

.method private setSdkVersionName(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->sdkVersionName_:Ljava/lang/String;

    return-void
.end method

.method private setSdkVersionNameBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->sdkVersionName_:Ljava/lang/String;

    return-void
.end method

.method private setTest(Z)V
    .registers 2

    iput-boolean p1, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->test_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lgateway/v1/ClientInfoOuterClass$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_7c

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
    sget-object p1, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_32

    const-class p2, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->PARSER:Lcom/google/protobuf/g1;

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
    sget-object p1, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    return-object p1

    :pswitch_36
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "sdkVersion_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "sdkVersionName_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "gameId_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "test_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "platform_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "mediationProvider_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "customMediationName_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "mediationVersion_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u000b\u0002\u0208\u0003\u0208\u0004\u0007\u0005\u000c\u0006\u000c\u0007\u1208\u0000\u0008\u1208\u0001"

    sget-object p3, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->DEFAULT_INSTANCE:Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_70
    new-instance p1, Lgateway/v1/ClientInfoOuterClass$ClientInfo$a;

    invoke-direct {p1, p3}, Lgateway/v1/ClientInfoOuterClass$ClientInfo$a;-><init>(Lgateway/v1/ClientInfoOuterClass$a;)V

    return-object p1

    :pswitch_76
    new-instance p1, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-direct {p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;-><init>()V

    return-object p1

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_76
        :pswitch_70
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getCustomMediationName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->customMediationName_:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomMediationNameBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    iget-object v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->customMediationName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->gameId_:Ljava/lang/String;

    return-object v0
.end method

.method public getGameIdBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    iget-object v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->gameId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMediationProvider()Lgateway/v1/ClientInfoOuterClass$MediationProvider;
    .registers 2

    iget v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->mediationProvider_:I

    invoke-static {v0}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->forNumber(I)Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->f:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    :cond_a
    return-object v0
.end method

.method public getMediationProviderValue()I
    .registers 2

    iget v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->mediationProvider_:I

    return v0
.end method

.method public getMediationVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->mediationVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationVersionBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    iget-object v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->mediationVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPlatform()Lgateway/v1/ClientInfoOuterClass$Platform;
    .registers 2

    iget v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->platform_:I

    invoke-static {v0}, Lgateway/v1/ClientInfoOuterClass$Platform;->forNumber(I)Lgateway/v1/ClientInfoOuterClass$Platform;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$Platform;->d:Lgateway/v1/ClientInfoOuterClass$Platform;

    :cond_a
    return-object v0
.end method

.method public getPlatformValue()I
    .registers 2

    iget v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->platform_:I

    return v0
.end method

.method public getSdkVersion()I
    .registers 2

    iget v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->sdkVersion_:I

    return v0
.end method

.method public getSdkVersionName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->sdkVersionName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersionNameBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    iget-object v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->sdkVersionName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTest()Z
    .registers 2

    iget-boolean v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->test_:Z

    return v0
.end method

.method public hasCustomMediationName()Z
    .registers 3

    iget v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hasMediationVersion()Z
    .registers 2

    iget v0, p0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

###### Class gateway.v1.ClientInfoOuterClass.ClientInfo.a (gateway.v1.ClientInfoOuterClass$ClientInfo$a)
.class public final Lgateway/v1/ClientInfoOuterClass$ClientInfo$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "ClientInfoOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/ClientInfoOuterClass$ClientInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/ClientInfoOuterClass$ClientInfo;",
        "Lgateway/v1/ClientInfoOuterClass$ClientInfo$a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->access$000()Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/ClientInfoOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/ClientInfoOuterClass$ClientInfo$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lgateway/v1/ClientInfoOuterClass$MediationProvider;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-virtual {v0}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->getMediationProvider()Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lgateway/v1/ClientInfoOuterClass$ClientInfo$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->access$1700(Lgateway/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lgateway/v1/ClientInfoOuterClass$ClientInfo$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->access$600(Lgateway/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public f(Lgateway/v1/ClientInfoOuterClass$MediationProvider;)Lgateway/v1/ClientInfoOuterClass$ClientInfo$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->access$1500(Lgateway/v1/ClientInfoOuterClass$ClientInfo;Lgateway/v1/ClientInfoOuterClass$MediationProvider;)V

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lgateway/v1/ClientInfoOuterClass$ClientInfo$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->access$2000(Lgateway/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public h(Lgateway/v1/ClientInfoOuterClass$Platform;)Lgateway/v1/ClientInfoOuterClass$ClientInfo$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->access$1200(Lgateway/v1/ClientInfoOuterClass$ClientInfo;Lgateway/v1/ClientInfoOuterClass$Platform;)V

    return-object p0
.end method

.method public i(I)Lgateway/v1/ClientInfoOuterClass$ClientInfo$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->access$100(Lgateway/v1/ClientInfoOuterClass$ClientInfo;I)V

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lgateway/v1/ClientInfoOuterClass$ClientInfo$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->access$300(Lgateway/v1/ClientInfoOuterClass$ClientInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public k(Z)Lgateway/v1/ClientInfoOuterClass$ClientInfo$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgateway/v1/ClientInfoOuterClass$ClientInfo;->access$900(Lgateway/v1/ClientInfoOuterClass$ClientInfo;Z)V

    return-object p0
.end method

###### Class gateway.v1.ClientInfoOuterClass.MediationProvider (gateway.v1.ClientInfoOuterClass$MediationProvider)
.class public final enum Lgateway/v1/ClientInfoOuterClass$MediationProvider;
.super Ljava/lang/Enum;
.source "ClientInfoOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/ClientInfoOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediationProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/ClientInfoOuterClass$MediationProvider$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgateway/v1/ClientInfoOuterClass$MediationProvider;",
        ">;",
        "Lcom/google/protobuf/Internal$c;"
    }
.end annotation


# static fields
.field public static final enum a:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

.field public static final enum b:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

.field public static final enum c:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

.field public static final enum d:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

.field public static final enum e:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

.field public static final enum f:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

.field private static final g:Lcom/google/protobuf/Internal$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$d<",
            "Lgateway/v1/ClientInfoOuterClass$MediationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lgateway/v1/ClientInfoOuterClass$MediationProvider;


# instance fields
.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    new-instance v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    const-string v1, "MEDIATION_PROVIDER_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->a:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    new-instance v1, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    const-string v3, "MEDIATION_PROVIDER_CUSTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->b:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    new-instance v3, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    const-string v5, "MEDIATION_PROVIDER_ADMOB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->c:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    new-instance v5, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    const-string v7, "MEDIATION_PROVIDER_MAX"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->d:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    new-instance v7, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    const-string v9, "MEDIATION_PROVIDER_LEVELPLAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->e:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    new-instance v9, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->f:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    const/4 v11, 0x6

    new-array v11, v11, [Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->h:[Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    new-instance v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider$a;

    invoke-direct {v0}, Lgateway/v1/ClientInfoOuterClass$MediationProvider$a;-><init>()V

    sput-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->g:Lcom/google/protobuf/Internal$d;

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

    iput p3, p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->i:I

    return-void
.end method

.method public static forNumber(I)Lgateway/v1/ClientInfoOuterClass$MediationProvider;
    .registers 2

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    :cond_10
    sget-object p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->e:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0

    :cond_13
    sget-object p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->d:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0

    :cond_16
    sget-object p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->c:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0

    :cond_19
    sget-object p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->b:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0

    :cond_1c
    sget-object p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->a:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$d<",
            "Lgateway/v1/ClientInfoOuterClass$MediationProvider;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->g:Lcom/google/protobuf/Internal$d;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$e;
    .registers 1

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider$b;->a:Lcom/google/protobuf/Internal$e;

    return-object v0
.end method

.method public static valueOf(I)Lgateway/v1/ClientInfoOuterClass$MediationProvider;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->forNumber(I)Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgateway/v1/ClientInfoOuterClass$MediationProvider;
    .registers 2

    const-class v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0
.end method

.method public static values()[Lgateway/v1/ClientInfoOuterClass$MediationProvider;
    .registers 1

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->h:[Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    invoke-virtual {v0}, [Lgateway/v1/ClientInfoOuterClass$MediationProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 3

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->f:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    if-eq p0, v0, :cond_7

    iget v0, p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->i:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class gateway.v1.ClientInfoOuterClass.MediationProvider.a (gateway.v1.ClientInfoOuterClass$MediationProvider$a)
.class Lgateway/v1/ClientInfoOuterClass$MediationProvider$a;
.super Ljava/lang/Object;
.source "ClientInfoOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/ClientInfoOuterClass$MediationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$d<",
        "Lgateway/v1/ClientInfoOuterClass$MediationProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lgateway/v1/ClientInfoOuterClass$MediationProvider;
    .registers 2

    invoke-static {p1}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->forNumber(I)Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$c;
    .registers 2

    invoke-virtual {p0, p1}, Lgateway/v1/ClientInfoOuterClass$MediationProvider$a;->a(I)Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object p1

    return-object p1
.end method

###### Class gateway.v1.ClientInfoOuterClass.MediationProvider.b (gateway.v1.ClientInfoOuterClass$MediationProvider$b)
.class final Lgateway/v1/ClientInfoOuterClass$MediationProvider$b;
.super Ljava/lang/Object;
.source "ClientInfoOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/ClientInfoOuterClass$MediationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field static final a:Lcom/google/protobuf/Internal$e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider$b;

    invoke-direct {v0}, Lgateway/v1/ClientInfoOuterClass$MediationProvider$b;-><init>()V

    sput-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider$b;->a:Lcom/google/protobuf/Internal$e;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .registers 2

    invoke-static {p1}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->forNumber(I)Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

###### Class gateway.v1.ClientInfoOuterClass.Platform (gateway.v1.ClientInfoOuterClass$Platform)
.class public final enum Lgateway/v1/ClientInfoOuterClass$Platform;
.super Ljava/lang/Enum;
.source "ClientInfoOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/ClientInfoOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Platform"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/ClientInfoOuterClass$Platform$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgateway/v1/ClientInfoOuterClass$Platform;",
        ">;",
        "Lcom/google/protobuf/Internal$c;"
    }
.end annotation


# static fields
.field public static final enum a:Lgateway/v1/ClientInfoOuterClass$Platform;

.field public static final enum b:Lgateway/v1/ClientInfoOuterClass$Platform;

.field public static final enum c:Lgateway/v1/ClientInfoOuterClass$Platform;

.field public static final enum d:Lgateway/v1/ClientInfoOuterClass$Platform;

.field private static final e:Lcom/google/protobuf/Internal$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$d<",
            "Lgateway/v1/ClientInfoOuterClass$Platform;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lgateway/v1/ClientInfoOuterClass$Platform;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lgateway/v1/ClientInfoOuterClass$Platform;

    const-string v1, "PLATFORM_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgateway/v1/ClientInfoOuterClass$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgateway/v1/ClientInfoOuterClass$Platform;->a:Lgateway/v1/ClientInfoOuterClass$Platform;

    new-instance v1, Lgateway/v1/ClientInfoOuterClass$Platform;

    const-string v3, "PLATFORM_ANDROID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgateway/v1/ClientInfoOuterClass$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgateway/v1/ClientInfoOuterClass$Platform;->b:Lgateway/v1/ClientInfoOuterClass$Platform;

    new-instance v3, Lgateway/v1/ClientInfoOuterClass$Platform;

    const-string v5, "PLATFORM_IOS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgateway/v1/ClientInfoOuterClass$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgateway/v1/ClientInfoOuterClass$Platform;->c:Lgateway/v1/ClientInfoOuterClass$Platform;

    new-instance v5, Lgateway/v1/ClientInfoOuterClass$Platform;

    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Lgateway/v1/ClientInfoOuterClass$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lgateway/v1/ClientInfoOuterClass$Platform;->d:Lgateway/v1/ClientInfoOuterClass$Platform;

    const/4 v7, 0x4

    new-array v7, v7, [Lgateway/v1/ClientInfoOuterClass$Platform;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lgateway/v1/ClientInfoOuterClass$Platform;->f:[Lgateway/v1/ClientInfoOuterClass$Platform;

    new-instance v0, Lgateway/v1/ClientInfoOuterClass$Platform$a;

    invoke-direct {v0}, Lgateway/v1/ClientInfoOuterClass$Platform$a;-><init>()V

    sput-object v0, Lgateway/v1/ClientInfoOuterClass$Platform;->e:Lcom/google/protobuf/Internal$d;

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

    iput p3, p0, Lgateway/v1/ClientInfoOuterClass$Platform;->g:I

    return-void
.end method

.method public static forNumber(I)Lgateway/v1/ClientInfoOuterClass$Platform;
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    sget-object p0, Lgateway/v1/ClientInfoOuterClass$Platform;->c:Lgateway/v1/ClientInfoOuterClass$Platform;

    return-object p0

    :cond_d
    sget-object p0, Lgateway/v1/ClientInfoOuterClass$Platform;->b:Lgateway/v1/ClientInfoOuterClass$Platform;

    return-object p0

    :cond_10
    sget-object p0, Lgateway/v1/ClientInfoOuterClass$Platform;->a:Lgateway/v1/ClientInfoOuterClass$Platform;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$d<",
            "Lgateway/v1/ClientInfoOuterClass$Platform;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$Platform;->e:Lcom/google/protobuf/Internal$d;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$e;
    .registers 1

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$Platform$b;->a:Lcom/google/protobuf/Internal$e;

    return-object v0
.end method

.method public static valueOf(I)Lgateway/v1/ClientInfoOuterClass$Platform;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lgateway/v1/ClientInfoOuterClass$Platform;->forNumber(I)Lgateway/v1/ClientInfoOuterClass$Platform;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgateway/v1/ClientInfoOuterClass$Platform;
    .registers 2

    const-class v0, Lgateway/v1/ClientInfoOuterClass$Platform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgateway/v1/ClientInfoOuterClass$Platform;

    return-object p0
.end method

.method public static values()[Lgateway/v1/ClientInfoOuterClass$Platform;
    .registers 1

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$Platform;->f:[Lgateway/v1/ClientInfoOuterClass$Platform;

    invoke-virtual {v0}, [Lgateway/v1/ClientInfoOuterClass$Platform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgateway/v1/ClientInfoOuterClass$Platform;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 3

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$Platform;->d:Lgateway/v1/ClientInfoOuterClass$Platform;

    if-eq p0, v0, :cond_7

    iget v0, p0, Lgateway/v1/ClientInfoOuterClass$Platform;->g:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class gateway.v1.ClientInfoOuterClass.Platform.a (gateway.v1.ClientInfoOuterClass$Platform$a)
.class Lgateway/v1/ClientInfoOuterClass$Platform$a;
.super Ljava/lang/Object;
.source "ClientInfoOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/ClientInfoOuterClass$Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$d<",
        "Lgateway/v1/ClientInfoOuterClass$Platform;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lgateway/v1/ClientInfoOuterClass$Platform;
    .registers 2

    invoke-static {p1}, Lgateway/v1/ClientInfoOuterClass$Platform;->forNumber(I)Lgateway/v1/ClientInfoOuterClass$Platform;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$c;
    .registers 2

    invoke-virtual {p0, p1}, Lgateway/v1/ClientInfoOuterClass$Platform$a;->a(I)Lgateway/v1/ClientInfoOuterClass$Platform;

    move-result-object p1

    return-object p1
.end method

###### Class gateway.v1.ClientInfoOuterClass.Platform.b (gateway.v1.ClientInfoOuterClass$Platform$b)
.class final Lgateway/v1/ClientInfoOuterClass$Platform$b;
.super Ljava/lang/Object;
.source "ClientInfoOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/ClientInfoOuterClass$Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field static final a:Lcom/google/protobuf/Internal$e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lgateway/v1/ClientInfoOuterClass$Platform$b;

    invoke-direct {v0}, Lgateway/v1/ClientInfoOuterClass$Platform$b;-><init>()V

    sput-object v0, Lgateway/v1/ClientInfoOuterClass$Platform$b;->a:Lcom/google/protobuf/Internal$e;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .registers 2

    invoke-static {p1}, Lgateway/v1/ClientInfoOuterClass$Platform;->forNumber(I)Lgateway/v1/ClientInfoOuterClass$Platform;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

###### Class gateway.v1.ClientInfoOuterClass.a (gateway.v1.ClientInfoOuterClass$a)
.class synthetic Lgateway/v1/ClientInfoOuterClass$a;
.super Ljava/lang/Object;
.source "ClientInfoOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/ClientInfoOuterClass;
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

    sput-object v0, Lgateway/v1/ClientInfoOuterClass$a;->a:[I

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
    sget-object v0, Lgateway/v1/ClientInfoOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgateway/v1/ClientInfoOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgateway/v1/ClientInfoOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgateway/v1/ClientInfoOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgateway/v1/ClientInfoOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgateway/v1/ClientInfoOuterClass$a;->a:[I

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
