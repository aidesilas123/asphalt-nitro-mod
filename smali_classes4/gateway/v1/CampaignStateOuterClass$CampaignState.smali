###### Class gateway.v1.CampaignStateOuterClass.CampaignState (gateway.v1.CampaignStateOuterClass$CampaignState)
.class public final Lgateway/v1/CampaignStateOuterClass$CampaignState;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CampaignStateOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/CampaignStateOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CampaignState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/CampaignStateOuterClass$CampaignState$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/CampaignStateOuterClass$CampaignState;",
        "Lgateway/v1/CampaignStateOuterClass$CampaignState$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

.field public static final LOADED_CAMPAIGNS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/g1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/CampaignStateOuterClass$CampaignState;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHOWN_CAMPAIGNS_FIELD_NUMBER:I = 0x2


# instance fields
.field private loadedCampaigns_:Lcom/google/protobuf/Internal$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$j<",
            "Lgateway/v1/CampaignStateOuterClass$Campaign;",
            ">;"
        }
    .end annotation
.end field

.field private shownCampaigns_:Lcom/google/protobuf/Internal$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$j<",
            "Lgateway/v1/CampaignStateOuterClass$Campaign;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-direct {v0}, Lgateway/v1/CampaignStateOuterClass$CampaignState;-><init>()V

    sput-object v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

    const-class v1, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$j;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->loadedCampaigns_:Lcom/google/protobuf/Internal$j;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$j;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->shownCampaigns_:Lcom/google/protobuf/Internal$j;

    return-void
.end method

.method static synthetic access$1700()Lgateway/v1/CampaignStateOuterClass$CampaignState;
    .registers 1

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

    return-object v0
.end method

