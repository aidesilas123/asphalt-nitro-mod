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

###### Class com.moat.analytics.mobile.glft.u.AnonymousClass1 (com.moat.analytics.mobile.glft.u$1)
.class Lcom/moat/analytics/mobile/glft/u$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/u;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/moat/analytics/mobile/glft/u;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/u;J)V
    .registers 4

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/u$1;->b:Lcom/moat/analytics/mobile/glft/u;

    iput-wide p2, p0, Lcom/moat/analytics/mobile/glft/u$1;->a:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/moat/analytics/mobile/glft/u$a;

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/u$1;->b:Lcom/moat/analytics/mobile/glft/u;

    new-instance v4, Lcom/moat/analytics/mobile/glft/u$1$1;

    invoke-direct {v4, p0}, Lcom/moat/analytics/mobile/glft/u$1$1;-><init>(Lcom/moat/analytics/mobile/glft/u$1;)V

    const-string v2, "GLFT"

    const/4 v5, 0x0

    move-object v0, v7

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/moat/analytics/mobile/glft/u$a;-><init>(Lcom/moat/analytics/mobile/glft/u;Ljava/lang/String;Landroid/os/Handler;Lcom/moat/analytics/mobile/glft/u$e;Lcom/moat/analytics/mobile/glft/u$1;)V

    iget-wide v0, p0, Lcom/moat/analytics/mobile/glft/u$1;->a:J

    invoke-virtual {v6, v7, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

###### Class com.moat.analytics.mobile.glft.u.AnonymousClass1.C04391 (com.moat.analytics.mobile.glft.u$1$1)
.class Lcom/moat/analytics/mobile/glft/u$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/glft/u$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/u$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/glft/u$1;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/u$1;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/u$1$1;->a:Lcom/moat/analytics/mobile/glft/u$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/moat/analytics/mobile/glft/k;)V
    .registers 6

    invoke-static {}, Lcom/moat/analytics/mobile/glft/u;->g()Ljava/util/Queue;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/u$1$1;->a:Lcom/moat/analytics/mobile/glft/u$1;

    iget-object v1, v1, Lcom/moat/analytics/mobile/glft/u$1;->b:Lcom/moat/analytics/mobile/glft/u;

    invoke-static {v1}, Lcom/moat/analytics/mobile/glft/u;->a(Lcom/moat/analytics/mobile/glft/u;)Lcom/moat/analytics/mobile/glft/u$d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/glft/k;->d()Lcom/moat/analytics/mobile/glft/u$d;

    move-result-object v2

    if-eq v1, v2, :cond_67

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/u$1$1;->a:Lcom/moat/analytics/mobile/glft/u$1;

    iget-object v1, v1, Lcom/moat/analytics/mobile/glft/u$1;->b:Lcom/moat/analytics/mobile/glft/u;

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/glft/k;->d()Lcom/moat/analytics/mobile/glft/u$d;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/moat/analytics/mobile/glft/u;->a(Lcom/moat/analytics/mobile/glft/u;Lcom/moat/analytics/mobile/glft/u$d;)Lcom/moat/analytics/mobile/glft/u$d;

    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/u$1$1;->a:Lcom/moat/analytics/mobile/glft/u$1;

    iget-object p1, p1, Lcom/moat/analytics/mobile/glft/u$1;->b:Lcom/moat/analytics/mobile/glft/u;

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/u;->a(Lcom/moat/analytics/mobile/glft/u;)Lcom/moat/analytics/mobile/glft/u$d;

    move-result-object p1

    sget-object v1, Lcom/moat/analytics/mobile/glft/u$d;->b:Lcom/moat/analytics/mobile/glft/u$d;

    if-ne p1, v1, :cond_3b

    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/u$1$1;->a:Lcom/moat/analytics/mobile/glft/u$1;

    iget-object p1, p1, Lcom/moat/analytics/mobile/glft/u$1;->b:Lcom/moat/analytics/mobile/glft/u;

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/u;->b(Lcom/moat/analytics/mobile/glft/u;)Z

    move-result p1

    if-eqz p1, :cond_3b

    const-string p1, "MoatOnOff"

    const-string v1, "Moat enabled - Version 2.1.0"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    invoke-static {}, Lcom/moat/analytics/mobile/glft/u;->g()Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_43
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/moat/analytics/mobile/glft/u$c;

    iget-object v2, p0, Lcom/moat/analytics/mobile/glft/u$1$1;->a:Lcom/moat/analytics/mobile/glft/u$1;

    iget-object v2, v2, Lcom/moat/analytics/mobile/glft/u$1;->b:Lcom/moat/analytics/mobile/glft/u;

    invoke-static {v2}, Lcom/moat/analytics/mobile/glft/u;->a(Lcom/moat/analytics/mobile/glft/u;)Lcom/moat/analytics/mobile/glft/u$d;

    move-result-object v2

    sget-object v3, Lcom/moat/analytics/mobile/glft/u$d;->b:Lcom/moat/analytics/mobile/glft/u$d;

    if-ne v2, v3, :cond_61

    iget-object v1, v1, Lcom/moat/analytics/mobile/glft/u$c;->b:Lcom/moat/analytics/mobile/glft/u$b;

    invoke-interface {v1}, Lcom/moat/analytics/mobile/glft/u$b;->b()V

    goto :goto_43

    :cond_61
    iget-object v1, v1, Lcom/moat/analytics/mobile/glft/u$c;->b:Lcom/moat/analytics/mobile/glft/u$b;

    invoke-interface {v1}, Lcom/moat/analytics/mobile/glft/u$b;->c()V

    goto :goto_43

    :cond_67
    :goto_67
    invoke-static {}, Lcom/moat/analytics/mobile/glft/u;->g()Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_79

    invoke-static {}, Lcom/moat/analytics/mobile/glft/u;->g()Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_67

    :cond_79
    monitor-exit v0

    return-void

    :catchall_7b
    move-exception p1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_5 .. :try_end_7d} :catchall_7b

    throw p1
.end method

###### Class com.moat.analytics.mobile.glft.u.AnonymousClass2 (com.moat.analytics.mobile.glft.u$2)
.class Lcom/moat/analytics/mobile/glft/u$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/u;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/glft/u;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/u;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/u$2;->a:Lcom/moat/analytics/mobile/glft/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/glft/u;->g()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/u$2;->a:Lcom/moat/analytics/mobile/glft/u;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/u;->c(Lcom/moat/analytics/mobile/glft/u;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/u$2;->a:Lcom/moat/analytics/mobile/glft/u;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/u;->d(Lcom/moat/analytics/mobile/glft/u;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_35

    :cond_1c
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/u$2;->a:Lcom/moat/analytics/mobile/glft/u;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/u;->e(Lcom/moat/analytics/mobile/glft/u;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/u$2;->a:Lcom/moat/analytics/mobile/glft/u;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/u;->d(Lcom/moat/analytics/mobile/glft/u;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_35
    return-void
.end method

###### Class com.moat.analytics.mobile.glft.u.a (com.moat.analytics.mobile.glft.u$a)
.class Lcom/moat/analytics/mobile/glft/u$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/glft/u;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/moat/analytics/mobile/glft/u$e;


# direct methods
.method private constructor <init>(Lcom/moat/analytics/mobile/glft/u;Ljava/lang/String;Landroid/os/Handler;Lcom/moat/analytics/mobile/glft/u$e;)V
    .registers 5

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/u$a;->a:Lcom/moat/analytics/mobile/glft/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/moat/analytics/mobile/glft/u$a;->d:Lcom/moat/analytics/mobile/glft/u$e;

    iput-object p3, p0, Lcom/moat/analytics/mobile/glft/u$a;->b:Landroid/os/Handler;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "https://z.moatads.com/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/android/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "0bbafd1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/status.json"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/u$a;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/moat/analytics/mobile/glft/u;Ljava/lang/String;Landroid/os/Handler;Lcom/moat/analytics/mobile/glft/u$e;Lcom/moat/analytics/mobile/glft/u$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/moat/analytics/mobile/glft/u$a;-><init>(Lcom/moat/analytics/mobile/glft/u;Ljava/lang/String;Landroid/os/Handler;Lcom/moat/analytics/mobile/glft/u$e;)V

    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/glft/u$a;)Lcom/moat/analytics/mobile/glft/u$e;
    .registers 1

    iget-object p0, p0, Lcom/moat/analytics/mobile/glft/u$a;->d:Lcom/moat/analytics/mobile/glft/u$e;

    return-object p0
.end method

.method private a()V
    .registers 5

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/u$a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/moat/analytics/mobile/glft/k;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/glft/k;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/moat/analytics/mobile/glft/u$a;->a:Lcom/moat/analytics/mobile/glft/u;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/glft/k;->a()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/moat/analytics/mobile/glft/u;->a(Lcom/moat/analytics/mobile/glft/u;Z)Z

    iget-object v2, p0, Lcom/moat/analytics/mobile/glft/u$a;->a:Lcom/moat/analytics/mobile/glft/u;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/glft/k;->b()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/moat/analytics/mobile/glft/u;->b(Lcom/moat/analytics/mobile/glft/u;Z)Z

    iget-object v2, p0, Lcom/moat/analytics/mobile/glft/u$a;->a:Lcom/moat/analytics/mobile/glft/u;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/glft/k;->c()I

    move-result v3

    invoke-static {v2, v3}, Lcom/moat/analytics/mobile/glft/u;->a(Lcom/moat/analytics/mobile/glft/u;I)I

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/moat/analytics/mobile/glft/u$a$1;

    invoke-direct {v2, p0, v1}, Lcom/moat/analytics/mobile/glft/u$a$1;-><init>(Lcom/moat/analytics/mobile/glft/u$a;Lcom/moat/analytics/mobile/glft/k;)V

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/u$a;->a:Lcom/moat/analytics/mobile/glft/u;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/moat/analytics/mobile/glft/u;->a(Lcom/moat/analytics/mobile/glft/u;J)J

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/u$a;->a:Lcom/moat/analytics/mobile/glft/u;

    invoke-static {v1}, Lcom/moat/analytics/mobile/glft/u;->f(Lcom/moat/analytics/mobile/glft/u;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/u$a;->a:Lcom/moat/analytics/mobile/glft/u;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/u;->g(Lcom/moat/analytics/mobile/glft/u;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_6c

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/u$a;->a:Lcom/moat/analytics/mobile/glft/u;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/u;->h(Lcom/moat/analytics/mobile/glft/u;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/moat/analytics/mobile/glft/u;->b(Lcom/moat/analytics/mobile/glft/u;J)V

    goto :goto_6c

    :cond_63
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/u$a;->a:Lcom/moat/analytics/mobile/glft/u;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/u;->g(Lcom/moat/analytics/mobile/glft/u;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/u$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2.1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/o;->a(Ljava/lang/String;)Lcom/moat/analytics/mobile/glft/a/b/a;

    move-result-object v0

    :try_start_28
    invoke-virtual {v0}, Lcom/moat/analytics/mobile/glft/a/b/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    const/4 v0, 0x0

    :goto_30
    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 2

    :try_start_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/u$a;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_8
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/u$a;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_16
    return-void
.end method

###### Class com.moat.analytics.mobile.glft.u.a.AnonymousClass1 (com.moat.analytics.mobile.glft.u$a$1)
.class Lcom/moat/analytics/mobile/glft/u$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/u$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/glft/k;

.field final synthetic b:Lcom/moat/analytics/mobile/glft/u$a;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/u$a;Lcom/moat/analytics/mobile/glft/k;)V
    .registers 3

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/u$a$1;->b:Lcom/moat/analytics/mobile/glft/u$a;

    iput-object p2, p0, Lcom/moat/analytics/mobile/glft/u$a$1;->a:Lcom/moat/analytics/mobile/glft/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/u$a$1;->b:Lcom/moat/analytics/mobile/glft/u$a;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/u$a;->a(Lcom/moat/analytics/mobile/glft/u$a;)Lcom/moat/analytics/mobile/glft/u$e;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/u$a$1;->a:Lcom/moat/analytics/mobile/glft/k;

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/glft/u$e;->a(Lcom/moat/analytics/mobile/glft/k;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_10
    return-void
.end method

###### Class com.moat.analytics.mobile.glft.u.b (com.moat.analytics.mobile.glft.u$b)
.class interface abstract Lcom/moat/analytics/mobile/glft/u$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# virtual methods
.method public abstract b()V
.end method

.method public abstract c()V
.end method

###### Class com.moat.analytics.mobile.glft.u.c (com.moat.analytics.mobile.glft.u$c)
.class Lcom/moat/analytics/mobile/glft/u$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/Long;

.field final b:Lcom/moat/analytics/mobile/glft/u$b;

.field final synthetic c:Lcom/moat/analytics/mobile/glft/u;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/u;Ljava/lang/Long;Lcom/moat/analytics/mobile/glft/u$b;)V
    .registers 4

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/u$c;->c:Lcom/moat/analytics/mobile/glft/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/moat/analytics/mobile/glft/u$c;->a:Ljava/lang/Long;

    iput-object p3, p0, Lcom/moat/analytics/mobile/glft/u$c;->b:Lcom/moat/analytics/mobile/glft/u$b;

    return-void
.end method

###### Class com.moat.analytics.mobile.glft.u.d (com.moat.analytics.mobile.glft.u$d)
.class final enum Lcom/moat/analytics/mobile/glft/u$d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moat/analytics/mobile/glft/u$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/moat/analytics/mobile/glft/u$d;

.field public static final enum b:Lcom/moat/analytics/mobile/glft/u$d;

.field private static final synthetic c:[Lcom/moat/analytics/mobile/glft/u$d;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/moat/analytics/mobile/glft/u$d;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/glft/u$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/glft/u$d;->a:Lcom/moat/analytics/mobile/glft/u$d;

    new-instance v1, Lcom/moat/analytics/mobile/glft/u$d;

    const-string v3, "ON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/moat/analytics/mobile/glft/u$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/moat/analytics/mobile/glft/u$d;->b:Lcom/moat/analytics/mobile/glft/u$d;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/moat/analytics/mobile/glft/u$d;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/moat/analytics/mobile/glft/u$d;->c:[Lcom/moat/analytics/mobile/glft/u$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moat/analytics/mobile/glft/u$d;
    .registers 2

    const-class v0, Lcom/moat/analytics/mobile/glft/u$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/moat/analytics/mobile/glft/u$d;

    return-object p0
.end method

.method public static values()[Lcom/moat/analytics/mobile/glft/u$d;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/glft/u$d;->c:[Lcom/moat/analytics/mobile/glft/u$d;

    invoke-virtual {v0}, [Lcom/moat/analytics/mobile/glft/u$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/moat/analytics/mobile/glft/u$d;

    return-object v0
.end method

###### Class com.moat.analytics.mobile.glft.u.e (com.moat.analytics.mobile.glft.u$e)
.class interface abstract Lcom/moat/analytics/mobile/glft/u$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "e"
.end annotation


# virtual methods
.method public abstract a(Lcom/moat/analytics/mobile/glft/k;)V
.end method
