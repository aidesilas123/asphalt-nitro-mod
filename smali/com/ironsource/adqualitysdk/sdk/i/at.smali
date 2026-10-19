###### Class com.json.adqualitysdk.sdk.i.at (com.ironsource.adqualitysdk.sdk.i.at)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/at;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/at$e;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/adqualitysdk/sdk/i/av;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/at;->a:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic a(Lcom/ironsource/adqualitysdk/sdk/i/at;Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/av;
    .registers 2

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/at;->a:Ljava/util/Map;

    if-eqz p0, :cond_b

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/av;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Lcom/ironsource/adqualitysdk/sdk/i/at;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/at;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lcom/ironsource/adqualitysdk/sdk/i/at;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/at;->a:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method final d(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/at;->a:Ljava/util/Map;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/av;

    invoke-direct {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/av;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/at;->a:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/av;

    goto :goto_d

    :cond_c
    move-object p1, v1

    :goto_d
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/av;->g()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_14
    return-object v1
.end method

.method public final declared-synchronized ﻐ()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/at;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/av;

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/av;->m()Z

    move-result v1
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_28

    if-eqz v1, :cond_10

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_25
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method
