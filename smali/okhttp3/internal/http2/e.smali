###### Class okhttp3.internal.http2.Http2Writer (okhttp3.internal.http2.e)
.class public final Lokhttp3/internal/http2/e;
.super Ljava/lang/Object;
.source "Http2Writer.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/e$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\u0003\u0018\u0000 :2\u00020\u0001:\u0001:B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0008\u0010\u0014\u001a\u00020\u0011H\u0016J\u0006\u0010\u0015\u001a\u00020\u0011J(\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u000f2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u000fJ(\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000f2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u000fJ\u0006\u0010\u001e\u001a\u00020\u0011J&\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000fJ\u001e\u0010\"\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'J$\u0010(\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u000f2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020+0*J\u0006\u0010,\u001a\u00020\u000fJ\u001e\u0010-\u001a\u00020\u00112\u0006\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u000f2\u0006\u00100\u001a\u00020\u000fJ$\u00101\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u00102\u001a\u00020\u000f2\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020+0*J\u0016\u00104\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020%J\u000e\u00105\u001a\u00020\u00112\u0006\u00105\u001a\u00020\u0013J\u0016\u00106\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u00107\u001a\u000208J\u0018\u00109\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u000208H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Writer;",
        "Ljava/io/Closeable;",
        "sink",
        "Lokio/BufferedSink;",
        "client",
        "",
        "(Lokio/BufferedSink;Z)V",
        "closed",
        "hpackBuffer",
        "Lokio/Buffer;",
        "hpackWriter",
        "Lokhttp3/internal/http2/Hpack$Writer;",
        "getHpackWriter",
        "()Lokhttp3/internal/http2/Hpack$Writer;",
        "maxFrameSize",
        "",
        "applyAndAckSettings",
        "",
        "peerSettings",
        "Lokhttp3/internal/http2/Settings;",
        "close",
        "connectionPreface",
        "data",
        "outFinished",
        "streamId",
        "source",
        "byteCount",
        "dataFrame",
        "flags",
        "buffer",
        "flush",
        "frameHeader",
        "length",
        "type",
        "goAway",
        "lastGoodStreamId",
        "errorCode",
        "Lokhttp3/internal/http2/ErrorCode;",
        "debugData",
        "",
        "headers",
        "headerBlock",
        "",
        "Lokhttp3/internal/http2/Header;",
        "maxDataLength",
        "ping",
        "ack",
        "payload1",
        "payload2",
        "pushPromise",
        "promisedStreamId",
        "requestHeaders",
        "rstStream",
        "settings",
        "windowUpdate",
        "windowSizeIncrement",
        "",
        "writeContinuationFrames",
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
.field public static final a:Lokhttp3/internal/http2/e$a;

.field private static final b:Ljava/util/logging/Logger;


# instance fields
.field private final c:Lokio/d;

.field private final d:Z

.field private final e:Lokio/Buffer;

.field private f:I

.field private g:Z

.field private final h:Lokhttp3/internal/http2/b$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokhttp3/internal/http2/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/e$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lokhttp3/internal/http2/e;->a:Lokhttp3/internal/http2/e$a;

    const-class v0, Lokhttp3/internal/http2/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/e;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lokio/d;Z)V
    .registers 10

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    iput-boolean p2, p0, Lokhttp3/internal/http2/e;->d:Z

    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    iput-object v4, p0, Lokhttp3/internal/http2/e;->e:Lokio/Buffer;

    const/16 p1, 0x4000

    iput p1, p0, Lokhttp3/internal/http2/e;->f:I

    new-instance p1, Lokhttp3/internal/http2/b$b;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/http2/b$b;-><init>(IZLokio/Buffer;ILkotlin/jvm/internal/n;)V

    iput-object p1, p0, Lokhttp3/internal/http2/e;->h:Lokhttp3/internal/http2/b$b;

    return-void
.end method

