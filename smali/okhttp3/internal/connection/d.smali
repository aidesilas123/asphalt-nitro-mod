###### Class okhttp3.internal.connection.ExchangeFinder (okhttp3.internal.connection.d)
.class public final Lokhttp3/internal/connection/d;
.super Ljava/lang/Object;
.source "ExchangeFinder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0016\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ0\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020$H\u0002J8\u0010%\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020$2\u0006\u0010&\u001a\u00020$H\u0002J\u0006\u0010\'\u001a\u00020$J\n\u0010(\u001a\u0004\u0018\u00010\u0010H\u0002J\u000e\u0010)\u001a\u00020$2\u0006\u0010*\u001a\u00020+J\u000e\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lokhttp3/internal/connection/ExchangeFinder;",
        "",
        "connectionPool",
        "Lokhttp3/internal/connection/RealConnectionPool;",
        "address",
        "Lokhttp3/Address;",
        "call",
        "Lokhttp3/internal/connection/RealCall;",
        "eventListener",
        "Lokhttp3/EventListener;",
        "(Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/RealCall;Lokhttp3/EventListener;)V",
        "getAddress$okhttp",
        "()Lokhttp3/Address;",
        "connectionShutdownCount",
        "",
        "nextRouteToTry",
        "Lokhttp3/Route;",
        "otherFailureCount",
        "refusedStreamCount",
        "routeSelection",
        "Lokhttp3/internal/connection/RouteSelector$Selection;",
        "routeSelector",
        "Lokhttp3/internal/connection/RouteSelector;",
        "find",
        "Lokhttp3/internal/http/ExchangeCodec;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "chain",
        "Lokhttp3/internal/http/RealInterceptorChain;",
        "findConnection",
        "Lokhttp3/internal/connection/RealConnection;",
        "connectTimeout",
        "readTimeout",
        "writeTimeout",
        "pingIntervalMillis",
        "connectionRetryEnabled",
        "",
        "findHealthyConnection",
        "doExtensiveHealthChecks",
        "retryAfterFailure",
        "retryRoute",
        "sameHostAndPort",
        "url",
        "Lokhttp3/HttpUrl;",
        "trackFailure",
        "",
        "e",
        "Ljava/io/IOException;",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lokhttp3/internal/connection/e;

.field private final b:Lokhttp3/a;

.field private final c:Lokhttp3/internal/connection/RealCall;

.field private final d:Lokhttp3/k;

.field private e:Lokhttp3/internal/connection/h$b;

.field private f:Lokhttp3/internal/connection/h;

.field private g:I

.field private h:I

.field private i:I

.field private j:Lokhttp3/m;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/e;Lokhttp3/a;Lokhttp3/internal/connection/RealCall;Lokhttp3/k;)V
    .registers 6

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/e;

    iput-object p2, p0, Lokhttp3/internal/connection/d;->b:Lokhttp3/a;

    iput-object p3, p0, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    iput-object p4, p0, Lokhttp3/internal/connection/d;->d:Lokhttp3/k;

    return-void
.end method

