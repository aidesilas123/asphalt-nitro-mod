###### Class com.bytedance.sdk.component.b.c (com.bytedance.sdk.component.b$c)
.class public Lcom/bytedance/sdk/component/b$c;
.super Ljava/lang/Object;
.source "TTPropHelper.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/b;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mEditorLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mEditorLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/b$c;->a:Lcom/bytedance/sdk/component/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/b$c;->b:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/b$c;->c:Ljava/util/Map;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/b$c;->d:Z

    return-void
.end method

.method private b()Lcom/bytedance/sdk/component/b$b;
    .registers 11

    iget-object v0, p0, Lcom/bytedance/sdk/component/b$c;->a:Lcom/bytedance/sdk/component/b;

    invoke-static {v0}, Lcom/bytedance/sdk/component/b;->b(Lcom/bytedance/sdk/component/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/bytedance/sdk/component/b$c;->a:Lcom/bytedance/sdk/component/b;

    invoke-static {v1}, Lcom/bytedance/sdk/component/b;->c(Lcom/bytedance/sdk/component/b;)I

    move-result v1

    if-lez v1, :cond_22

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/component/b$c;->a:Lcom/bytedance/sdk/component/b;

    invoke-static {v2}, Lcom/bytedance/sdk/component/b;->d(Lcom/bytedance/sdk/component/b;)Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    iget-object v2, p0, Lcom/bytedance/sdk/component/b$c;->a:Lcom/bytedance/sdk/component/b;

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/b;->a(Lcom/bytedance/sdk/component/b;Ljava/util/Properties;)Ljava/util/Properties;

    :cond_22
    iget-object v1, p0, Lcom/bytedance/sdk/component/b$c;->a:Lcom/bytedance/sdk/component/b;

    invoke-static {v1}, Lcom/bytedance/sdk/component/b;->d(Lcom/bytedance/sdk/component/b;)Ljava/util/Properties;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/b$c;->a:Lcom/bytedance/sdk/component/b;

    invoke-static {v2}, Lcom/bytedance/sdk/component/b;->e(Lcom/bytedance/sdk/component/b;)I

    iget-object v2, p0, Lcom/bytedance/sdk/component/b$c;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_b3

    :try_start_30
    iget-boolean v3, p0, Lcom/bytedance/sdk/component/b$c;->d:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_45

    invoke-virtual {v1}, Ljava/util/Properties;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_41

    invoke-virtual {v1}, Ljava/util/Properties;->clear()V

    const/4 v3, 0x1

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    :goto_42
    iput-boolean v5, p0, Lcom/bytedance/sdk/component/b$c;->d:Z

    move v5, v3

    :cond_45
    iget-object v3, p0, Lcom/bytedance/sdk/component/b$c;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_95

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p0, :cond_89

    if-nez v6, :cond_6a

    goto :goto_89

    :cond_6a
    invoke-virtual {v1, v7}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_81

    invoke-virtual {v1, v7}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_81

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_81

    goto :goto_4f

    :cond_81
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v7, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_93

    :cond_89
    :goto_89
    invoke-virtual {v1, v7}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_90

    goto :goto_4f

    :cond_90
    invoke-virtual {v1, v7}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_93
    const/4 v5, 0x1

    goto :goto_4f

    :cond_95
    iget-object v3, p0, Lcom/bytedance/sdk/component/b$c;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    if-eqz v5, :cond_a1

    iget-object v3, p0, Lcom/bytedance/sdk/component/b$c;->a:Lcom/bytedance/sdk/component/b;

    invoke-static {v3}, Lcom/bytedance/sdk/component/b;->f(Lcom/bytedance/sdk/component/b;)J

    :cond_a1
    iget-object v3, p0, Lcom/bytedance/sdk/component/b$c;->a:Lcom/bytedance/sdk/component/b;

    invoke-static {v3}, Lcom/bytedance/sdk/component/b;->g(Lcom/bytedance/sdk/component/b;)J

    move-result-wide v3

    monitor-exit v2
    :try_end_a8
    .catchall {:try_start_30 .. :try_end_a8} :catchall_b0

    :try_start_a8
    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_b3

    new-instance v0, Lcom/bytedance/sdk/component/b$b;

    const/4 v2, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/bytedance/sdk/component/b$b;-><init>(JLjava/util/Properties;Lcom/bytedance/sdk/component/b$1;)V

    return-object v0

    :catchall_b0
    move-exception v1

    :try_start_b1
    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    :try_start_b2
    throw v1

    :catchall_b3
    move-exception v1

    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_b3

    throw v1
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/component/b$c;
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/b$c;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/b$c;->d:Z

    monitor-exit v0

    return-object p0

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/component/b$c;
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/b$c;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/component/b$c;->c:Ljava/util/Map;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public a(Ljava/lang/String;F)Lcom/bytedance/sdk/component/b$c;
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/b$c;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/component/b$c;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public a(Ljava/lang/String;I)Lcom/bytedance/sdk/component/b$c;
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/b$c;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/component/b$c;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public a(Ljava/lang/String;J)Lcom/bytedance/sdk/component/b$c;
    .registers 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/b$c;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/component/b$c;->c:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/b$c;
    .registers 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bytedance/sdk/component/b$c;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/component/b$c;->c:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/util/Set;)Lcom/bytedance/sdk/component/b$c;
    .registers 6
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/sdk/component/b$c;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/b$c;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/component/b$c;->c:Ljava/util/Map;

    if-nez p2, :cond_9

    const/4 p2, 0x0

    goto :goto_f

    :cond_9
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p2, v2

    :goto_f
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public a(Ljava/lang/String;Z)Lcom/bytedance/sdk/component/b$c;
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/b$c;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/component/b$c;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public apply()V
    .registers 4

    invoke-direct {p0}, Lcom/bytedance/sdk/component/b$c;->b()Lcom/bytedance/sdk/component/b$b;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/b$c;->a:Lcom/bytedance/sdk/component/b;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/component/b;->a(Lcom/bytedance/sdk/component/b;Lcom/bytedance/sdk/component/b$b;Z)V

    return-void
