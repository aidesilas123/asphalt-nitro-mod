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
