###### Class com.fyber.inneractive.sdk.util.u0 (com.fyber.inneractive.sdk.util.u0)
.class public Lcom/fyber/inneractive/sdk/util/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/util/u0$b;,
        Lcom/fyber/inneractive/sdk/util/u0$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/TimeUnit;

.field public final b:J

.field public c:Landroid/os/Handler;

.field public d:Z

.field public e:Lcom/fyber/inneractive/sdk/util/u0$b;

.field public f:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/TimeUnit;J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/util/u0;->d:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/fyber/inneractive/sdk/util/u0;->f:J

    iput-wide p2, p0, Lcom/fyber/inneractive/sdk/util/u0;->b:J

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/util/u0;->a:Ljava/util/concurrent/TimeUnit;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Visible time counter init - time %d"

    invoke-static {p2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/TimeUnit;JJ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/util/u0;->d:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/fyber/inneractive/sdk/util/u0;->f:J

    iput-wide p2, p0, Lcom/fyber/inneractive/sdk/util/u0;->b:J

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/util/u0;->a:Ljava/util/concurrent/TimeUnit;

    iput-wide p4, p0, Lcom/fyber/inneractive/sdk/util/u0;->f:J

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Visible time counter init - time %d"

    invoke-static {p2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/util/u0;->d:Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/u0;->c:Landroid/os/Handler;

    if-eqz v0, :cond_d

    const v1, 0x73310978

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    return-void
.end method

.method public final a(J)V
    .registers 8

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/util/u0;->f:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 p1, 0x32

    add-long/2addr v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/util/u0;->f:J

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/util/u0;->e:Lcom/fyber/inneractive/sdk/util/u0$b;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/util/u0;->a:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/fyber/inneractive/sdk/util/u0;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_23

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/util/u0;->e:Lcom/fyber/inneractive/sdk/util/u0$b;

    invoke-interface {p1, p0}, Lcom/fyber/inneractive/sdk/util/u0$b;->a(Lcom/fyber/inneractive/sdk/util/u0;)V

    goto :goto_36

    :cond_23
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/u0;->c:Landroid/os/Handler;

    if-eqz v0, :cond_36

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/util/u0;->e:Lcom/fyber/inneractive/sdk/util/u0$b;

    if-eqz v1, :cond_36

    const v1, 0x73310978

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/util/u0;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_36
    :goto_36
    return-void
.end method

.method public b()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/util/u0;->d:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fyber/inneractive/sdk/util/u0;->a(J)V

    return-void
.end method

.method public c()V
    .registers 3

    new-instance v0, Lcom/fyber/inneractive/sdk/util/u0$a;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/util/u0$a;-><init>(Lcom/fyber/inneractive/sdk/util/u0;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/util/u0;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fyber/inneractive/sdk/util/u0;->d:Z

    const v1, 0x73310978

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
