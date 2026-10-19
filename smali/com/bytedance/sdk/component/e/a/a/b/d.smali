###### Class com.bytedance.sdk.component.e.a.a.b.d (com.bytedance.sdk.component.e.a.a.b.d)
.class public abstract Lcom/bytedance/sdk/component/e/a/a/b/d;
.super Ljava/lang/Object;
.source "EventMemoryCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/bytedance/sdk/component/e/a/d/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/component/e/a/d/b/a;

.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/e/a/d/b/a;Ljava/util/Queue;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/e/a/d/b/a;",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/b/d;->b:Ljava/util/Queue;

    const-string v0, "EventMemoryCacheManager"

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/b/d;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/b/d;->a:Lcom/bytedance/sdk/component/e/a/d/b/a;

    iput-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/b/d;->c:Ljava/util/Queue;

    iput-object p3, p0, Lcom/bytedance/sdk/component/e/a/a/b/d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/e/a/d/a;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/e/a/a/b/d;->b(II)Z

    move-result p1

    if-eqz p1, :cond_2d

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/b/d;->a:Lcom/bytedance/sdk/component/e/a/d/b/a;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/e/a/d/b/a;->a()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    :cond_12
    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/b/d;->b:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/component/e/a/d/a;

    if-eqz p2, :cond_2b

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/b/d;->a:Lcom/bytedance/sdk/component/e/a/d/b/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/d/b/a;->b()I

    move-result v0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_30

    if-ne p2, v0, :cond_12

    :cond_2b
    monitor-exit p0

    return-object p1

    :cond_2d
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_13

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_13

    const/16 v0, 0x1fd

    if-ne p1, v0, :cond_d

    goto :goto_13

    :cond_d
    :try_start_d
    iget-object p1, p0, Lcom/bytedance/sdk/component/e/a/a/b/d;->b:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    goto :goto_32

    :cond_13
    :goto_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/b/d;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " memory size\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/b/d;->b:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_34

    :goto_32
    monitor-exit p0

    return-void

    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/bytedance/sdk/component/e/a/d/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/b/d;->b:Ljava/util/Queue;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public declared-synchronized b(II)Z
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object p2, p0, Lcom/bytedance/sdk/component/e/a/a/b/d;->b:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->size()I

    move-result p2

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/a/b/d;->a:Lcom/bytedance/sdk/component/e/a/d/b/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/d/b/a;->a()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/component/e/a/a/b/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cacheCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_53

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_43

    if-ne p1, v3, :cond_3e

    goto :goto_43

    :cond_3e
    if-lt p2, v0, :cond_41

    const/4 v2, 0x1

    :cond_41
    monitor-exit p0

    return v2

    :cond_43
    :goto_43
    :try_start_43
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/c/a;->c()Z

    move-result p1
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_53

    if-eqz p1, :cond_4e

    if-lt p2, v3, :cond_4c

    const/4 v2, 0x1

    :cond_4c
    monitor-exit p0

    return v2

    :cond_4e
    if-lt p2, v0, :cond_51

    const/4 v2, 0x1

    :cond_51
    monitor-exit p0

    return v2

    :catchall_53
    move-exception p1

    monitor-exit p0

    throw p1
.end method
