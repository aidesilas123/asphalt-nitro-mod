###### Class com.fyber.inneractive.sdk.network.v0 (com.fyber.inneractive.sdk.network.v0)
.class public Lcom/fyber/inneractive/sdk/network/v0;
.super Lcom/fyber/inneractive/sdk/network/h;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/network/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/network/v0$a;
    }
.end annotation


# instance fields
.field public final a:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/network/h;-><init>()V

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->w()Lokhttp3/OkHttpClient$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$a;->b()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/network/v0;->a:Lokhttp3/OkHttpClient;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/network/c0;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/fyber/inneractive/sdk/network/c0<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Response;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v7, p0

    move-object v8, p2

    move-object/from16 v0, p3

    const-string v9, "OkHttpExecutorImpl: end connection timestamp: %s"

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/network/c0;->n()Lcom/fyber/inneractive/sdk/network/t0;

    move-result-object v1

    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    const-string v3, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-virtual {p0, v2, v3, v4}, Lcom/fyber/inneractive/sdk/network/v0;->a(Lokhttp3/Request$Builder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "User-Agent"

    move-object/from16 v5, p4

    invoke-virtual {p0, v2, v3, v5}, Lcom/fyber/inneractive/sdk/network/v0;->a(Lokhttp3/Request$Builder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "If-Modified-Since"

    move-object/from16 v6, p5

    invoke-virtual {p0, v2, v3, v6}, Lcom/fyber/inneractive/sdk/network/v0;->a(Lokhttp3/Request$Builder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/network/c0;->w()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_48

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {p0, v2, v10, v11}, Lcom/fyber/inneractive/sdk/network/v0;->a(Lokhttp3/Request$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :cond_48
    move-object v3, p1

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->o(Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/network/c0;->r()Lcom/fyber/inneractive/sdk/network/z;

    move-result-object v3

    sget-object v4, Lcom/fyber/inneractive/sdk/network/z;->POST:Lcom/fyber/inneractive/sdk/network/z;

    if-eq v3, v4, :cond_5c

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/network/c0;->r()Lcom/fyber/inneractive/sdk/network/z;

    move-result-object v3

    sget-object v4, Lcom/fyber/inneractive/sdk/network/z;->PUT:Lcom/fyber/inneractive/sdk/network/z;

    if-ne v3, v4, :cond_71

    :cond_5c
    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/network/c0;->u()[B

    move-result-object v3

    if-eqz v3, :cond_19b

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/network/c0;->q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create([BLokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->i(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    :cond_71
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->b()Lokhttp3/Request;

    move-result-object v2

    iget-object v3, v7, Lcom/fyber/inneractive/sdk/network/v0;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->w()Lokhttp3/OkHttpClient$a;

    move-result-object v3

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/network/c0;->l()Z

    move-result v4

    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$a;->e(Z)Lokhttp3/OkHttpClient$a;

    move-result-object v3

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/network/c0;->l()Z

    move-result v4

    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$a;->f(Z)Lokhttp3/OkHttpClient$a;

    move-result-object v3

    iget v4, v1, Lcom/fyber/inneractive/sdk/network/t0;->a:I

    int-to-long v10, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v10, v11, v4}, Lokhttp3/OkHttpClient$a;->d(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$a;

    move-result-object v3

    iget v1, v1, Lcom/fyber/inneractive/sdk/network/t0;->b:I

    int-to-long v10, v1

    invoke-virtual {v3, v10, v11, v4}, Lokhttp3/OkHttpClient$a;->L(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$a;->b()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {p2, v3, v4}, Lcom/fyber/inneractive/sdk/network/c0;->b(J)V

    const/4 v10, 0x1

    new-array v3, v10, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/network/c0;->f()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    aput-object v4, v3, v11

    const-string v4, "OkHttpExecutorImpl: start connection timestamp: %s"

    invoke-static {v4, v3}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_b5
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient;->b(Lokhttp3/Request;)Lokhttp3/c;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/c;->execute()Lokhttp3/Response;

    move-result-object v1

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/network/c0;->l()Z

    move-result v2

    if-nez v2, :cond_167

    invoke-virtual {v1}, Lokhttp3/Response;->h()I

    move-result v2

    const/16 v3, 0x12c

    if-le v2, v3, :cond_d3

    invoke-virtual {v1}, Lokhttp3/Response;->h()I

    move-result v2

    const/16 v3, 0x130

    if-lt v2, v3, :cond_e3

    :cond_d3
    invoke-virtual {v1}, Lokhttp3/Response;->h()I

    move-result v2

    const/16 v3, 0x133

    if-eq v2, v3, :cond_e3

    invoke-virtual {v1}, Lokhttp3/Response;->h()I

    move-result v2

    const/16 v3, 0x134

    if-ne v2, v3, :cond_167

    :cond_e3
    const-string v2, "Location"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lokhttp3/Response;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_167

    const-string v1, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_136

    const-string v1, "://"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_136

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_136

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11d

    const-string v3, "%s://%s%s"

    goto :goto_11f

    :cond_11d
    const-string v3, "%s://%s/%s"

    :goto_11f
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v11

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v10

    const/4 v1, 0x2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :cond_136
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x5

    if-gt v1, v3, :cond_15f

    move-object v1, p0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/fyber/inneractive/sdk/network/v0;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/network/c0;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_14c} :catch_181
    .catchall {:try_start_b5 .. :try_end_14c} :catchall_17f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p2, v1, v2}, Lcom/fyber/inneractive/sdk/network/c0;->a(J)V

    new-array v1, v10, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/network/c0;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v9, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_15f
    :try_start_15f
    new-instance v0, Lcom/fyber/inneractive/sdk/network/b;

    const-string v1, "Url chain too big for us"

    invoke-direct {v0, v1}, Lcom/fyber/inneractive/sdk/network/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_167
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_16c} :catch_181
    .catchall {:try_start_15f .. :try_end_16c} :catchall_17f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/fyber/inneractive/sdk/network/c0;->a(J)V

    new-array v0, v10, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/network/c0;->f()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-static {v9, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :catchall_17f
    move-exception v0

    goto :goto_188

    :catch_181
    move-exception v0

    :try_start_182
    new-instance v1, Lcom/fyber/inneractive/sdk/network/b;

    invoke-direct {v1, v0}, Lcom/fyber/inneractive/sdk/network/b;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_188
    .catchall {:try_start_182 .. :try_end_188} :catchall_17f

    :goto_188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p2, v1, v2}, Lcom/fyber/inneractive/sdk/network/c0;->a(J)V

    new-array v1, v10, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/network/c0;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v9, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_19b
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Could not create ok http request. post payload is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/fyber/inneractive/sdk/network/c0;Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/inneractive/sdk/network/j;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fyber/inneractive/sdk/network/c0<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fyber/inneractive/sdk/network/j;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "OkHttpExecutorImpl"

    aput-object v3, v1, v2

    const-string v4, "%s okhttp network stack is in use"

    invoke-static {v4, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x2

    :try_start_e
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/network/c0;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/network/c0;->a()Ljava/lang/String;

    move-result-object v5

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/fyber/inneractive/sdk/network/v0;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/network/c0;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p2, :cond_31

    check-cast p2, Lokhttp3/Response;

    invoke-virtual {p2}, Lokhttp3/Response;->o()Ljava/lang/String;

    move-result-object p2

    goto :goto_33

    :cond_31
    const-string p2, ""

    :goto_33
    move-object v7, p2

    iget-object p2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lokhttp3/Response;

    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/network/v0;->a(Lokhttp3/Response;)Ljava/io/InputStream;

    move-result-object v5

    iget-object p2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez p2, :cond_43

    const/4 p2, -0x1

    const/4 v6, -0x1

    goto :goto_4a

    :cond_43
    check-cast p2, Lokhttp3/Response;

    invoke-virtual {p2}, Lokhttp3/Response;->h()I

    move-result p2

    move v6, p2

    :goto_4a
    iget-object p2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lokhttp3/Response;

    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/network/v0;->b(Lokhttp3/Response;)Ljava/util/Map;

    move-result-object v8

    iget-object p2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lokhttp3/Response;

    const-string p3, "Last-Modified"

    if-eqz p2, :cond_63

    invoke-virtual {p2}, Lokhttp3/Response;->l()Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p2, p3}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_64

    :cond_63
    const/4 p2, 0x0

    :goto_64
    move-object v9, p2

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/fyber/inneractive/sdk/network/h;->a(Ljava/io/InputStream;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/fyber/inneractive/sdk/network/j;

    move-result-object p2

    new-instance p3, Lcom/fyber/inneractive/sdk/network/v0$a;

    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lokhttp3/Response;

    invoke-direct {p3, p2, v4}, Lcom/fyber/inneractive/sdk/network/v0$a;-><init>(Lcom/fyber/inneractive/sdk/network/j;Lokhttp3/Response;)V

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v4, p3, Lcom/fyber/inneractive/sdk/network/j;->f:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8c
    .catch Lcom/fyber/inneractive/sdk/network/b; {:try_start_e .. :try_end_8c} :catch_9f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_8c} :catch_8e

    goto :goto_7b

    :cond_8d
    return-object p3

    :catch_8e
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object v3, p2, v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "%s exception: %s"

    invoke-static {p3, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :catch_9f
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object v3, p2, v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "%s cannot connect exception: %s"

    invoke-static {p3, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lokhttp3/Response;)Ljava/io/InputStream;
    .registers 5

    if-eqz p1, :cond_25

    :try_start_2
    invoke-virtual {p1}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_25

    const-string v0, "gzip"

    const-string v1, "content-encoding"

    invoke-virtual {p1}, Lokhttp3/Response;->l()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p1}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/fyber/inneractive/sdk/network/h;->a(Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object p1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_25

    return-object p1

    :catch_25
    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lokhttp3/Request$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    sget v0, Lcom/fyber/inneractive/sdk/util/IAlog;->a:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "REQUEST_HEADER"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const/4 v2, 0x0

    const-string v3, "%s %s : %s"

    invoke-static {v1, v2, v3, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p1, p2, p3}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_25
    return-void
.end method

.method public final b(Lokhttp3/Response;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Lokhttp3/Response;->l()Lokhttp3/Headers;

    move-result-object p1

    const/4 v1, 0x0

    :goto_c
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    invoke-virtual {p1, v1}, Lokhttp3/Headers;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_24
    return-object v0
.end method

.method public b()V
    .registers 1

    return-void
.end method
