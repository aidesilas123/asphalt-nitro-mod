###### Class com.bytedance.sdk.openadsdk.l.b (com.bytedance.sdk.openadsdk.l.b)
.class public Lcom/bytedance/sdk/openadsdk/l/b;
.super Ljava/lang/Object;
.source "CrashMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/l/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ScheduledExecutorService;

.field private b:Lcom/bytedance/sdk/openadsdk/l/h;

.field private c:J

.field private d:I

.field private e:Lcom/bytedance/sdk/openadsdk/l/b$a;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/l/h;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/b;->a:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/l/b;->c:J

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/b;->d:I

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/b;->b:Lcom/bytedance/sdk/openadsdk/l/h;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/l/b;->d:I

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/l/b;)J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/l/b;->c:J

    return-wide v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/l/b;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/l/b;->d:I

    return p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/l/b;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/l/b;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/l/b;)Lcom/bytedance/sdk/openadsdk/l/h;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/l/b;->b:Lcom/bytedance/sdk/openadsdk/l/h;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/l/b;)Lcom/bytedance/sdk/openadsdk/l/b$a;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/l/b;->e:Lcom/bytedance/sdk/openadsdk/l/b$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/b;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_7
    return-void
.end method

.method public a(I)V
    .registers 10

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/b;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/l/b$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/l/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/l/b;)V

    int-to-long v5, p1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/l/b;->c:J

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/b;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method
