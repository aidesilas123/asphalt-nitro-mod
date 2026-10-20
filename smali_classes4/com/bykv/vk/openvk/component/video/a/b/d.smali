###### Class com.bykv.vk.openvk.component.video.a.b.d (com.bykv.vk.openvk.component.video.a.b.d)
.class public Lcom/bykv/vk/openvk/component/video/a/b/d;
.super Ljava/lang/Object;
.source "Preloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/a/b/d$b;,
        Lcom/bykv/vk/openvk/component/video/a/b/d$a;
    }
.end annotation


# static fields
.field private static volatile e:Lcom/bykv/vk/openvk/component/video/a/b/d;


# instance fields
.field private volatile a:I

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/component/video/a/b/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bykv/vk/openvk/component/video/a/b/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/component/video/a/b/d$b<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private volatile f:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

.field private volatile g:Lcom/bykv/vk/openvk/component/video/a/b/a/c;

.field private volatile h:Lcom/bykv/vk/openvk/component/video/a/b/a/b;

.field private final i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/bykv/vk/openvk/component/video/a/b/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/bykv/vk/openvk/component/video/a/b/b$b;

.field private volatile k:Lcom/bykv/vk/openvk/component/video/a/b/c;

.field private volatile l:Lcom/bykv/vk/openvk/component/video/a/b/c;

.field private volatile m:Ljava/lang/String;

