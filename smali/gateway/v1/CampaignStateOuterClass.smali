###### Class gateway.v1.CampaignStateOuterClass (gateway.v1.CampaignStateOuterClass)
.class public final Lgateway/v1/CampaignStateOuterClass;
.super Ljava/lang/Object;
.source "CampaignStateOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/CampaignStateOuterClass$CampaignState;,
        Lgateway/v1/CampaignStateOuterClass$Campaign;,
        Lgateway/v1/CampaignStateOuterClass$b;
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

###### Class gateway.v1.CampaignStateOuterClass.Campaign (gateway.v1.CampaignStateOuterClass$Campaign)
.class public final Lgateway/v1/CampaignStateOuterClass$Campaign;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CampaignStateOuterClass.java"

# interfaces
.implements Lgateway/v1/CampaignStateOuterClass$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/CampaignStateOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Campaign"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/CampaignStateOuterClass$Campaign$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgateway/v1/CampaignStateOuterClass$Campaign;",
        "Lgateway/v1/CampaignStateOuterClass$Campaign$a;",
        ">;",
        "Lgateway/v1/CampaignStateOuterClass$b;"
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x2

.field public static final DATA_VERSION_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

.field public static final IMPRESSION_OPPORTUNITY_ID_FIELD_NUMBER:I = 0x4

.field public static final LOAD_TIMESTAMP_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/g1; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/CampaignStateOuterClass$Campaign;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLACEMENT_ID_FIELD_NUMBER:I = 0x3

.field public static final SHOW_TIMESTAMP_FIELD_NUMBER:I = 0x6


# instance fields
.field private bitField0_:I

.field private dataVersion_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private impressionOpportunityId_:Lcom/google/protobuf/ByteString;

.field private loadTimestamp_:Lgateway/v1/TimestampsOuterClass$Timestamps;

.field private placementId_:Ljava/lang/String;

.field private showTimestamp_:Lgateway/v1/TimestampsOuterClass$Timestamps;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-direct {v0}, Lgateway/v1/CampaignStateOuterClass$Campaign;-><init>()V

    sput-object v0, Lgateway/v1/CampaignStateOuterClass$Campaign;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

    const-class v1, Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->data_:Lcom/google/protobuf/ByteString;

    const-string v1, ""

    iput-object v1, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->placementId_:Ljava/lang/String;

    iput-object v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->impressionOpportunityId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lgateway/v1/CampaignStateOuterClass$Campaign;
    .registers 1

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$Campaign;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

    return-object v0
.end method

.method static synthetic access$100(Lgateway/v1/CampaignStateOuterClass$Campaign;I)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/CampaignStateOuterClass$Campaign;->setDataVersion(I)V

    return-void
.end method

