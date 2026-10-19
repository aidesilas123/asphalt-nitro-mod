###### Class okhttp3.internal.http2.Http2Reader (okhttp3.internal.http2.Http2Reader)
.class public final Lokhttp3/internal/http2/Http2Reader;
.super Ljava/lang/Object;
.source "Http2Reader.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Reader$b;,
        Lokhttp3/internal/http2/Http2Reader$c;,
        Lokhttp3/internal/http2/Http2Reader$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 #2\u00020\u0001:\u0003#$%B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0016\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010J(\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J.\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J\u0018\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010\u001f\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010 \u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010!\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010\"\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Reader;",
        "Ljava/io/Closeable;",
        "source",
        "Lokio/BufferedSource;",
        "client",
        "",
        "(Lokio/BufferedSource;Z)V",
        "continuation",
        "Lokhttp3/internal/http2/Http2Reader$ContinuationSource;",
        "hpackReader",
        "Lokhttp3/internal/http2/Hpack$Reader;",
        "close",
        "",
        "nextFrame",
        "requireSettings",
        "handler",
        "Lokhttp3/internal/http2/Http2Reader$Handler;",
        "readConnectionPreface",
        "readData",
        "length",
        "",
        "flags",
        "streamId",
        "readGoAway",
        "readHeaderBlock",
        "",
        "Lokhttp3/internal/http2/Header;",
        "padding",
        "readHeaders",
        "readPing",
        "readPriority",
        "readPushPromise",
        "readRstStream",
        "readSettings",
        "readWindowUpdate",
        "Companion",
        "ContinuationSource",
        "Handler",
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
.field public static final a:Lokhttp3/internal/http2/Http2Reader$a;

.field private static final b:Ljava/util/logging/Logger;


# instance fields
.field private final c:Lokio/e;

.field private final d:Z

.field private final e:Lokhttp3/internal/http2/Http2Reader$b;

