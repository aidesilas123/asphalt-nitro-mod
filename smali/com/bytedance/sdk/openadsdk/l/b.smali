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

###### Class com.bytedance.sdk.openadsdk.l.b.AnonymousClass1 (com.bytedance.sdk.openadsdk.l.b$1)
.class Lcom/bytedance/sdk/openadsdk/l/b$1;
.super Ljava/lang/Object;
.source "CrashMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/l/b;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/l/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/l/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/b$1;->a:Lcom/bytedance/sdk/openadsdk/l/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- check page stuck  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/l/b$1;->a:Lcom/bytedance/sdk/openadsdk/l/b;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/l/b;->a(Lcom/bytedance/sdk/openadsdk/l/b;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Playable_CrashMonitor"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/l/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/b$1;->a:Lcom/bytedance/sdk/openadsdk/l/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/l/b;->a(Lcom/bytedance/sdk/openadsdk/l/b;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/b$1;->a:Lcom/bytedance/sdk/openadsdk/l/b;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/l/b;->b(Lcom/bytedance/sdk/openadsdk/l/b;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_65

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/b$1;->a:Lcom/bytedance/sdk/openadsdk/l/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/b;->c(Lcom/bytedance/sdk/openadsdk/l/b;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/b$1;->a:Lcom/bytedance/sdk/openadsdk/l/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/b;->d(Lcom/bytedance/sdk/openadsdk/l/b;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/b$1;->a:Lcom/bytedance/sdk/openadsdk/l/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/b;->d(Lcom/bytedance/sdk/openadsdk/l/b;)Lcom/bytedance/sdk/openadsdk/l/h;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Automatic detection of stuck"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/l/h;->b(ILjava/lang/String;)V

    :cond_54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/b$1;->a:Lcom/bytedance/sdk/openadsdk/l/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/b;->e(Lcom/bytedance/sdk/openadsdk/l/b;)Lcom/bytedance/sdk/openadsdk/l/b$a;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/b$1;->a:Lcom/bytedance/sdk/openadsdk/l/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/b;->e(Lcom/bytedance/sdk/openadsdk/l/b;)Lcom/bytedance/sdk/openadsdk/l/b$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/l/b$a;->a()V

    :cond_65
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.l.b.a (com.bytedance.sdk.openadsdk.l.b$a)
.class public interface abstract Lcom/bytedance/sdk/openadsdk/l/b$a;
.super Ljava/lang/Object;
.source "CrashMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/l/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method