.method static synthetic access$1000(Lgateway/v1/CampaignStateOuterClass$Campaign;Lgateway/v1/TimestampsOuterClass$Timestamps;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/CampaignStateOuterClass$Campaign;->setLoadTimestamp(Lgateway/v1/TimestampsOuterClass$Timestamps;)V

    return-void
.end method

.method static synthetic access$1100(Lgateway/v1/CampaignStateOuterClass$Campaign;Lgateway/v1/TimestampsOuterClass$Timestamps;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/CampaignStateOuterClass$Campaign;->mergeLoadTimestamp(Lgateway/v1/TimestampsOuterClass$Timestamps;)V

    return-void
.end method

.method static synthetic access$1200(Lgateway/v1/CampaignStateOuterClass$Campaign;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/CampaignStateOuterClass$Campaign;->clearLoadTimestamp()V

    return-void
.end method

.method static synthetic access$1300(Lgateway/v1/CampaignStateOuterClass$Campaign;Lgateway/v1/TimestampsOuterClass$Timestamps;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/CampaignStateOuterClass$Campaign;->setShowTimestamp(Lgateway/v1/TimestampsOuterClass$Timestamps;)V

    return-void
.end method

.method static synthetic access$1400(Lgateway/v1/CampaignStateOuterClass$Campaign;Lgateway/v1/TimestampsOuterClass$Timestamps;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/CampaignStateOuterClass$Campaign;->mergeShowTimestamp(Lgateway/v1/TimestampsOuterClass$Timestamps;)V

    return-void
.end method

.method static synthetic access$1500(Lgateway/v1/CampaignStateOuterClass$Campaign;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/CampaignStateOuterClass$Campaign;->clearShowTimestamp()V

    return-void
.end method

.method static synthetic access$200(Lgateway/v1/CampaignStateOuterClass$Campaign;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/CampaignStateOuterClass$Campaign;->clearDataVersion()V

    return-void
.end method

.method static synthetic access$300(Lgateway/v1/CampaignStateOuterClass$Campaign;Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/CampaignStateOuterClass$Campaign;->setData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lgateway/v1/CampaignStateOuterClass$Campaign;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/CampaignStateOuterClass$Campaign;->clearData()V

    return-void
.end method

.method static synthetic access$500(Lgateway/v1/CampaignStateOuterClass$Campaign;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/CampaignStateOuterClass$Campaign;->setPlacementId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lgateway/v1/CampaignStateOuterClass$Campaign;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/CampaignStateOuterClass$Campaign;->clearPlacementId()V

    return-void
.end method

.method static synthetic access$700(Lgateway/v1/CampaignStateOuterClass$Campaign;Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/CampaignStateOuterClass$Campaign;->setPlacementIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lgateway/v1/CampaignStateOuterClass$Campaign;Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Lgateway/v1/CampaignStateOuterClass$Campaign;->setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lgateway/v1/CampaignStateOuterClass$Campaign;)V
    .registers 1

    invoke-direct {p0}, Lgateway/v1/CampaignStateOuterClass$Campaign;->clearImpressionOpportunityId()V

    return-void
.end method

.method private clearData()V
    .registers 2

    invoke-static {}, Lgateway/v1/CampaignStateOuterClass$Campaign;->getDefaultInstance()Lgateway/v1/CampaignStateOuterClass$Campaign;

    move-result-object v0

    invoke-virtual {v0}, Lgateway/v1/CampaignStateOuterClass$Campaign;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearDataVersion()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->dataVersion_:I

    return-void
.end method

.method private clearImpressionOpportunityId()V
    .registers 2

    invoke-static {}, Lgateway/v1/CampaignStateOuterClass$Campaign;->getDefaultInstance()Lgateway/v1/CampaignStateOuterClass$Campaign;

    move-result-object v0

    invoke-virtual {v0}, Lgateway/v1/CampaignStateOuterClass$Campaign;->getImpressionOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->impressionOpportunityId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearLoadTimestamp()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->loadTimestamp_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    return-void
.end method

.method private clearPlacementId()V
    .registers 2

    invoke-static {}, Lgateway/v1/CampaignStateOuterClass$Campaign;->getDefaultInstance()Lgateway/v1/CampaignStateOuterClass$Campaign;

    move-result-object v0

    invoke-virtual {v0}, Lgateway/v1/CampaignStateOuterClass$Campaign;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->placementId_:Ljava/lang/String;

    return-void
.end method

.method private clearShowTimestamp()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->showTimestamp_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    iget v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lgateway/v1/CampaignStateOuterClass$Campaign;
    .registers 1

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$Campaign;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

    return-object v0
.end method

.method private mergeLoadTimestamp(Lgateway/v1/TimestampsOuterClass$Timestamps;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->loadTimestamp_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/TimestampsOuterClass$Timestamps;->getDefaultInstance()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->loadTimestamp_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0}, Lgateway/v1/TimestampsOuterClass$Timestamps;->newBuilder(Lgateway/v1/TimestampsOuterClass$Timestamps;)Lgateway/v1/TimestampsOuterClass$Timestamps$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/TimestampsOuterClass$Timestamps$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/TimestampsOuterClass$Timestamps;

    iput-object p1, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->loadTimestamp_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->loadTimestamp_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    :goto_24
    return-void
.end method

.method private mergeShowTimestamp(Lgateway/v1/TimestampsOuterClass$Timestamps;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->showTimestamp_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    if-eqz v0, :cond_22

    invoke-static {}, Lgateway/v1/TimestampsOuterClass$Timestamps;->getDefaultInstance()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object v1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->showTimestamp_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0}, Lgateway/v1/TimestampsOuterClass$Timestamps;->newBuilder(Lgateway/v1/TimestampsOuterClass$Timestamps;)Lgateway/v1/TimestampsOuterClass$Timestamps$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p1

    check-cast p1, Lgateway/v1/TimestampsOuterClass$Timestamps$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgateway/v1/TimestampsOuterClass$Timestamps;

    iput-object p1, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->showTimestamp_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    goto :goto_24

    :cond_22
    iput-object p1, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->showTimestamp_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    :goto_24
    iget p1, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lgateway/v1/CampaignStateOuterClass$Campaign$a;
    .registers 1

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$Campaign;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object v0

    check-cast v0, Lgateway/v1/CampaignStateOuterClass$Campaign$a;

    return-object v0
.end method

.method public static newBuilder(Lgateway/v1/CampaignStateOuterClass$Campaign;)Lgateway/v1/CampaignStateOuterClass$Campaign$a;
    .registers 2

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$Campaign;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$Campaign$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgateway/v1/CampaignStateOuterClass$Campaign;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$Campaign;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/CampaignStateOuterClass$Campaign;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$Campaign;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgateway/v1/CampaignStateOuterClass$Campaign;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$Campaign;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/CampaignStateOuterClass$Campaign;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$Campaign;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgateway/v1/CampaignStateOuterClass$Campaign;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$Campaign;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/CampaignStateOuterClass$Campaign;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$Campaign;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgateway/v1/CampaignStateOuterClass$Campaign;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$Campaign;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/CampaignStateOuterClass$Campaign;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$Campaign;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgateway/v1/CampaignStateOuterClass$Campaign;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$Campaign;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/CampaignStateOuterClass$Campaign;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$Campaign;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    return-object p0
.end method

.method public static parseFrom([B)Lgateway/v1/CampaignStateOuterClass$Campaign;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$Campaign;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgateway/v1/CampaignStateOuterClass$Campaign;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/d0;
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$Campaign;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/g1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Lgateway/v1/CampaignStateOuterClass$Campaign;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/CampaignStateOuterClass$Campaign;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/g1;

    move-result-object v0

    return-object v0
.end method

.method private setData(Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setDataVersion(I)V
    .registers 2

    iput p1, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->dataVersion_:I

    return-void
.end method

.method private setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->impressionOpportunityId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setLoadTimestamp(Lgateway/v1/TimestampsOuterClass$Timestamps;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->loadTimestamp_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    return-void
.end method

.method private setPlacementId(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->placementId_:Ljava/lang/String;

    return-void
.end method

.method private setPlacementIdBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->placementId_:Ljava/lang/String;

    return-void
.end method

.method private setShowTimestamp(Lgateway/v1/TimestampsOuterClass$Timestamps;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->showTimestamp_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    iget p1, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lgateway/v1/CampaignStateOuterClass$a;->a:[I

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
    sget-object p1, Lgateway/v1/CampaignStateOuterClass$Campaign;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_32

    const-class p2, Lgateway/v1/CampaignStateOuterClass$Campaign;

    monitor-enter p2

    :try_start_20
    sget-object p1, Lgateway/v1/CampaignStateOuterClass$Campaign;->PARSER:Lcom/google/protobuf/g1;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$c;

    sget-object p3, Lgateway/v1/CampaignStateOuterClass$Campaign;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$c;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lgateway/v1/CampaignStateOuterClass$Campaign;->PARSER:Lcom/google/protobuf/g1;

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
    sget-object p1, Lgateway/v1/CampaignStateOuterClass$Campaign;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

    return-object p1

    :pswitch_36
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "dataVersion_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "data_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "placementId_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "impressionOpportunityId_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "loadTimestamp_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "showTimestamp_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0004\u0002\n\u0003\u0208\u0004\n\u0005\t\u0006\u1009\u0000"

    sget-object p3, Lgateway/v1/CampaignStateOuterClass$Campaign;->DEFAULT_INSTANCE:Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/q0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_64
    new-instance p1, Lgateway/v1/CampaignStateOuterClass$Campaign$a;

    invoke-direct {p1, p3}, Lgateway/v1/CampaignStateOuterClass$Campaign$a;-><init>(Lgateway/v1/CampaignStateOuterClass$a;)V

    return-object p1

    :pswitch_6a
    new-instance p1, Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-direct {p1}, Lgateway/v1/CampaignStateOuterClass$Campaign;-><init>()V

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

.method public getData()Lcom/google/protobuf/ByteString;
    .registers 2

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDataVersion()I
    .registers 2

    iget v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->dataVersion_:I

    return v0
.end method

.method public getImpressionOpportunityId()Lcom/google/protobuf/ByteString;
    .registers 2

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->impressionOpportunityId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLoadTimestamp()Lgateway/v1/TimestampsOuterClass$Timestamps;
    .registers 2

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->loadTimestamp_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/TimestampsOuterClass$Timestamps;->getDefaultInstance()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->placementId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementIdBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->placementId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getShowTimestamp()Lgateway/v1/TimestampsOuterClass$Timestamps;
    .registers 2

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->showTimestamp_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    if-nez v0, :cond_8

    invoke-static {}, Lgateway/v1/TimestampsOuterClass$Timestamps;->getDefaultInstance()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public hasLoadTimestamp()Z
    .registers 2

    iget-object v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->loadTimestamp_:Lgateway/v1/TimestampsOuterClass$Timestamps;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasShowTimestamp()Z
    .registers 3

    iget v0, p0, Lgateway/v1/CampaignStateOuterClass$Campaign;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

###### Class gateway.v1.CampaignStateOuterClass.Campaign.a (gateway.v1.CampaignStateOuterClass$Campaign$a)
.class public final Lgateway/v1/CampaignStateOuterClass$Campaign$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "CampaignStateOuterClass.java"

# interfaces
.implements Lgateway/v1/CampaignStateOuterClass$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/CampaignStateOuterClass$Campaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/CampaignStateOuterClass$Campaign;",
        "Lgateway/v1/CampaignStateOuterClass$Campaign$a;",
        ">;",
        "Lgateway/v1/CampaignStateOuterClass$b;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/CampaignStateOuterClass$Campaign;->access$000()Lgateway/v1/CampaignStateOuterClass$Campaign;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/CampaignStateOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/CampaignStateOuterClass$Campaign$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/protobuf/ByteString;)Lgateway/v1/CampaignStateOuterClass$Campaign$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p1}, Lgateway/v1/CampaignStateOuterClass$Campaign;->access$300(Lgateway/v1/CampaignStateOuterClass$Campaign;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public d(I)Lgateway/v1/CampaignStateOuterClass$Campaign$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p1}, Lgateway/v1/CampaignStateOuterClass$Campaign;->access$100(Lgateway/v1/CampaignStateOuterClass$Campaign;I)V

    return-object p0
.end method

.method public e(Lcom/google/protobuf/ByteString;)Lgateway/v1/CampaignStateOuterClass$Campaign$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p1}, Lgateway/v1/CampaignStateOuterClass$Campaign;->access$800(Lgateway/v1/CampaignStateOuterClass$Campaign;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public f(Lgateway/v1/TimestampsOuterClass$Timestamps;)Lgateway/v1/CampaignStateOuterClass$Campaign$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p1}, Lgateway/v1/CampaignStateOuterClass$Campaign;->access$1000(Lgateway/v1/CampaignStateOuterClass$Campaign;Lgateway/v1/TimestampsOuterClass$Timestamps;)V

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lgateway/v1/CampaignStateOuterClass$Campaign$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p1}, Lgateway/v1/CampaignStateOuterClass$Campaign;->access$500(Lgateway/v1/CampaignStateOuterClass$Campaign;Ljava/lang/String;)V

    return-object p0
.end method

.method public getLoadTimestamp()Lgateway/v1/TimestampsOuterClass$Timestamps;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-virtual {v0}, Lgateway/v1/CampaignStateOuterClass$Campaign;->getLoadTimestamp()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object v0

    return-object v0
.end method

.method public getShowTimestamp()Lgateway/v1/TimestampsOuterClass$Timestamps;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-virtual {v0}, Lgateway/v1/CampaignStateOuterClass$Campaign;->getShowTimestamp()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object v0

    return-object v0
.end method

.method public h(Lgateway/v1/TimestampsOuterClass$Timestamps;)Lgateway/v1/CampaignStateOuterClass$Campaign$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p1}, Lgateway/v1/CampaignStateOuterClass$Campaign;->access$1300(Lgateway/v1/CampaignStateOuterClass$Campaign;Lgateway/v1/TimestampsOuterClass$Timestamps;)V

    return-object p0
.end method

.method public hasLoadTimestamp()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-virtual {v0}, Lgateway/v1/CampaignStateOuterClass$Campaign;->hasLoadTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasShowTimestamp()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/CampaignStateOuterClass$Campaign;

    invoke-virtual {v0}, Lgateway/v1/CampaignStateOuterClass$Campaign;->hasShowTimestamp()Z

    move-result v0

    return v0
.end method

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

###### Class gateway.v1.CampaignStateOuterClass.CampaignState.a (gateway.v1.CampaignStateOuterClass$CampaignState$a)
.class public final Lgateway/v1/CampaignStateOuterClass$CampaignState$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "CampaignStateOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/CampaignStateOuterClass$CampaignState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/CampaignStateOuterClass$CampaignState;",
        "Lgateway/v1/CampaignStateOuterClass$CampaignState$a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->access$1700()Lgateway/v1/CampaignStateOuterClass$CampaignState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/CampaignStateOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/CampaignStateOuterClass$CampaignState$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lgateway/v1/CampaignStateOuterClass$Campaign;)Lgateway/v1/CampaignStateOuterClass$CampaignState$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p1}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->access$1900(Lgateway/v1/CampaignStateOuterClass$CampaignState;Lgateway/v1/CampaignStateOuterClass$Campaign;)V

    return-object p0
.end method

.method public d(Lgateway/v1/CampaignStateOuterClass$Campaign;)Lgateway/v1/CampaignStateOuterClass$CampaignState$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p1}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->access$2500(Lgateway/v1/CampaignStateOuterClass$CampaignState;Lgateway/v1/CampaignStateOuterClass$Campaign;)V

    return-object p0
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgateway/v1/CampaignStateOuterClass$Campaign;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-virtual {v0}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->getLoadedCampaignsList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgateway/v1/CampaignStateOuterClass$Campaign;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/CampaignStateOuterClass$CampaignState;

    invoke-virtual {v0}, Lgateway/v1/CampaignStateOuterClass$CampaignState;->getShownCampaignsList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class gateway.v1.CampaignStateOuterClass.a (gateway.v1.CampaignStateOuterClass$a)
.class synthetic Lgateway/v1/CampaignStateOuterClass$a;
.super Ljava/lang/Object;
.source "CampaignStateOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/CampaignStateOuterClass;
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

    sput-object v0, Lgateway/v1/CampaignStateOuterClass$a;->a:[I

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
    sget-object v0, Lgateway/v1/CampaignStateOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lgateway/v1/CampaignStateOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lgateway/v1/CampaignStateOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lgateway/v1/CampaignStateOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lgateway/v1/CampaignStateOuterClass$a;->a:[I

    sget-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lgateway/v1/CampaignStateOuterClass$a;->a:[I

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

###### Class gateway.v1.CampaignStateOuterClass.b (gateway.v1.CampaignStateOuterClass$b)
.class public interface abstract Lgateway/v1/CampaignStateOuterClass$b;
.super Ljava/lang/Object;
.source "CampaignStateOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/CampaignStateOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract getLoadTimestamp()Lgateway/v1/TimestampsOuterClass$Timestamps;
.end method

.method public abstract getShowTimestamp()Lgateway/v1/TimestampsOuterClass$Timestamps;
.end method

.method public abstract hasLoadTimestamp()Z
.end method

.method public abstract hasShowTimestamp()Z
.end method