.field private final f:Lokhttp3/internal/http2/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokhttp3/internal/http2/Http2Reader$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/Http2Reader$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lokhttp3/internal/http2/Http2Reader;->a:Lokhttp3/internal/http2/Http2Reader$a;

    const-class v0, Lokhttp3/internal/http2/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "getLogger(Http2::class.java.name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lokhttp3/internal/http2/Http2Reader;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lokio/e;Z)V
    .registers 10

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    iput-boolean p2, p0, Lokhttp3/internal/http2/Http2Reader;->d:Z

    new-instance v2, Lokhttp3/internal/http2/Http2Reader$b;

    invoke-direct {v2, p1}, Lokhttp3/internal/http2/Http2Reader$b;-><init>(Lokio/e;)V

    iput-object v2, p0, Lokhttp3/internal/http2/Http2Reader;->e:Lokhttp3/internal/http2/Http2Reader$b;

    new-instance p1, Lokhttp3/internal/http2/b$a;

    const/16 v3, 0x1000

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/http2/b$a;-><init>(Lokio/y;IIILkotlin/jvm/internal/n;)V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->f:Lokhttp3/internal/http2/b$a;

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Ljava/util/logging/Logger;
    .registers 1

    sget-object v0, Lokhttp3/internal/http2/Http2Reader;->b:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private final c(Lokhttp3/internal/http2/Http2Reader$c;III)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_3d

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    if-nez v2, :cond_35

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_23

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    invoke-interface {v1}, Lokio/e;->readByte()B

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->and(BI)I

    move-result v1

    :cond_23
    sget-object v2, Lokhttp3/internal/http2/Http2Reader;->a:Lokhttp3/internal/http2/Http2Reader$a;

    invoke-virtual {v2, p2, p3, v1}, Lokhttp3/internal/http2/Http2Reader$a;->b(III)I

    move-result p2

    iget-object p3, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    invoke-interface {p1, v0, p4, p3, p2}, Lokhttp3/internal/http2/Http2Reader$c;->c(ZILokio/e;I)V

    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    int-to-long p2, v1

    invoke-interface {p1, p2, p3}, Lokio/e;->skip(J)V

    return-void

    :cond_35
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final d(Lokhttp3/internal/http2/Http2Reader$c;III)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p3, 0x8

    if-lt p2, p3, :cond_42

    if-nez p4, :cond_3a

    iget-object p4, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    invoke-interface {p4}, Lokio/e;->readInt()I

    move-result p4

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    invoke-interface {v0}, Lokio/e;->readInt()I

    move-result v0

    sub-int/2addr p2, p3

    sget-object p3, Lokhttp3/internal/http2/ErrorCode;->a:Lokhttp3/internal/http2/ErrorCode$a;

    invoke-virtual {p3, v0}, Lokhttp3/internal/http2/ErrorCode$a;->a(I)Lokhttp3/internal/http2/ErrorCode;

    move-result-object p3

    if-eqz p3, :cond_2a

    sget-object v0, Lokio/ByteString;->b:Lokio/ByteString;

    if-lez p2, :cond_26

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lokio/e;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    :cond_26
    invoke-interface {p1, p4, p3, v0}, Lokhttp3/internal/http2/Http2Reader$c;->e(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V

    return-void

    :cond_2a
    new-instance p1, Ljava/io/IOException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "TYPE_GOAWAY unexpected error code: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_GOAWAY streamId != 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_42
    new-instance p1, Ljava/io/IOException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "TYPE_GOAWAY length < 8: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final e(IIII)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->e:Lokhttp3/internal/http2/Http2Reader$b;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Reader$b;->g(I)V

    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->e:Lokhttp3/internal/http2/Http2Reader$b;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Reader$b;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Http2Reader$b;->h(I)V

    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->e:Lokhttp3/internal/http2/Http2Reader$b;

    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Http2Reader$b;->i(I)V

    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->e:Lokhttp3/internal/http2/Http2Reader$b;

    invoke-virtual {p1, p3}, Lokhttp3/internal/http2/Http2Reader$b;->f(I)V

    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->e:Lokhttp3/internal/http2/Http2Reader$b;

    invoke-virtual {p1, p4}, Lokhttp3/internal/http2/Http2Reader$b;->j(I)V

    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->f:Lokhttp3/internal/http2/b$a;

    invoke-virtual {p1}, Lokhttp3/internal/http2/b$a;->k()V

    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->f:Lokhttp3/internal/http2/b$a;

    invoke-virtual {p1}, Lokhttp3/internal/http2/b$a;->e()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final f(Lokhttp3/internal/http2/Http2Reader$c;III)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_32

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1a

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    invoke-interface {v1}, Lokio/e;->readByte()B

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->and(BI)I

    move-result v1

    :cond_1a
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_23

    invoke-direct {p0, p1, p4}, Lokhttp3/internal/http2/Http2Reader;->h(Lokhttp3/internal/http2/Http2Reader$c;I)V

    add-int/lit8 p2, p2, -0x5

    :cond_23
    sget-object v2, Lokhttp3/internal/http2/Http2Reader;->a:Lokhttp3/internal/http2/Http2Reader$a;

    invoke-virtual {v2, p2, p3, v1}, Lokhttp3/internal/http2/Http2Reader$a;->b(III)I

    move-result p2

    invoke-direct {p0, p2, v1, p3, p4}, Lokhttp3/internal/http2/Http2Reader;->e(IIII)Ljava/util/List;

    move-result-object p2

    const/4 p3, -0x1

    invoke-interface {p1, v0, p4, p3, p2}, Lokhttp3/internal/http2/Http2Reader$c;->headers(ZIILjava/util/List;)V

    return-void

    :cond_32
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final g(Lokhttp3/internal/http2/Http2Reader$c;III)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    if-ne p2, v0, :cond_24

    if-nez p4, :cond_1c

    iget-object p2, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    invoke-interface {p2}, Lokio/e;->readInt()I

    move-result p2

    iget-object p4, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    invoke-interface {p4}, Lokio/e;->readInt()I

    move-result p4

    const/4 v0, 0x1

    and-int/2addr p3, v0

    if-eqz p3, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-interface {p1, v0, p2, p4}, Lokhttp3/internal/http2/Http2Reader$c;->ping(ZII)V

    return-void

    :cond_1c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_PING streamId != 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    new-instance p1, Ljava/io/IOException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "TYPE_PING length != 8: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final h(Lokhttp3/internal/http2/Http2Reader$c;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    invoke-interface {v0}, Lokio/e;->readInt()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    invoke-interface {v3}, Lokio/e;->readByte()B

    move-result v3

    const/16 v4, 0xff

    invoke-static {v3, v4}, Lokhttp3/internal/Util;->and(BI)I

    move-result v3

    add-int/2addr v3, v2

    invoke-interface {p1, p2, v0, v3, v1}, Lokhttp3/internal/http2/Http2Reader$c;->priority(IIIZ)V

    return-void
.end method

.method private final i(Lokhttp3/internal/http2/Http2Reader$c;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x5

    if-ne p2, p3, :cond_11

    if-eqz p4, :cond_9

    invoke-direct {p0, p1, p4}, Lokhttp3/internal/http2/Http2Reader;->h(Lokhttp3/internal/http2/Http2Reader$c;I)V

    return-void

    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_PRIORITY streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TYPE_PRIORITY length: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != 5"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final j(Lokhttp3/internal/http2/Http2Reader$c;III)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_2e

    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_13

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    invoke-interface {v0}, Lokio/e;->readByte()B

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->and(BI)I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    invoke-interface {v1}, Lokio/e;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    sget-object v2, Lokhttp3/internal/http2/Http2Reader;->a:Lokhttp3/internal/http2/Http2Reader$a;

    add-int/lit8 p2, p2, -0x4

    invoke-virtual {v2, p2, p3, v0}, Lokhttp3/internal/http2/Http2Reader$a;->b(III)I

    move-result p2

    invoke-direct {p0, p2, v0, p3, p4}, Lokhttp3/internal/http2/Http2Reader;->e(IIII)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p4, v1, p2}, Lokhttp3/internal/http2/Http2Reader$c;->pushPromise(IILjava/util/List;)V

    return-void

    :cond_2e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final k(Lokhttp3/internal/http2/Http2Reader$c;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x4

    if-ne p2, p3, :cond_2f

    if-eqz p4, :cond_27

    iget-object p2, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    invoke-interface {p2}, Lokio/e;->readInt()I

    move-result p2

    sget-object p3, Lokhttp3/internal/http2/ErrorCode;->a:Lokhttp3/internal/http2/ErrorCode$a;

    invoke-virtual {p3, p2}, Lokhttp3/internal/http2/ErrorCode$a;->a(I)Lokhttp3/internal/http2/ErrorCode;

    move-result-object p3

    if-eqz p3, :cond_17

    invoke-interface {p1, p4, p3}, Lokhttp3/internal/http2/Http2Reader$c;->d(ILokhttp3/internal/http2/ErrorCode;)V

    return-void

    :cond_17
    new-instance p1, Ljava/io/IOException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "TYPE_RST_STREAM unexpected error code: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_RST_STREAM streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TYPE_RST_STREAM length: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != 4"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final l(Lokhttp3/internal/http2/Http2Reader$c;III)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_ae

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_14

    if-nez p2, :cond_c

    invoke-interface {p1}, Lokhttp3/internal/http2/Http2Reader$c;->ackSettings()V

    return-void

    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_9e

    new-instance p3, Lokhttp3/internal/http2/h;

    invoke-direct {p3}, Lokhttp3/internal/http2/h;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lkotlin/ranges/m;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p2

    const/4 v1, 0x6

    invoke-static {p2, v1}, Lkotlin/ranges/m;->step(Lkotlin/ranges/g;I)Lkotlin/ranges/g;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/ranges/g;->f()I

    move-result v1

    invoke-virtual {p2}, Lkotlin/ranges/g;->h()I

    move-result v2

    invoke-virtual {p2}, Lkotlin/ranges/g;->i()I

    move-result p2

    if-lez p2, :cond_37

    if-le v1, v2, :cond_3b

    :cond_37
    if-gez p2, :cond_9a

    if-gt v2, v1, :cond_9a

    :cond_3b
    :goto_3b
    add-int v3, v1, p2

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    invoke-interface {v4}, Lokio/e;->readShort()S

    move-result v4

    const v5, 0xffff

    invoke-static {v4, v5}, Lokhttp3/internal/Util;->and(SI)I

    move-result v4

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    invoke-interface {v5}, Lokio/e;->readInt()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-eq v4, v6, :cond_85

    const/4 v6, 0x3

    if-eq v4, v6, :cond_83

    if-eq v4, v7, :cond_77

    const/4 v6, 0x5

    if-eq v4, v6, :cond_5d

    goto :goto_92

    :cond_5d
    const/16 v6, 0x4000

    if-lt v5, v6, :cond_67

    const v6, 0xffffff

    if-gt v5, v6, :cond_67

    goto :goto_92

    :cond_67
    new-instance p1, Ljava/io/IOException;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_77
    const/4 v4, 0x7

    if-ltz v5, :cond_7b

    goto :goto_92

    :cond_7b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_83
    const/4 v4, 0x4

    goto :goto_92

    :cond_85
    if-eqz v5, :cond_92

    if-ne v5, p4, :cond_8a

    goto :goto_92

    :cond_8a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_92
    :goto_92
    invoke-virtual {p3, v4, v5}, Lokhttp3/internal/http2/h;->h(II)Lokhttp3/internal/http2/h;

    if-ne v1, v2, :cond_98

    goto :goto_9a

    :cond_98
    move v1, v3

    goto :goto_3b

    :cond_9a
    :goto_9a
    invoke-interface {p1, v0, p3}, Lokhttp3/internal/http2/Http2Reader$c;->a(ZLokhttp3/internal/http2/h;)V

    return-void

    :cond_9e
    new-instance p1, Ljava/io/IOException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "TYPE_SETTINGS length % 6 != 0: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ae
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_SETTINGS streamId != 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final m(Lokhttp3/internal/http2/Http2Reader$c;III)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x4

    if-ne p2, p3, :cond_22

    iget-object p2, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    invoke-interface {p2}, Lokio/e;->readInt()I

    move-result p2

    const-wide/32 v0, 0x7fffffff

    invoke-static {p2, v0, v1}, Lokhttp3/internal/Util;->and(IJ)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_1a

    invoke-interface {p1, p4, p2, p3}, Lokhttp3/internal/http2/Http2Reader$c;->windowUpdate(IJ)V

    return-void

    :cond_1a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "windowSizeIncrement was 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    new-instance p1, Ljava/io/IOException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "TYPE_WINDOW_UPDATE length !=4: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(ZLokhttp3/internal/http2/Http2Reader$c;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    const-wide/16 v1, 0x9

    invoke-interface {v0, v1, v2}, Lokio/e;->require(J)V
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_c} :catch_a6

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    invoke-static {v0}, Lokhttp3/internal/Util;->readMedium(Lokio/e;)I

    move-result v0

    const/16 v1, 0x4000

    if-gt v0, v1, :cond_96

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    invoke-interface {v1}, Lokio/e;->readByte()B

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->and(BI)I

    move-result v7

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    invoke-interface {v1}, Lokio/e;->readByte()B

    move-result v1

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->and(BI)I

    move-result v8

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    invoke-interface {v1}, Lokio/e;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int v9, v1, v2

    sget-object v10, Lokhttp3/internal/http2/Http2Reader;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v10, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_4f

    sget-object v1, Lokhttp3/internal/http2/c;->a:Lokhttp3/internal/http2/c;

    const/4 v2, 0x1

    move v3, v9

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/http2/c;->c(ZIIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_4f
    if-eqz p1, :cond_67

    const/4 p1, 0x4

    if-ne v7, p1, :cond_55

    goto :goto_67

    :cond_55
    new-instance p1, Ljava/io/IOException;

    sget-object p2, Lokhttp3/internal/http2/c;->a:Lokhttp3/internal/http2/c;

    invoke-virtual {p2, v7}, Lokhttp3/internal/http2/c;->b(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Expected a SETTINGS frame but was "

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_67
    :goto_67
    packed-switch v7, :pswitch_data_a8

    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lokio/e;->skip(J)V

    goto :goto_94

    :pswitch_71
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/Http2Reader;->m(Lokhttp3/internal/http2/Http2Reader$c;III)V

    goto :goto_94

    :pswitch_75
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/Http2Reader;->d(Lokhttp3/internal/http2/Http2Reader$c;III)V

    goto :goto_94

    :pswitch_79
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/Http2Reader;->g(Lokhttp3/internal/http2/Http2Reader$c;III)V

    goto :goto_94

    :pswitch_7d
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/Http2Reader;->j(Lokhttp3/internal/http2/Http2Reader$c;III)V

    goto :goto_94

    :pswitch_81
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/Http2Reader;->l(Lokhttp3/internal/http2/Http2Reader$c;III)V

    goto :goto_94

    :pswitch_85
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/Http2Reader;->k(Lokhttp3/internal/http2/Http2Reader$c;III)V

    goto :goto_94

    :pswitch_89
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/Http2Reader;->i(Lokhttp3/internal/http2/Http2Reader$c;III)V

    goto :goto_94

    :pswitch_8d
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/Http2Reader;->f(Lokhttp3/internal/http2/Http2Reader$c;III)V

    goto :goto_94

    :pswitch_91
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/Http2Reader;->c(Lokhttp3/internal/http2/Http2Reader$c;III)V

    :goto_94
    const/4 p1, 0x1

    return p1

    :cond_96
    new-instance p1, Ljava/io/IOException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "FRAME_SIZE_ERROR: "

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_a6
    const/4 p1, 0x0

    return p1

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_91
        :pswitch_8d
        :pswitch_89
        :pswitch_85
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_71
    .end packed-switch
.end method

.method public final b(Lokhttp3/internal/http2/Http2Reader$c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Reader;->d:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lokhttp3/internal/http2/Http2Reader;->a(ZLokhttp3/internal/http2/Http2Reader$c;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_4a

    :cond_11
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Required SETTINGS preface not received"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    sget-object v0, Lokhttp3/internal/http2/c;->b:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->F()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2}, Lokio/e;->readByteString(J)Lokio/ByteString;

    move-result-object p1

    sget-object v1, Lokhttp3/internal/http2/Http2Reader;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {p1}, Lokio/ByteString;->q()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<< CONNECTION "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_44
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    :goto_4a
    return-void

    :cond_4b
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lokio/ByteString;->K()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Expected a connection header but was "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/e;

    invoke-interface {v0}, Lokio/y;->close()V

    return-void
.end method

###### Class okhttp3.internal.http2.Http2Reader.a (okhttp3.internal.http2.Http2Reader$a)
.class public final Lokhttp3/internal/http2/Http2Reader$a;
.super Ljava/lang/Object;
.source "Http2Reader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0008R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Reader$Companion;",
        "",
        "()V",
        "logger",
        "Ljava/util/logging/Logger;",
        "getLogger",
        "()Ljava/util/logging/Logger;",
        "lengthWithoutPadding",
        "",
        "length",
        "flags",
        "padding",
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

    invoke-direct {p0}, Lokhttp3/internal/http2/Http2Reader$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/logging/Logger;
    .registers 2

    invoke-static {}, Lokhttp3/internal/http2/Http2Reader;->access$getLogger$cp()Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public final b(III)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_6

    add-int/lit8 p1, p1, -0x1

    :cond_6
    if-gt p3, p1, :cond_a

    sub-int/2addr p1, p3

    return p1

    :cond_a
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PROTOCOL_ERROR padding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > remaining length "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

###### Class okhttp3.internal.http2.Http2Reader.b (okhttp3.internal.http2.Http2Reader$b)
.class public final Lokhttp3/internal/http2/Http2Reader$b;
.super Ljava/lang/Object;
.source "Http2Reader.kt"

# interfaces
.implements Lokio/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001aH\u0016J\u0008\u0010\u001e\u001a\u00020\u0018H\u0002J\u0008\u0010\u001f\u001a\u00020 H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\u001a\u0010\u000e\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0008\"\u0004\u0008\u0010\u0010\nR\u001a\u0010\u0011\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008\"\u0004\u0008\u0013\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0008\"\u0004\u0008\u0016\u0010\n\u00a8\u0006!"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Reader$ContinuationSource;",
        "Lokio/Source;",
        "source",
        "Lokio/BufferedSource;",
        "(Lokio/BufferedSource;)V",
        "flags",
        "",
        "getFlags",
        "()I",
        "setFlags",
        "(I)V",
        "left",
        "getLeft",
        "setLeft",
        "length",
        "getLength",
        "setLength",
        "padding",
        "getPadding",
        "setPadding",
        "streamId",
        "getStreamId",
        "setStreamId",
        "close",
        "",
        "read",
        "",
        "sink",
        "Lokio/Buffer;",
        "byteCount",
        "readContinuationHeader",
        "timeout",
        "Lokio/Timeout;",
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
.field private final a:Lokio/e;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lokio/e;)V
    .registers 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Reader$b;->a:Lokio/e;

    return-void
.end method

.method private final e()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lokhttp3/internal/http2/Http2Reader$b;->d:I

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader$b;->a:Lokio/e;

    invoke-static {v1}, Lokhttp3/internal/Util;->readMedium(Lokio/e;)I

    move-result v1

    iput v1, p0, Lokhttp3/internal/http2/Http2Reader$b;->e:I

    iput v1, p0, Lokhttp3/internal/http2/Http2Reader$b;->b:I

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader$b;->a:Lokio/e;

    invoke-interface {v1}, Lokio/e;->readByte()B

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->and(BI)I

    move-result v1

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Reader$b;->a:Lokio/e;

    invoke-interface {v3}, Lokio/e;->readByte()B

    move-result v3

    invoke-static {v3, v2}, Lokhttp3/internal/Util;->and(BI)I

    move-result v2

    iput v2, p0, Lokhttp3/internal/http2/Http2Reader$b;->c:I

    sget-object v2, Lokhttp3/internal/http2/Http2Reader;->a:Lokhttp3/internal/http2/Http2Reader$a;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Reader$a;->a()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Reader$a;->a()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Lokhttp3/internal/http2/c;->a:Lokhttp3/internal/http2/c;

    const/4 v4, 0x1

    iget v5, p0, Lokhttp3/internal/http2/Http2Reader$b;->d:I

    iget v6, p0, Lokhttp3/internal/http2/Http2Reader$b;->b:I

    iget v8, p0, Lokhttp3/internal/http2/Http2Reader$b;->c:I

    move v7, v1

    invoke-virtual/range {v3 .. v8}, Lokhttp3/internal/http2/c;->c(ZIIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_47
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Reader$b;->a:Lokio/e;

    invoke-interface {v2}, Lokio/e;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lokhttp3/internal/http2/Http2Reader$b;->d:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_62

    if-ne v2, v0, :cond_5a

    return-void

    :cond_5a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_CONTINUATION streamId changed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_62
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " != TYPE_CONTINUATION"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lokhttp3/internal/http2/Http2Reader$b;->e:I

    return v0
.end method

.method public final f(I)V
    .registers 2

    iput p1, p0, Lokhttp3/internal/http2/Http2Reader$b;->c:I

    return-void
.end method

.method public final g(I)V
    .registers 2

    iput p1, p0, Lokhttp3/internal/http2/Http2Reader$b;->e:I

    return-void
.end method

.method public final h(I)V
    .registers 2

    iput p1, p0, Lokhttp3/internal/http2/Http2Reader$b;->b:I

    return-void
.end method

.method public final i(I)V
    .registers 2

    iput p1, p0, Lokhttp3/internal/http2/Http2Reader$b;->f:I

    return-void
.end method

.method public final j(I)V
    .registers 2

    iput p1, p0, Lokhttp3/internal/http2/Http2Reader$b;->d:I

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    iget v0, p0, Lokhttp3/internal/http2/Http2Reader$b;->e:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_21

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader$b;->a:Lokio/e;

    iget v3, p0, Lokhttp3/internal/http2/Http2Reader$b;->f:I

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lokio/e;->skip(J)V

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/http2/Http2Reader$b;->f:I

    iget v0, p0, Lokhttp3/internal/http2/Http2Reader$b;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1d

    return-wide v1

    :cond_1d
    invoke-direct {p0}, Lokhttp3/internal/http2/Http2Reader$b;->e()V

    goto :goto_5

    :cond_21
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Reader$b;->a:Lokio/e;

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v3, p1, p2, p3}, Lokio/y;->read(Lokio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_31

    return-wide v1

    :cond_31
    iget p3, p0, Lokhttp3/internal/http2/Http2Reader$b;->e:I

    long-to-int v0, p1

    sub-int/2addr p3, v0

    iput p3, p0, Lokhttp3/internal/http2/Http2Reader$b;->e:I

    return-wide p1
.end method

.method public timeout()Lokio/z;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader$b;->a:Lokio/e;

    invoke-interface {v0}, Lokio/y;->timeout()Lokio/z;

    move-result-object v0

    return-object v0
.end method

###### Class okhttp3.internal.http2.Http2Reader.c (okhttp3.internal.http2.Http2Reader$c)
.class public interface abstract Lokhttp3/internal/http2/Http2Reader$c;
.super Ljava/lang/Object;
.source "Http2Reader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J8\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000eH&J(\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0006H&J \u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\nH&J.\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dH&J \u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0006H&J(\u0010#\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u0011H&J&\u0010\'\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dH&J\u0018\u0010*\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0018H&J\u0018\u0010+\u001a\u00020\u00032\u0006\u0010,\u001a\u00020\u00112\u0006\u0010+\u001a\u00020-H&J\u0018\u0010.\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u000eH&\u00a8\u00060"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Reader$Handler;",
        "",
        "ackSettings",
        "",
        "alternateService",
        "streamId",
        "",
        "origin",
        "",
        "protocol",
        "Lokio/ByteString;",
        "host",
        "port",
        "maxAge",
        "",
        "data",
        "inFinished",
        "",
        "source",
        "Lokio/BufferedSource;",
        "length",
        "goAway",
        "lastGoodStreamId",
        "errorCode",
        "Lokhttp3/internal/http2/ErrorCode;",
        "debugData",
        "headers",
        "associatedStreamId",
        "headerBlock",
        "",
        "Lokhttp3/internal/http2/Header;",
        "ping",
        "ack",
        "payload1",
        "payload2",
        "priority",
        "streamDependency",
        "weight",
        "exclusive",
        "pushPromise",
        "promisedStreamId",
        "requestHeaders",
        "rstStream",
        "settings",
        "clearPrevious",
        "Lokhttp3/internal/http2/Settings;",
        "windowUpdate",
        "windowSizeIncrement",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract a(ZLokhttp3/internal/http2/h;)V
.end method

.method public abstract ackSettings()V
.end method

.method public abstract c(ZILokio/e;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d(ILokhttp3/internal/http2/ErrorCode;)V
.end method

.method public abstract e(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V
.end method

.method public abstract headers(ZIILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract ping(ZII)V
.end method

.method public abstract priority(IIIZ)V
.end method

.method public abstract pushPromise(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract windowUpdate(IJ)V
.end method
