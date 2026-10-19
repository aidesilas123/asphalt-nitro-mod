###### Class gateway.v1.DeveloperConsentOuterClass (gateway.v1.DeveloperConsentOuterClass)
.class public final Lgateway/v1/DeveloperConsentOuterClass;
.super Ljava/lang/Object;
.source "DeveloperConsentOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;,
        Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;,
        Lgateway/v1/DeveloperConsentOuterClass$b;,
        Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;,
        Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;
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

###### Class gateway.v1.DeveloperConsentOuterClass.DeveloperConsent (gateway.v1.DeveloperConsentOuterClass$DeveloperConsent)
.class public final Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DeveloperConsentOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/DeveloperConsentOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeveloperConsent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

.field public static final OPTIONS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private options_:Lcom/google/protobuf/Internal$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$j<",
            "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-direct {v0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;-><init>()V

    sput-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    const-class v1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$j;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->options_:Lcom/google/protobuf/Internal$j;

    return-void
.end method

.method static synthetic access$1100()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .registers 1

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    return-object v0
.end method

.method static synthetic access$1200(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;ILgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->setOptions(ILgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V

    return-void
.end method

.method static synthetic access$1300(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->addOptions(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V

    return-void
.end method

.method static synthetic access$1400(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;ILgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->addOptions(ILgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V

    return-void
.end method

.method static synthetic access$1500(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;Ljava/lang/Iterable;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->addAllOptions(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1600(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->clearOptions()V

    return-void
.end method

.method static synthetic access$1700(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->removeOptions(I)V

    return-void
.end method

.method private addAllOptions(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->ensureOptionsIsMutable()V

    iget-object v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->options_:Lcom/google/protobuf/Internal$j;

    invoke-static {p1, v0}, Lcom/google/protobuf/a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addOptions(ILgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V
    .registers 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->ensureOptionsIsMutable()V

    iget-object v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->options_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOptions(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->ensureOptionsIsMutable()V

    iget-object v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->options_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearOptions()V
    .registers 2

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$j;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->options_:Lcom/google/protobuf/Internal$j;

    return-void
.end method

.method private ensureOptionsIsMutable()V
    .registers 3

    iget-object v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->options_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$j;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$j;)Lcom/google/protobuf/Internal$j;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->options_:Lcom/google/protobuf/Internal$j;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .registers 1

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    return-object v0
.end method

.method public static newBuilder()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent$a;
    .registers 1

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent$a;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent$a;
    .registers 2

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/g1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/g1;

    move-result-object v0

    return-object v0
.end method

.method private removeOptions(I)V
    .registers 3

    invoke-direct {p0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->ensureOptionsIsMutable()V

    iget-object v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->options_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setOptions(ILgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V
    .registers 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->ensureOptionsIsMutable()V

    iget-object v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->options_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lgateway/v1/DeveloperConsentOuterClass$a;->a:[I

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
    sget-object p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_32

    const-class p2, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->PARSER:Lcom/google/protobuf/g1;

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
    sget-object p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    return-object p1

    :pswitch_36
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "options_"

    aput-object v0, p1, p3

    const-class p3, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    sget-object p3, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4b
    new-instance p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent$a;

    invoke-direct {p1, p3}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent$a;-><init>(Lgateway/v1/DeveloperConsentOuterClass$a;)V

    return-object p1

    :pswitch_51
    new-instance p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-direct {p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;-><init>()V

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

.method public getOptions(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .registers 3

    iget-object v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->options_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p1
.end method

.method public getOptionsCount()I
    .registers 2

    iget-object v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->options_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->options_:Lcom/google/protobuf/Internal$j;

    return-object v0
.end method

.method public getOptionsOrBuilder(I)Lgateway/v1/DeveloperConsentOuterClass$b;
    .registers 3

    iget-object v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->options_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgateway/v1/DeveloperConsentOuterClass$b;

    return-object p1
.end method

.method public getOptionsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lgateway/v1/DeveloperConsentOuterClass$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->options_:Lcom/google/protobuf/Internal$j;

    return-object v0
.end method

###### Class gateway.v1.DeveloperConsentOuterClass.DeveloperConsent.a (gateway.v1.DeveloperConsentOuterClass$DeveloperConsent$a)
.class public final Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "DeveloperConsentOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent$a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->access$1100()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/DeveloperConsentOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Iterable;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;",
            ">;)",
            "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent$a;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {v0, p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->access$1500(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public getOptionsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-virtual {v0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->getOptionsList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class gateway.v1.DeveloperConsentOuterClass.DeveloperConsentChoice (gateway.v1.DeveloperConsentOuterClass$DeveloperConsentChoice)
.class public final enum Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;
.super Ljava/lang/Enum;
.source "DeveloperConsentOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/DeveloperConsentOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeveloperConsentChoice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;",
        ">;",
        "Lcom/google/protobuf/Internal$c;"
    }
.end annotation


# static fields
.field public static final enum a:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

.field public static final enum b:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

.field public static final enum c:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

.field public static final enum d:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

.field private static final e:Lcom/google/protobuf/Internal$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$d<",
            "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    const-string v1, "DEVELOPER_CONSENT_CHOICE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->a:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    new-instance v1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    const-string v3, "DEVELOPER_CONSENT_CHOICE_TRUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->b:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    new-instance v3, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    const-string v5, "DEVELOPER_CONSENT_CHOICE_FALSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->c:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    new-instance v5, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->d:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    const/4 v7, 0x4

    new-array v7, v7, [Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->f:[Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    new-instance v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice$a;

    invoke-direct {v0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice$a;-><init>()V

    sput-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->e:Lcom/google/protobuf/Internal$d;

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

    iput p3, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->g:I

    return-void
.end method

.method public static forNumber(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    sget-object p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->c:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    return-object p0

    :cond_d
    sget-object p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->b:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    return-object p0

    :cond_10
    sget-object p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->a:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$d<",
            "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->e:Lcom/google/protobuf/Internal$d;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$e;
    .registers 1

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice$b;->a:Lcom/google/protobuf/Internal$e;

    return-object v0
.end method

.method public static valueOf(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->forNumber(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;
    .registers 2

    const-class v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    return-object p0
.end method

.method public static values()[Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;
    .registers 1

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->f:[Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    invoke-virtual {v0}, [Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 3

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->d:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    if-eq p0, v0, :cond_7

    iget v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->g:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class gateway.v1.DeveloperConsentOuterClass.DeveloperConsentChoice.a (gateway.v1.DeveloperConsentOuterClass$DeveloperConsentChoice$a)
.class Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice$a;
.super Ljava/lang/Object;
.source "DeveloperConsentOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$d<",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;",
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
.method public a(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;
    .registers 2

    invoke-static {p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->forNumber(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$c;
    .registers 2

    invoke-virtual {p0, p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice$a;->a(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    move-result-object p1

    return-object p1
.end method

###### Class gateway.v1.DeveloperConsentOuterClass.DeveloperConsentChoice.b (gateway.v1.DeveloperConsentOuterClass$DeveloperConsentChoice$b)
.class final Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice$b;
.super Ljava/lang/Object;
.source "DeveloperConsentOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;
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

    new-instance v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice$b;

    invoke-direct {v0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice$b;-><init>()V

    sput-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice$b;->a:Lcom/google/protobuf/Internal$e;

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

    invoke-static {p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->forNumber(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

###### Class gateway.v1.DeveloperConsentOuterClass.DeveloperConsentOption (gateway.v1.DeveloperConsentOuterClass$DeveloperConsentOption)
.class public final Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DeveloperConsentOuterClass.java"

# interfaces
.implements Lgateway/v1/DeveloperConsentOuterClass$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/DeveloperConsentOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeveloperConsentOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;",
        ">;",
        "Lgateway/v1/DeveloperConsentOuterClass$b;"
    }
.end annotation


# static fields
.field public static final CUSTOM_TYPE_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

.field private static volatile PARSER:Lcom/google/protobuf/g1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private customType_:Ljava/lang/String;

.field private type_:I

.field private value_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-direct {v0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;-><init>()V

    sput-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    const-class v1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->customType_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .registers 1

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object v0
.end method

.method static synthetic access$100(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->setTypeValue(I)V

    return-void
.end method

.method static synthetic access$200(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->setType(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;)V

    return-void
.end method

.method static synthetic access$300(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->clearType()V

    return-void
.end method

.method static synthetic access$400(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->setCustomType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->clearCustomType()V

    return-void
.end method

.method static synthetic access$600(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->setCustomTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->setValueValue(I)V

    return-void
.end method

.method static synthetic access$800(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->setValue(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;)V

    return-void
.end method

.method static synthetic access$900(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->clearValue()V

    return-void
.end method

.method private clearCustomType()V
    .registers 2

    iget v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->bitField0_:I

    invoke-static {}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->getDefaultInstance()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    move-result-object v0

    invoke-virtual {v0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->getCustomType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->customType_:Ljava/lang/String;

    return-void
.end method

.method private clearType()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->type_:I

    return-void
.end method

.method private clearValue()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->value_:I

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .registers 1

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object v0
.end method

.method public static newBuilder()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;
    .registers 1

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;
    .registers 2

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/g1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/g1;

    move-result-object v0

    return-object v0
.end method

.method private setCustomType(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->bitField0_:I

    iput-object p1, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->customType_:Ljava/lang/String;

    return-void
.end method

.method private setCustomTypeBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->customType_:Ljava/lang/String;

    iget p1, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->bitField0_:I

    return-void
.end method

.method private setType(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;)V
    .registers 2

    invoke-virtual {p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->getNumber()I

    move-result p1

    iput p1, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->type_:I

    return-void
.end method

.method private setTypeValue(I)V
    .registers 2

    iput p1, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->type_:I

    return-void
.end method

.method private setValue(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;)V
    .registers 2

    invoke-virtual {p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->getNumber()I

    move-result p1

    iput p1, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->value_:I

    return-void
.end method

.method private setValueValue(I)V
    .registers 2

    iput p1, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->value_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lgateway/v1/DeveloperConsentOuterClass$a;->a:[I

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
    sget-object p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_32

    const-class p2, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->PARSER:Lcom/google/protobuf/g1;

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
    sget-object p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p1

    :pswitch_36
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "type_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "customType_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "value_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000c\u0002\u1208\u0000\u0003\u000c"

    sget-object p3, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_55
    new-instance p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;

    invoke-direct {p1, p3}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;-><init>(Lgateway/v1/DeveloperConsentOuterClass$a;)V

    return-object p1

    :pswitch_5b
    new-instance p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-direct {p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;-><init>()V

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

.method public getCustomType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->customType_:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    iget-object v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->customType_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;
    .registers 2

    iget v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->type_:I

    invoke-static {v0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->forNumber(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->h:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    :cond_a
    return-object v0
.end method

.method public getTypeValue()I
    .registers 2

    iget v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->type_:I

    return v0
.end method

.method public getValue()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;
    .registers 2

    iget v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->value_:I

    invoke-static {v0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->forNumber(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->d:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    :cond_a
    return-object v0
.end method

.method public getValueValue()I
    .registers 2

    iget v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->value_:I

    return v0
.end method

.method public hasCustomType()Z
    .registers 3

    iget v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

###### Class gateway.v1.DeveloperConsentOuterClass.DeveloperConsentOption.a (gateway.v1.DeveloperConsentOuterClass$DeveloperConsentOption$a)
.class public final Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "DeveloperConsentOuterClass.java"

# interfaces
.implements Lgateway/v1/DeveloperConsentOuterClass$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;",
        ">;",
        "Lgateway/v1/DeveloperConsentOuterClass$b;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->access$000()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/DeveloperConsentOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-virtual {v0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->getType()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->access$400(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->access$200(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;)V

    return-object p0
.end method

.method public f(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->access$800(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;)V

    return-object p0
.end method

###### Class gateway.v1.DeveloperConsentOuterClass.DeveloperConsentType (gateway.v1.DeveloperConsentOuterClass$DeveloperConsentType)
.class public final enum Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;
.super Ljava/lang/Enum;
.source "DeveloperConsentOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/DeveloperConsentOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeveloperConsentType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;",
        ">;",
        "Lcom/google/protobuf/Internal$c;"
    }
.end annotation


# static fields
.field public static final enum a:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final enum b:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final enum c:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final enum d:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final enum e:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final enum f:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final enum g:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field public static final enum h:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

.field private static final i:Lcom/google/protobuf/Internal$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$d<",
            "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic j:[Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;


# instance fields
.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v1, "DEVELOPER_CONSENT_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->a:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    new-instance v1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v3, "DEVELOPER_CONSENT_TYPE_CUSTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->b:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    new-instance v3, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v5, "DEVELOPER_CONSENT_TYPE_NON_BEHAVIORAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->c:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    new-instance v5, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v7, "DEVELOPER_CONSENT_TYPE_PIPL_CONSENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->d:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    new-instance v7, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v9, "DEVELOPER_CONSENT_TYPE_PRIVACY_CONSENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->e:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    new-instance v9, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v11, "DEVELOPER_CONSENT_TYPE_GDPR_CONSENT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->f:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    new-instance v11, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v13, "DEVELOPER_CONSENT_TYPE_USER_OVER_AGE_LIMIT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->g:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    new-instance v13, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const-string v15, "UNRECOGNIZED"

    const/4 v14, 0x7

    const/4 v12, -0x1

    invoke-direct {v13, v15, v14, v12}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->h:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    const/16 v12, 0x8

    new-array v12, v12, [Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    sput-object v12, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->j:[Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    new-instance v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType$a;

    invoke-direct {v0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType$a;-><init>()V

    sput-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->i:Lcom/google/protobuf/Internal$d;

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

    iput p3, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->k:I

    return-void
.end method

.method public static forNumber(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;
    .registers 1

    packed-switch p0, :pswitch_data_1a

    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    sget-object p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->g:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    :pswitch_8
    sget-object p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->f:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    :pswitch_b
    sget-object p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->e:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    :pswitch_e
    sget-object p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->d:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    :pswitch_11
    sget-object p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->c:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    :pswitch_14
    sget-object p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->b:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    :pswitch_17
    sget-object p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->a:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$d<",
            "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->i:Lcom/google/protobuf/Internal$d;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$e;
    .registers 1

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType$b;->a:Lcom/google/protobuf/Internal$e;

    return-object v0
.end method

.method public static valueOf(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->forNumber(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;
    .registers 2

    const-class v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object p0
.end method

.method public static values()[Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;
    .registers 1

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->j:[Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    invoke-virtual {v0}, [Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 3

    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->h:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    if-eq p0, v0, :cond_7

    iget v0, p0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->k:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class gateway.v1.DeveloperConsentOuterClass.DeveloperConsentType.a (gateway.v1.DeveloperConsentOuterClass$DeveloperConsentType$a)
.class Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType$a;
.super Ljava/lang/Object;
.source "DeveloperConsentOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$d<",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;",
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
.method public a(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;
    .registers 2

    invoke-static {p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->forNumber(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$c;
    .registers 2

    invoke-virtual {p0, p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType$a;->a(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    move-result-object p1

    return-object p1
.end method

###### Class gateway.v1.DeveloperConsentOuterClass.DeveloperConsentType.b (gateway.v1.DeveloperConsentOuterClass$DeveloperConsentType$b)
.class final Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType$b;
.super Ljava/lang/Object;
.source "DeveloperConsentOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;
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

    new-instance v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType$b;

    invoke-direct {v0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType$b;-><init>()V

    sput-object v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType$b;->a:Lcom/google/protobuf/Internal$e;

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

    invoke-static {p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->forNumber(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

###### Class gateway.v1.DeveloperConsentOuterClass.a (gateway.v1.DeveloperConsentOuterClass$a)
.class synthetic Lgateway/v1/DeveloperConsentOuterClass$a;
.super Ljava/lang/Object;
.source "DeveloperConsentOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/DeveloperConsentOuterClass;
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

    sput-object v0, Lgateway/v1/DeveloperConsentOuterClass$a;->a:[I

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
    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgateway/v1/DeveloperConsentOuterClass$a;->a:[I

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

###### Class gateway.v1.DeveloperConsentOuterClass.b (gateway.v1.DeveloperConsentOuterClass$b)
.class public interface abstract Lgateway/v1/DeveloperConsentOuterClass$b;
.super Ljava/lang/Object;
.source "DeveloperConsentOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/DeveloperConsentOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation
