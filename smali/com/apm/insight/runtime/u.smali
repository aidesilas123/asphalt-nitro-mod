###### Class com.apm.insight.runtime.u (com.apm.insight.runtime.u)
.class public Lcom/apm/insight/runtime/u;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apm/insight/runtime/u$b;,
        Lcom/apm/insight/runtime/u$d;,
        Lcom/apm/insight/runtime/u$a;,
        Lcom/apm/insight/runtime/u$c;
    }
.end annotation


# static fields
.field static final a:Lcom/apm/insight/runtime/u$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apm/insight/runtime/u$b<",
            "Lcom/apm/insight/runtime/u$d;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lcom/apm/insight/runtime/u$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apm/insight/runtime/u$b<",
            "Landroid/os/Message;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/os/HandlerThread;

.field private final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/apm/insight/runtime/u$d;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Landroid/os/Handler;

.field private final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/apm/insight/runtime/u$1;

    invoke-direct {v0}, Lcom/apm/insight/runtime/u$1;-><init>()V

    sput-object v0, Lcom/apm/insight/runtime/u;->a:Lcom/apm/insight/runtime/u$b;

    new-instance v0, Lcom/apm/insight/runtime/u$2;

    invoke-direct {v0}, Lcom/apm/insight/runtime/u$2;-><init>()V

    sput-object v0, Lcom/apm/insight/runtime/u;->b:Lcom/apm/insight/runtime/u$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/apm/insight/runtime/u;->d:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/apm/insight/runtime/u;->e:Ljava/util/Queue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/apm/insight/runtime/u;->g:Ljava/lang/Object;

    new-instance v0, Lcom/apm/insight/runtime/u$c;

    invoke-direct {v0, p0, p1}, Lcom/apm/insight/runtime/u$c;-><init>(Lcom/apm/insight/runtime/u;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apm/insight/runtime/u;->c:Landroid/os/HandlerThread;

    return-void
.end method

.method static synthetic a(Lcom/apm/insight/runtime/u;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    iput-object p1, p0, Lcom/apm/insight/runtime/u;->f:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/apm/insight/runtime/u;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/apm/insight/runtime/u;->g:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/apm/insight/runtime/u;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/apm/insight/runtime/u;->f:Landroid/os/Handler;

    return-object p0
.end method

.method private b(Ljava/lang/Runnable;)Landroid/os/Message;
    .registers 3

    iget-object v0, p0, Lcom/apm/insight/runtime/u;->f:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lcom/apm/insight/runtime/u;)Ljava/util/Queue;
    .registers 1

    iget-object p0, p0, Lcom/apm/insight/runtime/u;->d:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic d(Lcom/apm/insight/runtime/u;)Ljava/util/Queue;
    .registers 1

    iget-object p0, p0, Lcom/apm/insight/runtime/u;->e:Ljava/util/Queue;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/apm/insight/runtime/u;->f:Landroid/os/Handler;

    return-object v0
.end method

.method public final a(Landroid/os/Message;J)Z
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_7

    move-wide p2, v0

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/apm/insight/runtime/u;->b(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Runnable;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/apm/insight/runtime/u;->b(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/apm/insight/runtime/u;->a(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Runnable;J)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/apm/insight/runtime/u;->b(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/apm/insight/runtime/u;->a(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/apm/insight/runtime/u;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public final b(Landroid/os/Message;J)Z
    .registers 8

    iget-object v0, p0, Lcom/apm/insight/runtime/u;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/apm/insight/runtime/u;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-object v2, p0, Lcom/apm/insight/runtime/u;->f:Landroid/os/Handler;

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/apm/insight/runtime/u;->d:Ljava/util/Queue;

    new-instance v3, Lcom/apm/insight/runtime/u$d;

    invoke-direct {v3, p1, p2, p3}, Lcom/apm/insight/runtime/u$d;-><init>(Landroid/os/Message;J)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return v1

    :cond_18
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1a

    throw p1

    :cond_1d
    :goto_1d
    :try_start_1d
    iget-object v0, p0, Lcom/apm/insight/runtime/u;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_24

    return p1

    :catchall_24
    return v1
.end method

.method public c()Landroid/os/HandlerThread;
    .registers 2

    iget-object v0, p0, Lcom/apm/insight/runtime/u;->c:Landroid/os/HandlerThread;

    return-object v0
.end method

###### Class com.apm.insight.runtime.u.AnonymousClass1 (com.apm.insight.runtime.u$1)
.class final Lcom/apm/insight/runtime/u$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apm/insight/runtime/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/runtime/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apm/insight/runtime/u$b<",
        "Lcom/apm/insight/runtime/u$d;",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.apm.insight.runtime.u.AnonymousClass2 (com.apm.insight.runtime.u$2)
.class final Lcom/apm/insight/runtime/u$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apm/insight/runtime/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/runtime/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apm/insight/runtime/u$b<",
        "Landroid/os/Message;",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.apm.insight.runtime.u.a (com.apm.insight.runtime.u$a)
.class Lcom/apm/insight/runtime/u$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/runtime/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/apm/insight/runtime/u;


# direct methods
.method constructor <init>(Lcom/apm/insight/runtime/u;)V
    .registers 2

    iput-object p1, p0, Lcom/apm/insight/runtime/u$a;->a:Lcom/apm/insight/runtime/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .registers 6

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/apm/insight/runtime/u$a;->a:Lcom/apm/insight/runtime/u;

    invoke-static {v0}, Lcom/apm/insight/runtime/u;->c(Lcom/apm/insight/runtime/u;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/apm/insight/runtime/u$a;->a:Lcom/apm/insight/runtime/u;

    invoke-static {v0}, Lcom/apm/insight/runtime/u;->c(Lcom/apm/insight/runtime/u;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apm/insight/runtime/u$d;

    iget-object v1, p0, Lcom/apm/insight/runtime/u$a;->a:Lcom/apm/insight/runtime/u;

    invoke-static {v1}, Lcom/apm/insight/runtime/u;->b(Lcom/apm/insight/runtime/u;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_20
    iget-object v1, p0, Lcom/apm/insight/runtime/u$a;->a:Lcom/apm/insight/runtime/u;

    invoke-static {v1}, Lcom/apm/insight/runtime/u;->b(Lcom/apm/insight/runtime/u;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/apm/insight/runtime/u$d;->a:Landroid/os/Message;

    iget-wide v3, v0, Lcom/apm/insight/runtime/u$d;->b:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_2e

    goto :goto_0

    :catchall_2e
    nop

    goto :goto_0

    :cond_30
    return-void
.end method

.method b()V
    .registers 3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/apm/insight/runtime/u$a;->a:Lcom/apm/insight/runtime/u;

    invoke-static {v0}, Lcom/apm/insight/runtime/u;->d(Lcom/apm/insight/runtime/u;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/apm/insight/runtime/u$a;->a:Lcom/apm/insight/runtime/u;

    invoke-static {v0}, Lcom/apm/insight/runtime/u;->b(Lcom/apm/insight/runtime/u;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_14
    iget-object v0, p0, Lcom/apm/insight/runtime/u$a;->a:Lcom/apm/insight/runtime/u;

    invoke-static {v0}, Lcom/apm/insight/runtime/u;->b(Lcom/apm/insight/runtime/u;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/apm/insight/runtime/u$a;->a:Lcom/apm/insight/runtime/u;

    invoke-static {v1}, Lcom/apm/insight/runtime/u;->d(Lcom/apm/insight/runtime/u;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_2a

    goto :goto_0

    :catchall_2a
    nop

    goto :goto_0

    :cond_2c
    return-void
.end method

.method public run()V
    .registers 1

    invoke-virtual {p0}, Lcom/apm/insight/runtime/u$a;->b()V

    invoke-virtual {p0}, Lcom/apm/insight/runtime/u$a;->a()V

    return-void
.end method

###### Class com.apm.insight.runtime.u.b (com.apm.insight.runtime.u$b)
.class public interface abstract Lcom/apm/insight/runtime/u$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/runtime/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

###### Class com.apm.insight.runtime.u.c (com.apm.insight.runtime.u$c)
.class Lcom/apm/insight/runtime/u$c;
.super Landroid/os/HandlerThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/runtime/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field volatile a:I

.field volatile b:Z

.field final synthetic c:Lcom/apm/insight/runtime/u;


# direct methods
.method constructor <init>(Lcom/apm/insight/runtime/u;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/apm/insight/runtime/u$c;->c:Lcom/apm/insight/runtime/u;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/apm/insight/runtime/u$c;->a:I

    iput-boolean p1, p0, Lcom/apm/insight/runtime/u$c;->b:Z

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .registers 5

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    iget-object v0, p0, Lcom/apm/insight/runtime/u$c;->c:Lcom/apm/insight/runtime/u;

    invoke-static {v0}, Lcom/apm/insight/runtime/u;->a(Lcom/apm/insight/runtime/u;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/apm/insight/runtime/u$c;->c:Lcom/apm/insight/runtime/u;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {v1, v2}, Lcom/apm/insight/runtime/u;->a(Lcom/apm/insight/runtime/u;Landroid/os/Handler;)Landroid/os/Handler;

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_63

    iget-object v0, p0, Lcom/apm/insight/runtime/u$c;->c:Lcom/apm/insight/runtime/u;

    invoke-static {v0}, Lcom/apm/insight/runtime/u;->b(Lcom/apm/insight/runtime/u;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/apm/insight/runtime/u$a;

    iget-object v2, p0, Lcom/apm/insight/runtime/u$c;->c:Lcom/apm/insight/runtime/u;

    invoke-direct {v1, v2}, Lcom/apm/insight/runtime/u$a;-><init>(Lcom/apm/insight/runtime/u;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :catchall_25
    :goto_25
    :try_start_25
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_25

    :catchall_29
    move-exception v0

    :try_start_2a
    invoke-static {}, Lcom/apm/insight/i;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/apm/insight/b/g;->a(Landroid/content/Context;)Lcom/apm/insight/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/b/g;->a()Lcom/apm/insight/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/b/b;->c()V

    iget v1, p0, Lcom/apm/insight/runtime/u$c;->a:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ge v1, v2, :cond_49

    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/d;

    move-result-object v1

    const-string v2, "NPTH_CATCH"

    invoke-virtual {v1, v2, v0}, Lcom/apm/insight/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5d

    :cond_49
    iget-boolean v0, p0, Lcom/apm/insight/runtime/u$c;->b:Z

    if-nez v0, :cond_5d

    iput-boolean v3, p0, Lcom/apm/insight/runtime/u$c;->b:Z

    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/d;

    move-result-object v0

    const-string v1, "NPTH_ERR_MAX"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/apm/insight/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5d
    :goto_5d
    iget v0, p0, Lcom/apm/insight/runtime/u$c;->a:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/apm/insight/runtime/u$c;->a:I
    :try_end_62
    .catchall {:try_start_2a .. :try_end_62} :catchall_25

    goto :goto_25

    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v1
.end method

###### Class com.apm.insight.runtime.u.d (com.apm.insight.runtime.u$d)
.class Lcom/apm/insight/runtime/u$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/runtime/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:Landroid/os/Message;

.field b:J


# direct methods
.method constructor <init>(Landroid/os/Message;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apm/insight/runtime/u$d;->a:Landroid/os/Message;

    iput-wide p2, p0, Lcom/apm/insight/runtime/u$d;->b:J

    return-void
.end method
