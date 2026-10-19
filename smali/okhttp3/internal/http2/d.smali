###### Class okhttp3.internal.http2.Http2Stream (okhttp3.internal.http2.d)
.class public final Lokhttp3/internal/http2/d;
.super Ljava/lang/Object;
.source "Http2Stream.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/d$c;,
        Lokhttp3/internal/http2/d$b;,
        Lokhttp3/internal/http2/d$a;,
        Lokhttp3/internal/http2/d$d;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 _2\u00020\u0001:\u0004_`abB1\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bJ\u000e\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020#J\r\u0010C\u001a\u00020AH\u0000\u00a2\u0006\u0002\u0008DJ\r\u0010E\u001a\u00020AH\u0000\u00a2\u0006\u0002\u0008FJ\u0018\u0010G\u001a\u00020A2\u0006\u0010H\u001a\u00020\u000f2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u001a\u0010I\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J\u000e\u0010J\u001a\u00020A2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010K\u001a\u00020A2\u0006\u0010L\u001a\u00020\nJ\u0006\u0010M\u001a\u00020NJ\u0006\u0010O\u001a\u00020PJ\u0006\u0010,\u001a\u00020QJ\u0016\u0010R\u001a\u00020A2\u0006\u00104\u001a\u00020S2\u0006\u0010T\u001a\u00020\u0003J\u0016\u0010U\u001a\u00020A2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010V\u001a\u00020A2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010W\u001a\u00020\nJ\u0006\u0010L\u001a\u00020\nJ\r\u0010X\u001a\u00020AH\u0000\u00a2\u0006\u0002\u0008YJ$\u0010Z\u001a\u00020A2\u000c\u0010[\u001a\u0008\u0012\u0004\u0012\u00020]0\\2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010^\u001a\u00020\u0007J\u0006\u0010>\u001a\u00020QR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u000f8@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010!\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010 R$\u0010$\u001a\u00020#2\u0006\u0010\"\u001a\u00020#@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R$\u0010)\u001a\u00020#2\u0006\u0010\"\u001a\u00020#@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010&\"\u0004\u0008+\u0010(R\u0018\u0010,\u001a\u00060-R\u00020\u0000X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/R\u0018\u00100\u001a\u000601R\u00020\u0000X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u0018\u00104\u001a\u000605R\u00020\u0000X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00107R$\u00108\u001a\u00020#2\u0006\u0010\"\u001a\u00020#@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010&\"\u0004\u0008:\u0010(R$\u0010;\u001a\u00020#2\u0006\u0010\"\u001a\u00020#@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010&\"\u0004\u0008=\u0010(R\u0018\u0010>\u001a\u00060-R\u00020\u0000X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010/\u00a8\u0006c"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Stream;",
        "",
        "id",
        "",
        "connection",
        "Lokhttp3/internal/http2/Http2Connection;",
        "outFinished",
        "",
        "inFinished",
        "headers",
        "Lokhttp3/Headers;",
        "(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V",
        "getConnection",
        "()Lokhttp3/internal/http2/Http2Connection;",
        "errorCode",
        "Lokhttp3/internal/http2/ErrorCode;",
        "getErrorCode$okhttp",
        "()Lokhttp3/internal/http2/ErrorCode;",
        "setErrorCode$okhttp",
        "(Lokhttp3/internal/http2/ErrorCode;)V",
        "errorException",
        "Ljava/io/IOException;",
        "getErrorException$okhttp",
        "()Ljava/io/IOException;",
        "setErrorException$okhttp",
        "(Ljava/io/IOException;)V",
        "hasResponseHeaders",
        "headersQueue",
        "Ljava/util/ArrayDeque;",
        "getId",
        "()I",
        "isLocallyInitiated",
        "()Z",
        "isOpen",
        "<set-?>",
        "",
        "readBytesAcknowledged",
        "getReadBytesAcknowledged",
        "()J",
        "setReadBytesAcknowledged$okhttp",
        "(J)V",
        "readBytesTotal",
        "getReadBytesTotal",
        "setReadBytesTotal$okhttp",
        "readTimeout",
        "Lokhttp3/internal/http2/Http2Stream$StreamTimeout;",
        "getReadTimeout$okhttp",
        "()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;",
        "sink",
        "Lokhttp3/internal/http2/Http2Stream$FramingSink;",
        "getSink$okhttp",
        "()Lokhttp3/internal/http2/Http2Stream$FramingSink;",
        "source",
        "Lokhttp3/internal/http2/Http2Stream$FramingSource;",
        "getSource$okhttp",
        "()Lokhttp3/internal/http2/Http2Stream$FramingSource;",
        "writeBytesMaximum",
        "getWriteBytesMaximum",
        "setWriteBytesMaximum$okhttp",
        "writeBytesTotal",
        "getWriteBytesTotal",
        "setWriteBytesTotal$okhttp",
        "writeTimeout",
        "getWriteTimeout$okhttp",
        "addBytesToWriteWindow",
        "",
        "delta",
        "cancelStreamIfNecessary",
        "cancelStreamIfNecessary$okhttp",
        "checkOutNotClosed",
        "checkOutNotClosed$okhttp",
        "close",
        "rstStatusCode",
        "closeInternal",
        "closeLater",
        "enqueueTrailers",
        "trailers",
        "getSink",
        "Lokio/Sink;",
        "getSource",
        "Lokio/Source;",
        "Lokio/Timeout;",
        "receiveData",
        "Lokio/BufferedSource;",
        "length",
        "receiveHeaders",
        "receiveRstStream",
        "takeHeaders",
        "waitForIo",
        "waitForIo$okhttp",
        "writeHeaders",
        "responseHeaders",
        "",
        "Lokhttp3/internal/http2/Header;",
        "flushHeaders",
        "Companion",
        "FramingSink",
        "FramingSource",
        "StreamTimeout",
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
.field public static final a:Lokhttp3/internal/http2/d$a;


# instance fields
.field private final b:I

.field private final c:Lokhttp3/internal/http2/Http2Connection;

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private final h:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lokhttp3/Headers;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private final j:Lokhttp3/internal/http2/d$c;

.field private final k:Lokhttp3/internal/http2/d$b;

.field private final l:Lokhttp3/internal/http2/d$d;

.field private final m:Lokhttp3/internal/http2/d$d;

.field private n:Lokhttp3/internal/http2/ErrorCode;

.field private o:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokhttp3/internal/http2/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/d$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lokhttp3/internal/http2/d;->a:Lokhttp3/internal/http2/d$a;

    return-void
.end method

.method public constructor <init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V
    .registers 9

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lokhttp3/internal/http2/d;->b:I

    iput-object p2, p0, Lokhttp3/internal/http2/d;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p2}, Lokhttp3/internal/http2/Http2Connection;->j()Lokhttp3/internal/http2/h;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/internal/http2/h;->c()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lokhttp3/internal/http2/d;->g:J

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/d;->h:Ljava/util/ArrayDeque;

    new-instance v0, Lokhttp3/internal/http2/d$c;

    invoke-virtual {p2}, Lokhttp3/internal/http2/Http2Connection;->i()Lokhttp3/internal/http2/h;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/internal/http2/h;->c()I

    move-result p2

    int-to-long v1, p2

    invoke-direct {v0, p0, v1, v2, p4}, Lokhttp3/internal/http2/d$c;-><init>(Lokhttp3/internal/http2/d;JZ)V

    iput-object v0, p0, Lokhttp3/internal/http2/d;->j:Lokhttp3/internal/http2/d$c;

    new-instance p2, Lokhttp3/internal/http2/d$b;

    invoke-direct {p2, p0, p3}, Lokhttp3/internal/http2/d$b;-><init>(Lokhttp3/internal/http2/d;Z)V

    iput-object p2, p0, Lokhttp3/internal/http2/d;->k:Lokhttp3/internal/http2/d$b;

    new-instance p2, Lokhttp3/internal/http2/d$d;

    invoke-direct {p2, p0}, Lokhttp3/internal/http2/d$d;-><init>(Lokhttp3/internal/http2/d;)V

    iput-object p2, p0, Lokhttp3/internal/http2/d;->l:Lokhttp3/internal/http2/d$d;

    new-instance p2, Lokhttp3/internal/http2/d$d;

    invoke-direct {p2, p0}, Lokhttp3/internal/http2/d$d;-><init>(Lokhttp3/internal/http2/d;)V

    iput-object p2, p0, Lokhttp3/internal/http2/d;->m:Lokhttp3/internal/http2/d$d;

    if-eqz p5, :cond_5d

    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->t()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_51

    invoke-interface {p1, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :cond_51
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "locally-initiated streams shouldn\'t have headers yet"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5d
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->t()Z

    move-result p1

    if-eqz p1, :cond_64

    :goto_63
    return-void

    :cond_64
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "remotely-initiated streams should have headers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final e(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z
    .registers 5

    sget-boolean v0, Lokhttp3/internal/Util;->h:Z

    if-eqz v0, :cond_32

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_32

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Thread "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " MUST NOT hold lock on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_32
    :goto_32
    monitor-enter p0

    :try_start_33
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->h()Lokhttp3/internal/http2/ErrorCode;

    move-result-object v0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_67

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    monitor-exit p0

    return v1

    :cond_3c
    :try_start_3c
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->p()Lokhttp3/internal/http2/d$c;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/d$c;->e()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->o()Lokhttp3/internal/http2/d$b;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/d$b;->e()Z

    move-result v0
    :try_end_4e
    .catchall {:try_start_3c .. :try_end_4e} :catchall_67

    if-eqz v0, :cond_52

    monitor-exit p0

    return v1

    :cond_52
    :try_start_52
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/d;->z(Lokhttp3/internal/http2/ErrorCode;)V

    invoke-virtual {p0, p2}, Lokhttp3/internal/http2/d;->A(Ljava/io/IOException;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_5d
    .catchall {:try_start_52 .. :try_end_5d} :catchall_67

    monitor-exit p0

    iget-object p1, p0, Lokhttp3/internal/http2/d;->c:Lokhttp3/internal/http2/Http2Connection;

    iget p2, p0, Lokhttp3/internal/http2/d;->b:I

    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Http2Connection;->J(I)Lokhttp3/internal/http2/d;

    const/4 p1, 0x1

    return p1

    :catchall_67
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final A(Ljava/io/IOException;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/internal/http2/d;->o:Ljava/io/IOException;

    return-void
.end method

.method public final B(J)V
    .registers 3

    iput-wide p1, p0, Lokhttp3/internal/http2/d;->e:J

    return-void
.end method

.method public final C(J)V
    .registers 3

    iput-wide p1, p0, Lokhttp3/internal/http2/d;->d:J

    return-void
.end method

.method public final D(J)V
    .registers 3

    iput-wide p1, p0, Lokhttp3/internal/http2/d;->f:J

    return-void
.end method

.method public final declared-synchronized E()Lokhttp3/Headers;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->l:Lokhttp3/internal/http2/d$d;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->j()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_4a

    :goto_6
    :try_start_6
    iget-object v0, p0, Lokhttp3/internal/http2/d;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lokhttp3/internal/http2/d;->n:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->F()V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_43

    goto :goto_6

    :cond_16
    :try_start_16
    iget-object v0, p0, Lokhttp3/internal/http2/d;->l:Lokhttp3/internal/http2/d$d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d$d;->q()V

    iget-object v0, p0, Lokhttp3/internal/http2/d;->h:Ljava/util/ArrayDeque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_34

    iget-object v0, p0, Lokhttp3/internal/http2/d;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "headersQueue.removeFirst()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lokhttp3/Headers;
    :try_end_32
    .catchall {:try_start_16 .. :try_end_32} :catchall_4a

    monitor-exit p0

    return-object v0

    :cond_34
    :try_start_34
    iget-object v0, p0, Lokhttp3/internal/http2/d;->o:Ljava/io/IOException;

    if-nez v0, :cond_42

    new-instance v0, Lokhttp3/internal/http2/i;

    iget-object v1, p0, Lokhttp3/internal/http2/d;->n:Lokhttp3/internal/http2/ErrorCode;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/i;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    :cond_42
    throw v0

    :catchall_43
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/http2/d;->l:Lokhttp3/internal/http2/d$d;

    invoke-virtual {v1}, Lokhttp3/internal/http2/d$d;->q()V

    throw v0
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final F()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method public final G()Lokio/z;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/d;->m:Lokhttp3/internal/http2/d$d;

    return-object v0
.end method

.method public final a(J)V
    .registers 6

    iget-wide v0, p0, Lokhttp3/internal/http2/d;->g:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/http2/d;->g:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_e
    return-void
.end method

.method public final b()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lokhttp3/internal/Util;->h:Z

    if-eqz v0, :cond_32

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_32

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " MUST NOT hold lock on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_32
    :goto_32
    monitor-enter p0

    :try_start_33
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->p()Lokhttp3/internal/http2/d$c;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/d$c;->e()Z

    move-result v0

    if-nez v0, :cond_5d

    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->p()Lokhttp3/internal/http2/d$c;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/d$c;->d()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->o()Lokhttp3/internal/http2/d$b;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/d$b;->e()Z

    move-result v0

    if-nez v0, :cond_5b

    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->o()Lokhttp3/internal/http2/d$b;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/d$b;->d()Z

    move-result v0

    if-eqz v0, :cond_5d

    :cond_5b
    const/4 v0, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v0, 0x0

    :goto_5e
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->u()Z

    move-result v1

    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_64
    .catchall {:try_start_33 .. :try_end_64} :catchall_78

    monitor-exit p0

    if-eqz v0, :cond_6e

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->j:Lokhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http2/d;->d(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    goto :goto_77

    :cond_6e
    if-nez v1, :cond_77

    iget-object v0, p0, Lokhttp3/internal/http2/d;->c:Lokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp3/internal/http2/d;->b:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Connection;->J(I)Lokhttp3/internal/http2/d;

    :cond_77
    :goto_77
    return-void

    :catchall_78
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/d;->k:Lokhttp3/internal/http2/d$b;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d$b;->d()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lokhttp3/internal/http2/d;->k:Lokhttp3/internal/http2/d$b;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d$b;->e()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lokhttp3/internal/http2/d;->n:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lokhttp3/internal/http2/d;->o:Ljava/io/IOException;

    if-nez v0, :cond_22

    new-instance v0, Lokhttp3/internal/http2/i;

    iget-object v1, p0, Lokhttp3/internal/http2/d;->n:Lokhttp3/internal/http2/ErrorCode;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/i;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    :cond_22
    throw v0

    :cond_23
    return-void

    :cond_24
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "rstStatusCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http2/d;->e(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z

    move-result p2

    if-nez p2, :cond_c

    return-void

    :cond_c
    iget-object p2, p0, Lokhttp3/internal/http2/d;->c:Lokhttp3/internal/http2/Http2Connection;

    iget v0, p0, Lokhttp3/internal/http2/d;->b:I

    invoke-virtual {p2, v0, p1}, Lokhttp3/internal/http2/Http2Connection;->Y(ILokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public final f(Lokhttp3/internal/http2/ErrorCode;)V
    .registers 4

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http2/d;->e(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lokhttp3/internal/http2/d;->c:Lokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp3/internal/http2/d;->b:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/http2/Http2Connection;->Z(ILokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public final g()Lokhttp3/internal/http2/Http2Connection;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/d;->c:Lokhttp3/internal/http2/Http2Connection;

    return-object v0
.end method

.method public final declared-synchronized h()Lokhttp3/internal/http2/ErrorCode;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->n:Lokhttp3/internal/http2/ErrorCode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final i()Ljava/io/IOException;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/d;->o:Ljava/io/IOException;

    return-object v0
.end method

.method public final j()I
    .registers 2

    iget v0, p0, Lokhttp3/internal/http2/d;->b:I

    return v0
.end method

.method public final k()J
    .registers 3

    iget-wide v0, p0, Lokhttp3/internal/http2/d;->e:J

    return-wide v0
.end method

.method public final l()J
    .registers 3

    iget-wide v0, p0, Lokhttp3/internal/http2/d;->d:J

    return-wide v0
.end method

.method public final m()Lokhttp3/internal/http2/d$d;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/d;->l:Lokhttp3/internal/http2/d$d;

    return-object v0
.end method

.method public final n()Lokio/w;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/d;->i:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->t()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_17

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_23

    monitor-exit p0

    iget-object v0, p0, Lokhttp3/internal/http2/d;->k:Lokhttp3/internal/http2/d$b;

    return-object v0

    :cond_17
    :try_start_17
    const-string v0, "reply before requesting the sink"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final o()Lokhttp3/internal/http2/d$b;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/d;->k:Lokhttp3/internal/http2/d$b;

    return-object v0
.end method

.method public final p()Lokhttp3/internal/http2/d$c;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/d;->j:Lokhttp3/internal/http2/d$c;

    return-object v0
.end method

.method public final q()J
    .registers 3

    iget-wide v0, p0, Lokhttp3/internal/http2/d;->g:J

    return-wide v0
.end method

.method public final r()J
    .registers 3

    iget-wide v0, p0, Lokhttp3/internal/http2/d;->f:J

    return-wide v0
.end method

.method public final s()Lokhttp3/internal/http2/d$d;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/d;->m:Lokhttp3/internal/http2/d$d;

    return-object v0
.end method

.method public final t()Z
    .registers 5

    iget v0, p0, Lokhttp3/internal/http2/d;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v3, p0, Lokhttp3/internal/http2/d;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Connection;->d()Z

    move-result v3

    if-ne v3, v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public final declared-synchronized u()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/d;->n:Lokhttp3/internal/http2/ErrorCode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_31

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    monitor-exit p0

    return v1

    :cond_8
    :try_start_8
    iget-object v0, p0, Lokhttp3/internal/http2/d;->j:Lokhttp3/internal/http2/d$c;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d$c;->e()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lokhttp3/internal/http2/d;->j:Lokhttp3/internal/http2/d$c;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d$c;->d()Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_18
    iget-object v0, p0, Lokhttp3/internal/http2/d;->k:Lokhttp3/internal/http2/d$b;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d$b;->e()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lokhttp3/internal/http2/d;->k:Lokhttp3/internal/http2/d$b;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d$b;->d()Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_28
    iget-boolean v0, p0, Lokhttp3/internal/http2/d;->i:Z
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_31

    if-eqz v0, :cond_2e

    monitor-exit p0

    return v1

    :cond_2e
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final v()Lokio/z;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/d;->l:Lokhttp3/internal/http2/d$d;

    return-object v0
.end method

.method public final w(Lokio/e;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lokhttp3/internal/Util;->h:Z

    if-eqz v0, :cond_37

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_37

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Thread "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " MUST NOT hold lock on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_37
    :goto_37
    iget-object v0, p0, Lokhttp3/internal/http2/d;->j:Lokhttp3/internal/http2/d$c;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lokhttp3/internal/http2/d$c;->h(Lokio/e;J)V

    return-void
.end method

.method public final x(Lokhttp3/Headers;Z)V
    .registers 5

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lokhttp3/internal/Util;->h:Z

    if-eqz v0, :cond_37

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_37

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Thread "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " MUST NOT hold lock on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_37
    :goto_37
    monitor-enter p0

    :try_start_38
    iget-boolean v0, p0, Lokhttp3/internal/http2/d;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_48

    if-nez p2, :cond_40

    goto :goto_48

    :cond_40
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->p()Lokhttp3/internal/http2/d$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/d$c;->k(Lokhttp3/Headers;)V

    goto :goto_4f

    :cond_48
    :goto_48
    iput-boolean v1, p0, Lokhttp3/internal/http2/d;->i:Z

    iget-object v0, p0, Lokhttp3/internal/http2/d;->h:Ljava/util/ArrayDeque;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_4f
    if-eqz p2, :cond_58

    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->p()Lokhttp3/internal/http2/d$c;

    move-result-object p1

    invoke-virtual {p1, v1}, Lokhttp3/internal/http2/d$c;->j(Z)V

    :cond_58
    invoke-virtual {p0}, Lokhttp3/internal/http2/d;->u()Z

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_61
    .catchall {:try_start_38 .. :try_end_61} :catchall_6c

    monitor-exit p0

    if-nez p1, :cond_6b

    iget-object p1, p0, Lokhttp3/internal/http2/d;->c:Lokhttp3/internal/http2/Http2Connection;

    iget p2, p0, Lokhttp3/internal/http2/d;->b:I

    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Http2Connection;->J(I)Lokhttp3/internal/http2/d;

    :cond_6b
    return-void

    :catchall_6c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized y(Lokhttp3/internal/http2/ErrorCode;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/http2/d;->n:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_f

    iput-object p1, p0, Lokhttp3/internal/http2/d;->n:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final z(Lokhttp3/internal/http2/ErrorCode;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/internal/http2/d;->n:Lokhttp3/internal/http2/ErrorCode;

    return-void
.end method

###### Class okhttp3.internal.http2.Http2Stream.a (okhttp3.internal.http2.d$a)
.class public final Lokhttp3/internal/http2/d$a;
.super Ljava/lang/Object;
.source "Http2Stream.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Stream$Companion;",
        "",
        "()V",
        "EMIT_BUFFER_SIZE",
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

    invoke-direct {p0}, Lokhttp3/internal/http2/d$a;-><init>()V

    return-void
.end method

###### Class okhttp3.internal.http2.Http2Stream.b (okhttp3.internal.http2.d$b)
.class public final Lokhttp3/internal/http2/d$b;
.super Ljava/lang/Object;
.source "Http2Stream.kt"

# interfaces
.implements Lokio/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0003H\u0002J\u0008\u0010\u0018\u001a\u00020\u0015H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0018\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\tR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Stream$FramingSink;",
        "Lokio/Sink;",
        "finished",
        "",
        "(Lokhttp3/internal/http2/Http2Stream;Z)V",
        "closed",
        "getClosed",
        "()Z",
        "setClosed",
        "(Z)V",
        "getFinished",
        "setFinished",
        "sendBuffer",
        "Lokio/Buffer;",
        "trailers",
        "Lokhttp3/Headers;",
        "getTrailers",
        "()Lokhttp3/Headers;",
        "setTrailers",
        "(Lokhttp3/Headers;)V",
        "close",
        "",
        "emitFrame",
        "outFinishedOnLastFrame",
        "flush",
        "timeout",
        "Lokio/Timeout;",
        "write",
        "source",
        "byteCount",
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


# instance fields
.field private a:Z

.field private final b:Lokio/Buffer;

.field private c:Lokhttp3/Headers;

.field private d:Z

.field final synthetic e:Lokhttp3/internal/http2/d;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/d;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lokhttp3/internal/http2/d$b;->a:Z

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/d$b;->b:Lokio/Buffer;

    return-void
.end method

.method private final a(Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->s()Lokhttp3/internal/http2/d$d;

    move-result-object v1

    invoke-virtual {v1}, Lokio/AsyncTimeout;->j()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_9d

    :goto_a
    :try_start_a
    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->r()J

    move-result-wide v1

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->q()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2c

    invoke-virtual {p0}, Lokhttp3/internal/http2/d$b;->e()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {p0}, Lokhttp3/internal/http2/d$b;->d()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->h()Lokhttp3/internal/http2/ErrorCode;

    move-result-object v1

    if-nez v1, :cond_2c

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->F()V
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_94

    goto :goto_a

    :cond_2c
    :try_start_2c
    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->s()Lokhttp3/internal/http2/d$d;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/http2/d$d;->q()V

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->c()V

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->q()J

    move-result-wide v1

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->r()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lokhttp3/internal/http2/d$b;->b:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->I()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->r()J

    move-result-wide v1

    add-long/2addr v1, v9

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http2/d;->D(J)V

    if-eqz p1, :cond_60

    iget-object p1, p0, Lokhttp3/internal/http2/d$b;->b:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v1

    cmp-long p1, v9, v1

    if-nez p1, :cond_60

    const/4 p1, 0x1

    const/4 v7, 0x1

    goto :goto_62

    :cond_60
    const/4 p1, 0x0

    const/4 v7, 0x0

    :goto_62
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_64
    .catchall {:try_start_2c .. :try_end_64} :catchall_9d

    monitor-exit v0

    iget-object p1, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {p1}, Lokhttp3/internal/http2/d;->s()Lokhttp3/internal/http2/d$d;

    move-result-object p1

    invoke-virtual {p1}, Lokio/AsyncTimeout;->j()V

    :try_start_6e
    iget-object p1, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {p1}, Lokhttp3/internal/http2/d;->g()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v5

    iget-object p1, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {p1}, Lokhttp3/internal/http2/d;->j()I

    move-result v6

    iget-object v8, p0, Lokhttp3/internal/http2/d$b;->b:Lokio/Buffer;

    invoke-virtual/range {v5 .. v10}, Lokhttp3/internal/http2/Http2Connection;->V(IZLokio/Buffer;J)V
    :try_end_7f
    .catchall {:try_start_6e .. :try_end_7f} :catchall_89

    iget-object p1, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {p1}, Lokhttp3/internal/http2/d;->s()Lokhttp3/internal/http2/d$d;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/internal/http2/d$d;->q()V

    return-void

    :catchall_89
    move-exception p1

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->s()Lokhttp3/internal/http2/d$d;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/d$d;->q()V

    throw p1

    :catchall_94
    move-exception p1

    :try_start_95
    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->s()Lokhttp3/internal/http2/d$d;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/http2/d$d;->q()V

    throw p1
    :try_end_9d
    .catchall {:try_start_95 .. :try_end_9d} :catchall_9d

    :catchall_9d
    move-exception p1

    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    sget-boolean v1, Lokhttp3/internal/Util;->h:Z

    if-eqz v1, :cond_34

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_34

    :cond_d
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " MUST NOT hold lock on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_34
    :goto_34
    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    monitor-enter v0

    :try_start_37
    invoke-virtual {p0}, Lokhttp3/internal/http2/d$b;->d()Z

    move-result v1
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_d6

    if-eqz v1, :cond_3f

    monitor-exit v0

    return-void

    :cond_3f
    :try_start_3f
    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->h()Lokhttp3/internal/http2/ErrorCode;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_49

    const/4 v1, 0x1

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    :goto_4a
    sget-object v4, Lkotlin/v;->a:Lkotlin/v;
    :try_end_4c
    .catchall {:try_start_3f .. :try_end_4c} :catchall_d6

    monitor-exit v0

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->o()Lokhttp3/internal/http2/d$b;

    move-result-object v0

    iget-boolean v0, v0, Lokhttp3/internal/http2/d$b;->a:Z

    if-nez v0, :cond_bb

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->I()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_65

    const/4 v0, 0x1

    goto :goto_66

    :cond_65
    const/4 v0, 0x0

    :goto_66
    iget-object v4, p0, Lokhttp3/internal/http2/d$b;->c:Lokhttp3/Headers;

    if-eqz v4, :cond_6c

    const/4 v4, 0x1

    goto :goto_6d

    :cond_6c
    const/4 v4, 0x0

    :goto_6d
    if-eqz v4, :cond_96

    :goto_6f
    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->I()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-lez v0, :cond_7d

    invoke-direct {p0, v2}, Lokhttp3/internal/http2/d$b;->a(Z)V

    goto :goto_6f

    :cond_7d
    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->g()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {v2}, Lokhttp3/internal/http2/d;->j()I

    move-result v2

    iget-object v4, p0, Lokhttp3/internal/http2/d$b;->c:Lokhttp3/Headers;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lokhttp3/internal/Util;->toHeaderList(Lokhttp3/Headers;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v4}, Lokhttp3/internal/http2/Http2Connection;->W(IZLjava/util/List;)V

    goto :goto_bb

    :cond_96
    if-eqz v0, :cond_a6

    :goto_98
    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->I()J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-lez v2, :cond_bb

    invoke-direct {p0, v3}, Lokhttp3/internal/http2/d$b;->a(Z)V

    goto :goto_98

    :cond_a6
    if-eqz v1, :cond_bb

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->g()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v4

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->j()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lokhttp3/internal/http2/Http2Connection;->V(IZLokio/Buffer;J)V

    :cond_bb
    :goto_bb
    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    monitor-enter v0

    :try_start_be
    invoke-virtual {p0, v3}, Lokhttp3/internal/http2/d$b;->f(Z)V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_c3
    .catchall {:try_start_be .. :try_end_c3} :catchall_d3

    monitor-exit v0

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->g()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->flush()V

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->b()V

    return-void

    :catchall_d3
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_d6
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/internal/http2/d$b;->d:Z

    return v0
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/internal/http2/d$b;->a:Z

    return v0
.end method

.method public final f(Z)V
    .registers 2

    iput-boolean p1, p0, Lokhttp3/internal/http2/d$b;->d:Z

    return-void
.end method

.method public flush()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    sget-boolean v1, Lokhttp3/internal/Util;->h:Z

    if-eqz v1, :cond_34

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_34

    :cond_d
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " MUST NOT hold lock on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_34
    :goto_34
    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    monitor-enter v0

    :try_start_37
    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->c()V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_58

    monitor-exit v0

    :goto_3d
    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_57

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokhttp3/internal/http2/d$b;->a(Z)V

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->g()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->flush()V

    goto :goto_3d

    :cond_57
    return-void

    :catchall_58
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public n(Lokio/Buffer;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    sget-boolean v1, Lokhttp3/internal/Util;->h:Z

    if-eqz v1, :cond_39

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_39

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Thread "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " MUST NOT hold lock on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_39
    :goto_39
    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->b:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->n(Lokio/Buffer;J)V

    :goto_3e
    iget-object p1, p0, Lokhttp3/internal/http2/d$b;->b:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_4f

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lokhttp3/internal/http2/d$b;->a(Z)V

    goto :goto_3e

    :cond_4f
    return-void
.end method

.method public timeout()Lokio/z;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/d$b;->e:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->s()Lokhttp3/internal/http2/d$d;

    move-result-object v0

    return-object v0
.end method

###### Class okhttp3.internal.http2.Http2Stream.c (okhttp3.internal.http2.d$c)
.class public final Lokhttp3/internal/http2/d$c;
.super Ljava/lang/Object;
.source "Http2Stream.kt"

# interfaces
.implements Lokio/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0003H\u0016J\u001d\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u001e\u001a\u00020\u0003H\u0000\u00a2\u0006\u0002\u0008\"J\u0008\u0010#\u001a\u00020$H\u0016J\u0010\u0010%\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0003H\u0002R\u001a\u0010\u0007\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006&"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Stream$FramingSource;",
        "Lokio/Source;",
        "maxByteCount",
        "",
        "finished",
        "",
        "(Lokhttp3/internal/http2/Http2Stream;JZ)V",
        "closed",
        "getClosed$okhttp",
        "()Z",
        "setClosed$okhttp",
        "(Z)V",
        "getFinished$okhttp",
        "setFinished$okhttp",
        "readBuffer",
        "Lokio/Buffer;",
        "getReadBuffer",
        "()Lokio/Buffer;",
        "receiveBuffer",
        "getReceiveBuffer",
        "trailers",
        "Lokhttp3/Headers;",
        "getTrailers",
        "()Lokhttp3/Headers;",
        "setTrailers",
        "(Lokhttp3/Headers;)V",
        "close",
        "",
        "read",
        "sink",
        "byteCount",
        "receive",
        "source",
        "Lokio/BufferedSource;",
        "receive$okhttp",
        "timeout",
        "Lokio/Timeout;",
        "updateConnectionFlowControl",
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
.field private final a:J

.field private b:Z

.field private final c:Lokio/Buffer;

.field private final d:Lokio/Buffer;

.field private e:Lokhttp3/Headers;

.field private f:Z

.field final synthetic g:Lokhttp3/internal/http2/d;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/d;JZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lokhttp3/internal/http2/d$c;->a:J

    iput-boolean p4, p0, Lokhttp3/internal/http2/d$c;->b:Z

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/d$c;->c:Lokio/Buffer;

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/d$c;->d:Lokio/Buffer;

    return-void
.end method

.method private final l(J)V
    .registers 5

    iget-object v0, p0, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

    sget-boolean v1, Lokhttp3/internal/Util;->h:Z

    if-eqz v1, :cond_34

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_34

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " MUST NOT hold lock on "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_34
    :goto_34
    iget-object v0, p0, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->g()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->U(J)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {p0, v1}, Lokhttp3/internal/http2/d$c;->i(Z)V

    invoke-virtual {p0}, Lokhttp3/internal/http2/d$c;->f()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Buffer;->I()J

    move-result-wide v1

    invoke-virtual {p0}, Lokhttp3/internal/http2/d$c;->f()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Buffer;->d()V

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    sget-object v3, Lkotlin/v;->a:Lkotlin/v;
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_2b

    monitor-exit v0

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_25

    invoke-direct {p0, v1, v2}, Lokhttp3/internal/http2/d$c;->l(J)V

    :cond_25
    iget-object v0, p0, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->b()V

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/internal/http2/d$c;->f:Z

    return v0
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/internal/http2/d$c;->b:Z

    return v0
.end method

.method public final f()Lokio/Buffer;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/d$c;->d:Lokio/Buffer;

    return-object v0
.end method

.method public final g()Lokio/Buffer;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/d$c;->c:Lokio/Buffer;

    return-object v0
.end method

.method public final h(Lokio/e;J)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

    sget-boolean v1, Lokhttp3/internal/Util;->h:Z

    if-eqz v1, :cond_39

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_39

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Thread "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " MUST NOT hold lock on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_39
    :goto_39
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_cb

    iget-object v2, p0, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

    monitor-enter v2

    :try_start_42
    invoke-virtual {p0}, Lokhttp3/internal/http2/d$c;->e()Z

    move-result v3

    invoke-virtual {p0}, Lokhttp3/internal/http2/d$c;->f()Lokio/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Lokio/Buffer;->I()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lokhttp3/internal/http2/d$c;->a:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_59

    const/4 v4, 0x1

    goto :goto_5a

    :cond_59
    const/4 v4, 0x0

    :goto_5a
    sget-object v5, Lkotlin/v;->a:Lkotlin/v;
    :try_end_5c
    .catchall {:try_start_42 .. :try_end_5c} :catchall_c8

    monitor-exit v2

    if-eqz v4, :cond_6a

    invoke-interface {p1, p2, p3}, Lokio/e;->skip(J)V

    iget-object p1, p0, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

    sget-object p2, Lokhttp3/internal/http2/ErrorCode;->e:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/d;->f(Lokhttp3/internal/http2/ErrorCode;)V

    return-void

    :cond_6a
    if-eqz v3, :cond_70

    invoke-interface {p1, p2, p3}, Lokio/e;->skip(J)V

    return-void

    :cond_70
    iget-object v2, p0, Lokhttp3/internal/http2/d$c;->c:Lokio/Buffer;

    invoke-interface {p1, v2, p2, p3}, Lokio/y;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_c2

    sub-long/2addr p2, v2

    iget-object v2, p0, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

    monitor-enter v2

    :try_start_80
    invoke-virtual {p0}, Lokhttp3/internal/http2/d$c;->d()Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-virtual {p0}, Lokhttp3/internal/http2/d$c;->g()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Buffer;->I()J

    move-result-wide v3

    invoke-virtual {p0}, Lokhttp3/internal/http2/d$c;->g()Lokio/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Lokio/Buffer;->d()V

    goto :goto_b5

    :cond_96
    invoke-virtual {p0}, Lokhttp3/internal/http2/d$c;->f()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Buffer;->I()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_a3

    goto :goto_a4

    :cond_a3
    const/4 v8, 0x0

    :goto_a4
    invoke-virtual {p0}, Lokhttp3/internal/http2/d$c;->f()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {p0}, Lokhttp3/internal/http2/d$c;->g()Lokio/Buffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokio/Buffer;->D(Lokio/y;)J

    if-eqz v8, :cond_b4

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_b4
    .catchall {:try_start_80 .. :try_end_b4} :catchall_bf

    :cond_b4
    move-wide v3, v0

    :goto_b5
    monitor-exit v2

    cmp-long v2, v3, v0

    if-lez v2, :cond_39

    invoke-direct {p0, v3, v4}, Lokhttp3/internal/http2/d$c;->l(J)V

    goto/16 :goto_39

    :catchall_bf
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_c2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_c8
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_cb
    return-void
.end method

.method public final i(Z)V
    .registers 2

    iput-boolean p1, p0, Lokhttp3/internal/http2/d$c;->f:Z

    return-void
.end method

.method public final j(Z)V
    .registers 2

    iput-boolean p1, p0, Lokhttp3/internal/http2/d$c;->b:Z

    return-void
.end method

.method public final k(Lokhttp3/Headers;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/internal/http2/d$c;->e:Lokhttp3/Headers;

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    const-string v4, "sink"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-ltz v8, :cond_13

    const/4 v8, 0x1

    goto :goto_14

    :cond_13
    const/4 v8, 0x0

    :goto_14
    if-eqz v8, :cond_db

    :goto_16
    const/4 v8, 0x0

    iget-object v9, v1, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

    monitor-enter v9

    :try_start_1a
    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->m()Lokhttp3/internal/http2/d$d;

    move-result-object v10

    invoke-virtual {v10}, Lokio/AsyncTimeout;->j()V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_d8

    :try_start_21
    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->h()Lokhttp3/internal/http2/ErrorCode;

    move-result-object v10

    if-eqz v10, :cond_39

    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->i()Ljava/io/IOException;

    move-result-object v8

    if-nez v8, :cond_39

    new-instance v8, Lokhttp3/internal/http2/i;

    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->h()Lokhttp3/internal/http2/ErrorCode;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v8, v10}, Lokhttp3/internal/http2/i;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    :cond_39
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/d$c;->d()Z

    move-result v10

    if-nez v10, :cond_c7

    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/d$c;->f()Lokio/Buffer;

    move-result-object v10

    invoke-virtual {v10}, Lokio/Buffer;->I()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v14, v10, v6

    if-lez v14, :cond_9b

    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/d$c;->f()Lokio/Buffer;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/d$c;->f()Lokio/Buffer;

    move-result-object v11

    invoke-virtual {v11}, Lokio/Buffer;->I()J

    move-result-wide v14

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    invoke-virtual {v10, v0, v14, v15}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v10

    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->l()J

    move-result-wide v14

    add-long/2addr v14, v10

    invoke-virtual {v9, v14, v15}, Lokhttp3/internal/http2/d;->C(J)V

    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->l()J

    move-result-wide v14

    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->k()J

    move-result-wide v16

    sub-long v14, v14, v16

    if-nez v8, :cond_aa

    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->g()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lokhttp3/internal/http2/Http2Connection;->i()Lokhttp3/internal/http2/h;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lokhttp3/internal/http2/h;->c()I

    move-result v16

    div-int/lit8 v4, v16, 0x2

    int-to-long v5, v4

    cmp-long v4, v14, v5

    if-ltz v4, :cond_aa

    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->g()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v4

    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->j()I

    move-result v5

    invoke-virtual {v4, v5, v14, v15}, Lokhttp3/internal/http2/Http2Connection;->a0(IJ)V

    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->l()J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Lokhttp3/internal/http2/d;->B(J)V

    goto :goto_aa

    :cond_9b
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/http2/d$c;->e()Z

    move-result v4

    if-nez v4, :cond_a9

    if-nez v8, :cond_a9

    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->F()V
    :try_end_a6
    .catchall {:try_start_21 .. :try_end_a6} :catchall_cf

    move-wide v10, v12

    const/4 v4, 0x1

    goto :goto_ab

    :cond_a9
    move-wide v10, v12

    :cond_aa
    :goto_aa
    const/4 v4, 0x0

    :goto_ab
    :try_start_ab
    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->m()Lokhttp3/internal/http2/d$d;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/internal/http2/d$d;->q()V

    sget-object v5, Lkotlin/v;->a:Lkotlin/v;
    :try_end_b4
    .catchall {:try_start_ab .. :try_end_b4} :catchall_d8

    monitor-exit v9

    if-eqz v4, :cond_bb

    const-wide/16 v6, 0x0

    goto/16 :goto_16

    :cond_bb
    cmp-long v0, v10, v12

    if-eqz v0, :cond_c3

    invoke-direct {v1, v10, v11}, Lokhttp3/internal/http2/d$c;->l(J)V

    return-wide v10

    :cond_c3
    if-nez v8, :cond_c6

    return-wide v12

    :cond_c6
    throw v8

    :cond_c7
    :try_start_c7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_cf
    .catchall {:try_start_c7 .. :try_end_cf} :catchall_cf

    :catchall_cf
    move-exception v0

    :try_start_d0
    invoke-virtual {v9}, Lokhttp3/internal/http2/d;->m()Lokhttp3/internal/http2/d$d;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/http2/d$d;->q()V

    throw v0
    :try_end_d8
    .catchall {:try_start_d0 .. :try_end_d8} :catchall_d8

    :catchall_d8
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_db
    const-string v0, "byteCount < 0: "

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public timeout()Lokio/z;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http2/d$c;->g:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->m()Lokhttp3/internal/http2/d$d;

    move-result-object v0

    return-object v0
.end method

###### Class okhttp3.internal.http2.Http2Stream.d (okhttp3.internal.http2.d$d)
.class public final Lokhttp3/internal/http2/d$d;
.super Lokio/AsyncTimeout;
.source "Http2Stream.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014J\u0008\u0010\u0008\u001a\u00020\u0004H\u0014\u00a8\u0006\t"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Stream$StreamTimeout;",
        "Lokio/AsyncTimeout;",
        "(Lokhttp3/internal/http2/Http2Stream;)V",
        "exitAndThrowIfTimedOut",
        "",
        "newTimeoutException",
        "Ljava/io/IOException;",
        "cause",
        "timedOut",
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
.field final synthetic m:Lokhttp3/internal/http2/d;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/d;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/http2/d$d;->m:Lokhttp3/internal/http2/d;

    invoke-direct {p0}, Lokio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method protected l(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object v0
.end method

.method protected p()V
    .registers 3

    iget-object v0, p0, Lokhttp3/internal/http2/d$d;->m:Lokhttp3/internal/http2/d;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->j:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/d;->f(Lokhttp3/internal/http2/ErrorCode;)V

    iget-object v0, p0, Lokhttp3/internal/http2/d$d;->m:Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Lokhttp3/internal/http2/d;->g()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->K()V

    return-void
.end method

.method public final q()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lokio/AsyncTimeout;->k()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/http2/d$d;->l(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
