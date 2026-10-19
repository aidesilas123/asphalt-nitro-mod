###### Class com.mbridge.msdk.foundation.download.MBDownloadConfig (com.mbridge.msdk.foundation.download.MBDownloadConfig)
.class public Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;
.super Ljava/lang/Object;
.source "MBDownloadConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    }
.end annotation


# instance fields
.field private databaseHandler:Landroid/os/Handler;

.field private databaseHelper:Lcom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

.field private defaultConnectTimeout:J

.field private defaultPingInterval:J

.field private defaultReadTimeout:J

.field private defaultWriteTimeout:J

.field private logger:Lcom/mbridge/msdk/foundation/download/utils/ILogger;

.field private maxRequests:I

.field private maxRequestsPerHost:I


# direct methods
.method private constructor <init>(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->access$000(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)Lcom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->databaseHelper:Lcom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->access$100(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)Lcom/mbridge/msdk/foundation/download/utils/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->logger:Lcom/mbridge/msdk/foundation/download/utils/ILogger;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->access$200(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->databaseHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->access$300(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->defaultConnectTimeout:J

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->access$400(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->defaultReadTimeout:J

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->access$500(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->defaultWriteTimeout:J

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->access$600(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->maxRequests:I

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->access$700(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->maxRequestsPerHost:I

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->access$800(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->defaultPingInterval:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;-><init>(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .registers 2

    new-instance v0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;-><init>(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;)V

    return-object v0
.end method

.method public static newBuilder(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;)Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .registers 2

    new-instance v0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;-><init>(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;)V

    return-object v0
.end method


# virtual methods
.method public getDatabaseHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->databaseHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getDatabaseHelper()Lcom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->databaseHelper:Lcom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    return-object v0
.end method

.method public getDefaultConnectTimeout()J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->defaultConnectTimeout:J

    return-wide v0
.end method

.method public getDefaultPingInterval()J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->defaultPingInterval:J

    return-wide v0
.end method

.method public getDefaultReadTimeout()J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->defaultReadTimeout:J

    return-wide v0
.end method

.method public getDefaultWriteTimeout()J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->defaultWriteTimeout:J

    return-wide v0
.end method

.method public getLogger()Lcom/mbridge/msdk/foundation/download/utils/ILogger;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->logger:Lcom/mbridge/msdk/foundation/download/utils/ILogger;

    return-object v0
.end method

.method public getMaxRequests()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->maxRequests:I

    return v0
.end method

.method public getMaxRequestsPerHost()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->maxRequestsPerHost:I

    return v0
.end method

###### Class com.mbridge.msdk.foundation.download.MBDownloadConfig.AnonymousClass1 (com.mbridge.msdk.foundation.download.MBDownloadConfig$1)
.class synthetic Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$1;
.super Ljava/lang/Object;
.source "MBDownloadConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.mbridge.msdk.foundation.download.MBDownloadConfig.Builder (com.mbridge.msdk.foundation.download.MBDownloadConfig$Builder)
.class public final Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
.super Ljava/lang/Object;
.source "MBDownloadConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private databaseHandler:Landroid/os/Handler;

.field private databaseHelper:Lcom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

.field private databaseName:Ljava/lang/String;

.field private databaseVersion:I

.field private defaultConnectTimeout:J

.field private defaultPingInterval:J

.field private defaultReadTimeout:J

.field private defaultWriteTimeout:J

.field private logger:Lcom/mbridge/msdk/foundation/download/utils/ILogger;

.field private maxRequests:I

.field private maxRequestsPerHost:I

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;-><init>(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->databaseName:Ljava/lang/String;

    const-string v0, "downloadTable"

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->tableName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->databaseVersion:I

    new-instance v0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder$1;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder$1;-><init>(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->logger:Lcom/mbridge/msdk/foundation/download/utils/ILogger;

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultReadTimeout:J

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultWriteTimeout:J

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultConnectTimeout:J

    const/16 v0, 0x40

    iput v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->maxRequests:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->maxRequestsPerHost:I

    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultPingInterval:J

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDatabaseHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->databaseHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->getLogger()Lcom/mbridge/msdk/foundation/download/utils/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->logger:Lcom/mbridge/msdk/foundation/download/utils/ILogger;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDefaultReadTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultReadTimeout:J

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDefaultConnectTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultConnectTimeout:J

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->getMaxRequests()I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->maxRequests:I

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDefaultWriteTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultWriteTimeout:J

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->getMaxRequests()I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->maxRequests:I

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->getMaxRequestsPerHost()I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->maxRequestsPerHost:I

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDefaultPingInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultPingInterval:J

    :cond_65
    return-void
.end method

.method static synthetic access$000(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)Lcom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->databaseHelper:Lcom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)Lcom/mbridge/msdk/foundation/download/utils/ILogger;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->logger:Lcom/mbridge/msdk/foundation/download/utils/ILogger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->databaseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultConnectTimeout:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultReadTimeout:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultWriteTimeout:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->maxRequests:I

    return p0
.end method

.method static synthetic access$700(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->maxRequestsPerHost:I

    return p0
.end method

.method static synthetic access$800(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultPingInterval:J

    return-wide v0
.end method


# virtual methods
.method public final build()Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;
    .registers 3

    new-instance v0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig;-><init>(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$1;)V

    return-object v0
.end method

.method public final setDatabaseHandler(Landroid/os/Handler;)Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->databaseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final setDatabaseOpenHelper(Lcom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;)Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->databaseHelper:Lcom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    return-object p0
.end method

.method public final setDefaultConnectTimeout(J)Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .registers 3

    iput-wide p1, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultConnectTimeout:J

    return-object p0
.end method

.method public final setDefaultPingInterval(J)Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .registers 3

    iput-wide p1, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultPingInterval:J

    return-object p0
.end method

.method public final setDefaultReadTimeout(J)Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .registers 3

    iput-wide p1, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultReadTimeout:J

    return-object p0
.end method

.method public final setDefaultWriteTimeout(J)Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .registers 3

    iput-wide p1, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->defaultWriteTimeout:J

    return-object p0
.end method

.method public final setLogger(Lcom/mbridge/msdk/foundation/download/utils/ILogger;)Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->logger:Lcom/mbridge/msdk/foundation/download/utils/ILogger;

    return-object p0
.end method

.method public final setMaxRequests(I)Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->maxRequests:I

    return-object p0
.end method

.method public final setMaxRequestsPerHost(I)Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
    .registers 2

    iput p1, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;->maxRequestsPerHost:I

    return-object p0
.end method

###### Class com.mbridge.msdk.foundation.download.MBDownloadConfig.Builder.AnonymousClass1 (com.mbridge.msdk.foundation.download.MBDownloadConfig$Builder$1)
.class Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder$1;
.super Ljava/lang/Object;
.source "MBDownloadConfig.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/download/utils/ILogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder$1;->this$0:Lcom/mbridge/msdk/foundation/download/MBDownloadConfig$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