.method private final q(IJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_23

    iget v2, p0, Lokhttp3/internal/http2/e;->f:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long/2addr p2, v2

    long-to-int v4, v2

    const/16 v5, 0x9

    cmp-long v6, p2, v0

    if-nez v6, :cond_17

    const/4 v0, 0x4

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-virtual {p0, p1, v4, v5, v0}, Lokhttp3/internal/http2/e;->g(IIII)V

    iget-object v0, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    iget-object v1, p0, Lokhttp3/internal/http2/e;->e:Lokio/Buffer;

    invoke-interface {v0, v1, v2, v3}, Lokio/w;->n(Lokio/Buffer;J)V

    goto :goto_0

    :cond_23
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lokhttp3/internal/http2/h;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "peerSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokhttp3/internal/http2/e;->g:Z

    if-nez v0, :cond_2f

    iget v0, p0, Lokhttp3/internal/http2/e;->f:I

    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/h;->e(I)I

    move-result v0

    iput v0, p0, Lokhttp3/internal/http2/e;->f:I

    invoke-virtual {p1}, Lokhttp3/internal/http2/h;->b()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lokhttp3/internal/http2/e;->h:Lokhttp3/internal/http2/b$b;

    invoke-virtual {p1}, Lokhttp3/internal/http2/h;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/b$b;->e(I)V

    :cond_22
    const/4 p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, v0}, Lokhttp3/internal/http2/e;->g(IIII)V

    iget-object p1, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    invoke-interface {p1}, Lokio/d;->flush()V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_37

    monitor-exit p0

    return-void

    :cond_2f
    :try_start_2f
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lokhttp3/internal/http2/e;->g:Z

    iget-object v0, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    invoke-interface {v0}, Lokio/w;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/e;->g:Z

    if-nez v0, :cond_39

    iget-boolean v0, p0, Lokhttp3/internal/http2/e;->d:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_41

    if-nez v0, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    sget-object v0, Lokhttp3/internal/http2/e;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, ">> CONNECTION "

    sget-object v2, Lokhttp3/internal/http2/c;->b:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2b
    iget-object v0, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    sget-object v1, Lokhttp3/internal/http2/c;->b:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/d;->P(Lokio/ByteString;)Lokio/d;

    iget-object v0, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    invoke-interface {v0}, Lokio/d;->flush()V
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_41

    monitor-exit p0

    return-void

    :cond_39
    :try_start_39
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e(ZILokio/Buffer;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/e;->g:Z

    if-nez v0, :cond_e

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :cond_9
    invoke-virtual {p0, p2, v0, p3, p4}, Lokhttp3/internal/http2/e;->f(IILokio/Buffer;I)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_16

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f(IILokio/Buffer;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p4, v0, p2}, Lokhttp3/internal/http2/e;->g(IIII)V

    if-lez p4, :cond_f

    iget-object p1, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Lokio/w;->n(Lokio/Buffer;J)V

    :cond_f
    return-void
.end method

.method public final declared-synchronized flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/e;->g:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    invoke-interface {v0}, Lokio/d;->flush()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g(IIII)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lokhttp3/internal/http2/e;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v2, Lokhttp3/internal/http2/c;->a:Lokhttp3/internal/http2/c;

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lokhttp3/internal/http2/c;->c(ZIIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_18
    iget v0, p0, Lokhttp3/internal/http2/e;->f:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p2, v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_5d

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    if-eqz v1, :cond_49

    iget-object v0, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    invoke-static {v0, p2}, Lokhttp3/internal/Util;->writeMedium(Lokio/d;I)V

    iget-object p2, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Lokio/d;->writeByte(I)Lokio/d;

    iget-object p2, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Lokio/d;->writeByte(I)Lokio/d;

    iget-object p2, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    invoke-interface {p2, p1}, Lokio/d;->writeInt(I)Lokio/d;

    return-void

    :cond_49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "reserved bit set: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "FRAME_SIZE_ERROR length > "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lokhttp3/internal/http2/e;->f:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final declared-synchronized h(ILokhttp3/internal/http2/ErrorCode;[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokhttp3/internal/http2/e;->g:Z

    if-nez v0, :cond_52

    invoke-virtual {p2}, Lokhttp3/internal/http2/ErrorCode;->f()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_46

    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    invoke-virtual {p0, v3, v0, v1, v3}, Lokhttp3/internal/http2/e;->g(IIII)V

    iget-object v0, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    invoke-interface {v0, p1}, Lokio/d;->writeInt(I)Lokio/d;

    iget-object p1, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    invoke-virtual {p2}, Lokhttp3/internal/http2/ErrorCode;->f()I

    move-result p2

    invoke-interface {p1, p2}, Lokio/d;->writeInt(I)Lokio/d;

    array-length p1, p3

    if-nez p1, :cond_36

    const/4 v3, 0x1

    :cond_36
    xor-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    invoke-interface {p1, p3}, Lokio/d;->write([B)Lokio/d;

    :cond_3f
    iget-object p1, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    invoke-interface {p1}, Lokio/d;->flush()V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_5a

    monitor-exit p0

    return-void

    :cond_46
    :try_start_46
    const-string p1, "errorCode.httpCode == -1"

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_52
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5a
    .catchall {:try_start_46 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized i(ZILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
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

    monitor-enter p0

    :try_start_1
    const-string v0, "headerBlock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokhttp3/internal/http2/e;->g:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Lokhttp3/internal/http2/e;->h:Lokhttp3/internal/http2/b$b;

    invoke-virtual {v0, p3}, Lokhttp3/internal/http2/b$b;->g(Ljava/util/List;)V

    iget-object p3, p0, Lokhttp3/internal/http2/e;->e:Lokio/Buffer;

    invoke-virtual {p3}, Lokio/Buffer;->I()J

    move-result-wide v0

    iget p3, p0, Lokhttp3/internal/http2/e;->f:I

    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    cmp-long p3, v0, v2

    if-nez p3, :cond_22

    const/4 v4, 0x4

    goto :goto_23

    :cond_22
    const/4 v4, 0x0

    :goto_23
    if-eqz p1, :cond_27

    or-int/lit8 v4, v4, 0x1

    :cond_27
    long-to-int p1, v2

    const/4 v5, 0x1

    invoke-virtual {p0, p2, p1, v5, v4}, Lokhttp3/internal/http2/e;->g(IIII)V

    iget-object p1, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    iget-object v4, p0, Lokhttp3/internal/http2/e;->e:Lokio/Buffer;

    invoke-interface {p1, v4, v2, v3}, Lokio/w;->n(Lokio/Buffer;J)V

    if-lez p3, :cond_39

    sub-long/2addr v0, v2

    invoke-direct {p0, p2, v0, v1}, Lokhttp3/internal/http2/e;->q(IJ)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_43

    :cond_39
    monitor-exit p0

    return-void

    :cond_3b
    :try_start_3b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_43

    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j()I
    .registers 2

    iget v0, p0, Lokhttp3/internal/http2/e;->f:I

    return v0
.end method

.method public final declared-synchronized k(ZII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/e;->g:Z

    if-nez v0, :cond_22

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    invoke-virtual {p0, v2, v0, v1, p1}, Lokhttp3/internal/http2/e;->g(IIII)V

    iget-object p1, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    invoke-interface {p1, p2}, Lokio/d;->writeInt(I)Lokio/d;

    iget-object p1, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    invoke-interface {p1, p3}, Lokio/d;->writeInt(I)Lokio/d;

    iget-object p1, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    invoke-interface {p1}, Lokio/d;->flush()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_2a

    monitor-exit p0

    return-void

    :cond_22
    :try_start_22
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized l(IILjava/util/List;)V
    .registers 11
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

    monitor-enter p0

    :try_start_1
    const-string v0, "requestHeaders"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokhttp3/internal/http2/e;->g:Z

    if-nez v0, :cond_46

    iget-object v0, p0, Lokhttp3/internal/http2/e;->h:Lokhttp3/internal/http2/b$b;

    invoke-virtual {v0, p3}, Lokhttp3/internal/http2/b$b;->g(Ljava/util/List;)V

    iget-object p3, p0, Lokhttp3/internal/http2/e;->e:Lokio/Buffer;

    invoke-virtual {p3}, Lokio/Buffer;->I()J

    move-result-wide v0

    iget p3, p0, Lokhttp3/internal/http2/e;->f:I

    int-to-long v2, p3

    const-wide/16 v4, 0x4

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    add-int/lit8 v2, p3, 0x4

    const/4 v3, 0x5

    int-to-long v4, p3

    cmp-long p3, v0, v4

    if-nez p3, :cond_2a

    const/4 v6, 0x4

    goto :goto_2b

    :cond_2a
    const/4 v6, 0x0

    :goto_2b
    invoke-virtual {p0, p1, v2, v3, v6}, Lokhttp3/internal/http2/e;->g(IIII)V

    iget-object v2, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    const v3, 0x7fffffff

    and-int/2addr p2, v3

    invoke-interface {v2, p2}, Lokio/d;->writeInt(I)Lokio/d;

    iget-object p2, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    iget-object v2, p0, Lokhttp3/internal/http2/e;->e:Lokio/Buffer;

    invoke-interface {p2, v2, v4, v5}, Lokio/w;->n(Lokio/Buffer;J)V

    if-lez p3, :cond_44

    sub-long/2addr v0, v4

    invoke-direct {p0, p1, v0, v1}, Lokhttp3/internal/http2/e;->q(IJ)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_4e

    :cond_44
    monitor-exit p0

    return-void

    :cond_46
    :try_start_46
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized m(ILokhttp3/internal/http2/ErrorCode;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokhttp3/internal/http2/e;->g:Z

    if-nez v0, :cond_38

    invoke-virtual {p2}, Lokhttp3/internal/http2/ErrorCode;->f()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_2c

    const/4 v0, 0x4

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/http2/e;->g(IIII)V

    iget-object p1, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    invoke-virtual {p2}, Lokhttp3/internal/http2/ErrorCode;->f()I

    move-result p2

    invoke-interface {p1, p2}, Lokio/d;->writeInt(I)Lokio/d;

    iget-object p1, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    invoke-interface {p1}, Lokio/d;->flush()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_40

    monitor-exit p0

    return-void

    :cond_2c
    :try_start_2c
    const-string p1, "Failed requirement."

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_38
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_40

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized o(Lokhttp3/internal/http2/h;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokhttp3/internal/http2/e;->g:Z

    if-nez v0, :cond_43

    invoke-virtual {p1}, Lokhttp3/internal/http2/h;->i()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Lokhttp3/internal/http2/e;->g(IIII)V

    :goto_15
    const/16 v0, 0xa

    if-ge v2, v0, :cond_3c

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v2}, Lokhttp3/internal/http2/h;->f(I)Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_3a

    :cond_22
    if-eq v2, v1, :cond_2b

    const/4 v3, 0x7

    if-eq v2, v3, :cond_29

    move v3, v2

    goto :goto_2c

    :cond_29
    const/4 v3, 0x4

    goto :goto_2c

    :cond_2b
    const/4 v3, 0x3

    :goto_2c
    iget-object v4, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    invoke-interface {v4, v3}, Lokio/d;->writeShort(I)Lokio/d;

    iget-object v3, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    invoke-virtual {p1, v2}, Lokhttp3/internal/http2/h;->a(I)I

    move-result v2

    invoke-interface {v3, v2}, Lokio/d;->writeInt(I)Lokio/d;

    :goto_3a
    move v2, v0

    goto :goto_15

    :cond_3c
    iget-object p1, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    invoke-interface {p1}, Lokio/d;->flush()V
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_4b

    monitor-exit p0

    return-void

    :cond_43
    :try_start_43
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized p(IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/e;->g:Z

    if-nez v0, :cond_3f

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-eqz v3, :cond_15

    const-wide/32 v0, 0x7fffffff

    cmp-long v3, p2, v0

    if-gtz v3, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_2b

    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/http2/e;->g(IIII)V

    iget-object p1, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    long-to-int p3, p2

    invoke-interface {p1, p3}, Lokio/d;->writeInt(I)Lokio/d;

    iget-object p1, p0, Lokhttp3/internal/http2/e;->c:Lokio/d;

    invoke-interface {p1}, Lokio/d;->flush()V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_47

    monitor-exit p0

    return-void

    :cond_2b
    :try_start_2b
    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: "

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_47
    .catchall {:try_start_2b .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class okhttp3.internal.http2.Http2Writer.a (okhttp3.internal.http2.e$a)
.class public final Lokhttp3/internal/http2/e$a;
.super Ljava/lang/Object;
.source "Http2Writer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Writer$Companion;",
        "",
        "()V",
        "logger",
        "Ljava/util/logging/Logger;",
        "kotlin.jvm.PlatformType",
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

    invoke-direct {p0}, Lokhttp3/internal/http2/e$a;-><init>()V

    return-void
.end method
