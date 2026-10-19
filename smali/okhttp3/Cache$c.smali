###### Class okhttp3.Cache.c (okhttp3.Cache$c)
.class final Lokhttp3/Cache$c;
.super Ljava/lang/Object;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cache$c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000 /2\u00020\u0001:\u0001/B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020!0 2\u0006\u0010\"\u001a\u00020#H\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\n\u0010$\u001a\u00060%R\u00020&J\u001e\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020!0 H\u0002J\u0012\u0010,\u001a\u00020(2\n\u0010-\u001a\u00060.R\u00020&R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lokhttp3/Cache$Entry;",
        "",
        "rawSource",
        "Lokio/Source;",
        "(Lokio/Source;)V",
        "response",
        "Lokhttp3/Response;",
        "(Lokhttp3/Response;)V",
        "code",
        "",
        "handshake",
        "Lokhttp3/Handshake;",
        "isHttps",
        "",
        "()Z",
        "message",
        "",
        "protocol",
        "Lokhttp3/Protocol;",
        "receivedResponseMillis",
        "",
        "requestMethod",
        "responseHeaders",
        "Lokhttp3/Headers;",
        "sentRequestMillis",
        "url",
        "Lokhttp3/HttpUrl;",
        "varyHeaders",
        "matches",
        "request",
        "Lokhttp3/Request;",
        "readCertificateList",
        "",
        "Ljava/security/cert/Certificate;",
        "source",
        "Lokio/BufferedSource;",
        "snapshot",
        "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
        "Lokhttp3/internal/cache/DiskLruCache;",
        "writeCertList",
        "",
        "sink",
        "Lokio/BufferedSink;",
        "certificates",
        "writeTo",
        "editor",
        "Lokhttp3/internal/cache/DiskLruCache$Editor;",
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
.field public static final a:Lokhttp3/Cache$c$a;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Lokhttp3/HttpUrl;

.field private final e:Lokhttp3/Headers;

.field private final f:Ljava/lang/String;

.field private final g:Lokhttp3/Protocol;

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:Lokhttp3/Headers;

.field private final k:Lokhttp3/Handshake;

.field private final l:J

.field private final m:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lokhttp3/Cache$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/Cache$c$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lokhttp3/Cache$c;->a:Lokhttp3/Cache$c$a;

    sget-object v0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->f()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-Sent-Millis"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lokhttp3/Cache$c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->f()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-Received-Millis"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/Cache$c;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Response;)V
    .registers 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->j()Lokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$c;->d:Lokhttp3/HttpUrl;

    sget-object v0, Lokhttp3/Cache;->a:Lokhttp3/Cache$b;

    invoke-virtual {v0, p1}, Lokhttp3/Cache$b;->f(Lokhttp3/Response;)Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$c;->e:Lokhttp3/Headers;

    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$c;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/Response;->s()Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$c;->g:Lokhttp3/Protocol;

    invoke-virtual {p1}, Lokhttp3/Response;->h()I

    move-result v0

    iput v0, p0, Lokhttp3/Cache$c;->h:I

    invoke-virtual {p1}, Lokhttp3/Response;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$c;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/Response;->l()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$c;->j:Lokhttp3/Headers;

    invoke-virtual {p1}, Lokhttp3/Response;->j()Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$c;->k:Lokhttp3/Handshake;

    invoke-virtual {p1}, Lokhttp3/Response;->v()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Cache$c;->l:J

    invoke-virtual {p1}, Lokhttp3/Response;->t()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Cache$c;->m:J

    return-void
.end method

