###### Class com.applovin.impl.sdk.e.q (com.applovin.impl.sdk.e.q)
.class public Lcom/applovin/impl/sdk/e/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/e/q$a;,
        Lcom/applovin/impl/sdk/e/q$c;,
        Lcom/applovin/impl/sdk/e/q$d;,
        Lcom/applovin/impl/sdk/e/q$b;
    }
.end annotation


# static fields
.field private static final aTt:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final aUl:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final aUm:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final aUn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/e/q$d;",
            ">;"
        }
    .end annotation
.end field

.field private final aUo:Ljava/lang/Object;

.field private aUp:Z

.field private final logger:Lcom/applovin/impl/sdk/x;

.field private final sdk:Lcom/applovin/impl/sdk/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/e/q;->aTt:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/n;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/e/q;->aUn:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/e/q;->aUo:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/q;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/e/q;->logger:Lcom/applovin/impl/sdk/x;

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->aMN:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "auxiliary_operations"

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/sdk/e/q;->g(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/e/q;->aUl:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->aKz:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "shared_thread_pool"

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/e/q;->g(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/q;->aUm:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/e/q;)Lcom/applovin/impl/sdk/n;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/e/q;->sdk:Lcom/applovin/impl/sdk/n;

    return-object p0
.end method

.method private a(Ljava/lang/Runnable;JZ)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1b

    if-eqz p4, :cond_13

    iget-object p4, p0, Lcom/applovin/impl/sdk/e/q;->sdk:Lcom/applovin/impl/sdk/n;

    new-instance v0, Lcom/applovin/impl/sdk/e/d0;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/sdk/e/d0;-><init>(Lcom/applovin/impl/sdk/e/q;Ljava/lang/Runnable;)V

    invoke-static {p2, p3, p4, v0}, Lcom/applovin/impl/sdk/utils/f;->a(JLcom/applovin/impl/sdk/n;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/f;

    goto :goto_20

    :cond_13
    iget-object p4, p0, Lcom/applovin/impl/sdk/e/q;->aUm:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, p1, p2, p3, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_20

    :cond_1b
    iget-object p2, p0, Lcom/applovin/impl/sdk/e/q;->aUm:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_20
    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/e/q$d;)Z
    .registers 5

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/q$d;->b(Lcom/applovin/impl/sdk/e/q$d;)Lcom/applovin/impl/sdk/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/e/d;->Kh()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/q;->aUo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    iget-boolean v2, p0, Lcom/applovin/impl/sdk/e/q;->aUp:Z

    if-eqz v2, :cond_15

    monitor-exit v0

    return v1

    :cond_15
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q;->aUn:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/e/q;)Lcom/applovin/impl/sdk/x;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/e/q;->logger:Lcom/applovin/impl/sdk/x;

    return-object p0
.end method

