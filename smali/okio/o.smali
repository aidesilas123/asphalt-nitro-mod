###### Class okio.o (okio.o)
.class Lokio/o;
.super Ljava/lang/Object;
.source "JvmOkio.kt"

# interfaces
.implements Lokio/y;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Lokio/z;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lokio/z;)V
    .registers 4

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/o;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lokio/o;->b:Lokio/z;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lokio/o;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .registers 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_c

    return-wide v0

    :cond_c
    const/4 v0, 0x1

    if-ltz v2, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_63

    :try_start_14
    iget-object v1, p0, Lokio/o;->b:Lokio/z;

    invoke-virtual {v1}, Lokio/z;->f()V

    invoke-virtual {p1, v0}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v0

    iget v1, v0, Lokio/u;->d:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p3, p2

    iget-object p2, p0, Lokio/o;->a:Ljava/io/InputStream;

    iget-object v1, v0, Lokio/u;->b:[B

    iget v2, v0, Lokio/u;->d:I

    invoke-virtual {p2, v1, v2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_46

    iget p2, v0, Lokio/u;->c:I

    iget p3, v0, Lokio/u;->d:I

    if-ne p2, p3, :cond_43

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object p2

    iput-object p2, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    :cond_43
    const-wide/16 p1, -0x1

    return-wide p1

    :cond_46
    iget p3, v0, Lokio/u;->d:I

    add-int/2addr p3, p2

    iput p3, v0, Lokio/u;->d:I

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v0

    int-to-long p2, p2

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lokio/Buffer;->x(J)V
    :try_end_54
    .catch Ljava/lang/AssertionError; {:try_start_14 .. :try_end_54} :catch_55

    return-wide p2

    :catch_55
    move-exception p1

    invoke-static {p1}, Lokio/Okio;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_62

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_62
    throw p1

    :cond_63
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "byteCount < 0: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public timeout()Lokio/z;
    .registers 2

    iget-object v0, p0, Lokio/o;->b:Lokio/z;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/o;->a:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
