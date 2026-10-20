###### Class okhttp3.internal.http.CallServerInterceptor (okhttp3.internal.http.b)
.class public final Lokhttp3/internal/http/b;
.super Ljava/lang/Object;
.source "CallServerInterceptor.kt"

# interfaces
.implements Lokhttp3/l;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lokhttp3/internal/http/CallServerInterceptor;",
        "Lokhttp3/Interceptor;",
        "forWebSocket",
        "",
        "(Z)V",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
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
.field private final b:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/http/b;->b:Z

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/l$a;)Lokhttp3/Response;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->e()Lokhttp3/internal/connection/c;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->g()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->a()Lokhttp3/RequestBody;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/c;->t(Lokhttp3/Request;)V

    invoke-virtual {p1}, Lokhttp3/Request;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_7f

    if-eqz v1, :cond_7f

    const-string v4, "Expect"

    invoke-virtual {p1, v4}, Lokhttp3/Request;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "100-continue"

    invoke-static {v8, v4, v7}, Lkotlin/text/g;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->f()V

    invoke-virtual {v0, v7}, Lokhttp3/internal/connection/c;->p(Z)Lokhttp3/Response$a;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->r()V

    const/4 v8, 0x0

    goto :goto_48

    :cond_46
    move-object v4, v5

    const/4 v8, 0x1

    :goto_48
    if-nez v4, :cond_6e

    invoke-virtual {v1}, Lokhttp3/RequestBody;->isDuplex()Z

    move-result v9

    if-eqz v9, :cond_5f

    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->f()V

    invoke-virtual {v0, p1, v7}, Lokhttp3/internal/connection/c;->c(Lokhttp3/Request;Z)Lokio/w;

    move-result-object v9

    invoke-static {v9}, Lokio/Okio;->buffer(Lokio/w;)Lokio/d;

    move-result-object v9

    invoke-virtual {v1, v9}, Lokhttp3/RequestBody;->writeTo(Lokio/d;)V

    goto :goto_84

    :cond_5f
    invoke-virtual {v0, p1, v6}, Lokhttp3/internal/connection/c;->c(Lokhttp3/Request;Z)Lokio/w;

    move-result-object v9

    invoke-static {v9}, Lokio/Okio;->buffer(Lokio/w;)Lokio/d;

    move-result-object v9

    invoke-virtual {v1, v9}, Lokhttp3/RequestBody;->writeTo(Lokio/d;)V

    invoke-interface {v9}, Lokio/w;->close()V

    goto :goto_84

    :cond_6e
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->n()V

    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->h()Lokhttp3/internal/connection/RealConnection;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/internal/connection/RealConnection;->u()Z

    move-result v9

    if-nez v9, :cond_84

    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->m()V

    goto :goto_84

    :cond_7f
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->n()V

    move-object v4, v5

    const/4 v8, 0x1

    :cond_84
    :goto_84
    if-eqz v1, :cond_8c

    invoke-virtual {v1}, Lokhttp3/RequestBody;->isDuplex()Z

    move-result v1

    if-nez v1, :cond_8f

    :cond_8c
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->e()V

    :cond_8f
    if-nez v4, :cond_9e

    invoke-virtual {v0, v6}, Lokhttp3/internal/connection/c;->p(Z)Lokhttp3/Response$a;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v8, :cond_9e

    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->r()V

    const/4 v8, 0x0

    :cond_9e
    invoke-virtual {v4, p1}, Lokhttp3/Response$a;->s(Lokhttp3/Request;)Lokhttp3/Response$a;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->h()Lokhttp3/internal/connection/RealConnection;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/internal/connection/RealConnection;->q()Lokhttp3/Handshake;

    move-result-object v4

    invoke-virtual {v1, v4}, Lokhttp3/Response$a;->j(Lokhttp3/Handshake;)Lokhttp3/Response$a;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lokhttp3/Response$a;->t(J)Lokhttp3/Response$a;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lokhttp3/Response$a;->r(J)Lokhttp3/Response$a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response$a;->c()Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response;->h()I

    move-result v4

    const/16 v9, 0x64

    if-ne v4, v9, :cond_f6

    invoke-virtual {v0, v6}, Lokhttp3/internal/connection/c;->p(Z)Lokhttp3/Response$a;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v8, :cond_d2

    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->r()V

    :cond_d2
    invoke-virtual {v1, p1}, Lokhttp3/Response$a;->s(Lokhttp3/Request;)Lokhttp3/Response$a;

    move-result-object p1

    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->h()Lokhttp3/internal/connection/RealConnection;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->q()Lokhttp3/Handshake;

    move-result-object v1

    invoke-virtual {p1, v1}, Lokhttp3/Response$a;->j(Lokhttp3/Handshake;)Lokhttp3/Response$a;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lokhttp3/Response$a;->t(J)Lokhttp3/Response$a;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lokhttp3/Response$a;->r(J)Lokhttp3/Response$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$a;->c()Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response;->h()I

    move-result v4

    :cond_f6
    invoke-virtual {v0, v1}, Lokhttp3/internal/connection/c;->q(Lokhttp3/Response;)V

    iget-boolean p1, p0, Lokhttp3/internal/http/b;->b:Z

    if-eqz p1, :cond_110

    const/16 p1, 0x65

    if-ne v4, p1, :cond_110

    invoke-virtual {v1}, Lokhttp3/Response;->q()Lokhttp3/Response$a;

    move-result-object p1

    sget-object v1, Lokhttp3/internal/Util;->c:Lokhttp3/ResponseBody;

    invoke-virtual {p1, v1}, Lokhttp3/Response$a;->b(Lokhttp3/ResponseBody;)Lokhttp3/Response$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$a;->c()Lokhttp3/Response;

    move-result-object p1

    goto :goto_120

    :cond_110
    invoke-virtual {v1}, Lokhttp3/Response;->q()Lokhttp3/Response$a;

    move-result-object p1

    invoke-virtual {v0, v1}, Lokhttp3/internal/connection/c;->o(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {p1, v1}, Lokhttp3/Response$a;->b(Lokhttp3/ResponseBody;)Lokhttp3/Response$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$a;->c()Lokhttp3/Response;

    move-result-object p1

    :goto_120
    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object v1

    const-string v2, "Connection"

    invoke-virtual {v1, v2}, Lokhttp3/Request;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "close"

    invoke-static {v3, v1, v7}, Lkotlin/text/g;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_13d

    const/4 v1, 0x2

    invoke-static {p1, v2, v5, v1, v5}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v7}, Lkotlin/text/g;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_140

    :cond_13d
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->m()V

    :cond_140
    const/16 v0, 0xcc

    if-eq v4, v0, :cond_148

    const/16 v0, 0xcd

    if-ne v4, v0, :cond_189

    :cond_148
    invoke-virtual {p1}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_151

    const-wide/16 v0, -0x1

    goto :goto_155

    :cond_151
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    :goto_155
    const-wide/16 v2, 0x0

    cmp-long v6, v0, v2

    if-lez v6, :cond_189

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object p1

    if-nez p1, :cond_176

    goto :goto_17e

    :cond_176
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :goto_17e
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_189
    return-object p1
.end method
