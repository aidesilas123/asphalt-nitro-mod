###### Class okhttp3.internal.cache.CacheInterceptor (okhttp3.internal.cache.CacheInterceptor)
.class public final Lokhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "CacheInterceptor.kt"

# interfaces
.implements Lokhttp3/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache/CacheInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u0008H\u0002J\u0010\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lokhttp3/internal/cache/CacheInterceptor;",
        "Lokhttp3/Interceptor;",
        "cache",
        "Lokhttp3/Cache;",
        "(Lokhttp3/Cache;)V",
        "getCache$okhttp",
        "()Lokhttp3/Cache;",
        "cacheWritingResponse",
        "Lokhttp3/Response;",
        "cacheRequest",
        "Lokhttp3/internal/cache/CacheRequest;",
        "response",
        "intercept",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "Companion",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Lokhttp3/internal/cache/CacheInterceptor$Companion;


# instance fields
.field private final c:Lokhttp3/Cache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokhttp3/internal/cache/CacheInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/cache/CacheInterceptor$Companion;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lokhttp3/internal/cache/CacheInterceptor;->b:Lokhttp3/internal/cache/CacheInterceptor$Companion;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Cache;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor;->c:Lokhttp3/Cache;

    return-void
.end method

.method private final a(Lokhttp3/internal/cache/a;Lokhttp3/Response;)Lokhttp3/Response;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-object p2

    :cond_3
    invoke-interface {p1}, Lokhttp3/internal/cache/a;->body()Lokio/w;

    move-result-object v0

    invoke-virtual {p2}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/e;

    move-result-object v1

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/w;)Lokio/d;

    move-result-object v0

    new-instance v2, Lokhttp3/internal/cache/CacheInterceptor$a;

    invoke-direct {v2, v1, p1, v0}, Lokhttp3/internal/cache/CacheInterceptor$a;-><init>(Lokio/e;Lokhttp3/internal/cache/a;Lokio/d;)V

    const/4 p1, 0x2

    const-string v0, "Content-Type"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p1, v1}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    invoke-virtual {p2}, Lokhttp3/Response;->q()Lokhttp3/Response$a;

    move-result-object p2

    new-instance v3, Lokhttp3/internal/http/d;

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/y;)Lokio/e;

    move-result-object v2

    invoke-direct {v3, p1, v0, v1, v2}, Lokhttp3/internal/http/d;-><init>(Ljava/lang/String;JLokio/e;)V

    invoke-virtual {p2, v3}, Lokhttp3/Response$a;->b(Lokhttp3/ResponseBody;)Lokhttp3/Response$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$a;->c()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public intercept(Lokhttp3/l$a;)Lokhttp3/Response;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lokhttp3/l$a;->call()Lokhttp3/c;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/cache/CacheInterceptor;->c:Lokhttp3/Cache;

    const/4 v2, 0x0

    if-nez v1, :cond_10

    move-object v1, v2

    goto :goto_18

    :cond_10
    invoke-interface {p1}, Lokhttp3/l$a;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokhttp3/Cache;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    :goto_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Lokhttp3/internal/cache/b$b;

    invoke-interface {p1}, Lokhttp3/l$a;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-direct {v5, v3, v4, v6, v1}, Lokhttp3/internal/cache/b$b;-><init>(JLokhttp3/Request;Lokhttp3/Response;)V

    invoke-virtual {v5}, Lokhttp3/internal/cache/b$b;->b()Lokhttp3/internal/cache/b;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/internal/cache/b;->b()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v3}, Lokhttp3/internal/cache/b;->a()Lokhttp3/Response;

    move-result-object v5

    iget-object v6, p0, Lokhttp3/internal/cache/CacheInterceptor;->c:Lokhttp3/Cache;

    if-nez v6, :cond_36

    goto :goto_39

    :cond_36
    invoke-virtual {v6, v3}, Lokhttp3/Cache;->k(Lokhttp3/internal/cache/b;)V

    :goto_39
    instance-of v3, v0, Lokhttp3/internal/connection/RealCall;

    if-eqz v3, :cond_41

    move-object v3, v0

    check-cast v3, Lokhttp3/internal/connection/RealCall;

    goto :goto_42

    :cond_41
    move-object v3, v2

    :goto_42
    if-nez v3, :cond_45

    goto :goto_49

    :cond_45
    invoke-virtual {v3}, Lokhttp3/internal/connection/RealCall;->l()Lokhttp3/k;

    move-result-object v2

    :goto_49
    if-nez v2, :cond_4d

    sget-object v2, Lokhttp3/k;->b:Lokhttp3/k;

    :cond_4d
    if-eqz v1, :cond_5b

    if-nez v5, :cond_5b

    invoke-virtual {v1}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v3

    if-nez v3, :cond_58

    goto :goto_5b

    :cond_58
    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_5b
    :goto_5b
    if-nez v4, :cond_9a

    if-nez v5, :cond_9a

    new-instance v1, Lokhttp3/Response$a;

    invoke-direct {v1}, Lokhttp3/Response$a;-><init>()V

    invoke-interface {p1}, Lokhttp3/l$a;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokhttp3/Response$a;->s(Lokhttp3/Request;)Lokhttp3/Response$a;

    move-result-object p1

    sget-object v1, Lokhttp3/Protocol;->c:Lokhttp3/Protocol;

    invoke-virtual {p1, v1}, Lokhttp3/Response$a;->q(Lokhttp3/Protocol;)Lokhttp3/Response$a;

    move-result-object p1

    const/16 v1, 0x1f8

    invoke-virtual {p1, v1}, Lokhttp3/Response$a;->g(I)Lokhttp3/Response$a;

    move-result-object p1

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {p1, v1}, Lokhttp3/Response$a;->n(Ljava/lang/String;)Lokhttp3/Response$a;

    move-result-object p1

    sget-object v1, Lokhttp3/internal/Util;->c:Lokhttp3/ResponseBody;

    invoke-virtual {p1, v1}, Lokhttp3/Response$a;->b(Lokhttp3/ResponseBody;)Lokhttp3/Response$a;

    move-result-object p1

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v3, v4}, Lokhttp3/Response$a;->t(J)Lokhttp3/Response$a;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lokhttp3/Response$a;->r(J)Lokhttp3/Response$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$a;->c()Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lokhttp3/k;->A(Lokhttp3/c;Lokhttp3/Response;)V

    return-object p1

    :cond_9a
    if-nez v4, :cond_b5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lokhttp3/Response;->q()Lokhttp3/Response$a;

    move-result-object p1

    sget-object v1, Lokhttp3/internal/cache/CacheInterceptor;->b:Lokhttp3/internal/cache/CacheInterceptor$Companion;

    invoke-static {v1, v5}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->access$stripBody(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {p1, v1}, Lokhttp3/Response$a;->d(Lokhttp3/Response;)Lokhttp3/Response$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$a;->c()Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lokhttp3/k;->b(Lokhttp3/c;Lokhttp3/Response;)V

    return-object p1

    :cond_b5
    if-eqz v5, :cond_bb

    invoke-virtual {v2, v0, v5}, Lokhttp3/k;->a(Lokhttp3/c;Lokhttp3/Response;)V

    goto :goto_c2

    :cond_bb
    iget-object v3, p0, Lokhttp3/internal/cache/CacheInterceptor;->c:Lokhttp3/Cache;

    if-eqz v3, :cond_c2

    invoke-virtual {v2, v0}, Lokhttp3/k;->c(Lokhttp3/c;)V

    :cond_c2
    :goto_c2
    :try_start_c2
    invoke-interface {p1, v4}, Lokhttp3/l$a;->a(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1
    :try_end_c6
    .catchall {:try_start_c2 .. :try_end_c6} :catchall_195

    if-nez p1, :cond_d4

    if-eqz v1, :cond_d4

    invoke-virtual {v1}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v1

    if-nez v1, :cond_d1

    goto :goto_d4

    :cond_d1
    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_d4
    :goto_d4
    if-eqz v5, :cond_144

    const/4 v1, 0x0

    if-nez p1, :cond_da

    goto :goto_e3

    :cond_da
    invoke-virtual {p1}, Lokhttp3/Response;->h()I

    move-result v3

    const/16 v6, 0x130

    if-ne v3, v6, :cond_e3

    const/4 v1, 0x1

    :cond_e3
    :goto_e3
    if-eqz v1, :cond_13a

    invoke-virtual {v5}, Lokhttp3/Response;->q()Lokhttp3/Response$a;

    move-result-object v1

    sget-object v3, Lokhttp3/internal/cache/CacheInterceptor;->b:Lokhttp3/internal/cache/CacheInterceptor$Companion;

    invoke-virtual {v5}, Lokhttp3/Response;->l()Lokhttp3/Headers;

    move-result-object v4

    invoke-virtual {p1}, Lokhttp3/Response;->l()Lokhttp3/Headers;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->access$combine(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object v4

    invoke-virtual {v1, v4}, Lokhttp3/Response$a;->l(Lokhttp3/Headers;)Lokhttp3/Response$a;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Response;->v()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lokhttp3/Response$a;->t(J)Lokhttp3/Response$a;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Response;->t()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lokhttp3/Response$a;->r(J)Lokhttp3/Response$a;

    move-result-object v1

    invoke-static {v3, v5}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->access$stripBody(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v4

    invoke-virtual {v1, v4}, Lokhttp3/Response$a;->d(Lokhttp3/Response;)Lokhttp3/Response$a;

    move-result-object v1

    invoke-static {v3, p1}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->access$stripBody(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokhttp3/Response$a;->o(Lokhttp3/Response;)Lokhttp3/Response$a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response$a;->c()Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    iget-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor;->c:Lokhttp3/Cache;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lokhttp3/Cache;->j()V

    iget-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor;->c:Lokhttp3/Cache;

    invoke-virtual {p1, v5, v1}, Lokhttp3/Cache;->l(Lokhttp3/Response;Lokhttp3/Response;)V

    invoke-virtual {v2, v0, v1}, Lokhttp3/k;->b(Lokhttp3/c;Lokhttp3/Response;)V

    return-object v1

    :cond_13a
    invoke-virtual {v5}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v1

    if-nez v1, :cond_141

    goto :goto_144

    :cond_141
    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_144
    :goto_144
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lokhttp3/Response;->q()Lokhttp3/Response$a;

    move-result-object v1

    sget-object v3, Lokhttp3/internal/cache/CacheInterceptor;->b:Lokhttp3/internal/cache/CacheInterceptor$Companion;

    invoke-static {v3, v5}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->access$stripBody(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v6

    invoke-virtual {v1, v6}, Lokhttp3/Response$a;->d(Lokhttp3/Response;)Lokhttp3/Response$a;

    move-result-object v1

    invoke-static {v3, p1}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->access$stripBody(Lokhttp3/internal/cache/CacheInterceptor$Companion;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokhttp3/Response$a;->o(Lokhttp3/Response;)Lokhttp3/Response$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$a;->c()Lokhttp3/Response;

    move-result-object p1

    iget-object v1, p0, Lokhttp3/internal/cache/CacheInterceptor;->c:Lokhttp3/Cache;

    if-eqz v1, :cond_194

    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    move-result v1

    if-eqz v1, :cond_183

    sget-object v1, Lokhttp3/internal/cache/b;->a:Lokhttp3/internal/cache/b$a;

    invoke-virtual {v1, p1, v4}, Lokhttp3/internal/cache/b$a;->a(Lokhttp3/Response;Lokhttp3/Request;)Z

    move-result v1

    if-eqz v1, :cond_183

    iget-object v1, p0, Lokhttp3/internal/cache/CacheInterceptor;->c:Lokhttp3/Cache;

    invoke-virtual {v1, p1}, Lokhttp3/Cache;->f(Lokhttp3/Response;)Lokhttp3/internal/cache/a;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lokhttp3/internal/cache/CacheInterceptor;->a(Lokhttp3/internal/cache/a;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object p1

    if-eqz v5, :cond_182

    invoke-virtual {v2, v0}, Lokhttp3/k;->c(Lokhttp3/c;)V

    :cond_182
    return-object p1

    :cond_183
    sget-object v0, Lokhttp3/internal/http/HttpMethod;->a:Lokhttp3/internal/http/HttpMethod;

    invoke-virtual {v4}, Lokhttp3/Request;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/internal/http/HttpMethod;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_194

    :try_start_18f
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor;->c:Lokhttp3/Cache;

    invoke-virtual {v0, v4}, Lokhttp3/Cache;->g(Lokhttp3/Request;)V
    :try_end_194
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_194} :catch_194

    :catch_194
    :cond_194
    return-object p1

    :catchall_195
    move-exception p1

    if-eqz v1, :cond_1a2

    invoke-virtual {v1}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_19f

    goto :goto_1a2

    :cond_19f
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1a2
    :goto_1a2
    throw p1
.end method