.method static synthetic access$1800(Lgateway/v1/CampaignStateOuterClass$CampaignState;ILgateway/v1/CampaignStateOuterClass$Campaign;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->setLoadedCampaigns(ILgateway/v1/CampaignStateOuterClass$Campaign;)V

    return-void
.end method

.method static synthetic access$1900(Lgateway/v1/CampaignStateOuterClass$CampaignState;Lgateway/v1/CampaignStateOuterClass$Campaign;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->addLoadedCampaigns(Lgateway/v1/CampaignStateOuterClass$Campaign;)V

    return-void
.end method

.method static synthetic access$2000(Lgateway/v1/CampaignStateOuterClass$CampaignState;ILgateway/v1/CampaignStateOuterClass$Campaign;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->addLoadedCampaigns(ILgateway/v1/CampaignStateOuterClass$Campaign;)V

    return-void
.end method

.method static synthetic access$2100(Lgateway/v1/CampaignStateOuterClass$CampaignState;Ljava/lang/Iterable;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->addAllLoadedCampaigns(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2200(Lgateway/v1/CampaignStateOuterClass$CampaignState;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->clearLoadedCampaigns()V

    return-void
.end method

.method static synthetic access$2300(Lgateway/v1/CampaignStateOuterClass$CampaignState;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->removeLoadedCampaigns(I)V

    return-void
.end method

.method static synthetic access$2400(Lgateway/v1/CampaignStateOuterClass$CampaignState;ILgateway/v1/CampaignStateOuterClass$Campaign;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->setShownCampaigns(ILgateway/v1/CampaignStateOuterClass$Campaign;)V

    return-void
.end method

.method static synthetic access$2500(Lgateway/v1/CampaignStateOuterClass$CampaignState;Lgateway/v1/CampaignStateOuterClass$Campaign;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->addShownCampaigns(Lgateway/v1/CampaignStateOuterClass$Campaign;)V

    return-void
.end method

.method static synthetic access$2600(Lgateway/v1/CampaignStateOuterClass$CampaignState;ILgateway/v1/CampaignStateOuterClass$Campaign;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->addShownCampaigns(ILgateway/v1/CampaignStateOuterClass$Campaign;)V

    return-void
.end method

.method static synthetic access$2700(Lgateway/v1/CampaignStateOuterClass$CampaignState;Ljava/lang/Iterable;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->addAllShownCampaigns(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2800(Lgateway/v1/CampaignStateOuterClass$CampaignState;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->clearShownCampaigns()V

    return-void
.end method

.method static synthetic access$2900(Lgateway/v1/CampaignStateOuterClass$CampaignState;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->removeShownCampaigns(I)V

    return-void
.end method

.method private addAllLoadedCampaigns(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgateway/v1/CampaignStateOuterClass$Campaign;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->ensureLoadedCampaignsIsMutable()V

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->loadedCampaigns_:Lcom/google/protobuf/Internal$j;

    invoke-static {p1, v0}, Lcom/google/protobuf/a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllShownCampaigns(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgateway/v1/CampaignStateOuterClass$Campaign;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->ensureShownCampaignsIsMutable()V

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->shownCampaigns_:Lcom/google/protobuf/Internal$j;

    invoke-static {p1, v0}, Lcom/google/protobuf/a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addLoadedCampaigns(ILgateway/v1/CampaignStateOuterClass$Campaign;)V
    .registers 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->ensureLoadedCampaignsIsMutable()V

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->loadedCampaigns_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addLoadedCampaigns(Lgateway/v1/CampaignStateOuterClass$Campaign;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->ensureLoadedCampaignsIsMutable()V

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->loadedCampaigns_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addShownCampaigns(ILgateway/v1/CampaignStateOuterClass$Campaign;)V
    .registers 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->ensureShownCampaignsIsMutable()V

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->shownCampaigns_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addShownCampaigns(Lgateway/v1/CampaignStateOuterClass$Campaign;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->ensureShownCampaignsIsMutable()V

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->shownCampaigns_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearLoadedCampaigns()V
    .registers 2

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$j;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->loadedCampaigns_:Lcom/google/protobuf/Internal$j;

    return-void
.end method

.method private clearShownCampaigns()V
    .registers 2

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$j;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->shownCampaigns_:Lcom/google/protobuf/Internal$j;

    return-void
.end method

.method private ensureLoadedCampaignsIsMutable()V
    .registers 3

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->loadedCampaigns_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$j;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$j;)Lcom/google/protobuf/Internal$j;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->loadedCampaigns_:Lcom/google/protobuf/Internal$j;

    :cond_e
    return-void
.end method

.method private ensureShownCampaignsIsMutable()V
    .registers 3

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->shownCampaigns_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$j;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$j;)Lcom/google/protobuf/Internal$j;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->shownCampaigns_:Lcom/google/protobuf/Internal$j;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/CampaignStateOuterClass$CampaignState;
    .registers 1

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

    return-object v0
.end method

.method public static newBuilder()Lgateway/v1/CampaignStateOuterClass$CampaignState$a;
    .registers 1

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lgateway/v1/CampaignStateOuterClass$CampaignState$a;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/CampaignStateOuterClass$CampaignState;)Lgateway/v1/CampaignStateOuterClass$CampaignState$a;
    .registers 2

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$CampaignState$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/CampaignStateOuterClass$CampaignState;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/CampaignStateOuterClass$CampaignState;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/CampaignStateOuterClass$CampaignState;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/CampaignStateOuterClass$CampaignState;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/CampaignStateOuterClass$CampaignState;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/CampaignStateOuterClass$CampaignState;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/CampaignStateOuterClass$CampaignState;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/CampaignStateOuterClass$CampaignState;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/CampaignStateOuterClass$CampaignState;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/CampaignStateOuterClass$CampaignState;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/CampaignStateOuterClass$CampaignState;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/CampaignStateOuterClass$CampaignState;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/g1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/CampaignStateOuterClass$CampaignState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/g1;

    move-result-object v0

    return-object v0
.end method

.method private removeLoadedCampaigns(I)V
    .registers 3

    invoke-direct {p0}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->ensureLoadedCampaignsIsMutable()V

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->loadedCampaigns_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeShownCampaigns(I)V
    .registers 3

    invoke-direct {p0}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->ensureShownCampaignsIsMutable()V

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->shownCampaigns_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setLoadedCampaigns(ILgateway/v1/CampaignStateOuterClass$Campaign;)V
    .registers 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->ensureLoadedCampaignsIsMutable()V

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->loadedCampaigns_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setShownCampaigns(ILgateway/v1/CampaignStateOuterClass$Campaign;)V
    .registers 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->ensureShownCampaignsIsMutable()V

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->shownCampaigns_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const-class p2, Lgateway/v1/CampaignStateOuterClass$Campaign;

    sget-object p3, Lgateway/v1/CampaignStateOuterClass$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_60

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_15
    return-object v0

    :pswitch_16
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_1b
    sget-object p1, Lgateway/v1/CampaignStateOuterClass$CampaignState;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_34

    const-class p2, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    monitor-enter p2

    :try_start_22
    sget-object p1, Lgateway/v1/CampaignStateOuterClass$CampaignState;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_2f

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lgateway/v1/CampaignStateOuterClass$CampaignState;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lgateway/v1/CampaignStateOuterClass$CampaignState;->PARSER:Lcom/google/protobuf/g1;

    :cond_2f
    monitor-exit p2

    goto :goto_34

    :catchall_31
    move-exception p1

    monitor-exit p2
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_31

    throw p1

    :cond_34
    :goto_34
    return-object p1

    :pswitch_35
    sget-object p1, Lgateway/v1/CampaignStateOuterClass$CampaignState;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

    return-object p1

    :pswitch_38
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "loadedCampaigns_"

    aput-object v1, p1, v0

    aput-object p2, p1, p3

    const/4 p3, 0x2

    const-string v0, "shownCampaigns_"

    aput-object v0, p1, p3

    const/4 p3, 0x3

    aput-object p2, p1, p3

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001\u001b\u0002\u001b"

    sget-object p3, Lgateway/v1/CampaignStateOuterClass$CampaignState;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_53
    new-instance p1, Lgateway/v1/CampaignStateOuterClass$CampaignState$a;

    invoke-direct {p1, v0}, Lgateway/v1/CampaignStateOuterClass$CampaignState$a;-><init>(Lgateway/v1/CampaignStateOuterClass$a;)V

    return-object p1

    :pswitch_59
    new-instance p1, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-direct {p1}, Lgateway/v1/CampaignStateOuterClass$CampaignState;-><init>()V

    return-object p1

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_59
        :pswitch_53
        :pswitch_38
        :pswitch_35
        :pswitch_1b
        :pswitch_16
        :pswitch_15
    .end packed-switch
.end method

.method public getLoadedCampaigns(I)Lgateway/v1/CampaignStateOuterClass$Campaign;
    .registers 3

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->loadedCampaigns_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgateway/v1/CampaignStateOuterClass$Campaign;

    return-object p1
.end method

.method public getLoadedCampaignsCount()I
    .registers 2

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->loadedCampaigns_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLoadedCampaignsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgateway/v1/CampaignStateOuterClass$Campaign;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->loadedCampaigns_:Lcom/google/protobuf/Internal$j;

    return-object v0
.end method

.method public getLoadedCampaignsOrBuilder(I)Lgateway/v1/CampaignStateOuterClass$b;
    .registers 3

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->loadedCampaigns_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgateway/v1/CampaignStateOuterClass$b;

    return-object p1
.end method

.method public getLoadedCampaignsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lgateway/v1/CampaignStateOuterClass$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->loadedCampaigns_:Lcom/google/protobuf/Internal$j;

    return-object v0
.end method

.method public getShownCampaigns(I)Lgateway/v1/CampaignStateOuterClass$Campaign;
    .registers 3

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->shownCampaigns_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgateway/v1/CampaignStateOuterClass$Campaign;

    return-object p1
.end method

.method public getShownCampaignsCount()I
    .registers 2

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->shownCampaigns_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getShownCampaignsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgateway/v1/CampaignStateOuterClass$Campaign;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->shownCampaigns_:Lcom/google/protobuf/Internal$j;

    return-object v0
.end method

.method public getShownCampaignsOrBuilder(I)Lgateway/v1/CampaignStateOuterClass$b;
    .registers 3

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->shownCampaigns_:Lcom/google/protobuf/Internal$j;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgateway/v1/CampaignStateOuterClass$b;

    return-object p1
.end method

.method public getShownCampaignsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lgateway/v1/CampaignStateOuterClass$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$CampaignState;->shownCampaigns_:Lcom/google/protobuf/Internal$j;

    return-object v0
.end method
