###### Class com.moat.analytics.mobile.glft.u (com.moat.analytics.mobile.glft.u)
.class public Lcom/moat/analytics/mobile/glft/u;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/glft/u$b;,
        Lcom/moat/analytics/mobile/glft/u$e;,
        Lcom/moat/analytics/mobile/glft/u$c;,
        Lcom/moat/analytics/mobile/glft/u$a;,
        Lcom/moat/analytics/mobile/glft/u$d;
    }
.end annotation


# static fields
.field private static a:Lcom/moat/analytics/mobile/glft/u;

.field private static final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/moat/analytics/mobile/glft/u$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/os/Handler;

.field private volatile d:Lcom/moat/analytics/mobile/glft/u$d;

.field private volatile e:Z

.field private volatile f:Z

.field private volatile g:I

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile i:J

.field private final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:J

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/glft/u;->b:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/moat/analytics/mobile/glft/u$d;->a:Lcom/moat/analytics/mobile/glft/u$d;

    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/u;->d:Lcom/moat/analytics/mobile/glft/u$d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/glft/u;->e:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/glft/u;->f:Z

    const/16 v1, 0xc8

    iput v1, p0, Lcom/moat/analytics/mobile/glft/u;->g:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/glft/u;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/moat/analytics/mobile/glft/u;->i:J

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/glft/u;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/glft/u;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/moat/analytics/mobile/glft/u;->l:J

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/moat/analytics/mobile/glft/u;->m:J

    :try_start_33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/u;->c:Landroid/os/Handler;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_43
    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/glft/u;I)I
    .registers 2

    iput p1, p0, Lcom/moat/analytics/mobile/glft/u;->g:I

    return p1
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/glft/u;J)J
    .registers 3

    iput-wide p1, p0, Lcom/moat/analytics/mobile/glft/u;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/glft/u;)Lcom/moat/analytics/mobile/glft/u$d;
    .registers 1

    iget-object p0, p0, Lcom/moat/analytics/mobile/glft/u;->d:Lcom/moat/analytics/mobile/glft/u$d;

    return-object p0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/glft/u;Lcom/moat/analytics/mobile/glft/u$d;)Lcom/moat/analytics/mobile/glft/u$d;
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/u;->d:Lcom/moat/analytics/mobile/glft/u$d;

    return-object p1
.end method

.method private a(J)V
    .registers 6

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/u;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/glft/u;->e:Z

    if-eqz v0, :cond_16

    const-string v0, "MoatOnOff"

    const-string v1, "Performing status check."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    new-instance v0, Lcom/moat/analytics/mobile/glft/u$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/moat/analytics/mobile/glft/u$1;-><init>(Lcom/moat/analytics/mobile/glft/u;J)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/glft/u;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/glft/u;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/glft/u;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/glft/u;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/glft/u;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/moat/analytics/mobile/glft/u;->e:Z

    return p0
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/glft/u;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/glft/u;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/moat/analytics/mobile/glft/u;)V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/u;->h()V

    return-void
.end method

.method static synthetic d(Lcom/moat/analytics/mobile/glft/u;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/moat/analytics/mobile/glft/u;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static declared-synchronized d()Lcom/moat/analytics/mobile/glft/u;
    .registers 2

    const-class v0, Lcom/moat/analytics/mobile/glft/u;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/moat/analytics/mobile/glft/u;->a:Lcom/moat/analytics/mobile/glft/u;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1e

    if-nez v1, :cond_1a

    :try_start_7
    new-instance v1, Lcom/moat/analytics/mobile/glft/u;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/glft/u;-><init>()V

    sput-object v1, Lcom/moat/analytics/mobile/glft/u;->a:Lcom/moat/analytics/mobile/glft/u;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f
    .catchall {:try_start_7 .. :try_end_e} :catchall_1e

    goto :goto_1a

    :catch_f
    move-exception v1

    :try_start_10
    invoke-static {v1}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    new-instance v1, Lcom/moat/analytics/mobile/glft/t$e;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/glft/t$e;-><init>()V

    sput-object v1, Lcom/moat/analytics/mobile/glft/u;->a:Lcom/moat/analytics/mobile/glft/u;

    :cond_1a
    :goto_1a
    sget-object v1, Lcom/moat/analytics/mobile/glft/u;->a:Lcom/moat/analytics/mobile/glft/u;
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1e

    monitor-exit v0

    return-object v1

    :catchall_1e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic e(Lcom/moat/analytics/mobile/glft/u;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/moat/analytics/mobile/glft/u;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic f(Lcom/moat/analytics/mobile/glft/u;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/moat/analytics/mobile/glft/u;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic g()Ljava/util/Queue;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/glft/u;->b:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic g(Lcom/moat/analytics/mobile/glft/u;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lcom/moat/analytics/mobile/glft/u;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic h(Lcom/moat/analytics/mobile/glft/u;)J
    .registers 3

    iget-wide v0, p0, Lcom/moat/analytics/mobile/glft/u;->m:J

    return-wide v0
.end method

.method private h()V
    .registers 10

    sget-object v0, Lcom/moat/analytics/mobile/glft/u;->b:Ljava/util/Queue;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/moat/analytics/mobile/glft/u$c;

    iget-object v4, v4, Lcom/moat/analytics/mobile/glft/u$c;->a:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v1, v4

    const-wide/32 v6, 0xea60

    cmp-long v8, v4, v6

    if-ltz v8, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    :cond_2a
    sget-object v1, Lcom/moat/analytics/mobile/glft/u;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_40

    const/4 v1, 0x0

    :goto_35
    const/4 v2, 0x5

    if-ge v1, v2, :cond_40

    sget-object v2, Lcom/moat/analytics/mobile/glft/u;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private i()V
    .registers 5

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/u;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Lcom/moat/analytics/mobile/glft/u$2;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/glft/u$2;-><init>(Lcom/moat/analytics/mobile/glft/u;)V

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/u;->c:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a()Lcom/moat/analytics/mobile/glft/u$d;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/u;->d:Lcom/moat/analytics/mobile/glft/u$d;

    return-object v0
.end method

.method public a(Lcom/moat/analytics/mobile/glft/u$b;)V
    .registers 6

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/u;->d:Lcom/moat/analytics/mobile/glft/u$d;

    sget-object v1, Lcom/moat/analytics/mobile/glft/u$d;->b:Lcom/moat/analytics/mobile/glft/u$d;

    if-ne v0, v1, :cond_a

    invoke-interface {p1}, Lcom/moat/analytics/mobile/glft/u$b;->b()V

    goto :goto_22

    :cond_a
    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/u;->h()V

    sget-object v0, Lcom/moat/analytics/mobile/glft/u;->b:Ljava/util/Queue;

    new-instance v1, Lcom/moat/analytics/mobile/glft/u$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/moat/analytics/mobile/glft/u$c;-><init>(Lcom/moat/analytics/mobile/glft/u;Ljava/lang/Long;Lcom/moat/analytics/mobile/glft/u$b;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/u;->i()V

    :goto_22
    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/glft/u;->e:Z

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/moat/analytics/mobile/glft/u;->g:I

    return v0
.end method

.method e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/glft/u;->f:Z

    return v0
.end method

.method public f()V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/moat/analytics/mobile/glft/u;->i:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/moat/analytics/mobile/glft/u;->l:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_12

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/moat/analytics/mobile/glft/u;->a(J)V

    :cond_12
    return-void
.end method
