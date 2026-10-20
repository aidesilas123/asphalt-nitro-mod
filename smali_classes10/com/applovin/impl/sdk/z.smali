###### Class com.applovin.impl.sdk.z (com.applovin.impl.sdk.z)
.class Lcom/applovin/impl/sdk/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aFu:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final aFv:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/z;->aFu:Ljava/util/Queue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/z;->aFv:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method Fq()I
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/z;->aFv:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/z;->aFu:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method Fr()Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/z;->aFv:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/z;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/applovin/impl/sdk/z;->aFu:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    return-object v1

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method Fs()Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/z;->aFv:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/z;->aFu:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method c(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/z;->aFv:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/z;->Fq()I

    move-result v1

    const/16 v2, 0x19

    if-gt v1, v2, :cond_11

    iget-object v1, p0, Lcom/applovin/impl/sdk/z;->aFu:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_11
    const-string p1, "AppLovinSdk"

    const-string v1, "Maximum queue capacity reached - discarding ad..."

    invoke-static {p1, v1}, Lcom/applovin/impl/sdk/x;->H(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method d(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/z;->aFv:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/z;->aFu:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method isEmpty()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/z;->aFv:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/z;->Fq()I

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
