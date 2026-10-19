###### Class com.bytedance.sdk.component.d.d.g (com.bytedance.sdk.component.d.d.g)
.class public Lcom/bytedance/sdk/component/d/d/g;
.super Lcom/bytedance/sdk/component/d/d/a;
.source "DuplicateRequestCheckVisitor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "check_duplicate"

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/component/d/c/c;)V
    .registers 5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->s()Lcom/bytedance/sdk/component/d/c/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/c/f;->g()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_d
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1a

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_37

    monitor-enter v2

    :try_start_1c
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2a

    goto :goto_32

    :cond_2a
    new-instance v0, Lcom/bytedance/sdk/component/d/d/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/d/d;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/d/c/c;->a(Lcom/bytedance/sdk/component/d/d/i;)Z

    :goto_32
    monitor-exit v2

    return-void

    :catchall_34
    move-exception p1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_34

    throw p1

    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1
.end method
