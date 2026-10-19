###### Class gateway.v1.AllowedPiiOuterClass (gateway.v1.AllowedPiiOuterClass)
.class public final Lgateway/v1/AllowedPiiOuterClass;
.super Ljava/lang/Object;
.source "AllowedPiiOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/AllowedPiiOuterClass$AllowedPii;
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

###### Class gateway.v1.AllowedPiiOuterClass.AllowedPii (gateway.v1.AllowedPiiOuterClass$AllowedPii)
.class public final Lgateway/v1/AllowedPiiOuterClass$AllowedPii;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AllowedPiiOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/AllowedPiiOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AllowedPii"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/AllowedPiiOuterClass$AllowedPii$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/AllowedPiiOuterClass$AllowedPii;",
        "Lgateway/v1/AllowedPiiOuterClass$AllowedPii$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

.field public static final IDFA_FIELD_NUMBER:I = 0x1

.field public static final IDFV_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/AllowedPiiOuterClass$AllowedPii;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private idfa_:Z

.field private idfv_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-direct {v0}, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;-><init>()V

    sput-object v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    const-class v1, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lgateway/v1/AllowedPiiOuterClass$AllowedPii;
    .registers 1

    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    return-object v0
.end method

.method static synthetic access$100(Lgateway/v1/AllowedPiiOuterClass$AllowedPii;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->setIdfa(Z)V

    return-void
.end method

.method static synthetic access$200(Lgateway/v1/AllowedPiiOuterClass$AllowedPii;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->clearIdfa()V

    return-void
.end method

.method static synthetic access$300(Lgateway/v1/AllowedPiiOuterClass$AllowedPii;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->setIdfv(Z)V

    return-void
.end method

.method static synthetic access$400(Lgateway/v1/AllowedPiiOuterClass$AllowedPii;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->clearIdfv()V

    return-void
.end method

.method private clearIdfa()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->idfa_:Z

    return-void
.end method

.method private clearIdfv()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->idfv_:Z

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/AllowedPiiOuterClass$AllowedPii;
    .registers 1

    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    return-object v0
.end method

.method public static newBuilder()Lgateway/v1/AllowedPiiOuterClass$AllowedPii$a;
    .registers 1

    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii$a;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/AllowedPiiOuterClass$AllowedPii;)Lgateway/v1/AllowedPiiOuterClass$AllowedPii$a;
    .registers 2

    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/AllowedPiiOuterClass$AllowedPii;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/AllowedPiiOuterClass$AllowedPii;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/AllowedPiiOuterClass$AllowedPii;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/AllowedPiiOuterClass$AllowedPii;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/AllowedPiiOuterClass$AllowedPii;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/AllowedPiiOuterClass$AllowedPii;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/AllowedPiiOuterClass$AllowedPii;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/AllowedPiiOuterClass$AllowedPii;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/AllowedPiiOuterClass$AllowedPii;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/AllowedPiiOuterClass$AllowedPii;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/AllowedPiiOuterClass$AllowedPii;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/AllowedPiiOuterClass$AllowedPii;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/g1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/AllowedPiiOuterClass$AllowedPii;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/g1;

    move-result-object v0

    return-object v0
.end method

.method private setIdfa(Z)V
    .registers 2

    iput-boolean p1, p0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->idfa_:Z

    return-void
.end method

.method private setIdfv(Z)V
    .registers 2

    iput-boolean p1, p0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->idfv_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lgateway/v1/AllowedPiiOuterClass$a;->a:[I

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
    sget-object p1, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_32

    const-class p2, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->PARSER:Lcom/google/protobuf/g1;

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
    sget-object p1, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    return-object p1

    :pswitch_36
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "idfa_"

    aput-object v0, p1, p3

    const-string p3, "idfv_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0007\u0002\u0007"

    sget-object p3, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->DEFAULT_INSTANCE:Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4b
    new-instance p1, Lgateway/v1/AllowedPiiOuterClass$AllowedPii$a;

    invoke-direct {p1, p3}, Lgateway/v1/AllowedPiiOuterClass$AllowedPii$a;-><init>(Lgateway/v1/AllowedPiiOuterClass$a;)V

    return-object p1

    :pswitch_51
    new-instance p1, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-direct {p1}, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;-><init>()V

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

.method public getIdfa()Z
    .registers 2

    iget-boolean v0, p0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->idfa_:Z

    return v0
.end method

.method public getIdfv()Z
    .registers 2

    iget-boolean v0, p0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->idfv_:Z

    return v0
.end method

###### Class gateway.v1.AllowedPiiOuterClass.AllowedPii.a (gateway.v1.AllowedPiiOuterClass$AllowedPii$a)
.class public final Lgateway/v1/AllowedPiiOuterClass$AllowedPii$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "AllowedPiiOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/AllowedPiiOuterClass$AllowedPii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/AllowedPiiOuterClass$AllowedPii;",
        "Lgateway/v1/AllowedPiiOuterClass$AllowedPii$a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->access$000()Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/AllowedPiiOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/AllowedPiiOuterClass$AllowedPii$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-virtual {v0}, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->getIdfa()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-virtual {v0}, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->getIdfv()Z

    move-result v0

    return v0
.end method

.method public e(Z)Lgateway/v1/AllowedPiiOuterClass$AllowedPii$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0, p1}, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->access$100(Lgateway/v1/AllowedPiiOuterClass$AllowedPii;Z)V

    return-object p0
.end method

.method public f(Z)Lgateway/v1/AllowedPiiOuterClass$AllowedPii$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0, p1}, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->access$300(Lgateway/v1/AllowedPiiOuterClass$AllowedPii;Z)V

    return-object p0
.end method

###### Class gateway.v1.AllowedPiiOuterClass.a (gateway.v1.AllowedPiiOuterClass$a)
.class synthetic Lgateway/v1/AllowedPiiOuterClass$a;
.super Ljava/lang/Object;
.source "AllowedPiiOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/AllowedPiiOuterClass;
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

    sput-object v0, Lgateway/v1/AllowedPiiOuterClass$a;->a:[I

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
    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgateway/v1/AllowedPiiOuterClass$a;->a:[I

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
