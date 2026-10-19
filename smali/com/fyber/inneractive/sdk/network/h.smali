###### Class com.fyber.inneractive.sdk.network.h (com.fyber.inneractive.sdk.network.h)
.class public Lcom/fyber/inneractive/sdk/network/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/fyber/inneractive/sdk/network/j;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fyber/inneractive/sdk/network/j;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/network/w0;,
            Lcom/fyber/inneractive/sdk/network/b;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/fyber/inneractive/sdk/network/j;

    invoke-direct {v1}, Lcom/fyber/inneractive/sdk/network/j;-><init>()V

    iput-object p1, v1, Lcom/fyber/inneractive/sdk/network/j;->c:Ljava/io/InputStream;

    iput p2, v1, Lcom/fyber/inneractive/sdk/network/j;->a:I

    iput-object p3, v1, Lcom/fyber/inneractive/sdk/network/j;->b:Ljava/lang/String;

    iput-object p4, v1, Lcom/fyber/inneractive/sdk/network/j;->d:Ljava/util/Map;

    iput-object p5, v1, Lcom/fyber/inneractive/sdk/network/j;->e:Ljava/lang/String;

    div-int/lit8 p2, p2, 0x64

    const/4 p1, 0x5

    if-eq p2, p1, :cond_16

    return-object v1

    :cond_16
    new-instance p1, Lcom/fyber/inneractive/sdk/network/b;

    const-string p2, "server returned error %d"

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    iget p4, v1, Lcom/fyber/inneractive/sdk/network/j;->a:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/fyber/inneractive/sdk/network/b;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2d
    .catch Lcom/fyber/inneractive/sdk/network/b; {:try_start_1 .. :try_end_2d} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "failed reading network response"

    invoke-static {p3, p1, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance p2, Lcom/fyber/inneractive/sdk/network/w0;

    invoke-direct {p2, p1}, Lcom/fyber/inneractive/sdk/network/w0;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3b
    move-exception p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "failed executing network request"

    invoke-static {p3, p1, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance p2, Lcom/fyber/inneractive/sdk/network/b;

    invoke-direct {p2, p1}, Lcom/fyber/inneractive/sdk/network/b;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .registers 4

    const/4 v0, 0x0

    if-eqz p2, :cond_10

    :try_start_3
    const-string p2, "HttpExecutorBase: getInputStream found gzip encoding"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1e

    :cond_10
    const-string p2, "HttpExecutorBase: getInputStream no gzip encoding"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Ljava/io/BufferedInputStream;

    invoke-direct {p2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_1d

    goto :goto_1e

    :catch_1d
    const/4 p2, 0x0

    :goto_1e
    return-object p2
.end method
