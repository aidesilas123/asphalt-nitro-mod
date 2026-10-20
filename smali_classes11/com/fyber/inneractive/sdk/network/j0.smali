###### Class com.fyber.inneractive.sdk.network.j0 (com.fyber.inneractive.sdk.network.j0)
.class public Lcom/fyber/inneractive/sdk/network/j0;
.super Lcom/fyber/inneractive/sdk/network/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/inneractive/sdk/network/f0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final r:Ljava/lang/String;

.field public final s:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/network/w;Ljava/lang/String;Lcom/fyber/inneractive/sdk/network/g;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/network/w<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/fyber/inneractive/sdk/network/g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/fyber/inneractive/sdk/network/f0;-><init>(Lcom/fyber/inneractive/sdk/network/w;Lcom/fyber/inneractive/sdk/network/g;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/j0;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/network/j0;->r:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/fyber/inneractive/sdk/network/j0;

    new-instance v3, Lcom/fyber/inneractive/sdk/network/j0$a;

    invoke-direct {v3, p0, v0, v1}, Lcom/fyber/inneractive/sdk/network/j0$a;-><init>(Ljava/lang/String;J)V

    sget-object v0, Lcom/fyber/inneractive/sdk/network/x;->c:Lcom/fyber/inneractive/sdk/network/x;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/network/x;->b()Lcom/fyber/inneractive/sdk/network/g;

    move-result-object v0

    invoke-direct {v2, v3, p0, v0}, Lcom/fyber/inneractive/sdk/network/j0;-><init>(Lcom/fyber/inneractive/sdk/network/w;Ljava/lang/String;Lcom/fyber/inneractive/sdk/network/g;)V

    sget-object p0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object p0, p0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->s:Lcom/fyber/inneractive/sdk/network/y;

    iget-object p0, p0, Lcom/fyber/inneractive/sdk/network/y;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    sget-object p0, Lcom/fyber/inneractive/sdk/network/q0;->QUEUED:Lcom/fyber/inneractive/sdk/network/q0;

    invoke-virtual {v2, p0}, Lcom/fyber/inneractive/sdk/network/f0;->a(Lcom/fyber/inneractive/sdk/network/q0;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/network/j;Ljava/util/Map;I)Lcom/fyber/inneractive/sdk/network/b0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/network/j;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;I)",
            "Lcom/fyber/inneractive/sdk/network/b0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p2, 0x0

    :try_start_1
    new-instance v0, Lcom/fyber/inneractive/sdk/network/b0;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/network/b0;-><init>()V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/fyber/inneractive/sdk/network/b0;->a:Ljava/lang/Object;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/network/j;->c:Ljava/io/InputStream;

    if-eqz p1, :cond_1a

    invoke-static {p1, p2}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/io/InputStream;Z)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/fyber/inneractive/sdk/network/b0;->b:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1b

    :cond_1a
    return-object v0

    :catch_1b
    move-exception p1

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "failed parse hit network request"

    invoke-static {p3, p1, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance p2, Lcom/fyber/inneractive/sdk/network/a0;

    invoke-direct {p2, p1}, Lcom/fyber/inneractive/sdk/network/a0;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/j0;->r:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/fyber/inneractive/sdk/network/o0;
    .registers 2

    sget-object v0, Lcom/fyber/inneractive/sdk/network/o0;->LOW:Lcom/fyber/inneractive/sdk/network/o0;

    return-object v0
.end method

.method public o()Z
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/j0;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public r()Lcom/fyber/inneractive/sdk/network/z;
    .registers 2

    sget-object v0, Lcom/fyber/inneractive/sdk/network/z;->GET:Lcom/fyber/inneractive/sdk/network/z;

    return-object v0
.end method

.method public v()I
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/j0;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method
