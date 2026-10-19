###### Class com.bykv.vk.openvk.preload.b.k (com.bykv.vk.openvk.preload.b.k)
.class public abstract Lcom/bykv/vk/openvk/preload/b/k;
.super Lcom/bykv/vk/openvk/preload/b/d;
.source "RetryInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IN:",
        "Ljava/lang/Object;",
        "OUT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bykv/vk/openvk/preload/b/d<",
        "TIN;TOUT;>;"
    }
.end annotation


# instance fields
.field protected g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TIN;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/b/d;-><init>()V

    return-void
.end method

.method private a(Lcom/bykv/vk/openvk/preload/b/b;Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/b/b<",
            "TOUT;>;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :goto_0
    invoke-virtual {p0, p2}, Lcom/bykv/vk/openvk/preload/b/k;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_17

    :try_start_6
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/b/k;->a()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/bykv/vk/openvk/preload/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_e
    .catch Lcom/bykv/vk/openvk/preload/b/i$a; {:try_start_6 .. :try_end_e} :catch_11
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    return-object p1

    :catchall_f
    move-exception p2

    goto :goto_0

    :catch_11
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    :cond_17
    throw p2
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOUT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/b/k;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lcom/bykv/vk/openvk/preload/b/b;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/b/b<",
            "TOUT;>;TIN;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/b/k;->g:Ljava/lang/Object;

    :try_start_2
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/b/k;->a()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/bykv/vk/openvk/preload/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_a
    .catch Lcom/bykv/vk/openvk/preload/b/i$a; {:try_start_2 .. :try_end_a} :catch_11
    .catchall {:try_start_2 .. :try_end_a} :catchall_b

    return-object p1

    :catchall_b
    move-exception p2

    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/preload/b/k;->a(Lcom/bykv/vk/openvk/preload/b/b;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_11
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/preload/b/k;->a(Lcom/bykv/vk/openvk/preload/b/b;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a(Ljava/lang/Throwable;)Z
.end method