.field private volatile n:Z


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x28000

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->a:I

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->b:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->i:Ljava/util/HashSet;

    new-instance v1, Lcom/bykv/vk/openvk/component/video/a/b/d$1;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/component/video/a/b/d$1;-><init>(Lcom/bykv/vk/openvk/component/video/a/b/d;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->j:Lcom/bykv/vk/openvk/component/video/a/b/b$b;

    new-instance v1, Lcom/bykv/vk/openvk/component/video/a/b/d$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bykv/vk/openvk/component/video/a/b/d$b;-><init>(Lcom/bykv/vk/openvk/component/video/a/b/d$1;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->c:Lcom/bykv/vk/openvk/component/video/a/b/d$b;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/a/b/d;->a(Lcom/bykv/vk/openvk/component/video/a/b/d$b;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->d:Ljava/util/concurrent/ExecutorService;

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/a/b/d$b;->a(Ljava/util/concurrent/ThreadPoolExecutor;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/bykv/vk/openvk/component/video/a/b/d;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->b:Landroid/util/SparseArray;

    return-object p0
.end method

.method private static a(Lcom/bykv/vk/openvk/component/video/a/b/d$b;)Ljava/util/concurrent/ExecutorService;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/component/video/a/b/d$b<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/util/concurrent/ExecutorService;"
        }
    .end annotation

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ge v0, v2, :cond_a

    const/4 v5, 0x1

    goto :goto_f

    :cond_a
    if-le v0, v1, :cond_e

    const/4 v5, 0x4

    goto :goto_f

    :cond_e
    move v5, v0

    :goto_f
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v4, 0x0

    const-wide/16 v6, 0x3c

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Lcom/bykv/vk/openvk/component/video/a/b/d$4;

    invoke-direct {v10}, Lcom/bykv/vk/openvk/component/video/a/b/d$4;-><init>()V

    new-instance v11, Lcom/bykv/vk/openvk/component/video/a/b/d$5;

    invoke-direct {v11, p0}, Lcom/bykv/vk/openvk/component/video/a/b/d$5;-><init>(Lcom/bykv/vk/openvk/component/video/a/b/d$b;)V

    move-object v3, v0

    move-object v9, p0

    invoke-direct/range {v3 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v0
.end method

.method static synthetic b(Lcom/bykv/vk/openvk/component/video/a/b/d;)Lcom/bykv/vk/openvk/component/video/a/b/d$b;
    .registers 1

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->c:Lcom/bykv/vk/openvk/component/video/a/b/d$b;

    return-object p0
.end method

.method public static c()Lcom/bykv/vk/openvk/component/video/a/b/d;
    .registers 2

    sget-object v0, Lcom/bykv/vk/openvk/component/video/a/b/d;->e:Lcom/bykv/vk/openvk/component/video/a/b/d;

    if-nez v0, :cond_17

    const-class v0, Lcom/bykv/vk/openvk/component/video/a/b/d;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bykv/vk/openvk/component/video/a/b/d;->e:Lcom/bykv/vk/openvk/component/video/a/b/d;

    if-nez v1, :cond_12

    new-instance v1, Lcom/bykv/vk/openvk/component/video/a/b/d;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/component/video/a/b/d;-><init>()V

    sput-object v1, Lcom/bykv/vk/openvk/component/video/a/b/d;->e:Lcom/bykv/vk/openvk/component/video/a/b/d;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/bykv/vk/openvk/component/video/a/b/d;->e:Lcom/bykv/vk/openvk/component/video/a/b/d;

    return-object v0
.end method


# virtual methods
.method a()Lcom/bykv/vk/openvk/component/video/a/b/c;
    .registers 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->k:Lcom/bykv/vk/openvk/component/video/a/b/c;

    return-object v0
.end method

.method public a(I)V
    .registers 4

    if-lez p1, :cond_4

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->a:I

    :cond_4
    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaxPreloadSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG_PROXY_Preloader"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method

.method public declared-synchronized a(JJJ)V
    .registers 7

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method a(Lcom/bykv/vk/openvk/component/video/a/b/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->g:Lcom/bykv/vk/openvk/component/video/a/b/a/c;

    return-void
.end method

.method a(Lcom/bykv/vk/openvk/component/video/a/b/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->f:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lcom/bykv/vk/openvk/component/video/a/b/d;->a(ZZLjava/lang/String;)V

    return-void
.end method

.method a(ZLjava/lang/String;)V
    .registers 10

    iput-object p2, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->m:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->n:Z

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz v0, :cond_1e

    const-string v0, "TAG_PROXY_Preloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentPlayKey, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    if-nez p2, :cond_7b

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->i:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_24
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->i:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_38

    new-instance v0, Ljava/util/HashSet;

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->i:Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->i:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    :cond_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_24 .. :try_end_39} :catchall_78

    if-eqz v0, :cond_13f

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3f
    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_13f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/component/video/a/b/d$a;

    iget-boolean v1, p2, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->a:Z

    iget-boolean v2, p2, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->b:Z

    iget v3, p2, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->c:I

    iget-object v4, p2, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->d:Ljava/lang/String;

    iget-object v5, p2, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->e:Ljava/util/Map;

    iget-object v6, p2, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->f:[Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/bykv/vk/openvk/component/video/a/b/d;->a(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz v0, :cond_3f

    const-string v0, "TAG_PROXY_Preloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentPlayKey, resume preload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/bykv/vk/openvk/component/video/a/b/d$a;->d:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :catchall_78
    move-exception p1

    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p1

    :cond_7b
    sget v1, Lcom/bykv/vk/openvk/component/video/a/b/e;->h:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_aa

    const/4 v3, 0x2

    if-ne v1, v3, :cond_84

    goto :goto_aa

    :cond_84
    const/4 v2, 0x1

    if-ne v1, v2, :cond_13f

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->b:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_8a
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->b:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/a/b/b/b;->a(Z)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_9f

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/bykv/vk/openvk/component/video/a/b/b;

    :cond_9f
    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_8a .. :try_end_a0} :catchall_a7

    if-eqz v0, :cond_13f

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/a/b/a;->a()V

    goto/16 :goto_13f

    :catchall_a7
    move-exception p1

    :try_start_a8
    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw p1

    :cond_aa
    :goto_aa
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->b:Landroid/util/SparseArray;

    monitor-enter p1

    const/4 p2, 0x0

    :try_start_ae
    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_b4
    if-ge p2, v3, :cond_e0

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_dd

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    if-eqz v5, :cond_da

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_da

    if-nez v0, :cond_d7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_d7
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_da
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    :cond_dd
    add-int/lit8 p2, p2, 0x1

    goto :goto_b4

    :cond_e0
    monitor-exit p1
    :try_end_e1
    .catchall {:try_start_ae .. :try_end_e1} :catchall_140

    if-eqz v0, :cond_13f

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_13f

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_ed
    :goto_ed
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_119

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/component/video/a/b/b;

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/a/b/a;->a()V

    sget-boolean v3, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz v3, :cond_ed

    const-string v3, "TAG_PROXY_Preloader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCurrentPlayKey, cancel preload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/bykv/vk/openvk/component/video/a/b/a;->g:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    :cond_119
    if-ne v1, v2, :cond_13f

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->i:Ljava/util/HashSet;

    monitor-enter p1

    :try_start_11e
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_122
    :goto_122
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/a/b/b;

    iget-object v0, v0, Lcom/bykv/vk/openvk/component/video/a/b/b;->n:Ljava/lang/Object;

    check-cast v0, Lcom/bykv/vk/openvk/component/video/a/b/d$a;

    if-eqz v0, :cond_122

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->i:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_122

    :cond_13a
    monitor-exit p1

    goto :goto_13f

    :catchall_13c
    move-exception p2

    monitor-exit p1
    :try_end_13e
    .catchall {:try_start_11e .. :try_end_13e} :catchall_13c

    throw p2

    :cond_13f
    :goto_13f
    return-void

    :catchall_140
    move-exception p2

    :try_start_141
    monitor-exit p1
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_140

    throw p2
.end method

.method public varargs a(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    sget-boolean v11, Lcom/bykv/vk/openvk/component/video/a/b/e;->c:Z

    if-eqz v11, :cond_13

    const-string v2, "TAG_PROXY_Preloader"

    const-string v3, "preload start \uff01\uff01\uff01\uff01"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    if-eqz v0, :cond_18

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/a/b/d;->h:Lcom/bykv/vk/openvk/component/video/a/b/a/b;

    goto :goto_1a

    :cond_18
    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/a/b/d;->g:Lcom/bykv/vk/openvk/component/video/a/b/a/c;

    :goto_1a
    move-object v12, v2

    iget-object v13, v1, Lcom/bykv/vk/openvk/component/video/a/b/d;->f:Lcom/bykv/vk/openvk/component/video/a/b/b/c;

    if-eqz v12, :cond_1cd

    if-nez v13, :cond_23

    goto/16 :goto_1cd

    :cond_23
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1cc

    if-eqz v10, :cond_1cc

    array-length v2, v10

    if-gtz v2, :cond_30

    goto/16 :goto_1cc

    :cond_30
    if-gtz p3, :cond_36

    iget v2, v1, Lcom/bykv/vk/openvk/component/video/a/b/d;->a:I

    move v14, v2

    goto :goto_38

    :cond_36
    move/from16 v14, p3

    :goto_38
    if-eqz p2, :cond_3c

    move-object v15, v9

    goto :goto_41

    :cond_3c
    invoke-static/range {p4 .. p4}, Lcom/bykv/vk/openvk/component/video/api/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    :goto_41
    invoke-virtual {v12, v15}, Lcom/bykv/vk/openvk/component/video/a/b/a/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_75

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    int-to-long v5, v14

    cmp-long v7, v3, v5

    if-ltz v7, :cond_75

    if-eqz v11, :cond_74

    const-string v0, "TAG_PROXY_Preloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no need preload, file size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", need preload size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    return-void

    :cond_75
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a()Lcom/bykv/vk/openvk/component/video/a/b/f;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/bykv/vk/openvk/component/video/a/b/b/b;->a(Z)I

    move-result v3

    invoke-virtual {v2, v3, v15}, Lcom/bykv/vk/openvk/component/video/a/b/f;->a(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9c

    if-eqz v11, :cond_9b

    const-string v0, "TAG_PROXY_Preloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has running proxy task, skip preload for key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    return-void

    :cond_9c
    iget-object v8, v1, Lcom/bykv/vk/openvk/component/video/a/b/d;->b:Landroid/util/SparseArray;

    monitor-enter v8

    :try_start_9f
    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/a/b/d;->b:Landroid/util/SparseArray;

    const/16 v16, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_a8

    const/4 v3, 0x1

    goto :goto_a9

    :cond_a8
    const/4 v3, 0x0

    :goto_a9
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    monitor-exit v8

    return-void

    :cond_b8
    new-instance v5, Lcom/bykv/vk/openvk/component/video/a/b/d$a;
    :try_end_ba
    .catchall {:try_start_9f .. :try_end_ba} :catchall_1c5

    move-object v2, v5

    move/from16 v3, p1

    move/from16 v4, p2

    move-object v10, v5

    move v5, v14

    move-object/from16 v17, v6

    move-object/from16 v6, p4

    move/from16 p3, v14

    const/4 v14, 0x1

    move-object/from16 v7, p5

    move-object/from16 v18, v8

    move-object/from16 v8, p6

    :try_start_ce
    invoke-direct/range {v2 .. v8}, Lcom/bykv/vk/openvk/component/video/a/b/d$a;-><init>(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/a/b/d;->m:Ljava/lang/String;

    if-eqz v2, :cond_14d

    sget v3, Lcom/bykv/vk/openvk/component/video/a/b/e;->h:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_105

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/a/b/d;->i:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_dd
    .catchall {:try_start_ce .. :try_end_dd} :catchall_1ca

    :try_start_dd
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/a/b/d;->i:Ljava/util/HashSet;

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_e3
    .catchall {:try_start_dd .. :try_end_e3} :catchall_102

    if-eqz v11, :cond_100

    :try_start_e5
    const-string v0, "TAG_PROXY_Preloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel preload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", add to pending queue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_100
    monitor-exit v18
    :try_end_101
    .catchall {:try_start_e5 .. :try_end_101} :catchall_1ca

    return-void

    :catchall_102
    move-exception v0

    :try_start_103
    monitor-exit v2
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_102

    :try_start_104
    throw v0

    :cond_105
    const/4 v4, 0x2

    if-ne v3, v4, :cond_122

    if-eqz v11, :cond_120

    const-string v0, "TAG_PROXY_Preloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel preload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_120
    monitor-exit v18

    return-void

    :cond_122
    if-ne v3, v14, :cond_14d

    iget-boolean v3, v1, Lcom/bykv/vk/openvk/component/video/a/b/d;->n:Z

    if-ne v3, v0, :cond_14d

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    if-eqz v11, :cond_14b

    const-string v0, "TAG_PROXY_Preloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel preload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", it is playing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14b
    monitor-exit v18

    return-void

    :cond_14d
    const/4 v0, 0x0

    invoke-static/range {p5 .. p5}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_17f

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_166
    if-ge v4, v3, :cond_17f

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bykv/vk/openvk/component/video/a/b/i$b;

    if-eqz v5, :cond_17c

    new-instance v6, Lcom/bykv/vk/openvk/component/video/a/b/i$b;

    iget-object v7, v5, Lcom/bykv/vk/openvk/component/video/a/b/i$b;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/bykv/vk/openvk/component/video/a/b/i$b;->b:Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Lcom/bykv/vk/openvk/component/video/a/b/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17c
    add-int/lit8 v4, v4, 0x1

    goto :goto_166

    :cond_17f
    new-instance v2, Lcom/bykv/vk/openvk/component/video/a/b/b$a;

    invoke-direct {v2}, Lcom/bykv/vk/openvk/component/video/a/b/b$a;-><init>()V

    invoke-virtual {v2, v12}, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->a(Lcom/bykv/vk/openvk/component/video/a/b/a/a;)Lcom/bykv/vk/openvk/component/video/a/b/b$a;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->a(Lcom/bykv/vk/openvk/component/video/a/b/b/c;)Lcom/bykv/vk/openvk/component/video/a/b/b$a;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/component/video/a/b/b$a;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->b(Ljava/lang/String;)Lcom/bykv/vk/openvk/component/video/a/b/b$a;

    move-result-object v2

    new-instance v3, Lcom/bykv/vk/openvk/component/video/a/b/l;

    invoke-static/range {p6 .. p6}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bykv/vk/openvk/component/video/a/b/l;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->a(Lcom/bykv/vk/openvk/component/video/a/b/l;)Lcom/bykv/vk/openvk/component/video/a/b/b$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->a(Ljava/util/List;)Lcom/bykv/vk/openvk/component/video/a/b/b$a;

    move-result-object v0

    move/from16 v2, p3

    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->a(I)Lcom/bykv/vk/openvk/component/video/a/b/b$a;

    move-result-object v0

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/a/b/d;->j:Lcom/bykv/vk/openvk/component/video/a/b/b$b;

    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->a(Lcom/bykv/vk/openvk/component/video/a/b/b$b;)Lcom/bykv/vk/openvk/component/video/a/b/b$a;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->a(Ljava/lang/Object;)Lcom/bykv/vk/openvk/component/video/a/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/a/b/b$a;->a()Lcom/bykv/vk/openvk/component/video/a/b/b;

    move-result-object v0

    move-object/from16 v2, v17

    invoke-interface {v2, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v18
    :try_end_1bf
    .catchall {:try_start_104 .. :try_end_1bf} :catchall_1ca

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/a/b/d;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1c5
    move-exception v0

    move-object/from16 v18, v8

    :goto_1c8
    :try_start_1c8
    monitor-exit v18
    :try_end_1c9
    .catchall {:try_start_1c8 .. :try_end_1c9} :catchall_1ca

    throw v0

    :catchall_1ca
    move-exception v0

    goto :goto_1c8

    :cond_1cc
    :goto_1cc
    return-void

    :cond_1cd
    :goto_1cd
    if-eqz v11, :cond_1d6

    const-string v0, "TAG_PROXY_Preloader"

    const-string v2, "cache or videoProxyDB null in Preloader!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d6
    return-void
.end method

.method public varargs a(ZZILjava/lang/String;[Ljava/lang/String;)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bykv/vk/openvk/component/video/a/b/d;->a(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    return-void
.end method

.method public a(ZZLjava/lang/String;)V
    .registers 11

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lcom/bykv/vk/openvk/component/video/a/b/d$2;

    const-string v3, "cancel b b S"

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/bykv/vk/openvk/component/video/a/b/d$2;-><init>(Lcom/bykv/vk/openvk/component/video/a/b/d;Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Lcom/bytedance/sdk/component/g/h;)V

    return-void
.end method

.method b()Lcom/bykv/vk/openvk/component/video/a/b/c;
    .registers 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/d;->l:Lcom/bykv/vk/openvk/component/video/a/b/c;

    return-object v0
.end method

.method public d()V
    .registers 3

    new-instance v0, Lcom/bykv/vk/openvk/component/video/a/b/d$3;

    const-string v1, "cancelAll"

    invoke-direct {v0, p0, v1}, Lcom/bykv/vk/openvk/component/video/a/b/d$3;-><init>(Lcom/bykv/vk/openvk/component/video/a/b/d;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Lcom/bytedance/sdk/component/g/h;)V

    return-void
.end method
