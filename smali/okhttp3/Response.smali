###### Class okhttp3.Response (okhttp3.Response)
.class public final Lokhttp3/Response;
.super Ljava/lang/Object;
.source "Response.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Response$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001:\u0001FB{\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0000\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0000\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0000\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0002\u0010\u0018J\u000f\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007\u00a2\u0006\u0002\u0008+J\r\u0010\u001a\u001a\u00020\u001bH\u0007\u00a2\u0006\u0002\u0008,J\u000f\u0010\u0011\u001a\u0004\u0018\u00010\u0000H\u0007\u00a2\u0006\u0002\u0008-J\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002000/J\u0008\u00101\u001a\u000202H\u0016J\r\u0010\u0008\u001a\u00020\tH\u0007\u00a2\u0006\u0002\u00083J\u000f\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007\u00a2\u0006\u0002\u00084J\u001e\u00105\u001a\u0004\u0018\u00010\u00072\u0006\u00106\u001a\u00020\u00072\n\u0008\u0002\u00107\u001a\u0004\u0018\u00010\u0007H\u0007J\r\u0010\u000c\u001a\u00020\rH\u0007\u00a2\u0006\u0002\u00088J\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070/2\u0006\u00106\u001a\u00020\u0007J\r\u0010\u0006\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u00089J\u000f\u0010\u0010\u001a\u0004\u0018\u00010\u0000H\u0007\u00a2\u0006\u0002\u0008:J\u0006\u0010;\u001a\u00020<J\u000e\u0010=\u001a\u00020\u000f2\u0006\u0010>\u001a\u00020\u0014J\u000f\u0010\u0012\u001a\u0004\u0018\u00010\u0000H\u0007\u00a2\u0006\u0002\u0008?J\r\u0010\u0004\u001a\u00020\u0005H\u0007\u00a2\u0006\u0002\u0008@J\r\u0010\u0015\u001a\u00020\u0014H\u0007\u00a2\u0006\u0002\u0008AJ\r\u0010\u0002\u001a\u00020\u0003H\u0007\u00a2\u0006\u0002\u0008BJ\r\u0010\u0013\u001a\u00020\u0014H\u0007\u00a2\u0006\u0002\u0008CJ\u0008\u0010D\u001a\u00020\u0007H\u0016J\u0006\u0010E\u001a\u00020\rR\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u001b8G\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001cR\u0015\u0010\u0011\u001a\u0004\u0018\u00010\u00008\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u001dR\u0013\u0010\u0008\u001a\u00020\t8\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u001eR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u001fR\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010 R\u0013\u0010\u000c\u001a\u00020\r8\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010!R\u0011\u0010\"\u001a\u00020#8F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010$R\u0011\u0010%\u001a\u00020#8F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010$R\u0010\u0010&\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0006\u001a\u00020\u00078\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\'R\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u00008\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u001dR\u0015\u0010\u0012\u001a\u0004\u0018\u00010\u00008\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u001dR\u0013\u0010\u0004\u001a\u00020\u00058\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010(R\u0013\u0010\u0015\u001a\u00020\u00148\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010)R\u0013\u0010\u0002\u001a\u00020\u00038\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010*R\u0013\u0010\u0013\u001a\u00020\u00148\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010)\u00a8\u0006G"
    }
    d2 = {
        "Lokhttp3/Response;",
        "Ljava/io/Closeable;",
        "request",
        "Lokhttp3/Request;",
        "protocol",
        "Lokhttp3/Protocol;",
        "message",
        "",
        "code",
        "",
        "handshake",
        "Lokhttp3/Handshake;",
        "headers",
        "Lokhttp3/Headers;",
        "body",
        "Lokhttp3/ResponseBody;",
        "networkResponse",
        "cacheResponse",
        "priorResponse",
        "sentRequestAtMillis",
        "",
        "receivedResponseAtMillis",
        "exchange",
        "Lokhttp3/internal/connection/Exchange;",
        "(Lokhttp3/Request;Lokhttp3/Protocol;Ljava/lang/String;ILokhttp3/Handshake;Lokhttp3/Headers;Lokhttp3/ResponseBody;Lokhttp3/Response;Lokhttp3/Response;Lokhttp3/Response;JJLokhttp3/internal/connection/Exchange;)V",
        "()Lokhttp3/ResponseBody;",
        "cacheControl",
        "Lokhttp3/CacheControl;",
        "()Lokhttp3/CacheControl;",
        "()Lokhttp3/Response;",
        "()I",
        "()Lokhttp3/internal/connection/Exchange;",
        "()Lokhttp3/Handshake;",
        "()Lokhttp3/Headers;",
        "isRedirect",
        "",
        "()Z",
        "isSuccessful",
        "lazyCacheControl",
        "()Ljava/lang/String;",
        "()Lokhttp3/Protocol;",
        "()J",
        "()Lokhttp3/Request;",
        "-deprecated_body",
        "-deprecated_cacheControl",
        "-deprecated_cacheResponse",
        "challenges",
        "",
        "Lokhttp3/Challenge;",
        "close",
        "",
        "-deprecated_code",
        "-deprecated_handshake",
        "header",
        "name",
        "defaultValue",
        "-deprecated_headers",
        "-deprecated_message",
        "-deprecated_networkResponse",
        "newBuilder",
        "Lokhttp3/Response$Builder;",
        "peekBody",
        "byteCount",
        "-deprecated_priorResponse",
        "-deprecated_protocol",
        "-deprecated_receivedResponseAtMillis",
        "-deprecated_request",
        "-deprecated_sentRequestAtMillis",
        "toString",
        "trailers",
        "Builder",
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
.field private final a:Lokhttp3/Request;

.field private final b:Lokhttp3/Protocol;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lokhttp3/Handshake;

.field private final f:Lokhttp3/Headers;

.field private final g:Lokhttp3/ResponseBody;

.field private final h:Lokhttp3/Response;

.field private final i:Lokhttp3/Response;

.field private final j:Lokhttp3/Response;

.field private final k:J

.field private final l:J

.field private final m:Lokhttp3/internal/connection/c;

.field private n:Lokhttp3/CacheControl;


# direct methods
.method public constructor <init>(Lokhttp3/Request;Lokhttp3/Protocol;Ljava/lang/String;ILokhttp3/Handshake;Lokhttp3/Headers;Lokhttp3/ResponseBody;Lokhttp3/Response;Lokhttp3/Response;Lokhttp3/Response;JJLokhttp3/internal/connection/c;)V
    .registers 22

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    const-string v5, "request"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "protocol"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "message"

    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "headers"

    invoke-static {p6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lokhttp3/Response;->a:Lokhttp3/Request;

    iput-object v2, v0, Lokhttp3/Response;->b:Lokhttp3/Protocol;

    iput-object v3, v0, Lokhttp3/Response;->c:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Lokhttp3/Response;->d:I

    move-object v1, p5

    iput-object v1, v0, Lokhttp3/Response;->e:Lokhttp3/Handshake;

    iput-object v4, v0, Lokhttp3/Response;->f:Lokhttp3/Headers;

    move-object v1, p7

    iput-object v1, v0, Lokhttp3/Response;->g:Lokhttp3/ResponseBody;

    move-object v1, p8

    iput-object v1, v0, Lokhttp3/Response;->h:Lokhttp3/Response;

    move-object v1, p9

    iput-object v1, v0, Lokhttp3/Response;->i:Lokhttp3/Response;

    move-object/from16 v1, p10

    iput-object v1, v0, Lokhttp3/Response;->j:Lokhttp3/Response;

    move-wide/from16 v1, p11

    iput-wide v1, v0, Lokhttp3/Response;->k:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lokhttp3/Response;->l:J

    move-object/from16 v1, p15

    iput-object v1, v0, Lokhttp3/Response;->m:Lokhttp3/internal/connection/c;

    return-void
.end method

.method public static synthetic header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lokhttp3/Response;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Lokhttp3/Response;->g:Lokhttp3/ResponseBody;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Lokhttp3/ResponseBody;
    .registers 2

    iget-object v0, p0, Lokhttp3/Response;->g:Lokhttp3/ResponseBody;

    return-object v0
.end method

.method public final e()Lokhttp3/CacheControl;
    .registers 3

    iget-object v0, p0, Lokhttp3/Response;->n:Lokhttp3/CacheControl;

    if-nez v0, :cond_e

    sget-object v0, Lokhttp3/CacheControl;->a:Lokhttp3/CacheControl$b;

    iget-object v1, p0, Lokhttp3/Response;->f:Lokhttp3/Headers;

    invoke-virtual {v0, v1}, Lokhttp3/CacheControl$b;->b(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->n:Lokhttp3/CacheControl;

    :cond_e
    return-object v0
.end method

.method public final f()Lokhttp3/Response;
    .registers 2

    iget-object v0, p0, Lokhttp3/Response;->i:Lokhttp3/Response;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/Response;->f:Lokhttp3/Headers;

    iget v1, p0, Lokhttp3/Response;->d:I

    const/16 v2, 0x191

    if-eq v1, v2, :cond_14

    const/16 v2, 0x197

    if-eq v1, v2, :cond_11

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_11
    const-string v1, "Proxy-Authenticate"

    goto :goto_16

    :cond_14
    const-string v1, "WWW-Authenticate"

    :goto_16
    invoke-static {v0, v1}, Lokhttp3/internal/http/HttpHeaders;->parseChallenges(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lokhttp3/Response;->d:I

    return v0
.end method

.method public final i()Lokhttp3/internal/connection/c;
    .registers 2

    iget-object v0, p0, Lokhttp3/Response;->m:Lokhttp3/internal/connection/c;

    return-object v0
.end method

.method public final j()Lokhttp3/Handshake;
    .registers 2

    iget-object v0, p0, Lokhttp3/Response;->e:Lokhttp3/Handshake;

    return-object v0
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/Response;->f:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_f

    :cond_e
    move-object p2, p1

    :goto_f
    return-object p2
.end method

.method public final l()Lokhttp3/Headers;
    .registers 2

    iget-object v0, p0, Lokhttp3/Response;->f:Lokhttp3/Headers;

    return-object v0
.end method

.method public final m()Z
    .registers 4

    iget v0, p0, Lokhttp3/Response;->d:I

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-gt v2, v0, :cond_c

    const/16 v2, 0x12c

    if-ge v0, v2, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public final o()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/Response;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Lokhttp3/Response;
    .registers 2

    iget-object v0, p0, Lokhttp3/Response;->h:Lokhttp3/Response;

    return-object v0
.end method

.method public final q()Lokhttp3/Response$a;
    .registers 2

    new-instance v0, Lokhttp3/Response$a;

    invoke-direct {v0, p0}, Lokhttp3/Response$a;-><init>(Lokhttp3/Response;)V

    return-object v0
.end method

.method public final r()Lokhttp3/Response;
    .registers 2

    iget-object v0, p0, Lokhttp3/Response;->j:Lokhttp3/Response;

    return-object v0
.end method

.method public final s()Lokhttp3/Protocol;
    .registers 2

    iget-object v0, p0, Lokhttp3/Response;->b:Lokhttp3/Protocol;

    return-object v0
.end method

.method public final t()J
    .registers 3

    iget-wide v0, p0, Lokhttp3/Response;->l:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/Response;->b:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/Response;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/Response;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/Response;->a:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->j()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lokhttp3/Request;
    .registers 2

    iget-object v0, p0, Lokhttp3/Response;->a:Lokhttp3/Request;

    return-object v0
.end method

.method public final v()J
    .registers 3

    iget-wide v0, p0, Lokhttp3/Response;->k:J

    return-wide v0
.end method

###### Class okhttp3.Response.a (okhttp3.Response$a)
.class public Lokhttp3/Response$a;
.super Ljava/lang/Object;
.source "Response.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010I\u001a\u00020\u00002\u0006\u0010J\u001a\u00020)2\u0006\u0010K\u001a\u00020)H\u0016J\u0012\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0008\u0010L\u001a\u00020\u0004H\u0016J\u0012\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010M\u001a\u00020N2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0002J\u001a\u0010O\u001a\u00020N2\u0006\u0010J\u001a\u00020)2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0012\u0010\u001c\u001a\u00020\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0018\u0010P\u001a\u00020\u00002\u0006\u0010J\u001a\u00020)2\u0006\u0010K\u001a\u00020)H\u0016J\u0010\u0010\"\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020QH\u0016J\u0015\u0010R\u001a\u00020N2\u0006\u0010S\u001a\u00020\u0017H\u0000\u00a2\u0006\u0002\u0008TJ\u0010\u0010(\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)H\u0016J\u0012\u0010.\u001a\u00020\u00002\u0008\u0010.\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u00101\u001a\u00020\u00002\u0008\u00101\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u00104\u001a\u00020\u00002\u0006\u00104\u001a\u000205H\u0016J\u0010\u0010:\u001a\u00020\u00002\u0006\u0010:\u001a\u00020;H\u0016J\u0010\u0010U\u001a\u00020\u00002\u0006\u0010J\u001a\u00020)H\u0016J\u0010\u0010@\u001a\u00020\u00002\u0006\u0010@\u001a\u00020AH\u0016J\u0010\u0010F\u001a\u00020\u00002\u0006\u0010F\u001a\u00020;H\u0016R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0005R\u001a\u0010\u0010\u001a\u00020\u0011X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\"\u001a\u00020#X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001c\u0010(\u001a\u0004\u0018\u00010)X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001c\u0010.\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u000e\"\u0004\u00080\u0010\u0005R\u001c\u00101\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u000e\"\u0004\u00083\u0010\u0005R\u001c\u00104\u001a\u0004\u0018\u000105X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u001a\u0010:\u001a\u00020;X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u001c\u0010@\u001a\u0004\u0018\u00010AX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\u001a\u0010F\u001a\u00020;X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010=\"\u0004\u0008H\u0010?\u00a8\u0006V"
    }
    d2 = {
        "Lokhttp3/Response$Builder;",
        "",
        "()V",
        "response",
        "Lokhttp3/Response;",
        "(Lokhttp3/Response;)V",
        "body",
        "Lokhttp3/ResponseBody;",
        "getBody$okhttp",
        "()Lokhttp3/ResponseBody;",
        "setBody$okhttp",
        "(Lokhttp3/ResponseBody;)V",
        "cacheResponse",
        "getCacheResponse$okhttp",
        "()Lokhttp3/Response;",
        "setCacheResponse$okhttp",
        "code",
        "",
        "getCode$okhttp",
        "()I",
        "setCode$okhttp",
        "(I)V",
        "exchange",
        "Lokhttp3/internal/connection/Exchange;",
        "getExchange$okhttp",
        "()Lokhttp3/internal/connection/Exchange;",
        "setExchange$okhttp",
        "(Lokhttp3/internal/connection/Exchange;)V",
        "handshake",
        "Lokhttp3/Handshake;",
        "getHandshake$okhttp",
        "()Lokhttp3/Handshake;",
        "setHandshake$okhttp",
        "(Lokhttp3/Handshake;)V",
        "headers",
        "Lokhttp3/Headers$Builder;",
        "getHeaders$okhttp",
        "()Lokhttp3/Headers$Builder;",
        "setHeaders$okhttp",
        "(Lokhttp3/Headers$Builder;)V",
        "message",
        "",
        "getMessage$okhttp",
        "()Ljava/lang/String;",
        "setMessage$okhttp",
        "(Ljava/lang/String;)V",
        "networkResponse",
        "getNetworkResponse$okhttp",
        "setNetworkResponse$okhttp",
        "priorResponse",
        "getPriorResponse$okhttp",
        "setPriorResponse$okhttp",
        "protocol",
        "Lokhttp3/Protocol;",
        "getProtocol$okhttp",
        "()Lokhttp3/Protocol;",
        "setProtocol$okhttp",
        "(Lokhttp3/Protocol;)V",
        "receivedResponseAtMillis",
        "",
        "getReceivedResponseAtMillis$okhttp",
        "()J",
        "setReceivedResponseAtMillis$okhttp",
        "(J)V",
        "request",
        "Lokhttp3/Request;",
        "getRequest$okhttp",
        "()Lokhttp3/Request;",
        "setRequest$okhttp",
        "(Lokhttp3/Request;)V",
        "sentRequestAtMillis",
        "getSentRequestAtMillis$okhttp",
        "setSentRequestAtMillis$okhttp",
        "addHeader",
        "name",
        "value",
        "build",
        "checkPriorResponse",
        "",
        "checkSupportResponse",
        "header",
        "Lokhttp3/Headers;",
        "initExchange",
        "deferredTrailers",
        "initExchange$okhttp",
        "removeHeader",
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
.field private a:Lokhttp3/Request;

.field private b:Lokhttp3/Protocol;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lokhttp3/Handshake;

.field private f:Lokhttp3/Headers$a;

.field private g:Lokhttp3/ResponseBody;

.field private h:Lokhttp3/Response;

.field private i:Lokhttp3/Response;

.field private j:Lokhttp3/Response;

.field private k:J

.field private l:J

.field private m:Lokhttp3/internal/connection/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/Response$a;->c:I

    new-instance v0, Lokhttp3/Headers$a;

    invoke-direct {v0}, Lokhttp3/Headers$a;-><init>()V

    iput-object v0, p0, Lokhttp3/Response$a;->f:Lokhttp3/Headers$a;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Response;)V
    .registers 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/Response$a;->c:I

    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$a;->a:Lokhttp3/Request;

    invoke-virtual {p1}, Lokhttp3/Response;->s()Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$a;->b:Lokhttp3/Protocol;

    invoke-virtual {p1}, Lokhttp3/Response;->h()I

    move-result v0

    iput v0, p0, Lokhttp3/Response$a;->c:I

    invoke-virtual {p1}, Lokhttp3/Response;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/Response;->j()Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$a;->e:Lokhttp3/Handshake;

    invoke-virtual {p1}, Lokhttp3/Response;->l()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->e()Lokhttp3/Headers$a;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$a;->f:Lokhttp3/Headers$a;

    invoke-virtual {p1}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$a;->g:Lokhttp3/ResponseBody;

    invoke-virtual {p1}, Lokhttp3/Response;->p()Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$a;->h:Lokhttp3/Response;

    invoke-virtual {p1}, Lokhttp3/Response;->f()Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$a;->i:Lokhttp3/Response;

    invoke-virtual {p1}, Lokhttp3/Response;->r()Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response$a;->j:Lokhttp3/Response;

    invoke-virtual {p1}, Lokhttp3/Response;->v()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Response$a;->k:J

    invoke-virtual {p1}, Lokhttp3/Response;->t()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Response$a;->l:J

    invoke-virtual {p1}, Lokhttp3/Response;->i()Lokhttp3/internal/connection/c;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/Response$a;->m:Lokhttp3/internal/connection/c;

    return-void
.end method

.method private final e(Lokhttp3/Response;)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_e

    :cond_3
    invoke-virtual {p1}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object p1

    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    if-eqz p1, :cond_f

    :goto_e
    return-void

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final f(Ljava/lang/String;Lokhttp3/Response;)V
    .registers 6

    if-nez p2, :cond_3

    goto :goto_30

    :cond_3
    invoke-virtual {p2}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_61

    invoke-virtual {p2}, Lokhttp3/Response;->p()Lokhttp3/Response;

    move-result-object v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_51

    invoke-virtual {p2}, Lokhttp3/Response;->f()Lokhttp3/Response;

    move-result-object v0

    if-nez v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_41

    invoke-virtual {p2}, Lokhttp3/Response;->r()Lokhttp3/Response;

    move-result-object p2

    if-nez p2, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    if-eqz v1, :cond_31

    :goto_30
    return-void

    :cond_31
    const-string p2, ".priorResponse != null"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_41
    const-string p2, ".cacheResponse != null"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_51
    const-string p2, ".networkResponse != null"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_61
    const-string p2, ".body != null"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final A(Lokhttp3/Response;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/Response$a;->h:Lokhttp3/Response;

    return-void
.end method

.method public final B(Lokhttp3/Response;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/Response$a;->j:Lokhttp3/Response;

    return-void
.end method

.method public final C(Lokhttp3/Protocol;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/Response$a;->b:Lokhttp3/Protocol;

    return-void
.end method

.method public final D(J)V
    .registers 3

    iput-wide p1, p0, Lokhttp3/Response$a;->l:J

    return-void
.end method

.method public final E(Lokhttp3/Request;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/Response$a;->a:Lokhttp3/Request;

    return-void
.end method

.method public final F(J)V
    .registers 3

    iput-wide p1, p0, Lokhttp3/Response$a;->k:J

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$a;
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/Response$a;->i()Lokhttp3/Headers$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$a;

    return-object p0
.end method

.method public b(Lokhttp3/ResponseBody;)Lokhttp3/Response$a;
    .registers 2

    invoke-virtual {p0, p1}, Lokhttp3/Response$a;->u(Lokhttp3/ResponseBody;)V

    return-object p0
.end method

.method public c()Lokhttp3/Response;
    .registers 19

    move-object/from16 v0, p0

    iget v5, v0, Lokhttp3/Response$a;->c:I

    if-ltz v5, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_5b

    iget-object v2, v0, Lokhttp3/Response$a;->a:Lokhttp3/Request;

    if-eqz v2, :cond_4f

    iget-object v3, v0, Lokhttp3/Response$a;->b:Lokhttp3/Protocol;

    if-eqz v3, :cond_43

    iget-object v4, v0, Lokhttp3/Response$a;->d:Ljava/lang/String;

    if-eqz v4, :cond_37

    iget-object v6, v0, Lokhttp3/Response$a;->e:Lokhttp3/Handshake;

    iget-object v1, v0, Lokhttp3/Response$a;->f:Lokhttp3/Headers$a;

    invoke-virtual {v1}, Lokhttp3/Headers$a;->e()Lokhttp3/Headers;

    move-result-object v7

    iget-object v8, v0, Lokhttp3/Response$a;->g:Lokhttp3/ResponseBody;

    iget-object v9, v0, Lokhttp3/Response$a;->h:Lokhttp3/Response;

    iget-object v10, v0, Lokhttp3/Response$a;->i:Lokhttp3/Response;

    iget-object v11, v0, Lokhttp3/Response$a;->j:Lokhttp3/Response;

    iget-wide v12, v0, Lokhttp3/Response$a;->k:J

    iget-wide v14, v0, Lokhttp3/Response$a;->l:J

    iget-object v1, v0, Lokhttp3/Response$a;->m:Lokhttp3/internal/connection/c;

    new-instance v17, Lokhttp3/Response;

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lokhttp3/Response;-><init>(Lokhttp3/Request;Lokhttp3/Protocol;Ljava/lang/String;ILokhttp3/Handshake;Lokhttp3/Headers;Lokhttp3/ResponseBody;Lokhttp3/Response;Lokhttp3/Response;Lokhttp3/Response;JJLokhttp3/internal/connection/c;)V

    return-object v17

    :cond_37
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "message == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_43
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "protocol == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "request == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5b
    invoke-virtual/range {p0 .. p0}, Lokhttp3/Response$a;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "code < 0: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public d(Lokhttp3/Response;)Lokhttp3/Response$a;
    .registers 3

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lokhttp3/Response$a;->f(Ljava/lang/String;Lokhttp3/Response;)V

    invoke-virtual {p0, p1}, Lokhttp3/Response$a;->v(Lokhttp3/Response;)V

    return-object p0
.end method

.method public g(I)Lokhttp3/Response$a;
    .registers 2

    invoke-virtual {p0, p1}, Lokhttp3/Response$a;->w(I)V

    return-object p0
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lokhttp3/Response$a;->c:I

    return v0
.end method

.method public final i()Lokhttp3/Headers$a;
    .registers 2

    iget-object v0, p0, Lokhttp3/Response$a;->f:Lokhttp3/Headers$a;

    return-object v0
.end method

.method public j(Lokhttp3/Handshake;)Lokhttp3/Response$a;
    .registers 2

    invoke-virtual {p0, p1}, Lokhttp3/Response$a;->x(Lokhttp3/Handshake;)V

    return-object p0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$a;
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/Response$a;->i()Lokhttp3/Headers$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$a;->i(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$a;

    return-object p0
.end method

.method public l(Lokhttp3/Headers;)Lokhttp3/Response$a;
    .registers 3

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/Headers;->e()Lokhttp3/Headers$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/Response$a;->y(Lokhttp3/Headers$a;)V

    return-object p0
.end method

.method public final m(Lokhttp3/internal/connection/c;)V
    .registers 3

    const-string v0, "deferredTrailers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/Response$a;->m:Lokhttp3/internal/connection/c;

    return-void
.end method

.method public n(Ljava/lang/String;)Lokhttp3/Response$a;
    .registers 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokhttp3/Response$a;->z(Ljava/lang/String;)V

    return-object p0
.end method

.method public o(Lokhttp3/Response;)Lokhttp3/Response$a;
    .registers 3

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lokhttp3/Response$a;->f(Ljava/lang/String;Lokhttp3/Response;)V

    invoke-virtual {p0, p1}, Lokhttp3/Response$a;->A(Lokhttp3/Response;)V

    return-object p0
.end method

.method public p(Lokhttp3/Response;)Lokhttp3/Response$a;
    .registers 2

    invoke-direct {p0, p1}, Lokhttp3/Response$a;->e(Lokhttp3/Response;)V

    invoke-virtual {p0, p1}, Lokhttp3/Response$a;->B(Lokhttp3/Response;)V

    return-object p0
.end method

.method public q(Lokhttp3/Protocol;)Lokhttp3/Response$a;
    .registers 3

    const-string v0, "protocol"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokhttp3/Response$a;->C(Lokhttp3/Protocol;)V

    return-object p0
.end method

.method public r(J)Lokhttp3/Response$a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lokhttp3/Response$a;->D(J)V

    return-object p0
.end method

.method public s(Lokhttp3/Request;)Lokhttp3/Response$a;
    .registers 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokhttp3/Response$a;->E(Lokhttp3/Request;)V

    return-object p0
.end method

.method public t(J)Lokhttp3/Response$a;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lokhttp3/Response$a;->F(J)V

    return-object p0
.end method

.method public final u(Lokhttp3/ResponseBody;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/Response$a;->g:Lokhttp3/ResponseBody;

    return-void
.end method

.method public final v(Lokhttp3/Response;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/Response$a;->i:Lokhttp3/Response;

    return-void
.end method

.method public final w(I)V
    .registers 2

    iput p1, p0, Lokhttp3/Response$a;->c:I

    return-void
.end method

.method public final x(Lokhttp3/Handshake;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/Response$a;->e:Lokhttp3/Handshake;

    return-void
.end method

.method public final y(Lokhttp3/Headers$a;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/Response$a;->f:Lokhttp3/Headers$a;

    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/Response$a;->d:Ljava/lang/String;

    return-void
.end method