.method private final b(IIIIZ)Lokhttp3/internal/connection/RealConnection;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_179

    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->k()Lokhttp3/internal/connection/RealConnection;

    move-result-object v2

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_65

    monitor-enter v2

    :try_start_15
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->o()Z

    move-result v5

    if-nez v5, :cond_30

    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->y()Lokhttp3/m;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/m;->a()Lokhttp3/a;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/a;->l()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {p0, v5}, Lokhttp3/internal/connection/d;->g(Lokhttp3/HttpUrl;)Z

    move-result v5

    if-nez v5, :cond_2e

    goto :goto_30

    :cond_2e
    move-object v5, v4

    goto :goto_36

    :cond_30
    :goto_30
    iget-object v5, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v5}, Lokhttp3/internal/connection/RealCall;->u()Ljava/net/Socket;

    move-result-object v5

    :goto_36
    sget-object v6, Lkotlin/v;->a:Lkotlin/v;
    :try_end_38
    .catchall {:try_start_15 .. :try_end_38} :catchall_62

    monitor-exit v2

    iget-object v6, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v6}, Lokhttp3/internal/connection/RealCall;->k()Lokhttp3/internal/connection/RealConnection;

    move-result-object v6

    if-eqz v6, :cond_54

    if-nez v5, :cond_44

    goto :goto_45

    :cond_44
    const/4 v0, 0x0

    :goto_45
    if-eqz v0, :cond_48

    return-object v2

    :cond_48
    const-string v0, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_54
    if-nez v5, :cond_57

    goto :goto_5a

    :cond_57
    invoke-static {v5}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    :goto_5a
    iget-object v5, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/k;

    iget-object v6, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v5, v6, v2}, Lokhttp3/k;->l(Lokhttp3/c;Lokhttp3/f;)V

    goto :goto_65

    :catchall_62
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_65
    :goto_65
    iput v3, v1, Lokhttp3/internal/connection/d;->g:I

    iput v3, v1, Lokhttp3/internal/connection/d;->h:I

    iput v3, v1, Lokhttp3/internal/connection/d;->i:I

    iget-object v2, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/e;

    iget-object v5, v1, Lokhttp3/internal/connection/d;->b:Lokhttp3/a;

    iget-object v6, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v2, v5, v6, v4, v3}, Lokhttp3/internal/connection/e;->a(Lokhttp3/a;Lokhttp3/internal/connection/RealCall;Ljava/util/List;Z)Z

    move-result v2

    if-eqz v2, :cond_88

    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->k()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/k;

    iget-object v3, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v2, v3, v0}, Lokhttp3/k;->k(Lokhttp3/c;Lokhttp3/f;)V

    return-object v0

    :cond_88
    iget-object v2, v1, Lokhttp3/internal/connection/d;->j:Lokhttp3/m;

    if-eqz v2, :cond_93

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v4, v1, Lokhttp3/internal/connection/d;->j:Lokhttp3/m;

    :goto_91
    move-object v5, v4

    goto :goto_f8

    :cond_93
    iget-object v2, v1, Lokhttp3/internal/connection/d;->e:Lokhttp3/internal/connection/h$b;

    if-eqz v2, :cond_aa

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lokhttp3/internal/connection/h$b;->b()Z

    move-result v2

    if-eqz v2, :cond_aa

    iget-object v2, v1, Lokhttp3/internal/connection/d;->e:Lokhttp3/internal/connection/h$b;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lokhttp3/internal/connection/h$b;->c()Lokhttp3/m;

    move-result-object v2

    goto :goto_91

    :cond_aa
    iget-object v2, v1, Lokhttp3/internal/connection/d;->f:Lokhttp3/internal/connection/h;

    if-nez v2, :cond_c5

    new-instance v2, Lokhttp3/internal/connection/h;

    iget-object v5, v1, Lokhttp3/internal/connection/d;->b:Lokhttp3/a;

    iget-object v6, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v6}, Lokhttp3/internal/connection/RealCall;->j()Lokhttp3/OkHttpClient;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/OkHttpClient;->r()Lokhttp3/internal/connection/f;

    move-result-object v6

    iget-object v7, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    iget-object v8, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/k;

    invoke-direct {v2, v5, v6, v7, v8}, Lokhttp3/internal/connection/h;-><init>(Lokhttp3/a;Lokhttp3/internal/connection/f;Lokhttp3/c;Lokhttp3/k;)V

    iput-object v2, v1, Lokhttp3/internal/connection/d;->f:Lokhttp3/internal/connection/h;

    :cond_c5
    invoke-virtual {v2}, Lokhttp3/internal/connection/h;->c()Lokhttp3/internal/connection/h$b;

    move-result-object v2

    iput-object v2, v1, Lokhttp3/internal/connection/d;->e:Lokhttp3/internal/connection/h$b;

    invoke-virtual {v2}, Lokhttp3/internal/connection/h$b;->a()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v6}, Lokhttp3/internal/connection/RealCall;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_171

    iget-object v6, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/e;

    iget-object v7, v1, Lokhttp3/internal/connection/d;->b:Lokhttp3/a;

    iget-object v8, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v6, v7, v8, v5, v3}, Lokhttp3/internal/connection/e;->a(Lokhttp3/a;Lokhttp3/internal/connection/RealCall;Ljava/util/List;Z)Z

    move-result v3

    if-eqz v3, :cond_f4

    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->k()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/k;

    iget-object v3, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v2, v3, v0}, Lokhttp3/k;->k(Lokhttp3/c;Lokhttp3/f;)V

    return-object v0

    :cond_f4
    invoke-virtual {v2}, Lokhttp3/internal/connection/h$b;->c()Lokhttp3/m;

    move-result-object v2

    :goto_f8
    new-instance v3, Lokhttp3/internal/connection/RealConnection;

    iget-object v6, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/e;

    invoke-direct {v3, v6, v2}, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/internal/connection/e;Lokhttp3/m;)V

    iget-object v6, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v6, v3}, Lokhttp3/internal/connection/RealCall;->w(Lokhttp3/internal/connection/RealConnection;)V

    :try_start_104
    iget-object v12, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    iget-object v13, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/k;

    move-object v6, v3

    move v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v13}, Lokhttp3/internal/connection/RealConnection;->e(IIIIZLokhttp3/c;Lokhttp3/k;)V
    :try_end_115
    .catchall {:try_start_104 .. :try_end_115} :catchall_16a

    iget-object v6, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v6, v4}, Lokhttp3/internal/connection/RealCall;->w(Lokhttp3/internal/connection/RealConnection;)V

    iget-object v4, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v4}, Lokhttp3/internal/connection/RealCall;->j()Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->r()Lokhttp3/internal/connection/f;

    move-result-object v4

    invoke-virtual {v3}, Lokhttp3/internal/connection/RealConnection;->y()Lokhttp3/m;

    move-result-object v6

    invoke-virtual {v4, v6}, Lokhttp3/internal/connection/f;->a(Lokhttp3/m;)V

    iget-object v4, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/e;

    iget-object v6, v1, Lokhttp3/internal/connection/d;->b:Lokhttp3/a;

    iget-object v7, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v4, v6, v7, v5, v0}, Lokhttp3/internal/connection/e;->a(Lokhttp3/a;Lokhttp3/internal/connection/RealCall;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_151

    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->k()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v2, v1, Lokhttp3/internal/connection/d;->j:Lokhttp3/m;

    invoke-virtual {v3}, Lokhttp3/internal/connection/RealConnection;->C()Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    iget-object v2, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/k;

    iget-object v3, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v2, v3, v0}, Lokhttp3/k;->k(Lokhttp3/c;Lokhttp3/f;)V

    return-object v0

    :cond_151
    monitor-enter v3

    :try_start_152
    iget-object v0, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v3}, Lokhttp3/internal/connection/e;->e(Lokhttp3/internal/connection/RealConnection;)V

    iget-object v0, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0, v3}, Lokhttp3/internal/connection/RealCall;->b(Lokhttp3/internal/connection/RealConnection;)V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_15e
    .catchall {:try_start_152 .. :try_end_15e} :catchall_167

    monitor-exit v3

    iget-object v0, v1, Lokhttp3/internal/connection/d;->d:Lokhttp3/k;

    iget-object v2, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0, v2, v3}, Lokhttp3/k;->k(Lokhttp3/c;Lokhttp3/f;)V

    return-object v3

    :catchall_167
    move-exception v0

    monitor-exit v3

    throw v0

    :catchall_16a
    move-exception v0

    iget-object v2, v1, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v2, v4}, Lokhttp3/internal/connection/RealCall;->w(Lokhttp3/internal/connection/RealConnection;)V

    throw v0

    :cond_171
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_179
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final c(IIIIZZ)Lokhttp3/internal/connection/RealConnection;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-direct/range {p0 .. p5}, Lokhttp3/internal/connection/d;->b(IIIIZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0, p6}, Lokhttp3/internal/connection/RealConnection;->t(Z)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->x()V

    iget-object v0, p0, Lokhttp3/internal/connection/d;->j:Lokhttp3/m;

    if-eqz v0, :cond_13

    goto :goto_0

    :cond_13
    iget-object v0, p0, Lokhttp3/internal/connection/d;->e:Lokhttp3/internal/connection/h$b;

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1a
    invoke-virtual {v0}, Lokhttp3/internal/connection/h$b;->b()Z

    move-result v0

    :goto_1e
    if-eqz v0, :cond_21

    goto :goto_0

    :cond_21
    iget-object v0, p0, Lokhttp3/internal/connection/d;->f:Lokhttp3/internal/connection/h;

    if-nez v0, :cond_26

    goto :goto_2a

    :cond_26
    invoke-virtual {v0}, Lokhttp3/internal/connection/h;->a()Z

    move-result v1

    :goto_2a
    if-eqz v1, :cond_2d

    goto :goto_0

    :cond_2d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "exhausted all routes"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final f()Lokhttp3/m;
    .registers 5

    iget v0, p0, Lokhttp3/internal/connection/d;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_46

    iget v0, p0, Lokhttp3/internal/connection/d;->h:I

    if-gt v0, v1, :cond_46

    iget v0, p0, Lokhttp3/internal/connection/d;->i:I

    if-lez v0, :cond_f

    goto :goto_46

    :cond_f
    iget-object v0, p0, Lokhttp3/internal/connection/d;->c:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->k()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-nez v0, :cond_18

    return-object v2

    :cond_18
    monitor-enter v0

    :try_start_19
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->p()I

    move-result v1
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_43

    if-eqz v1, :cond_21

    monitor-exit v0

    return-object v2

    :cond_21
    :try_start_21
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->y()Lokhttp3/m;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/m;->a()Lokhttp3/a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/a;->l()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/internal/connection/d;->d()Lokhttp3/a;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/a;->l()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-static {v1, v3}, Lokhttp3/internal/Util;->canReuseConnectionFor(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result v1
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_43

    if-nez v1, :cond_3d

    monitor-exit v0

    return-object v2

    :cond_3d
    :try_start_3d
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->y()Lokhttp3/m;

    move-result-object v1
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_43

    monitor-exit v0

    return-object v1

    :catchall_43
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_46
    :goto_46
    return-object v2
.end method


# virtual methods
.method public final a(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/internal/http/c;
    .registers 11

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    invoke-virtual {p2}, Lokhttp3/internal/http/RealInterceptorChain;->d()I

    move-result v2

    invoke-virtual {p2}, Lokhttp3/internal/http/RealInterceptorChain;->f()I

    move-result v3

    invoke-virtual {p2}, Lokhttp3/internal/http/RealInterceptorChain;->h()I

    move-result v4

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->x()I

    move-result v5

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->D()Z

    move-result v6

    invoke-virtual {p2}, Lokhttp3/internal/http/RealInterceptorChain;->g()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_33

    :cond_31
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_33
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/connection/d;->c(IIIIZZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/connection/RealConnection;->v(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/internal/http/c;

    move-result-object p1
    :try_end_3c
    .catch Lokhttp3/internal/connection/g; {:try_start_a .. :try_end_3c} :catch_47
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_3c} :catch_3d

    return-object p1

    :catch_3d
    move-exception p1

    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/d;->h(Ljava/io/IOException;)V

    new-instance p2, Lokhttp3/internal/connection/g;

    invoke-direct {p2, p1}, Lokhttp3/internal/connection/g;-><init>(Ljava/io/IOException;)V

    throw p2

    :catch_47
    move-exception p1

    invoke-virtual {p1}, Lokhttp3/internal/connection/g;->d()Ljava/io/IOException;

    move-result-object p2

    invoke-virtual {p0, p2}, Lokhttp3/internal/connection/d;->h(Ljava/io/IOException;)V

    throw p1
.end method

.method public final d()Lokhttp3/a;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/connection/d;->b:Lokhttp3/a;

    return-object v0
.end method

.method public final e()Z
    .registers 4

    iget v0, p0, Lokhttp3/internal/connection/d;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_e

    iget v0, p0, Lokhttp3/internal/connection/d;->h:I

    if-nez v0, :cond_e

    iget v0, p0, Lokhttp3/internal/connection/d;->i:I

    if-nez v0, :cond_e

    return v1

    :cond_e
    iget-object v0, p0, Lokhttp3/internal/connection/d;->j:Lokhttp3/m;

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    return v2

    :cond_14
    invoke-direct {p0}, Lokhttp3/internal/connection/d;->f()Lokhttp3/m;

    move-result-object v0

    if-eqz v0, :cond_1d

    iput-object v0, p0, Lokhttp3/internal/connection/d;->j:Lokhttp3/m;

    return v2

    :cond_1d
    iget-object v0, p0, Lokhttp3/internal/connection/d;->e:Lokhttp3/internal/connection/h$b;

    if-nez v0, :cond_22

    goto :goto_29

    :cond_22
    invoke-virtual {v0}, Lokhttp3/internal/connection/h$b;->b()Z

    move-result v0

    if-ne v0, v2, :cond_29

    const/4 v1, 0x1

    :cond_29
    :goto_29
    if-eqz v1, :cond_2c

    return v2

    :cond_2c
    iget-object v0, p0, Lokhttp3/internal/connection/d;->f:Lokhttp3/internal/connection/h;

    if-nez v0, :cond_31

    return v2

    :cond_31
    invoke-virtual {v0}, Lokhttp3/internal/connection/h;->a()Z

    move-result v0

    return v0
.end method

.method public final g(Lokhttp3/HttpUrl;)Z
    .registers 5

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/connection/d;->b:Lokhttp3/a;

    invoke-virtual {v0}, Lokhttp3/a;->l()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->k()I

    move-result v1

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->k()I

    move-result v2

    if-ne v1, v2, :cond_25

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    return p1
.end method

.method public final h(Ljava/io/IOException;)V
    .registers 4

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/connection/d;->j:Lokhttp3/m;

    instance-of v0, p1, Lokhttp3/internal/http2/i;

    if-eqz v0, :cond_1c

    move-object v0, p1

    check-cast v0, Lokhttp3/internal/http2/i;

    iget-object v0, v0, Lokhttp3/internal/http2/i;->a:Lokhttp3/internal/http2/ErrorCode;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->i:Lokhttp3/internal/http2/ErrorCode;

    if-ne v0, v1, :cond_1c

    iget p1, p0, Lokhttp3/internal/connection/d;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/connection/d;->g:I

    goto :goto_2d

    :cond_1c
    instance-of p1, p1, Lokhttp3/internal/http2/a;

    if-eqz p1, :cond_27

    iget p1, p0, Lokhttp3/internal/connection/d;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/connection/d;->h:I

    goto :goto_2d

    :cond_27
    iget p1, p0, Lokhttp3/internal/connection/d;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/connection/d;->i:I

    :goto_2d
    return-void
.end method
