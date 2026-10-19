###### Class gateway.v1.NativeConfigurationOuterClass (gateway.v1.NativeConfigurationOuterClass)
.class public final Lgateway/v1/NativeConfigurationOuterClass;
.super Ljava/lang/Object;
.source "NativeConfigurationOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;,
        Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;,
        Lgateway/v1/NativeConfigurationOuterClass$b;,
        Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;,
        Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;,
        Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;,
        Lgateway/v1/NativeConfigurationOuterClass$c;,
        Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;,
        Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
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

###### Class gateway.v1.NativeConfigurationOuterClass.AdOperationsConfiguration (gateway.v1.NativeConfigurationOuterClass$AdOperationsConfiguration)
.class public final Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/NativeConfigurationOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdOperationsConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;",
        "Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

.field public static final LOAD_TIMEOUT_MS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/g1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHOW_TIMEOUT_MS_FIELD_NUMBER:I = 0x2


# instance fields
.field private loadTimeoutMs_:I

.field private showTimeoutMs_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    invoke-direct {v0}, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;-><init>()V

    sput-object v0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    const-class v1, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$5900()Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .registers 1

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    return-object v0
.end method

.method static synthetic access$6000(Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->setLoadTimeoutMs(I)V

    return-void
.end method

.method static synthetic access$6100(Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->clearLoadTimeoutMs()V

    return-void
.end method

.method static synthetic access$6200(Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->setShowTimeoutMs(I)V

    return-void
.end method

.method static synthetic access$6300(Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->clearShowTimeoutMs()V

    return-void
.end method

.method private clearLoadTimeoutMs()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->loadTimeoutMs_:I

    return-void
.end method

.method private clearShowTimeoutMs()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->showTimeoutMs_:I

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .registers 1

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    return-object v0
.end method

.method public static newBuilder()Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$a;
    .registers 1

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$a;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$a;
    .registers 2

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/g1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/g1;

    move-result-object v0

    return-object v0
.end method

.method private setLoadTimeoutMs(I)V
    .registers 2

    iput p1, p0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->loadTimeoutMs_:I

    return-void
.end method

.method private setShowTimeoutMs(I)V
    .registers 2

    iput p1, p0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->showTimeoutMs_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lgateway/v1/NativeConfigurationOuterClass$a;->a:[I

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
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_32

    const-class p2, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->PARSER:Lcom/google/protobuf/g1;

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
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    return-object p1

    :pswitch_36
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "loadTimeoutMs_"

    aput-object v0, p1, p3

    const-string p3, "showTimeoutMs_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0002\u0004"

    sget-object p3, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4b
    new-instance p1, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$a;

    invoke-direct {p1, p3}, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$a;-><init>(Lgateway/v1/NativeConfigurationOuterClass$a;)V

    return-object p1

    :pswitch_51
    new-instance p1, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    invoke-direct {p1}, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;-><init>()V

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

.method public getLoadTimeoutMs()I
    .registers 2

    iget v0, p0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->loadTimeoutMs_:I

    return v0
.end method

.method public getShowTimeoutMs()I
    .registers 2

    iget v0, p0, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->showTimeoutMs_:I

    return v0
.end method

###### Class gateway.v1.NativeConfigurationOuterClass.AdOperationsConfiguration.a (gateway.v1.NativeConfigurationOuterClass$AdOperationsConfiguration$a)
.class public final Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;",
        "Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->access$5900()Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/NativeConfigurationOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$a;-><init>()V

    return-void
.end method

###### Class gateway.v1.NativeConfigurationOuterClass.DiagnosticEventsConfiguration (gateway.v1.NativeConfigurationOuterClass$DiagnosticEventsConfiguration)
.class public final Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/NativeConfigurationOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DiagnosticEventsConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;",
        "Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALLOWED_EVENTS_FIELD_NUMBER:I = 0x6

.field public static final BLOCKED_EVENTS_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

.field public static final ENABLED_FIELD_NUMBER:I = 0x1

.field public static final MAX_BATCH_INTERVAL_MS_FIELD_NUMBER:I = 0x3

.field public static final MAX_BATCH_SIZE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/g1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEVERITY_FIELD_NUMBER:I = 0x5

.field public static final TTM_ENABLED_FIELD_NUMBER:I = 0x4

.field private static final allowedEvents_converter_:Lcom/google/protobuf/Internal$h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$h$a<",
            "Ljava/lang/Integer;",
            "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;",
            ">;"
        }
    .end annotation
.end field

.field private static final blockedEvents_converter_:Lcom/google/protobuf/Internal$h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$h$a<",
            "Ljava/lang/Integer;",
            "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allowedEventsMemoizedSerializedSize:I

.field private allowedEvents_:Lcom/google/protobuf/Internal$g;

.field private blockedEventsMemoizedSerializedSize:I

.field private blockedEvents_:Lcom/google/protobuf/Internal$g;

.field private enabled_:Z

.field private maxBatchIntervalMs_:I

.field private maxBatchSize_:I

.field private severity_:I

.field private ttmEnabled_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$a;

    invoke-direct {v0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$a;-><init>()V

    sput-object v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->allowedEvents_converter_:Lcom/google/protobuf/Internal$h$a;

    new-instance v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$b;

    invoke-direct {v0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$b;-><init>()V

    sput-object v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->blockedEvents_converter_:Lcom/google/protobuf/Internal$h$a;

    new-instance v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-direct {v0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;-><init>()V

    sput-object v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    const-class v1, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$g;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->allowedEvents_:Lcom/google/protobuf/Internal$g;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$g;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->blockedEvents_:Lcom/google/protobuf/Internal$g;

    return-void
.end method

.method static synthetic access$3200()Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
    .registers 1

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-object v0
.end method

.method static synthetic access$3300(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$3400(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->clearEnabled()V

    return-void
.end method

.method static synthetic access$3500(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->setMaxBatchSize(I)V

    return-void
.end method

.method static synthetic access$3600(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->clearMaxBatchSize()V

    return-void
.end method

.method static synthetic access$3700(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->setMaxBatchIntervalMs(I)V

    return-void
.end method

.method static synthetic access$3800(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->clearMaxBatchIntervalMs()V

    return-void
.end method

.method static synthetic access$3900(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->setTtmEnabled(Z)V

    return-void
.end method

.method static synthetic access$4000(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->clearTtmEnabled()V

    return-void
.end method

.method static synthetic access$4100(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->setSeverityValue(I)V

    return-void
.end method

.method static synthetic access$4200(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->setSeverity(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;)V

    return-void
.end method

.method static synthetic access$4300(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->clearSeverity()V

    return-void
.end method

.method static synthetic access$4400(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;ILgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->setAllowedEvents(ILgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)V

    return-void
.end method

.method static synthetic access$4500(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->addAllowedEvents(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)V

    return-void
.end method

.method static synthetic access$4600(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;Ljava/lang/Iterable;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->addAllAllowedEvents(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$4700(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->clearAllowedEvents()V

    return-void
.end method

.method static synthetic access$4800(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->setAllowedEventsValue(II)V

    return-void
.end method

.method static synthetic access$4900(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->addAllowedEventsValue(I)V

    return-void
.end method

.method static synthetic access$5000(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;Ljava/lang/Iterable;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->addAllAllowedEventsValue(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$5100(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;ILgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->setBlockedEvents(ILgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)V

    return-void
.end method

.method static synthetic access$5200(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->addBlockedEvents(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)V

    return-void
.end method

.method static synthetic access$5300(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;Ljava/lang/Iterable;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->addAllBlockedEvents(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$5400(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->clearBlockedEvents()V

    return-void
.end method

.method static synthetic access$5500(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->setBlockedEventsValue(II)V

    return-void
.end method

.method static synthetic access$5600(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->addBlockedEventsValue(I)V

    return-void
.end method

.method static synthetic access$5700(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;Ljava/lang/Iterable;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->addAllBlockedEventsValue(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllAllowedEvents(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->ensureAllowedEventsIsMutable()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    iget-object v1, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->allowedEvents_:Lcom/google/protobuf/Internal$g;

    invoke-virtual {v0}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->getNumber()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$g;->addInt(I)V

    goto :goto_7

    :cond_1d
    return-void
.end method

.method private addAllAllowedEventsValue(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->ensureAllowedEventsIsMutable()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->allowedEvents_:Lcom/google/protobuf/Internal$g;

    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$g;->addInt(I)V

    goto :goto_7

    :cond_1d
    return-void
.end method

.method private addAllBlockedEvents(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->ensureBlockedEventsIsMutable()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    iget-object v1, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->blockedEvents_:Lcom/google/protobuf/Internal$g;

    invoke-virtual {v0}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->getNumber()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$g;->addInt(I)V

    goto :goto_7

    :cond_1d
    return-void
.end method

.method private addAllBlockedEventsValue(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->ensureBlockedEventsIsMutable()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->blockedEvents_:Lcom/google/protobuf/Internal$g;

    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$g;->addInt(I)V

    goto :goto_7

    :cond_1d
    return-void
.end method

.method private addAllowedEvents(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->ensureAllowedEventsIsMutable()V

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->allowedEvents_:Lcom/google/protobuf/Internal$g;

    invoke-virtual {p1}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->getNumber()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$g;->addInt(I)V

    return-void
.end method

.method private addAllowedEventsValue(I)V
    .registers 3

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->ensureAllowedEventsIsMutable()V

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->allowedEvents_:Lcom/google/protobuf/Internal$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$g;->addInt(I)V

    return-void
.end method

.method private addBlockedEvents(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->ensureBlockedEventsIsMutable()V

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->blockedEvents_:Lcom/google/protobuf/Internal$g;

    invoke-virtual {p1}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->getNumber()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$g;->addInt(I)V

    return-void
.end method

.method private addBlockedEventsValue(I)V
    .registers 3

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->ensureBlockedEventsIsMutable()V

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->blockedEvents_:Lcom/google/protobuf/Internal$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$g;->addInt(I)V

    return-void
.end method

.method private clearAllowedEvents()V
    .registers 2

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$g;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->allowedEvents_:Lcom/google/protobuf/Internal$g;

    return-void
.end method

.method private clearBlockedEvents()V
    .registers 2

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$g;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->blockedEvents_:Lcom/google/protobuf/Internal$g;

    return-void
.end method

.method private clearEnabled()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->enabled_:Z

    return-void
.end method

.method private clearMaxBatchIntervalMs()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->maxBatchIntervalMs_:I

    return-void
.end method

.method private clearMaxBatchSize()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->maxBatchSize_:I

    return-void
.end method

.method private clearSeverity()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->severity_:I

    return-void
.end method

.method private clearTtmEnabled()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->ttmEnabled_:Z

    return-void
.end method

.method private ensureAllowedEventsIsMutable()V
    .registers 3

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->allowedEvents_:Lcom/google/protobuf/Internal$g;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$g;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$g;)Lcom/google/protobuf/Internal$g;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->allowedEvents_:Lcom/google/protobuf/Internal$g;

    :cond_e
    return-void
.end method

.method private ensureBlockedEventsIsMutable()V
    .registers 3

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->blockedEvents_:Lcom/google/protobuf/Internal$g;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$g;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$g;)Lcom/google/protobuf/Internal$g;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->blockedEvents_:Lcom/google/protobuf/Internal$g;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
    .registers 1

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-object v0
.end method

.method public static newBuilder()Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;
    .registers 1

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;
    .registers 2

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/g1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/g1;

    move-result-object v0

    return-object v0
.end method

.method private setAllowedEvents(ILgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)V
    .registers 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->ensureAllowedEventsIsMutable()V

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->allowedEvents_:Lcom/google/protobuf/Internal$g;

    invoke-virtual {p2}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->getNumber()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$g;->setInt(II)I

    return-void
.end method

.method private setAllowedEventsValue(II)V
    .registers 4

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->ensureAllowedEventsIsMutable()V

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->allowedEvents_:Lcom/google/protobuf/Internal$g;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$g;->setInt(II)I

    return-void
.end method

.method private setBlockedEvents(ILgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)V
    .registers 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->ensureBlockedEventsIsMutable()V

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->blockedEvents_:Lcom/google/protobuf/Internal$g;

    invoke-virtual {p2}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->getNumber()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$g;->setInt(II)I

    return-void
.end method

.method private setBlockedEventsValue(II)V
    .registers 4

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->ensureBlockedEventsIsMutable()V

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->blockedEvents_:Lcom/google/protobuf/Internal$g;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$g;->setInt(II)I

    return-void
.end method

.method private setEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->enabled_:Z

    return-void
.end method

.method private setMaxBatchIntervalMs(I)V
    .registers 2

    iput p1, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->maxBatchIntervalMs_:I

    return-void
.end method

.method private setMaxBatchSize(I)V
    .registers 2

    iput p1, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->maxBatchSize_:I

    return-void
.end method

.method private setSeverity(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;)V
    .registers 2

    invoke-virtual {p1}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->getNumber()I

    move-result p1

    iput p1, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->severity_:I

    return-void
.end method

.method private setSeverityValue(I)V
    .registers 2

    iput p1, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->severity_:I

    return-void
.end method

.method private setTtmEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->ttmEnabled_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lgateway/v1/NativeConfigurationOuterClass$a;->a:[I

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
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_32

    const-class p2, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->PARSER:Lcom/google/protobuf/g1;

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
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-object p1

    :pswitch_36
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "enabled_"

    aput-object v0, p1, p3

    const-string p3, "maxBatchSize_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "maxBatchIntervalMs_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "ttmEnabled_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "severity_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "allowedEvents_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "blockedEvents_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0002\u0000\u0001\u0007\u0002\u0004\u0003\u0004\u0004\u0007\u0005\u000c\u0006,\u0007,"

    sget-object p3, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_64
    new-instance p1, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;

    invoke-direct {p1, p3}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;-><init>(Lgateway/v1/NativeConfigurationOuterClass$a;)V

    return-object p1

    :pswitch_6a
    new-instance p1, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-direct {p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;-><init>()V

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

.method public getAllowedEvents(I)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;
    .registers 3

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->allowedEvents_:Lcom/google/protobuf/Internal$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$g;->getInt(I)I

    move-result p1

    invoke-static {p1}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->forNumber(I)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    move-result-object p1

    if-nez p1, :cond_e

    sget-object p1, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->c:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    :cond_e
    return-object p1
.end method

.method public getAllowedEventsCount()I
    .registers 2

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->allowedEvents_:Lcom/google/protobuf/Internal$g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAllowedEventsList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/Internal$h;

    iget-object v1, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->allowedEvents_:Lcom/google/protobuf/Internal$g;

    sget-object v2, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->allowedEvents_converter_:Lcom/google/protobuf/Internal$h$a;

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$h;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$h$a;)V

    return-object v0
.end method

.method public getAllowedEventsValue(I)I
    .registers 3

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->allowedEvents_:Lcom/google/protobuf/Internal$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$g;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getAllowedEventsValueList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->allowedEvents_:Lcom/google/protobuf/Internal$g;

    return-object v0
.end method

.method public getBlockedEvents(I)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;
    .registers 3

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->blockedEvents_:Lcom/google/protobuf/Internal$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$g;->getInt(I)I

    move-result p1

    invoke-static {p1}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->forNumber(I)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    move-result-object p1

    if-nez p1, :cond_e

    sget-object p1, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->c:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    :cond_e
    return-object p1
.end method

.method public getBlockedEventsCount()I
    .registers 2

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->blockedEvents_:Lcom/google/protobuf/Internal$g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBlockedEventsList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/Internal$h;

    iget-object v1, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->blockedEvents_:Lcom/google/protobuf/Internal$g;

    sget-object v2, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->blockedEvents_converter_:Lcom/google/protobuf/Internal$h$a;

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$h;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$h$a;)V

    return-object v0
.end method

.method public getBlockedEventsValue(I)I
    .registers 3

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->blockedEvents_:Lcom/google/protobuf/Internal$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$g;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getBlockedEventsValueList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->blockedEvents_:Lcom/google/protobuf/Internal$g;

    return-object v0
.end method

.method public getEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->enabled_:Z

    return v0
.end method

.method public getMaxBatchIntervalMs()I
    .registers 2

    iget v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->maxBatchIntervalMs_:I

    return v0
.end method

.method public getMaxBatchSize()I
    .registers 2

    iget v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->maxBatchSize_:I

    return v0
.end method

.method public getSeverity()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;
    .registers 2

    iget v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->severity_:I

    invoke-static {v0}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->forNumber(I)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->g:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    :cond_a
    return-object v0
.end method

.method public getSeverityValue()I
    .registers 2

    iget v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->severity_:I

    return v0
.end method

.method public getTtmEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->ttmEnabled_:Z

    return v0
.end method

###### Class gateway.v1.NativeConfigurationOuterClass.DiagnosticEventsConfiguration.a (gateway.v1.NativeConfigurationOuterClass$DiagnosticEventsConfiguration$a)
.class Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$a;
.super Ljava/lang/Object;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$h$a<",
        "Ljava/lang/Integer;",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;",
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
.method public a(Ljava/lang/Integer;)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->forNumber(I)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    move-result-object p1

    if-nez p1, :cond_c

    sget-object p1, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->c:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    :cond_c
    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$a;->a(Ljava/lang/Integer;)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    move-result-object p1

    return-object p1
.end method

###### Class gateway.v1.NativeConfigurationOuterClass.DiagnosticEventsConfiguration.b (gateway.v1.NativeConfigurationOuterClass$DiagnosticEventsConfiguration$b)
.class Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$b;
.super Ljava/lang/Object;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$h$a<",
        "Ljava/lang/Integer;",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;",
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
.method public a(Ljava/lang/Integer;)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->forNumber(I)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    move-result-object p1

    if-nez p1, :cond_c

    sget-object p1, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->c:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    :cond_c
    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$b;->a(Ljava/lang/Integer;)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    move-result-object p1

    return-object p1
.end method

###### Class gateway.v1.NativeConfigurationOuterClass.DiagnosticEventsConfiguration.c (gateway.v1.NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c)
.class public final Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;",
        "Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->access$3200()Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/NativeConfigurationOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Z)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-static {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->access$3300(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;Z)V

    return-object p0
.end method

.method public d(I)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-static {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->access$3700(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;I)V

    return-object p0
.end method

.method public e(I)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-static {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->access$3500(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;I)V

    return-object p0
.end method

.method public f(Z)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-static {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->access$3900(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;Z)V

    return-object p0
.end method

###### Class gateway.v1.NativeConfigurationOuterClass.FeatureFlags (gateway.v1.NativeConfigurationOuterClass$FeatureFlags)
.class public final Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/NativeConfigurationOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureFlags"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;",
        "Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

.field public static final OPENGL_GPU_ENABLED_FIELD_NUMBER:I = 0x1

.field public static final OPPORTUNITY_ID_PLACEMENT_VALIDATION_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private openglGpuEnabled_:Z

.field private opportunityIdPlacementValidation_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-direct {v0}, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;-><init>()V

    sput-object v0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    const-class v1, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$8800()Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;
    .registers 1

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object v0
.end method

.method static synthetic access$8900(Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->setOpenglGpuEnabled(Z)V

    return-void
.end method

.method static synthetic access$9000(Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->clearOpenglGpuEnabled()V

    return-void
.end method

.method static synthetic access$9100(Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->setOpportunityIdPlacementValidation(Z)V

    return-void
.end method

.method static synthetic access$9200(Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->clearOpportunityIdPlacementValidation()V

    return-void
.end method

.method private clearOpenglGpuEnabled()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->openglGpuEnabled_:Z

    return-void
.end method

.method private clearOpportunityIdPlacementValidation()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->opportunityIdPlacementValidation_:Z

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;
    .registers 1

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object v0
.end method

.method public static newBuilder()Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags$a;
    .registers 1

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags$a;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;)Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags$a;
    .registers 2

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/g1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/g1;

    move-result-object v0

    return-object v0
.end method

.method private setOpenglGpuEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->openglGpuEnabled_:Z

    return-void
.end method

.method private setOpportunityIdPlacementValidation(Z)V
    .registers 2

    iput-boolean p1, p0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->opportunityIdPlacementValidation_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lgateway/v1/NativeConfigurationOuterClass$a;->a:[I

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
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_32

    const-class p2, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->PARSER:Lcom/google/protobuf/g1;

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
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-object p1

    :pswitch_36
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "openglGpuEnabled_"

    aput-object v0, p1, p3

    const-string p3, "opportunityIdPlacementValidation_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0007\u0002\u0007"

    sget-object p3, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4b
    new-instance p1, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags$a;

    invoke-direct {p1, p3}, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags$a;-><init>(Lgateway/v1/NativeConfigurationOuterClass$a;)V

    return-object p1

    :pswitch_51
    new-instance p1, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-direct {p1}, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;-><init>()V

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

.method public getOpenglGpuEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->openglGpuEnabled_:Z

    return v0
.end method

.method public getOpportunityIdPlacementValidation()Z
    .registers 2

    iget-boolean v0, p0, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->opportunityIdPlacementValidation_:Z

    return v0
.end method

###### Class gateway.v1.NativeConfigurationOuterClass.FeatureFlags.a (gateway.v1.NativeConfigurationOuterClass$FeatureFlags$a)
.class public final Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;",
        "Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags$a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->access$8800()Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/NativeConfigurationOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags$a;-><init>()V

    return-void
.end method

###### Class gateway.v1.NativeConfigurationOuterClass.NativeConfiguration (gateway.v1.NativeConfigurationOuterClass$NativeConfiguration)
.class public final Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lgateway/v1/NativeConfigurationOuterClass$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/NativeConfigurationOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;",
        "Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;",
        ">;",
        "Lgateway/v1/NativeConfigurationOuterClass$b;"
    }
.end annotation


# static fields
.field public static final AD_OPERATIONS_FIELD_NUMBER:I = 0x6

.field public static final AD_POLICY_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

.field public static final DIAGNOSTIC_EVENTS_FIELD_NUMBER:I = 0x1

.field public static final FEATURE_FLAGS_FIELD_NUMBER:I = 0x7

.field public static final INIT_POLICY_FIELD_NUMBER:I = 0x2

.field public static final OPERATIVE_EVENT_POLICY_FIELD_NUMBER:I = 0x4

.field public static final OTHER_POLICY_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adOperations_:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

.field private adPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

.field private diagnosticEvents_:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

.field private featureFlags_:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

.field private initPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

.field private operativeEventPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

.field private otherPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-direct {v0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;-><init>()V

    sput-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    const-class v1, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$6500()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 1

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object v0
.end method

.method static synthetic access$6600(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->setDiagnosticEvents(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V

    return-void
.end method

.method static synthetic access$6700(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeDiagnosticEvents(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V

    return-void
.end method

.method static synthetic access$6800(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearDiagnosticEvents()V

    return-void
.end method

.method static synthetic access$6900(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->setInitPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$7000(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeInitPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$7100(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearInitPolicy()V

    return-void
.end method

.method static synthetic access$7200(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->setAdPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$7300(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeAdPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$7400(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearAdPolicy()V

    return-void
.end method

.method static synthetic access$7500(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->setOperativeEventPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$7600(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeOperativeEventPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$7700(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearOperativeEventPolicy()V

    return-void
.end method

.method static synthetic access$7800(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->setOtherPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$7900(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeOtherPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-void
.end method

.method static synthetic access$8000(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearOtherPolicy()V

    return-void
.end method

.method static synthetic access$8100(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->setAdOperations(Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V

    return-void
.end method

.method static synthetic access$8200(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeAdOperations(Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V

    return-void
.end method

.method static synthetic access$8300(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearAdOperations()V

    return-void
.end method

.method static synthetic access$8400(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->setFeatureFlags(Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;)V

    return-void
.end method

.method static synthetic access$8500(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->mergeFeatureFlags(Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;)V

    return-void
.end method

.method static synthetic access$8600(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->clearFeatureFlags()V

    return-void
.end method

.method private clearAdOperations()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    return-void
.end method

.method private clearAdPolicy()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void
.end method

.method private clearDiagnosticEvents()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-void
.end method

.method private clearFeatureFlags()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-void
.end method

.method private clearInitPolicy()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void
.end method

.method private clearOperativeEventPolicy()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void
.end method

.method private clearOtherPolicy()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 1

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object v0
.end method

.method private mergeAdOperations(Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    invoke-static {v0}, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->newBuilder(Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    :goto_24
    return-void
.end method

.method private mergeAdPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->newBuilder(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    :goto_24
    return-void
.end method

.method private mergeDiagnosticEvents(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    invoke-static {v0}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->newBuilder(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    :goto_24
    return-void
.end method

.method private mergeFeatureFlags(Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    invoke-static {v0}, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->newBuilder(Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;)Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    :goto_24
    return-void
.end method

.method private mergeInitPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->newBuilder(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    :goto_24
    return-void
.end method

.method private mergeOperativeEventPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->newBuilder(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    :goto_24
    return-void
.end method

.method private mergeOtherPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->newBuilder(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    :goto_24
    return-void
.end method

.method public static newBuilder()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;
    .registers 1

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;
    .registers 2

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/g1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/g1;

    move-result-object v0

    return-object v0
.end method

.method private setAdOperations(Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    return-void
.end method

.method private setAdPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void
.end method

.method private setDiagnosticEvents(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    return-void
.end method

.method private setFeatureFlags(Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    return-void
.end method

.method private setInitPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void
.end method

.method private setOperativeEventPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void
.end method

.method private setOtherPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lgateway/v1/NativeConfigurationOuterClass$a;->a:[I

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
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_32

    const-class p2, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->PARSER:Lcom/google/protobuf/g1;

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
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object p1

    :pswitch_36
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "diagnosticEvents_"

    aput-object v0, p1, p3

    const-string p3, "initPolicy_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "adPolicy_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "operativeEventPolicy_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "otherPolicy_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "adOperations_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "featureFlags_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\t\u0002\t\u0003\t\u0004\t\u0005\t\u0006\t\u0007\t"

    sget-object p3, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_64
    new-instance p1, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;

    invoke-direct {p1, p3}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;-><init>(Lgateway/v1/NativeConfigurationOuterClass$a;)V

    return-object p1

    :pswitch_6a
    new-instance p1, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-direct {p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;-><init>()V

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

.method public getAdOperations()Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .registers 2

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getAdPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 2

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getDiagnosticEvents()Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
    .registers 2

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getFeatureFlags()Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;
    .registers 2

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getInitPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 2

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getOperativeEventPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 2

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getOtherPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 2

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public hasAdOperations()Z
    .registers 2

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adOperations_:Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasAdPolicy()Z
    .registers 2

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->adPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasDiagnosticEvents()Z
    .registers 2

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->diagnosticEvents_:Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasFeatureFlags()Z
    .registers 2

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->featureFlags_:Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasInitPolicy()Z
    .registers 2

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->initPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasOperativeEventPolicy()Z
    .registers 2

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->operativeEventPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasOtherPolicy()Z
    .registers 2

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->otherPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

###### Class gateway.v1.NativeConfigurationOuterClass.NativeConfiguration.a (gateway.v1.NativeConfigurationOuterClass$NativeConfiguration$a)
.class public final Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lgateway/v1/NativeConfigurationOuterClass$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;",
        "Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;",
        ">;",
        "Lgateway/v1/NativeConfigurationOuterClass$b;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->access$6500()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/NativeConfigurationOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->access$7200(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-object p0
.end method

.method public d(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->access$6600(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V

    return-object p0
.end method

.method public e(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->access$6900(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-object p0
.end method

.method public f(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->access$7500(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-object p0
.end method

.method public g(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-static {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->access$7800(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-object p0
.end method

.method public getAdOperations()Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->getAdOperations()Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getAdPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->getAdPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getDiagnosticEvents()Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->getDiagnosticEvents()Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureFlags()Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->getFeatureFlags()Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object v0

    return-object v0
.end method

.method public getInitPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->getInitPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getOperativeEventPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->getOperativeEventPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getOtherPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->getOtherPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    return-object v0
.end method

.method public hasAdOperations()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->hasAdOperations()Z

    move-result v0

    return v0
.end method

.method public hasAdPolicy()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->hasAdPolicy()Z

    move-result v0

    return v0
.end method

.method public hasDiagnosticEvents()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->hasDiagnosticEvents()Z

    move-result v0

    return v0
.end method

.method public hasFeatureFlags()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->hasFeatureFlags()Z

    move-result v0

    return v0
.end method

.method public hasInitPolicy()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->hasInitPolicy()Z

    move-result v0

    return v0
.end method

.method public hasOperativeEventPolicy()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->hasOperativeEventPolicy()Z

    move-result v0

    return v0
.end method

.method public hasOtherPolicy()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->hasOtherPolicy()Z

    move-result v0

    return v0
.end method

###### Class gateway.v1.NativeConfigurationOuterClass.RequestPolicy (gateway.v1.NativeConfigurationOuterClass$RequestPolicy)
.class public final Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lgateway/v1/NativeConfigurationOuterClass$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/NativeConfigurationOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;",
        ">;",
        "Lgateway/v1/NativeConfigurationOuterClass$c;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

.field private static volatile PARSER:Lcom/google/protobuf/g1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETRY_POLICY_FIELD_NUMBER:I = 0x1

.field public static final TIMEOUT_POLICY_FIELD_NUMBER:I = 0x2


# instance fields
.field private retryPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

.field private timeoutPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-direct {v0}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;-><init>()V

    sput-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    const-class v1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$2400()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 1

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-object v0
.end method

.method static synthetic access$2500(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->setRetryPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V

    return-void
.end method

.method static synthetic access$2600(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->mergeRetryPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V

    return-void
.end method

.method static synthetic access$2700(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->clearRetryPolicy()V

    return-void
.end method

.method static synthetic access$2800(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->setTimeoutPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V

    return-void
.end method

.method static synthetic access$2900(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->mergeTimeoutPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V

    return-void
.end method

.method static synthetic access$3000(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->clearTimeoutPolicy()V

    return-void
.end method

.method private clearRetryPolicy()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->retryPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-void
.end method

.method private clearTimeoutPolicy()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->timeoutPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 1

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-object v0
.end method

.method private mergeRetryPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->retryPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->retryPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->newBuilder(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->retryPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->retryPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    :goto_24
    return-void
.end method

.method private mergeTimeoutPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->timeoutPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->timeoutPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0}, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->newBuilder(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->timeoutPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->timeoutPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    :goto_24
    return-void
.end method

.method public static newBuilder()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;
    .registers 1

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;
    .registers 2

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/g1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/g1;

    move-result-object v0

    return-object v0
.end method

.method private setRetryPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->retryPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-void
.end method

.method private setTimeoutPolicy(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->timeoutPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lgateway/v1/NativeConfigurationOuterClass$a;->a:[I

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
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_32

    const-class p2, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->PARSER:Lcom/google/protobuf/g1;

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
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    return-object p1

    :pswitch_36
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "retryPolicy_"

    aput-object v0, p1, p3

    const-string p3, "timeoutPolicy_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t"

    sget-object p3, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4b
    new-instance p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;

    invoke-direct {p1, p3}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;-><init>(Lgateway/v1/NativeConfigurationOuterClass$a;)V

    return-object p1

    :pswitch_51
    new-instance p1, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-direct {p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;-><init>()V

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

.method public getRetryPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .registers 2

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->retryPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getTimeoutPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .registers 2

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->timeoutPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public hasRetryPolicy()Z
    .registers 2

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->retryPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasTimeoutPolicy()Z
    .registers 2

    iget-object v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->timeoutPolicy_:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

###### Class gateway.v1.NativeConfigurationOuterClass.RequestPolicy.a (gateway.v1.NativeConfigurationOuterClass$RequestPolicy$a)
.class public final Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lgateway/v1/NativeConfigurationOuterClass$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;",
        ">;",
        "Lgateway/v1/NativeConfigurationOuterClass$c;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->access$2400()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/NativeConfigurationOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->access$2500(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V

    return-object p0
.end method

.method public d(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->access$2800(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V

    return-object p0
.end method

.method public getRetryPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->getRetryPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getTimeoutPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->getTimeoutPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    move-result-object v0

    return-object v0
.end method

.method public hasRetryPolicy()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->hasRetryPolicy()Z

    move-result v0

    return v0
.end method

.method public hasTimeoutPolicy()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-virtual {v0}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->hasTimeoutPolicy()Z

    move-result v0

    return v0
.end method

###### Class gateway.v1.NativeConfigurationOuterClass.RequestRetryPolicy (gateway.v1.NativeConfigurationOuterClass$RequestRetryPolicy)
.class public final Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/NativeConfigurationOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestRetryPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

.field public static final MAX_DURATION_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/g1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETRY_JITTER_PCT_FIELD_NUMBER:I = 0x4

.field public static final RETRY_MAX_INTERVAL_FIELD_NUMBER:I = 0x3

.field public static final RETRY_SCALING_FACTOR_FIELD_NUMBER:I = 0x5

.field public static final RETRY_WAIT_BASE_FIELD_NUMBER:I = 0x2

.field public static final SHOULD_STORE_LOCALLY_FIELD_NUMBER:I = 0x6


# instance fields
.field private maxDuration_:I

.field private retryJitterPct_:F

.field private retryMaxInterval_:I

.field private retryScalingFactor_:F

.field private retryWaitBase_:I

.field private shouldStoreLocally_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-direct {v0}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;-><init>()V

    sput-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    const-class v1, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .registers 1

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object v0
.end method

.method static synthetic access$100(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->setMaxDuration(I)V

    return-void
.end method

.method static synthetic access$1000(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->clearRetryScalingFactor()V

    return-void
.end method

.method static synthetic access$1100(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->setShouldStoreLocally(Z)V

    return-void
.end method

.method static synthetic access$1200(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->clearShouldStoreLocally()V

    return-void
.end method

.method static synthetic access$200(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->clearMaxDuration()V

    return-void
.end method

.method static synthetic access$300(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->setRetryWaitBase(I)V

    return-void
.end method

.method static synthetic access$400(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->clearRetryWaitBase()V

    return-void
.end method

.method static synthetic access$500(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->setRetryMaxInterval(I)V

    return-void
.end method

.method static synthetic access$600(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->clearRetryMaxInterval()V

    return-void
.end method

.method static synthetic access$700(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;F)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->setRetryJitterPct(F)V

    return-void
.end method

.method static synthetic access$800(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->clearRetryJitterPct()V

    return-void
.end method

.method static synthetic access$900(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;F)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->setRetryScalingFactor(F)V

    return-void
.end method

.method private clearMaxDuration()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->maxDuration_:I

    return-void
.end method

.method private clearRetryJitterPct()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryJitterPct_:F

    return-void
.end method

.method private clearRetryMaxInterval()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryMaxInterval_:I

    return-void
.end method

.method private clearRetryScalingFactor()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryScalingFactor_:F

    return-void
.end method

.method private clearRetryWaitBase()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryWaitBase_:I

    return-void
.end method

.method private clearShouldStoreLocally()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->shouldStoreLocally_:Z

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .registers 1

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object v0
.end method

.method public static newBuilder()Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;
    .registers 1

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;
    .registers 2

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/g1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/g1;

    move-result-object v0

    return-object v0
.end method

.method private setMaxDuration(I)V
    .registers 2

    iput p1, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->maxDuration_:I

    return-void
.end method

.method private setRetryJitterPct(F)V
    .registers 2

    iput p1, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryJitterPct_:F

    return-void
.end method

.method private setRetryMaxInterval(I)V
    .registers 2

    iput p1, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryMaxInterval_:I

    return-void
.end method

.method private setRetryScalingFactor(F)V
    .registers 2

    iput p1, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryScalingFactor_:F

    return-void
.end method

.method private setRetryWaitBase(I)V
    .registers 2

    iput p1, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryWaitBase_:I

    return-void
.end method

.method private setShouldStoreLocally(Z)V
    .registers 2

    iput-boolean p1, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->shouldStoreLocally_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lgateway/v1/NativeConfigurationOuterClass$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_6c

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
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_32

    const-class p2, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->PARSER:Lcom/google/protobuf/g1;

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
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p1

    :pswitch_36
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "maxDuration_"

    aput-object v0, p1, p3

    const-string p3, "retryWaitBase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "retryMaxInterval_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "retryJitterPct_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "retryScalingFactor_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "shouldStoreLocally_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003\u0004\u0004\u0001\u0005\u0001\u0006\u0007"

    sget-object p3, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5f
    new-instance p1, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;

    invoke-direct {p1, p3}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;-><init>(Lgateway/v1/NativeConfigurationOuterClass$a;)V

    return-object p1

    :pswitch_65
    new-instance p1, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-direct {p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;-><init>()V

    return-object p1

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_65
        :pswitch_5f
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getMaxDuration()I
    .registers 2

    iget v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->maxDuration_:I

    return v0
.end method

.method public getRetryJitterPct()F
    .registers 2

    iget v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryJitterPct_:F

    return v0
.end method

.method public getRetryMaxInterval()I
    .registers 2

    iget v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryMaxInterval_:I

    return v0
.end method

.method public getRetryScalingFactor()F
    .registers 2

    iget v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryScalingFactor_:F

    return v0
.end method

.method public getRetryWaitBase()I
    .registers 2

    iget v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryWaitBase_:I

    return v0
.end method

.method public getShouldStoreLocally()Z
    .registers 2

    iget-boolean v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->shouldStoreLocally_:Z

    return v0
.end method

###### Class gateway.v1.NativeConfigurationOuterClass.RequestRetryPolicy.a (gateway.v1.NativeConfigurationOuterClass$RequestRetryPolicy$a)
.class public final Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->access$000()Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/NativeConfigurationOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->access$100(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;I)V

    return-object p0
.end method

.method public d(F)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->access$700(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;F)V

    return-object p0
.end method

.method public e(I)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->access$300(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;I)V

    return-object p0
.end method

.method public f(Z)Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->access$1100(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;Z)V

    return-object p0
.end method

###### Class gateway.v1.NativeConfigurationOuterClass.RequestTimeoutPolicy (gateway.v1.NativeConfigurationOuterClass$RequestTimeoutPolicy)
.class public final Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/NativeConfigurationOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestTimeoutPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONNECT_TIMEOUT_MS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

.field public static final OVERALL_TIMEOUT_MS_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/g1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIMEOUT_MS_FIELD_NUMBER:I = 0x2

.field public static final WRITE_TIMEOUT_MS_FIELD_NUMBER:I = 0x3


# instance fields
.field private connectTimeoutMs_:I

.field private overallTimeoutMs_:I

.field private readTimeoutMs_:I

.field private writeTimeoutMs_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-direct {v0}, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;-><init>()V

    sput-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    const-class v1, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$1400()Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .registers 1

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object v0
.end method

.method static synthetic access$1500(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->setConnectTimeoutMs(I)V

    return-void
.end method

.method static synthetic access$1600(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->clearConnectTimeoutMs()V

    return-void
.end method

.method static synthetic access$1700(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->setReadTimeoutMs(I)V

    return-void
.end method

.method static synthetic access$1800(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->clearReadTimeoutMs()V

    return-void
.end method

.method static synthetic access$1900(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->setWriteTimeoutMs(I)V

    return-void
.end method

.method static synthetic access$2000(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->clearWriteTimeoutMs()V

    return-void
.end method

.method static synthetic access$2100(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->setOverallTimeoutMs(I)V

    return-void
.end method

.method static synthetic access$2200(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->clearOverallTimeoutMs()V

    return-void
.end method

.method private clearConnectTimeoutMs()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->connectTimeoutMs_:I

    return-void
.end method

.method private clearOverallTimeoutMs()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->overallTimeoutMs_:I

    return-void
.end method

.method private clearReadTimeoutMs()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->readTimeoutMs_:I

    return-void
.end method

.method private clearWriteTimeoutMs()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->writeTimeoutMs_:I

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .registers 1

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object v0
.end method

.method public static newBuilder()Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$a;
    .registers 1

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$a;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$a;
    .registers 2

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/g1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/g1;

    move-result-object v0

    return-object v0
.end method

.method private setConnectTimeoutMs(I)V
    .registers 2

    iput p1, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->connectTimeoutMs_:I

    return-void
.end method

.method private setOverallTimeoutMs(I)V
    .registers 2

    iput p1, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->overallTimeoutMs_:I

    return-void
.end method

.method private setReadTimeoutMs(I)V
    .registers 2

    iput p1, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->readTimeoutMs_:I

    return-void
.end method

.method private setWriteTimeoutMs(I)V
    .registers 2

    iput p1, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->writeTimeoutMs_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lgateway/v1/NativeConfigurationOuterClass$a;->a:[I

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
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_32

    const-class p2, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->PARSER:Lcom/google/protobuf/g1;

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
    sget-object p1, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    return-object p1

    :pswitch_36
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "connectTimeoutMs_"

    aput-object v0, p1, p3

    const-string p3, "readTimeoutMs_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "writeTimeoutMs_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "overallTimeoutMs_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003\u0004\u0004\u0004"

    sget-object p3, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->DEFAULT_INSTANCE:Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_55
    new-instance p1, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$a;

    invoke-direct {p1, p3}, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$a;-><init>(Lgateway/v1/NativeConfigurationOuterClass$a;)V

    return-object p1

    :pswitch_5b
    new-instance p1, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-direct {p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;-><init>()V

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

.method public getConnectTimeoutMs()I
    .registers 2

    iget v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->connectTimeoutMs_:I

    return v0
.end method

.method public getOverallTimeoutMs()I
    .registers 2

    iget v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->overallTimeoutMs_:I

    return v0
.end method

.method public getReadTimeoutMs()I
    .registers 2

    iget v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->readTimeoutMs_:I

    return v0
.end method

.method public getWriteTimeoutMs()I
    .registers 2

    iget v0, p0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->writeTimeoutMs_:I

    return v0
.end method

###### Class gateway.v1.NativeConfigurationOuterClass.RequestTimeoutPolicy.a (gateway.v1.NativeConfigurationOuterClass$RequestTimeoutPolicy$a)
.class public final Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->access$1400()Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/NativeConfigurationOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->access$1500(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;I)V

    return-object p0
.end method

.method public d(I)Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->access$1700(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;I)V

    return-object p0
.end method

.method public e(I)Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p1}, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->access$1900(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;I)V

    return-object p0
.end method

###### Class gateway.v1.NativeConfigurationOuterClass.a (gateway.v1.NativeConfigurationOuterClass$a)
.class synthetic Lgateway/v1/NativeConfigurationOuterClass$a;
.super Ljava/lang/Object;
.source "NativeConfigurationOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/NativeConfigurationOuterClass;
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

    sput-object v0, Lgateway/v1/NativeConfigurationOuterClass$a;->a:[I

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
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgateway/v1/NativeConfigurationOuterClass$a;->a:[I

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

###### Class gateway.v1.NativeConfigurationOuterClass.b (gateway.v1.NativeConfigurationOuterClass$b)
.class public interface abstract Lgateway/v1/NativeConfigurationOuterClass$b;
.super Ljava/lang/Object;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/NativeConfigurationOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract getAdOperations()Lgateway/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
.end method

.method public abstract getAdPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
.end method

.method public abstract getDiagnosticEvents()Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
.end method

.method public abstract getFeatureFlags()Lgateway/v1/NativeConfigurationOuterClass$FeatureFlags;
.end method

.method public abstract getInitPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
.end method

.method public abstract getOperativeEventPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
.end method

.method public abstract getOtherPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
.end method

.method public abstract hasAdOperations()Z
.end method

.method public abstract hasAdPolicy()Z
.end method

.method public abstract hasDiagnosticEvents()Z
.end method

.method public abstract hasFeatureFlags()Z
.end method

.method public abstract hasInitPolicy()Z
.end method

.method public abstract hasOperativeEventPolicy()Z
.end method

.method public abstract hasOtherPolicy()Z
.end method

###### Class gateway.v1.NativeConfigurationOuterClass.c (gateway.v1.NativeConfigurationOuterClass$c)
.class public interface abstract Lgateway/v1/NativeConfigurationOuterClass$c;
.super Ljava/lang/Object;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/NativeConfigurationOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract getRetryPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
.end method

.method public abstract getTimeoutPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
.end method

.method public abstract hasRetryPolicy()Z
.end method

.method public abstract hasTimeoutPolicy()Z
.end method
