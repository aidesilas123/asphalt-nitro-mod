###### Class com.mbridge.msdk.foundation.download.resource.ResourceConfig (com.mbridge.msdk.foundation.download.resource.ResourceConfig)
.class public Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;
.super Ljava/lang/Object;
.source "ResourceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;
    }
.end annotation


# instance fields
.field private maxStorageSpace:J

.field private maxStorageSpacePerResourceType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private maxStorageTime:J

.field private maxStorageTimePerResourceType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private resourceStrategyQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/mbridge/msdk/foundation/download/resource/ResourceStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->access$000(Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;->maxStorageSpace:J

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->access$100(Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;->maxStorageTime:J

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->access$200(Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;->maxStorageSpacePerResourceType:Ljava/util/Map;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->access$300(Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;->maxStorageTimePerResourceType:Ljava/util/Map;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->access$400(Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;)Ljava/util/Queue;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;->resourceStrategyQueue:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;-><init>(Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getMaxStorageSpace()J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;->maxStorageSpace:J

    return-wide v0
.end method

.method public getMaxStorageSpace(Lcom/mbridge/msdk/foundation/download/DownloadResourceType;)J
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;->maxStorageSpacePerResourceType:Ljava/util/Map;

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;->maxStorageSpacePerResourceType:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1f
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxStorageSpacePerResourceType()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;->maxStorageSpacePerResourceType:Ljava/util/Map;

    return-object v0
.end method

.method public getMaxStorageTime()J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;->maxStorageTime:J

    return-wide v0
.end method

.method public getMaxStorageTime(Lcom/mbridge/msdk/foundation/download/DownloadResourceType;)J
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;->maxStorageTimePerResourceType:Ljava/util/Map;

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;->maxStorageTimePerResourceType:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1f
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxStorageTimePerResourceType()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;->maxStorageTimePerResourceType:Ljava/util/Map;

    return-object v0
.end method

.method public getResourceStrategyQueue()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/mbridge/msdk/foundation/download/resource/ResourceStrategy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;->resourceStrategyQueue:Ljava/util/Queue;

    return-object v0
.end method

###### Class com.mbridge.msdk.foundation.download.resource.ResourceConfig.AnonymousClass1 (com.mbridge.msdk.foundation.download.resource.ResourceConfig$1)
.class synthetic Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$1;
.super Ljava/lang/Object;
.source "ResourceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.mbridge.msdk.foundation.download.resource.ResourceConfig.Builder (com.mbridge.msdk.foundation.download.resource.ResourceConfig$Builder)
.class public Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;
.super Ljava/lang/Object;
.source "ResourceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private maxStorageSpace:J

.field private maxStorageSpacePerResourceType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private maxStorageTime:J

.field private maxStorageTimePerResourceType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private resourceStrategyQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/mbridge/msdk/foundation/download/resource/ResourceStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->maxStorageSpace:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->maxStorageTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->maxStorageSpacePerResourceType:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->maxStorageTimePerResourceType:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;)Ljava/util/Queue;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->resourceStrategyQueue:Ljava/util/Queue;

    return-object p0
.end method


# virtual methods
.method public addMaxStorageSpace(Lcom/mbridge/msdk/foundation/download/DownloadResourceType;J)Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;
    .registers 5

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->maxStorageSpacePerResourceType:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->maxStorageSpacePerResourceType:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->maxStorageSpacePerResourceType:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addMaxStorageTime(Lcom/mbridge/msdk/foundation/download/DownloadResourceType;J)Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;
    .registers 5

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->maxStorageTimePerResourceType:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->maxStorageTimePerResourceType:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->maxStorageTimePerResourceType:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addResourceStrategy(Lcom/mbridge/msdk/foundation/download/resource/ResourceStrategy;)Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->resourceStrategyQueue:Ljava/util/Queue;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->resourceStrategyQueue:Ljava/util/Queue;

    :cond_b
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->resourceStrategyQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;
    .registers 3

    new-instance v0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig;-><init>(Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$1;)V

    return-object v0
.end method

.method public setMaxStorageSpace(J)Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;
    .registers 3

    iput-wide p1, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->maxStorageSpace:J

    return-object p0
.end method

.method public setMaxStorageTime(J)Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;
    .registers 3

    iput-wide p1, p0, Lcom/mbridge/msdk/foundation/download/resource/ResourceConfig$Builder;->maxStorageTime:J

    return-object p0
.end method