.method public constructor <init>(Lokio/y;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "rawSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_8
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/y;)Lokio/e;

    move-result-object v0

    invoke-interface {v0}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lokhttp3/HttpUrl;->a:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v2, v1}, Lokhttp3/HttpUrl$Companion;->g(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v2

    if-eqz v2, :cond_100

    iput-object v2, p0, Lokhttp3/Cache$c;->d:Lokhttp3/HttpUrl;

    invoke-interface {v0}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$c;->f:Ljava/lang/String;

    new-instance v1, Lokhttp3/Headers$a;

    invoke-direct {v1}, Lokhttp3/Headers$a;-><init>()V

    sget-object v2, Lokhttp3/Cache;->a:Lokhttp3/Cache$b;

    invoke-virtual {v2, v0}, Lokhttp3/Cache$b;->c(Lokio/e;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v2, :cond_39

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lokhttp3/Headers$a;->b(Ljava/lang/String;)Lokhttp3/Headers$a;

    goto :goto_2d

    :cond_39
    invoke-virtual {v1}, Lokhttp3/Headers$a;->e()Lokhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$c;->e:Lokhttp3/Headers;

    sget-object v1, Lokhttp3/internal/http/g;->a:Lokhttp3/internal/http/g$a;

    invoke-interface {v0}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/internal/http/g$a;->a(Ljava/lang/String;)Lokhttp3/internal/http/g;

    move-result-object v1

    iget-object v2, v1, Lokhttp3/internal/http/g;->b:Lokhttp3/Protocol;

    iput-object v2, p0, Lokhttp3/Cache$c;->g:Lokhttp3/Protocol;

    iget v2, v1, Lokhttp3/internal/http/g;->c:I

    iput v2, p0, Lokhttp3/Cache$c;->h:I

    iget-object v1, v1, Lokhttp3/internal/http/g;->d:Ljava/lang/String;

    iput-object v1, p0, Lokhttp3/Cache$c;->i:Ljava/lang/String;

    new-instance v1, Lokhttp3/Headers$a;

    invoke-direct {v1}, Lokhttp3/Headers$a;-><init>()V

    sget-object v2, Lokhttp3/Cache;->a:Lokhttp3/Cache$b;

    invoke-virtual {v2, v0}, Lokhttp3/Cache$b;->c(Lokio/e;)I

    move-result v2

    const/4 v4, 0x0

    :goto_61
    if-ge v4, v2, :cond_6d

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lokhttp3/Headers$a;->b(Ljava/lang/String;)Lokhttp3/Headers$a;

    goto :goto_61

    :cond_6d
    sget-object v2, Lokhttp3/Cache$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Headers$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lokhttp3/Cache$c;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lokhttp3/Headers$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2}, Lokhttp3/Headers$a;->h(Ljava/lang/String;)Lokhttp3/Headers$a;

    invoke-virtual {v1, v5}, Lokhttp3/Headers$a;->h(Ljava/lang/String;)Lokhttp3/Headers$a;

    const-wide/16 v7, 0x0

    if-nez v4, :cond_85

    move-wide v4, v7

    goto :goto_89

    :cond_85
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :goto_89
    iput-wide v4, p0, Lokhttp3/Cache$c;->l:J

    if-nez v6, :cond_8e

    goto :goto_92

    :cond_8e
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    :goto_92
    iput-wide v7, p0, Lokhttp3/Cache$c;->m:J

    invoke-virtual {v1}, Lokhttp3/Headers$a;->e()Lokhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/Cache$c;->j:Lokhttp3/Headers;

    invoke-direct {p0}, Lokhttp3/Cache$c;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f8

    invoke-interface {v0}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_ac

    const/4 v3, 0x1

    :cond_ac
    if-nez v3, :cond_dc

    invoke-interface {v0}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lokhttp3/CipherSuite;->a:Lokhttp3/CipherSuite$Companion;

    invoke-virtual {v3, v1}, Lokhttp3/CipherSuite$Companion;->a(Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v1

    invoke-direct {p0, v0}, Lokhttp3/Cache$c;->c(Lokio/e;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v0}, Lokhttp3/Cache$c;->c(Lokio/e;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0}, Lokio/e;->exhausted()Z

    move-result v5

    if-nez v5, :cond_d1

    sget-object v5, Lokhttp3/TlsVersion;->a:Lokhttp3/TlsVersion$a;

    invoke-interface {v0}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lokhttp3/TlsVersion$a;->a(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v0

    goto :goto_d3

    :cond_d1
    sget-object v0, Lokhttp3/TlsVersion;->f:Lokhttp3/TlsVersion;

    :goto_d3
    sget-object v5, Lokhttp3/Handshake;->a:Lokhttp3/Handshake$a;

    invoke-virtual {v5, v0, v1, v3, v4}, Lokhttp3/Handshake$a;->b(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$c;->k:Lokhttp3/Handshake;

    goto :goto_fa

    :cond_dc
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f8
    iput-object v2, p0, Lokhttp3/Cache$c;->k:Lokhttp3/Handshake;

    :goto_fa
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_fc
    .catchall {:try_start_8 .. :try_end_fc} :catchall_118

    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :cond_100
    :try_start_100
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Cache corruption for "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    sget-object v1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform$Companion;->f()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    const-string v2, "cache corruption"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/internal/platform/Platform;->j(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0
    :try_end_118
    .catchall {:try_start_100 .. :try_end_118} :catchall_118

    :catchall_118
    move-exception v0

    :try_start_119
    throw v0
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_11a

    :catchall_11a
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final a()Z
    .registers 3

    iget-object v0, p0, Lokhttp3/Cache$c;->d:Lokhttp3/HttpUrl;

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final c(Lokio/e;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/e;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lokhttp3/Cache;->a:Lokhttp3/Cache$b;

    invoke-virtual {v0, p1}, Lokhttp3/Cache$b;->c(Lokio/e;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_e
    :try_start_e
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v0, :cond_3f

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p1}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    sget-object v6, Lokio/ByteString;->a:Lokio/ByteString$Companion;

    invoke-virtual {v6, v4}, Lokio/ByteString$Companion;->a(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v4}, Lokio/Buffer;->M(Lokio/ByteString;)Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_3e} :catch_40

    goto :goto_1a

    :cond_3f
    return-object v2

    :catch_40
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final e(Lokio/d;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/d;",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lokio/d;->writeDecimalLong(J)Lokio/d;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lokio/d;->writeByte(I)Lokio/d;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    sget-object v2, Lokio/ByteString;->a:Lokio/ByteString$Companion;

    const-string v0, "bytes"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lokio/ByteString$Companion;->of$default(Lokio/ByteString$Companion;[BIIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v0

    invoke-interface {v0, v1}, Lokio/d;->writeByte(I)Lokio/d;
    :try_end_3c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_3c} :catch_3e

    goto :goto_12

    :cond_3d
    return-void

    :catch_3e
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final b(Lokhttp3/Request;Lokhttp3/Response;)Z
    .registers 5

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/Cache$c;->d:Lokhttp3/HttpUrl;

    invoke-virtual {p1}, Lokhttp3/Request;->j()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lokhttp3/Cache$c;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/Request;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lokhttp3/Cache;->a:Lokhttp3/Cache$b;

    iget-object v1, p0, Lokhttp3/Cache$c;->e:Lokhttp3/Headers;

    invoke-virtual {v0, p2, v1, p1}, Lokhttp3/Cache$b;->g(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    return p1
.end method

.method public final d(Lokhttp3/internal/cache/DiskLruCache$d;)Lokhttp3/Response;
    .registers 7

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/Cache$c;->j:Lokhttp3/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Cache$c;->j:Lokhttp3/Headers;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v3, p0, Lokhttp3/Cache$c;->d:Lokhttp3/HttpUrl;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->p(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$c;->f:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->h(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$c;->e:Lokhttp3/Headers;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->g(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->b()Lokhttp3/Request;

    move-result-object v2

    new-instance v3, Lokhttp3/Response$a;

    invoke-direct {v3}, Lokhttp3/Response$a;-><init>()V

    invoke-virtual {v3, v2}, Lokhttp3/Response$a;->s(Lokhttp3/Request;)Lokhttp3/Response$a;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$c;->g:Lokhttp3/Protocol;

    invoke-virtual {v2, v3}, Lokhttp3/Response$a;->q(Lokhttp3/Protocol;)Lokhttp3/Response$a;

    move-result-object v2

    iget v3, p0, Lokhttp3/Cache$c;->h:I

    invoke-virtual {v2, v3}, Lokhttp3/Response$a;->g(I)Lokhttp3/Response$a;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$c;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/Response$a;->n(Ljava/lang/String;)Lokhttp3/Response$a;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/Cache$c;->j:Lokhttp3/Headers;

    invoke-virtual {v2, v3}, Lokhttp3/Response$a;->l(Lokhttp3/Headers;)Lokhttp3/Response$a;

    move-result-object v2

    new-instance v3, Lokhttp3/Cache$a;

    invoke-direct {v3, p1, v0, v1}, Lokhttp3/Cache$a;-><init>(Lokhttp3/internal/cache/DiskLruCache$d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lokhttp3/Response$a;->b(Lokhttp3/ResponseBody;)Lokhttp3/Response$a;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/Cache$c;->k:Lokhttp3/Handshake;

    invoke-virtual {p1, v0}, Lokhttp3/Response$a;->j(Lokhttp3/Handshake;)Lokhttp3/Response$a;

    move-result-object p1

    iget-wide v0, p0, Lokhttp3/Cache$c;->l:J

    invoke-virtual {p1, v0, v1}, Lokhttp3/Response$a;->t(J)Lokhttp3/Response$a;

    move-result-object p1

    iget-wide v0, p0, Lokhttp3/Cache$c;->m:J

    invoke-virtual {p1, v0, v1}, Lokhttp3/Response$a;->r(J)Lokhttp3/Response$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$a;->c()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lokhttp3/internal/cache/DiskLruCache$b;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "editor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lokhttp3/internal/cache/DiskLruCache$b;->f(I)Lokio/w;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/w;)Lokio/d;

    move-result-object p1

    :try_start_e
    iget-object v1, p0, Lokhttp3/Cache$c;->d:Lokhttp3/HttpUrl;

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lokio/d;->writeByte(I)Lokio/d;

    iget-object v1, p0, Lokhttp3/Cache$c;->f:Ljava/lang/String;

    invoke-interface {p1, v1}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v1

    invoke-interface {v1, v2}, Lokio/d;->writeByte(I)Lokio/d;

    iget-object v1, p0, Lokhttp3/Cache$c;->e:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {p1, v3, v4}, Lokio/d;->writeDecimalLong(J)Lokio/d;

    move-result-object v1

    invoke-interface {v1, v2}, Lokio/d;->writeByte(I)Lokio/d;

    iget-object v1, p0, Lokhttp3/Cache$c;->e:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v1
    :try_end_3a
    .catchall {:try_start_e .. :try_end_3a} :catchall_118

    const/4 v3, 0x0

    :goto_3b
    const-string v4, ": "

    if-ge v3, v1, :cond_5e

    add-int/lit8 v5, v3, 0x1

    :try_start_41
    iget-object v6, p0, Lokhttp3/Cache$c;->e:Lokhttp3/Headers;

    invoke-virtual {v6, v3}, Lokhttp3/Headers;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v6

    invoke-interface {v6, v4}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v4

    iget-object v6, p0, Lokhttp3/Cache$c;->e:Lokhttp3/Headers;

    invoke-virtual {v6, v3}, Lokhttp3/Headers;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v3

    invoke-interface {v3, v2}, Lokio/d;->writeByte(I)Lokio/d;

    move v3, v5

    goto :goto_3b

    :cond_5e
    new-instance v1, Lokhttp3/internal/http/g;

    iget-object v3, p0, Lokhttp3/Cache$c;->g:Lokhttp3/Protocol;

    iget v5, p0, Lokhttp3/Cache$c;->h:I

    iget-object v6, p0, Lokhttp3/Cache$c;->i:Ljava/lang/String;

    invoke-direct {v1, v3, v5, v6}, Lokhttp3/internal/http/g;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    invoke-virtual {v1}, Lokhttp3/internal/http/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v1

    invoke-interface {v1, v2}, Lokio/d;->writeByte(I)Lokio/d;

    iget-object v1, p0, Lokhttp3/Cache$c;->j:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-long v5, v1

    invoke-interface {p1, v5, v6}, Lokio/d;->writeDecimalLong(J)Lokio/d;

    move-result-object v1

    invoke-interface {v1, v2}, Lokio/d;->writeByte(I)Lokio/d;

    iget-object v1, p0, Lokhttp3/Cache$c;->j:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v1

    :goto_8a
    if-ge v0, v1, :cond_ab

    add-int/lit8 v3, v0, 0x1

    iget-object v5, p0, Lokhttp3/Cache$c;->j:Lokhttp3/Headers;

    invoke-virtual {v5, v0}, Lokhttp3/Headers;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v5

    invoke-interface {v5, v4}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v5

    iget-object v6, p0, Lokhttp3/Cache$c;->j:Lokhttp3/Headers;

    invoke-virtual {v6, v0}, Lokhttp3/Headers;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v0

    invoke-interface {v0, v2}, Lokio/d;->writeByte(I)Lokio/d;

    move v0, v3

    goto :goto_8a

    :cond_ab
    sget-object v0, Lokhttp3/Cache$c;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v0

    invoke-interface {v0, v4}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v0

    iget-wide v5, p0, Lokhttp3/Cache$c;->l:J

    invoke-interface {v0, v5, v6}, Lokio/d;->writeDecimalLong(J)Lokio/d;

    move-result-object v0

    invoke-interface {v0, v2}, Lokio/d;->writeByte(I)Lokio/d;

    sget-object v0, Lokhttp3/Cache$c;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v0

    invoke-interface {v0, v4}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v0

    iget-wide v3, p0, Lokhttp3/Cache$c;->m:J

    invoke-interface {v0, v3, v4}, Lokio/d;->writeDecimalLong(J)Lokio/d;

    move-result-object v0

    invoke-interface {v0, v2}, Lokio/d;->writeByte(I)Lokio/d;

    invoke-direct {p0}, Lokhttp3/Cache$c;->a()Z

    move-result v0

    if-eqz v0, :cond_111

    invoke-interface {p1, v2}, Lokio/d;->writeByte(I)Lokio/d;

    iget-object v0, p0, Lokhttp3/Cache$c;->k:Lokhttp3/Handshake;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/Handshake;->a()Lokhttp3/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CipherSuite;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v0

    invoke-interface {v0, v2}, Lokio/d;->writeByte(I)Lokio/d;

    iget-object v0, p0, Lokhttp3/Cache$c;->k:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->d()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lokhttp3/Cache$c;->e(Lokio/d;Ljava/util/List;)V

    iget-object v0, p0, Lokhttp3/Cache$c;->k:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lokhttp3/Cache$c;->e(Lokio/d;Ljava/util/List;)V

    iget-object v0, p0, Lokhttp3/Cache$c;->k:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->e()Lokhttp3/TlsVersion;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/TlsVersion;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v0

    invoke-interface {v0, v2}, Lokio/d;->writeByte(I)Lokio/d;

    :cond_111
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_113
    .catchall {:try_start_41 .. :try_end_113} :catchall_118

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_118
    move-exception v0

    :try_start_119
    throw v0
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_11a

    :catchall_11a
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
