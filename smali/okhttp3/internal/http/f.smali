###### Class okhttp3.internal.http.RetryAndFollowUpInterceptor (okhttp3.internal.http.f)
.class public final Lokhttp3/internal/http/f;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.kt"

# interfaces
.implements Lokhttp3/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http/f$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0002J\u0010\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0012H\u0002J(\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0012H\u0002J\u0018\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u001cH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lokhttp3/internal/http/RetryAndFollowUpInterceptor;",
        "Lokhttp3/Interceptor;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "(Lokhttp3/OkHttpClient;)V",
        "buildRedirectRequest",
        "Lokhttp3/Request;",
        "userResponse",
        "Lokhttp3/Response;",
        "method",
        "",
        "followUpRequest",
        "exchange",
        "Lokhttp3/internal/connection/Exchange;",
        "intercept",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "isRecoverable",
        "",
        "e",
        "Ljava/io/IOException;",
        "requestSendStarted",
        "recover",
        "call",
        "Lokhttp3/internal/connection/RealCall;",
        "userRequest",
        "requestIsOneShot",
        "retryAfter",
        "",
        "defaultDelay",
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
.field public static final b:Lokhttp3/internal/http/f$a;


# instance fields
.field private final c:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokhttp3/internal/http/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http/f$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lokhttp3/internal/http/f;->b:Lokhttp3/internal/http/f$a;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .registers 3

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http/f;->c:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private final a(Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/Request;
    .registers 11

    iget-object v0, p0, Lokhttp3/internal/http/f;->c:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    const/4 v0, 0x2

    const-string v2, "Location"

    invoke-static {p1, v2, v1, v0, v1}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    return-object v1

    :cond_14
    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->j()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/HttpUrl;->n(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    if-nez v0, :cond_23

    return-object v1

    :cond_23
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->j()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    iget-object v2, p0, Lokhttp3/internal/http/f;->c:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->q()Z

    move-result v2

    if-nez v2, :cond_42

    return-object v1

    :cond_42
    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->i()Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-static {p2}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-virtual {p1}, Lokhttp3/Response;->h()I

    move-result v3

    sget-object v4, Lokhttp3/internal/http/HttpMethod;->a:Lokhttp3/internal/http/HttpMethod;

    invoke-virtual {v4, p2}, Lokhttp3/internal/http/HttpMethod;->c(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x133

    const/16 v7, 0x134

    if-nez v5, :cond_67

    if-eq v3, v7, :cond_67

    if-ne v3, v6, :cond_65

    goto :goto_67

    :cond_65
    const/4 v5, 0x0

    goto :goto_68

    :cond_67
    :goto_67
    const/4 v5, 0x1

    :goto_68
    invoke-virtual {v4, p2}, Lokhttp3/internal/http/HttpMethod;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_78

    if-eq v3, v7, :cond_78

    if-eq v3, v6, :cond_78

    const-string p2, "GET"

    invoke-virtual {v2, p2, v1}, Lokhttp3/Request$Builder;->h(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_85

    :cond_78
    if-eqz v5, :cond_82

    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->a()Lokhttp3/RequestBody;

    move-result-object v1

    :cond_82
    invoke-virtual {v2, p2, v1}, Lokhttp3/Request$Builder;->h(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    :goto_85
    if-nez v5, :cond_96

    const-string p2, "Transfer-Encoding"

    invoke-virtual {v2, p2}, Lokhttp3/Request$Builder;->j(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string p2, "Content-Length"

    invoke-virtual {v2, p2}, Lokhttp3/Request$Builder;->j(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string p2, "Content-Type"

    invoke-virtual {v2, p2}, Lokhttp3/Request$Builder;->j(Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_96
    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->j()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1, v0}, Lokhttp3/internal/Util;->canReuseConnectionFor(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result p1

    if-nez p1, :cond_a9

    const-string p1, "Authorization"

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->j(Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_a9
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->p(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->b()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private final b(Lokhttp3/Response;Lokhttp3/internal/connection/c;)Lokhttp3/Request;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_5

    :goto_3
    move-object v1, v0

    goto :goto_10

    :cond_5
    invoke-virtual {p2}, Lokhttp3/internal/connection/c;->h()Lokhttp3/internal/connection/RealConnection;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->y()Lokhttp3/m;

    move-result-object v1

    :goto_10
    invoke-virtual {p1}, Lokhttp3/Response;->h()I

    move-result v2

    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->h()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x133

    if-eq v2, v4, :cond_e0

    const/16 v4, 0x134

    if-eq v2, v4, :cond_e0

    const/16 v4, 0x191

    if-eq v2, v4, :cond_d5

    const/16 v4, 0x1a5

    if-eq v2, v4, :cond_ae

    const/16 p2, 0x1f7

    if-eq v2, p2, :cond_92

    const/16 p2, 0x197

    if-eq v2, p2, :cond_70

    const/16 p2, 0x198

    if-eq v2, p2, :cond_3c

    packed-switch v2, :pswitch_data_e6

    return-object v0

    :cond_3c
    iget-object v1, p0, Lokhttp3/internal/http/f;->c:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->D()Z

    move-result v1

    if-nez v1, :cond_45

    return-object v0

    :cond_45
    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->a()Lokhttp3/RequestBody;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-virtual {v1}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v1

    if-eqz v1, :cond_56

    return-object v0

    :cond_56
    invoke-virtual {p1}, Lokhttp3/Response;->r()Lokhttp3/Response;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {v1}, Lokhttp3/Response;->h()I

    move-result v1

    if-ne v1, p2, :cond_63

    return-object v0

    :cond_63
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http/f;->f(Lokhttp3/Response;I)I

    move-result p2

    if-lez p2, :cond_6b

    return-object v0

    :cond_6b
    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_70
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lokhttp3/m;->b()Ljava/net/Proxy;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p2

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p2, v0, :cond_8a

    iget-object p2, p0, Lokhttp3/internal/http/f;->c:Lokhttp3/OkHttpClient;

    invoke-virtual {p2}, Lokhttp3/OkHttpClient;->A()Lokhttp3/b;

    move-result-object p2

    invoke-interface {p2, v1, p1}, Lokhttp3/b;->a(Lokhttp3/m;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_8a
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_92
    invoke-virtual {p1}, Lokhttp3/Response;->r()Lokhttp3/Response;

    move-result-object v1

    if-eqz v1, :cond_9f

    invoke-virtual {v1}, Lokhttp3/Response;->h()I

    move-result v1

    if-ne v1, p2, :cond_9f

    return-object v0

    :cond_9f
    const p2, 0x7fffffff

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http/f;->f(Lokhttp3/Response;I)I

    move-result p2

    if-nez p2, :cond_ad

    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_ad
    return-object v0

    :cond_ae
    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->a()Lokhttp3/RequestBody;

    move-result-object v1

    if-eqz v1, :cond_bf

    invoke-virtual {v1}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v1

    if-eqz v1, :cond_bf

    return-object v0

    :cond_bf
    if-eqz p2, :cond_d4

    invoke-virtual {p2}, Lokhttp3/internal/connection/c;->k()Z

    move-result v1

    if-nez v1, :cond_c8

    goto :goto_d4

    :cond_c8
    invoke-virtual {p2}, Lokhttp3/internal/connection/c;->h()Lokhttp3/internal/connection/RealConnection;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/internal/connection/RealConnection;->w()V

    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_d4
    :goto_d4
    return-object v0

    :cond_d5
    iget-object p2, p0, Lokhttp3/internal/http/f;->c:Lokhttp3/OkHttpClient;

    invoke-virtual {p2}, Lokhttp3/OkHttpClient;->d()Lokhttp3/b;

    move-result-object p2

    invoke-interface {p2, v1, p1}, Lokhttp3/b;->a(Lokhttp3/m;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_e0
    :pswitch_e0
    invoke-direct {p0, p1, v3}, Lokhttp3/internal/http/f;->a(Lokhttp3/Response;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_e6
    .packed-switch 0x12c
        :pswitch_e0
        :pswitch_e0
        :pswitch_e0
        :pswitch_e0
    .end packed-switch
.end method

.method private final c(Ljava/io/IOException;Z)Z
    .registers 6

    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_12

    if-nez p2, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1

    :cond_13
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_20

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_20

    return v1

    :cond_20
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_25

    return v1

    :cond_25
    return v2
.end method

.method private final d(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;Z)Z
    .registers 7

    iget-object v0, p0, Lokhttp3/internal/http/f;->c:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->D()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    if-eqz p4, :cond_13

    invoke-direct {p0, p1, p3}, Lokhttp3/internal/http/f;->e(Ljava/io/IOException;Lokhttp3/Request;)Z

    move-result p3

    if-eqz p3, :cond_13

    return v1

    :cond_13
    invoke-direct {p0, p1, p4}, Lokhttp3/internal/http/f;->c(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_1a

    return v1

    :cond_1a
    invoke-virtual {p2}, Lokhttp3/internal/connection/RealCall;->v()Z

    move-result p1

    if-nez p1, :cond_21

    return v1

    :cond_21
    const/4 p1, 0x1

    return p1
.end method

.method private final e(Ljava/io/IOException;Lokhttp3/Request;)Z
    .registers 3

    invoke-virtual {p2}, Lokhttp3/Request;->a()Lokhttp3/RequestBody;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result p2

    if-nez p2, :cond_10

    :cond_c
    instance-of p1, p1, Ljava/io/FileNotFoundException;

    if-eqz p1, :cond_12

    :cond_10
    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method private final f(Lokhttp3/Response;I)I
    .registers 6

    const-string v0, "Retry-After"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    return p2

    :cond_b
    new-instance p2, Lkotlin/text/Regex;

    const-string v0, "\\d+"

    invoke-direct {p2, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lkotlin/text/Regex;->e(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_26

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "valueOf(header)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :cond_26
    const p1, 0x7fffffff

    return p1
.end method


# virtual methods
.method public intercept(Lokhttp3/l$a;)Lokhttp3/Response;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->g()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->c()Lokhttp3/internal/connection/RealCall;

    move-result-object v1

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v7, v3

    const/4 v6, 0x1

    const/4 v8, 0x0

    :goto_19
    invoke-virtual {v1, v0, v6}, Lokhttp3/internal/connection/RealCall;->h(Lokhttp3/Request;Z)V

    :try_start_1c
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealCall;->isCanceled()Z

    move-result v6
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_d2

    if-nez v6, :cond_ca

    :try_start_22
    invoke-virtual {p1, v0}, Lokhttp3/internal/http/RealInterceptorChain;->a(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0
    :try_end_26
    .catch Lokhttp3/internal/connection/g; {:try_start_22 .. :try_end_26} :catch_a8
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_26} :catch_90
    .catchall {:try_start_22 .. :try_end_26} :catchall_d2

    if-eqz v7, :cond_40

    :try_start_28
    invoke-virtual {v0}, Lokhttp3/Response;->q()Lokhttp3/Response$a;

    move-result-object v0

    invoke-virtual {v7}, Lokhttp3/Response;->q()Lokhttp3/Response$a;

    move-result-object v6

    invoke-virtual {v6, v3}, Lokhttp3/Response$a;->b(Lokhttp3/ResponseBody;)Lokhttp3/Response$a;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Response$a;->c()Lokhttp3/Response;

    move-result-object v6

    invoke-virtual {v0, v6}, Lokhttp3/Response$a;->p(Lokhttp3/Response;)Lokhttp3/Response$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response$a;->c()Lokhttp3/Response;

    move-result-object v0

    :cond_40
    move-object v7, v0

    invoke-virtual {v1}, Lokhttp3/internal/connection/RealCall;->n()Lokhttp3/internal/connection/c;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lokhttp3/internal/http/f;->b(Lokhttp3/Response;Lokhttp3/internal/connection/c;)Lokhttp3/Request;

    move-result-object v6

    if-nez v6, :cond_5a

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->l()Z

    move-result p1

    if-eqz p1, :cond_56

    invoke-virtual {v1}, Lokhttp3/internal/connection/RealCall;->x()V
    :try_end_56
    .catchall {:try_start_28 .. :try_end_56} :catchall_d2

    :cond_56
    invoke-virtual {v1, v5}, Lokhttp3/internal/connection/RealCall;->i(Z)V

    return-object v7

    :cond_5a
    :try_start_5a
    invoke-virtual {v6}, Lokhttp3/Request;->a()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v0
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_d2

    if-eqz v0, :cond_6a

    invoke-virtual {v1, v5}, Lokhttp3/internal/connection/RealCall;->i(Z)V

    return-object v7

    :cond_6a
    :try_start_6a
    invoke-virtual {v7}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_71

    goto :goto_74

    :cond_71
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_d2

    :goto_74
    add-int/lit8 v8, v8, 0x1

    const/16 v0, 0x14

    if-gt v8, v0, :cond_80

    invoke-virtual {v1, v4}, Lokhttp3/internal/connection/RealCall;->i(Z)V

    move-object v0, v6

    const/4 v6, 0x1

    goto :goto_19

    :cond_80
    :try_start_80
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Too many follow-up requests: "

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_90
    move-exception v6

    instance-of v9, v6, Lokhttp3/internal/http2/a;

    if-nez v9, :cond_97

    const/4 v9, 0x1

    goto :goto_98

    :cond_97
    const/4 v9, 0x0

    :goto_98
    invoke-direct {p0, v6, v1, v0, v9}, Lokhttp3/internal/http/f;->d(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;Z)Z

    move-result v9

    if-eqz v9, :cond_a3

    invoke-static {v2, v6}, Lkotlin/collections/p;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_bb

    :cond_a3
    invoke-static {v6, v2}, Lokhttp3/internal/Util;->withSuppressed(Ljava/lang/Exception;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :catch_a8
    move-exception v6

    invoke-virtual {v6}, Lokhttp3/internal/connection/g;->d()Ljava/io/IOException;

    move-result-object v9

    invoke-direct {p0, v9, v1, v0, v5}, Lokhttp3/internal/http/f;->d(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;Z)Z

    move-result v9

    if-eqz v9, :cond_c1

    invoke-virtual {v6}, Lokhttp3/internal/connection/g;->c()Ljava/io/IOException;

    move-result-object v6

    invoke-static {v2, v6}, Lkotlin/collections/p;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_bb
    .catchall {:try_start_80 .. :try_end_bb} :catchall_d2

    :goto_bb
    invoke-virtual {v1, v4}, Lokhttp3/internal/connection/RealCall;->i(Z)V

    const/4 v6, 0x0

    goto/16 :goto_19

    :cond_c1
    :try_start_c1
    invoke-virtual {v6}, Lokhttp3/internal/connection/g;->c()Ljava/io/IOException;

    move-result-object p1

    invoke-static {p1, v2}, Lokhttp3/internal/Util;->withSuppressed(Ljava/lang/Exception;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_ca
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_d2
    .catchall {:try_start_c1 .. :try_end_d2} :catchall_d2

    :catchall_d2
    move-exception p1

    invoke-virtual {v1, v4}, Lokhttp3/internal/connection/RealCall;->i(Z)V

    throw p1
.end method

###### Class okhttp3.internal.http.RetryAndFollowUpInterceptor.a (okhttp3.internal.http.f$a)
.class public final Lokhttp3/internal/http/f$a;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;",
        "",
        "()V",
        "MAX_FOLLOW_UPS",
        "",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lokhttp3/internal/http/f$a;-><init>()V

    return-void
.end method