.method public static synthetic c(Lcom/applovin/impl/sdk/e/q;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/e/q;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method private g(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 5

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/applovin/impl/sdk/e/q$c;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/sdk/e/q$c;-><init>(Lcom/applovin/impl/sdk/e/q;Ljava/lang/String;)V

    invoke-direct {v0, p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method private synthetic i(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/q;->aUm:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public KI()Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/q;->aUm:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public KJ()Ljava/util/concurrent/ExecutorService;
    .registers 2

    sget-object v0, Lcom/applovin/impl/sdk/e/q;->aTt:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public KK()Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/q;->aUl:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public KL()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/q;->aUo:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/applovin/impl/sdk/e/q;->aUp:Z

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public KM()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/q;->aUo:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/applovin/impl/sdk/e/q;->aUp:Z

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q;->aUn:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/e/q$d;

    invoke-static {v2}, Lcom/applovin/impl/sdk/e/q$d;->b(Lcom/applovin/impl/sdk/e/q$d;)Lcom/applovin/impl/sdk/e/d;

    move-result-object v3

    invoke-static {v2}, Lcom/applovin/impl/sdk/e/q$d;->c(Lcom/applovin/impl/sdk/e/q$d;)Lcom/applovin/impl/sdk/e/q$b;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/applovin/impl/sdk/e/q;->a(Lcom/applovin/impl/sdk/e/d;Lcom/applovin/impl/sdk/e/q$b;)V

    goto :goto_c

    :cond_24
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q;->aUn:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public a(Ljava/util/List;Ljava/util/concurrent/ExecutorService;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/e/a;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "TaskManager"

    :try_start_2
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q;->logger:Lcom/applovin/impl/sdk/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Awaiting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tasks..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_2c

    return-object p1

    :catchall_2c
    move-exception p1

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p2

    if-eqz p2, :cond_3a

    iget-object p2, p0, Lcom/applovin/impl/sdk/e/q;->logger:Lcom/applovin/impl/sdk/x;

    const-string v1, "Awaiting tasks were interrupted"

    invoke-virtual {p2, v0, v1, p1}, Lcom/applovin/impl/sdk/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3a
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/applovin/impl/sdk/e/d;Lcom/applovin/impl/sdk/e/q$b;)V
    .registers 5

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/applovin/impl/sdk/e/q;->a(Lcom/applovin/impl/sdk/e/d;Lcom/applovin/impl/sdk/e/q$b;J)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/e/d;Lcom/applovin/impl/sdk/e/q$b;J)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/sdk/e/q;->a(Lcom/applovin/impl/sdk/e/d;Lcom/applovin/impl/sdk/e/q$b;JZ)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/e/d;Lcom/applovin/impl/sdk/e/q$b;JZ)V
    .registers 9

    if-eqz p1, :cond_42

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_2b

    new-instance v0, Lcom/applovin/impl/sdk/e/q$d;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-direct {v0, v1, p1, p2}, Lcom/applovin/impl/sdk/e/q$d;-><init>(Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/sdk/e/d;Lcom/applovin/impl/sdk/e/q$b;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/e/q;->a(Lcom/applovin/impl/sdk/e/q$d;)Z

    move-result p2

    if-nez p2, :cond_19

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/applovin/impl/sdk/e/q;->a(Ljava/lang/Runnable;JZ)V

    goto :goto_2a

    :cond_19
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p2

    if-eqz p2, :cond_2a

    iget-object p2, p0, Lcom/applovin/impl/sdk/e/q;->logger:Lcom/applovin/impl/sdk/x;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/e/d;->Kg()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Task execution delayed until after init"

    invoke-virtual {p2, p1, p3}, Lcom/applovin/impl/sdk/x;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Invalid delay (millis) specified: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No task specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/applovin/impl/sdk/e/d;)V
    .registers 6

    if-eqz p1, :cond_31

    :try_start_2
    invoke-static {}, Lcom/applovin/impl/sdk/utils/u;->Lx()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/q;->aUm:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/applovin/impl/sdk/e/q$d;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/q;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v3, Lcom/applovin/impl/sdk/e/q$b;->aUt:Lcom/applovin/impl/sdk/e/q$b;

    invoke-direct {v1, v2, p1, v3}, Lcom/applovin/impl/sdk/e/q$d;-><init>(Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/sdk/e/d;Lcom/applovin/impl/sdk/e/q$b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_30

    :cond_17
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1b

    goto :goto_30

    :catchall_1b
    move-exception v0

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q;->logger:Lcom/applovin/impl/sdk/x;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/e/d;->Kg()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Task failed execution"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2d
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/e/d;->q(Ljava/lang/Throwable;)V

    :goto_30
    return-void

    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No task specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;
    .registers 4

    new-instance v0, Lcom/applovin/impl/sdk/e/q$a;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/sdk/e/q$a;-><init>(Lcom/applovin/impl/sdk/e/q;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/q;->aUl:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public isInitialized()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/e/q;->aUp:Z

    return v0
.end method

###### Class com.applovin.impl.sdk.e.q.a (com.applovin.impl.sdk.e.q$a)
.class Lcom/applovin/impl/sdk/e/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final aUq:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic aUr:Lcom/applovin/impl/sdk/e/q;

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/e/q;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/q$a;->aUr:Lcom/applovin/impl/sdk/e/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/q$a;->aUq:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/applovin/impl/sdk/e/q$a;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinSdk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q$a;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q$a;->aUq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/q$a;->aUr:Lcom/applovin/impl/sdk/e/q;

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/q;->a(Lcom/applovin/impl/sdk/e/q;)Lcom/applovin/impl/sdk/n;

    move-result-object p1

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->aQJ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setPriority(I)V

    new-instance p1, Lcom/applovin/impl/sdk/e/q$a$1;

    invoke-direct {p1, p0}, Lcom/applovin/impl/sdk/e/q$a$1;-><init>(Lcom/applovin/impl/sdk/e/q$a;)V

    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object v1
.end method

###### Class com.applovin.impl.sdk.e.q.a.AnonymousClass1 (com.applovin.impl.sdk.e.q$a$1)
.class Lcom/applovin/impl/sdk/e/q$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/e/q$a;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aUs:Lcom/applovin/impl/sdk/e/q$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/e/q$a;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/q$a$1;->aUs:Lcom/applovin/impl/sdk/e/q$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/q$a$1;->aUs:Lcom/applovin/impl/sdk/e/q$a;

    iget-object p1, p1, Lcom/applovin/impl/sdk/e/q$a;->aUr:Lcom/applovin/impl/sdk/e/q;

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/q;->a(Lcom/applovin/impl/sdk/e/q;)Lcom/applovin/impl/sdk/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/q$a$1;->aUs:Lcom/applovin/impl/sdk/e/q$a;

    iget-object p1, p1, Lcom/applovin/impl/sdk/e/q$a;->aUr:Lcom/applovin/impl/sdk/e/q;

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/q;->a(Lcom/applovin/impl/sdk/e/q;)Lcom/applovin/impl/sdk/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object p1

    const-string v0, "TaskManager"

    const-string v1, "Caught unhandled exception"

    invoke-virtual {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_24
    return-void
.end method

###### Class com.applovin.impl.sdk.e.q.b (com.applovin.impl.sdk.e.q$b)
.class public final enum Lcom/applovin/impl/sdk/e/q$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/applovin/impl/sdk/e/q$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aUA:Lcom/applovin/impl/sdk/e/q$b;

.field public static final enum aUB:Lcom/applovin/impl/sdk/e/q$b;

.field public static final enum aUC:Lcom/applovin/impl/sdk/e/q$b;

.field public static final enum aUD:Lcom/applovin/impl/sdk/e/q$b;

.field public static final enum aUE:Lcom/applovin/impl/sdk/e/q$b;

.field public static final enum aUF:Lcom/applovin/impl/sdk/e/q$b;

.field public static final enum aUG:Lcom/applovin/impl/sdk/e/q$b;

.field public static final enum aUH:Lcom/applovin/impl/sdk/e/q$b;

.field public static final enum aUI:Lcom/applovin/impl/sdk/e/q$b;

.field public static final enum aUJ:Lcom/applovin/impl/sdk/e/q$b;

.field public static final enum aUK:Lcom/applovin/impl/sdk/e/q$b;

.field public static final enum aUL:Lcom/applovin/impl/sdk/e/q$b;

.field public static final enum aUM:Lcom/applovin/impl/sdk/e/q$b;

.field private static final synthetic aUN:[Lcom/applovin/impl/sdk/e/q$b;

.field public static final enum aUt:Lcom/applovin/impl/sdk/e/q$b;

.field public static final enum aUu:Lcom/applovin/impl/sdk/e/q$b;

.field public static final enum aUv:Lcom/applovin/impl/sdk/e/q$b;

.field public static final enum aUw:Lcom/applovin/impl/sdk/e/q$b;

.field public static final enum aUx:Lcom/applovin/impl/sdk/e/q$b;

.field public static final enum aUy:Lcom/applovin/impl/sdk/e/q$b;

.field public static final enum aUz:Lcom/applovin/impl/sdk/e/q$b;


# direct methods
.method static constructor <clinit>()V
    .registers 23

    new-instance v0, Lcom/applovin/impl/sdk/e/q$b;

    const-string v1, "MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/e/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/e/q$b;->aUt:Lcom/applovin/impl/sdk/e/q$b;

    new-instance v1, Lcom/applovin/impl/sdk/e/q$b;

    const-string v3, "TIMEOUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/applovin/impl/sdk/e/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/applovin/impl/sdk/e/q$b;->aUu:Lcom/applovin/impl/sdk/e/q$b;

    new-instance v3, Lcom/applovin/impl/sdk/e/q$b;

    const-string v5, "BACKGROUND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/applovin/impl/sdk/e/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/applovin/impl/sdk/e/q$b;->aUv:Lcom/applovin/impl/sdk/e/q$b;

    new-instance v5, Lcom/applovin/impl/sdk/e/q$b;

    const-string v7, "ADVERTISING_INFO_COLLECTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/applovin/impl/sdk/e/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/applovin/impl/sdk/e/q$b;->aUw:Lcom/applovin/impl/sdk/e/q$b;

    new-instance v7, Lcom/applovin/impl/sdk/e/q$b;

    const-string v9, "POSTBACKS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/applovin/impl/sdk/e/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/applovin/impl/sdk/e/q$b;->aUx:Lcom/applovin/impl/sdk/e/q$b;

    new-instance v9, Lcom/applovin/impl/sdk/e/q$b;

    const-string v11, "CACHING_INTERSTITIAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/applovin/impl/sdk/e/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/applovin/impl/sdk/e/q$b;->aUy:Lcom/applovin/impl/sdk/e/q$b;

    new-instance v11, Lcom/applovin/impl/sdk/e/q$b;

    const-string v13, "CACHING_INCENTIVIZED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/applovin/impl/sdk/e/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/applovin/impl/sdk/e/q$b;->aUz:Lcom/applovin/impl/sdk/e/q$b;

    new-instance v13, Lcom/applovin/impl/sdk/e/q$b;

    const-string v15, "CACHING_NATIVE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/applovin/impl/sdk/e/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/applovin/impl/sdk/e/q$b;->aUA:Lcom/applovin/impl/sdk/e/q$b;

    new-instance v15, Lcom/applovin/impl/sdk/e/q$b;

    const-string v14, "CACHING_OTHER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/applovin/impl/sdk/e/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/applovin/impl/sdk/e/q$b;->aUB:Lcom/applovin/impl/sdk/e/q$b;

    new-instance v14, Lcom/applovin/impl/sdk/e/q$b;

    const-string v12, "REWARD"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/applovin/impl/sdk/e/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/applovin/impl/sdk/e/q$b;->aUC:Lcom/applovin/impl/sdk/e/q$b;

    new-instance v12, Lcom/applovin/impl/sdk/e/q$b;

    const-string v10, "MEDIATION_MAIN"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/applovin/impl/sdk/e/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/applovin/impl/sdk/e/q$b;->aUD:Lcom/applovin/impl/sdk/e/q$b;

    new-instance v10, Lcom/applovin/impl/sdk/e/q$b;

    const-string v8, "MEDIATION_TIMEOUT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/applovin/impl/sdk/e/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/applovin/impl/sdk/e/q$b;->aUE:Lcom/applovin/impl/sdk/e/q$b;

    new-instance v8, Lcom/applovin/impl/sdk/e/q$b;

    const-string v6, "MEDIATION_BACKGROUND"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/applovin/impl/sdk/e/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/applovin/impl/sdk/e/q$b;->aUF:Lcom/applovin/impl/sdk/e/q$b;

    new-instance v6, Lcom/applovin/impl/sdk/e/q$b;

    const-string v4, "MEDIATION_POSTBACKS"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/applovin/impl/sdk/e/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/applovin/impl/sdk/e/q$b;->aUG:Lcom/applovin/impl/sdk/e/q$b;

    new-instance v4, Lcom/applovin/impl/sdk/e/q$b;

    const-string v2, "MEDIATION_BANNER"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/applovin/impl/sdk/e/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/applovin/impl/sdk/e/q$b;->aUH:Lcom/applovin/impl/sdk/e/q$b;

    new-instance v2, Lcom/applovin/impl/sdk/e/q$b;

    const-string v6, "MEDIATION_INTERSTITIAL"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/applovin/impl/sdk/e/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/applovin/impl/sdk/e/q$b;->aUI:Lcom/applovin/impl/sdk/e/q$b;

    new-instance v6, Lcom/applovin/impl/sdk/e/q$b;

    const-string v4, "MEDIATION_APP_OPEN"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/applovin/impl/sdk/e/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/applovin/impl/sdk/e/q$b;->aUJ:Lcom/applovin/impl/sdk/e/q$b;

    new-instance v4, Lcom/applovin/impl/sdk/e/q$b;

    const-string v2, "MEDIATION_INCENTIVIZED"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/applovin/impl/sdk/e/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/applovin/impl/sdk/e/q$b;->aUK:Lcom/applovin/impl/sdk/e/q$b;

    new-instance v2, Lcom/applovin/impl/sdk/e/q$b;

    const-string v6, "MEDIATION_REWARDED_INTERSTITIAL"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/applovin/impl/sdk/e/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/applovin/impl/sdk/e/q$b;->aUL:Lcom/applovin/impl/sdk/e/q$b;

    new-instance v6, Lcom/applovin/impl/sdk/e/q$b;

    const-string v4, "MEDIATION_REWARD"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/applovin/impl/sdk/e/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/applovin/impl/sdk/e/q$b;->aUM:Lcom/applovin/impl/sdk/e/q$b;

    const/16 v4, 0x14

    new-array v4, v4, [Lcom/applovin/impl/sdk/e/q$b;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    aput-object v6, v4, v2

    sput-object v4, Lcom/applovin/impl/sdk/e/q$b;->aUN:[Lcom/applovin/impl/sdk/e/q$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/sdk/e/q$b;
    .registers 2

    const-class v0, Lcom/applovin/impl/sdk/e/q$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/sdk/e/q$b;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/sdk/e/q$b;
    .registers 1

    sget-object v0, Lcom/applovin/impl/sdk/e/q$b;->aUN:[Lcom/applovin/impl/sdk/e/q$b;

    invoke-virtual {v0}, [Lcom/applovin/impl/sdk/e/q$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/sdk/e/q$b;

    return-object v0
.end method

###### Class com.applovin.impl.sdk.e.q.c (com.applovin.impl.sdk.e.q$c)
.class Lcom/applovin/impl/sdk/e/q$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic aUr:Lcom/applovin/impl/sdk/e/q;

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/e/q;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/q$c;->aUr:Lcom/applovin/impl/sdk/e/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/sdk/e/q$c;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinSdk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q$c;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/q$c;->aUr:Lcom/applovin/impl/sdk/e/q;

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/q;->a(Lcom/applovin/impl/sdk/e/q;)Lcom/applovin/impl/sdk/n;

    move-result-object p1

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->aQJ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setPriority(I)V

    new-instance p1, Lcom/applovin/impl/sdk/e/q$c$1;

    invoke-direct {p1, p0}, Lcom/applovin/impl/sdk/e/q$c$1;-><init>(Lcom/applovin/impl/sdk/e/q$c;)V

    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object v1
.end method

###### Class com.applovin.impl.sdk.e.q.c.AnonymousClass1 (com.applovin.impl.sdk.e.q$c$1)
.class Lcom/applovin/impl/sdk/e/q$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/e/q$c;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aUO:Lcom/applovin/impl/sdk/e/q$c;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/e/q$c;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/q$c$1;->aUO:Lcom/applovin/impl/sdk/e/q$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/q$c$1;->aUO:Lcom/applovin/impl/sdk/e/q$c;

    iget-object p1, p1, Lcom/applovin/impl/sdk/e/q$c;->aUr:Lcom/applovin/impl/sdk/e/q;

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/q;->b(Lcom/applovin/impl/sdk/e/q;)Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/q$c$1;->aUO:Lcom/applovin/impl/sdk/e/q$c;

    iget-object p1, p1, Lcom/applovin/impl/sdk/e/q$c;->aUr:Lcom/applovin/impl/sdk/e/q;

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/q;->b(Lcom/applovin/impl/sdk/e/q;)Lcom/applovin/impl/sdk/x;

    move-result-object p1

    const-string v0, "TaskManager"

    const-string v1, "Caught unhandled exception"

    invoke-virtual {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1c
    return-void
.end method

###### Class com.applovin.impl.sdk.e.q.d (com.applovin.impl.sdk.e.q$d)
.class Lcom/applovin/impl/sdk/e/q$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final aUP:Lcom/applovin/impl/sdk/e/d;

.field private final aUQ:Lcom/applovin/impl/sdk/e/q$b;

.field private final logger:Lcom/applovin/impl/sdk/x;

.field private final sdk:Lcom/applovin/impl/sdk/n;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/sdk/e/d;Lcom/applovin/impl/sdk/e/q$b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/q$d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/q$d;->logger:Lcom/applovin/impl/sdk/x;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/e/d;->Kg()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/q$d;->tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/e/q$d;->aUP:Lcom/applovin/impl/sdk/e/d;

    iput-object p3, p0, Lcom/applovin/impl/sdk/e/q$d;->aUQ:Lcom/applovin/impl/sdk/e/q$b;

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/e/q$d;)Lcom/applovin/impl/sdk/e/d;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/e/q$d;->aUP:Lcom/applovin/impl/sdk/e/d;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/e/q$d;)Lcom/applovin/impl/sdk/e/q$b;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/e/q$d;->aUQ:Lcom/applovin/impl/sdk/e/q$b;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, " queue finished task "

    :try_start_2
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->KU()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q$d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->Bp()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q$d;->aUP:Lcom/applovin/impl/sdk/e/d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/e/d;->Kh()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_35

    :cond_16
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q$d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/q$d;->tag:Ljava/lang/String;

    const-string v3, "Task re-scheduled..."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/x;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q$d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->BO()Lcom/applovin/impl/sdk/e/q;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/q$d;->aUP:Lcom/applovin/impl/sdk/e/d;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/q$d;->aUQ:Lcom/applovin/impl/sdk/e/q$b;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/applovin/impl/sdk/e/q;->a(Lcom/applovin/impl/sdk/e/d;Lcom/applovin/impl/sdk/e/q$b;J)V

    goto :goto_3a

    :cond_35
    :goto_35
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q$d;->aUP:Lcom/applovin/impl/sdk/e/d;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_3a
    .catchall {:try_start_2 .. :try_end_3a} :catchall_4a

    :goto_3a
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q$d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/q$d;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6e

    :catchall_4a
    move-exception v1

    :try_start_4b
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/q$d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/q$d;->tag:Ljava/lang/String;

    const-string v4, "Task failed execution"

    invoke-virtual {v2, v3, v4, v1}, Lcom/applovin/impl/sdk/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5a
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/q$d;->aUP:Lcom/applovin/impl/sdk/e/d;

    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/e/d;->q(Ljava/lang/Throwable;)V
    :try_end_5f
    .catchall {:try_start_4b .. :try_end_5f} :catchall_87

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q$d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/q$d;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6e
    iget-object v4, p0, Lcom/applovin/impl/sdk/e/q$d;->aUQ:Lcom/applovin/impl/sdk/e/q$b;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/q$d;->aUP:Lcom/applovin/impl/sdk/e/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/e/d;->Kg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/x;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_86
    return-void

    :catchall_87
    move-exception v1

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v2

    if-eqz v2, :cond_af

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/q$d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/q$d;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/applovin/impl/sdk/e/q$d;->aUQ:Lcom/applovin/impl/sdk/e/q$b;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/q$d;->aUP:Lcom/applovin/impl/sdk/e/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/e/d;->Kg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/applovin/impl/sdk/x;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_af
    throw v1
.end method

###### Class com.applovin.impl.sdk.e.d0 (com.applovin.impl.sdk.e.d0)
.class public final synthetic Lcom/applovin/impl/sdk/e/d0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/e/q;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/e/q;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/d0;->a:Lcom/applovin/impl/sdk/e/q;

    iput-object p2, p0, Lcom/applovin/impl/sdk/e/d0;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d0;->a:Lcom/applovin/impl/sdk/e/q;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d0;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/e/q;->c(Lcom/applovin/impl/sdk/e/q;Ljava/lang/Runnable;)V

    return-void
.end method