.end method

.method public synthetic clear()Landroid/content/SharedPreferences$Editor;
    .registers 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/b$c;->a()Lcom/bytedance/sdk/component/b$c;

    move-result-object v0

    return-object v0
.end method

.method public commit()Z
    .registers 12

    const-string v0, " ms"

    const-string v1, " committed after "

    const-string v2, ":"

    const-string v3, "TTPropHelper"

    invoke-static {}, Lcom/bytedance/sdk/component/b;->c()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_15

    :cond_13
    const-wide/16 v4, 0x0

    :goto_15
    invoke-direct {p0}, Lcom/bytedance/sdk/component/b$c;->b()Lcom/bytedance/sdk/component/b$b;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/component/b$c;->a:Lcom/bytedance/sdk/component/b;

    const/4 v8, 0x1

    invoke-static {v7, v6, v8}, Lcom/bytedance/sdk/component/b;->a(Lcom/bytedance/sdk/component/b;Lcom/bytedance/sdk/component/b$b;Z)V

    :try_start_1f
    iget-object v7, v6, Lcom/bytedance/sdk/component/b$b;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_24} :catch_93
    .catchall {:try_start_1f .. :try_end_24} :catchall_5c

    invoke-static {}, Lcom/bytedance/sdk/component/b;->c()Z

    move-result v7

    if-eqz v7, :cond_59

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/bytedance/sdk/component/b$c;->a:Lcom/bytedance/sdk/component/b;

    invoke-static {v8}, Lcom/bytedance/sdk/component/b;->a(Lcom/bytedance/sdk/component/b;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v6, Lcom/bytedance/sdk/component/b$b;->a:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    iget-boolean v0, v6, Lcom/bytedance/sdk/component/b$b;->d:Z

    return v0

    :catchall_5c
    move-exception v7

    invoke-static {}, Lcom/bytedance/sdk/component/b;->c()Z

    move-result v8

    if-eqz v8, :cond_92

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/bytedance/sdk/component/b$c;->a:Lcom/bytedance/sdk/component/b;

    invoke-static {v9}, Lcom/bytedance/sdk/component/b;->a(Lcom/bytedance/sdk/component/b;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v6, Lcom/bytedance/sdk/component/b$b;->a:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    throw v7

    :catch_93
    nop

    const/4 v7, 0x0

    invoke-static {}, Lcom/bytedance/sdk/component/b;->c()Z

    move-result v8

    if-eqz v8, :cond_ca

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/bytedance/sdk/component/b$c;->a:Lcom/bytedance/sdk/component/b;

    invoke-static {v9}, Lcom/bytedance/sdk/component/b;->a(Lcom/bytedance/sdk/component/b;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v6, Lcom/bytedance/sdk/component/b$b;->a:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ca
    return v7
.end method

.method public synthetic putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/b$c;->a(Ljava/lang/String;Z)Lcom/bytedance/sdk/component/b$c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/b$c;->a(Ljava/lang/String;F)Lcom/bytedance/sdk/component/b$c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/b$c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/component/b$c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/b$c;->a(Ljava/lang/String;J)Lcom/bytedance/sdk/component/b$c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/b$c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/b$c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .registers 3
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/b$c;->a(Ljava/lang/String;Ljava/util/Set;)Lcom/bytedance/sdk/component/b$c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/b$c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/b$c;

    move-result-object p1

    return-object p1
.end method
