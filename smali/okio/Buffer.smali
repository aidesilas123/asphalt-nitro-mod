###### Class okio.Buffer (okio.Buffer)
.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Lokio/e;
.implements Lokio/d;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Buffer$a;
    }
.end annotation


# instance fields
.field public a:Lokio/u;

.field private b:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic copyTo$default(Lokio/Buffer;Ljava/io/OutputStream;JJILjava/lang/Object;)Lokio/Buffer;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_6

    const-wide/16 p2, 0x0

    :cond_6
    move-wide v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_f

    iget-wide p2, p0, Lokio/Buffer;->b:J

    sub-long p4, p2, v2

    :cond_f
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->h(Ljava/io/OutputStream;JJ)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copyTo$default(Lokio/Buffer;Lokio/Buffer;JILjava/lang/Object;)Lokio/Buffer;
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_6

    const-wide/16 p2, 0x0

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->i(Lokio/Buffer;J)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copyTo$default(Lokio/Buffer;Lokio/Buffer;JJILjava/lang/Object;)Lokio/Buffer;
    .registers 14

    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_6

    const-wide/16 p2, 0x0

    :cond_6
    move-wide v2, p2

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->j(Lokio/Buffer;JJ)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readAndWriteUnsafe$default(Lokio/Buffer;Lokio/Buffer$a;ILjava/lang/Object;)Lokio/Buffer$a;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_8

    invoke-static {}, Lokio/_UtilKt;->getDEFAULT__new_UnsafeCursor()Lokio/Buffer$a;

    move-result-object p1

    :cond_8
    invoke-virtual {p0, p1}, Lokio/Buffer;->u(Lokio/Buffer$a;)Lokio/Buffer$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readUnsafe$default(Lokio/Buffer;Lokio/Buffer$a;ILjava/lang/Object;)Lokio/Buffer$a;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_8

    invoke-static {}, Lokio/_UtilKt;->getDEFAULT__new_UnsafeCursor()Lokio/Buffer$a;

    move-result-object p1

    :cond_8
    invoke-virtual {p0, p1}, Lokio/Buffer;->w(Lokio/Buffer$a;)Lokio/Buffer$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic writeTo$default(Lokio/Buffer;Ljava/io/OutputStream;JILjava/lang/Object;)Lokio/Buffer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_6

    iget-wide p2, p0, Lokio/Buffer;->b:J

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->f0(Ljava/io/OutputStream;J)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public D(Lokio/y;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_7
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lokio/y;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_14

    return-wide v0

    :cond_14
    add-long/2addr v0, v2

    goto :goto_7
.end method

.method public final I()J
    .registers 3

    iget-wide v0, p0, Lokio/Buffer;->b:J

    return-wide v0
.end method

.method public final J()Lokio/ByteString;
    .registers 6

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lokio/Buffer;->K(I)Lokio/ByteString;

    move-result-object v0

    return-object v0

    :cond_1a
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "size > Int.MAX_VALUE: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final K(I)Lokio/ByteString;
    .registers 10

    if-nez p1, :cond_5

    sget-object p1, Lokio/ByteString;->b:Lokio/ByteString;

    goto :goto_5f

    :cond_5
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    invoke-static/range {v0 .. v5}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/u;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_14
    if-ge v2, p1, :cond_2e

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v0, Lokio/u;->d:I

    iget v5, v0, Lokio/u;->c:I

    if-eq v4, v5, :cond_26

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v0, Lokio/u;->g:Lokio/u;

    goto :goto_14

    :cond_26
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "s.limit == s.pos"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2e
    new-array v0, v3, [[B

    mul-int/lit8 v2, v3, 0x2

    new-array v2, v2, [I

    iget-object v4, p0, Lokio/Buffer;->a:Lokio/u;

    move-object v5, v4

    const/4 v4, 0x0

    :goto_38
    if-ge v1, p1, :cond_5a

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v5, Lokio/u;->b:[B

    aput-object v6, v0, v4

    iget v6, v5, Lokio/u;->d:I

    iget v7, v5, Lokio/u;->c:I

    sub-int/2addr v6, v7

    add-int/2addr v1, v6

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v2, v4

    add-int v6, v4, v3

    iget v7, v5, Lokio/u;->c:I

    aput v7, v2, v6

    const/4 v6, 0x1

    iput-boolean v6, v5, Lokio/u;->e:Z

    add-int/2addr v4, v6

    iget-object v5, v5, Lokio/u;->g:Lokio/u;

    goto :goto_38

    :cond_5a
    new-instance p1, Lokio/v;

    invoke-direct {p1, v0, v2}, Lokio/v;-><init>([[B[I)V

    :goto_5f
    return-object p1
.end method

.method public final L(I)Lokio/u;
    .registers 5

    const/16 v0, 0x2000

    const/4 v1, 0x1

    if-lt p1, v1, :cond_8

    if-gt p1, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_37

    iget-object v1, p0, Lokio/Buffer;->a:Lokio/u;

    if-nez v1, :cond_1a

    invoke-static {}, Lokio/SegmentPool;->take()Lokio/u;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->a:Lokio/u;

    iput-object p1, p1, Lokio/u;->h:Lokio/u;

    iput-object p1, p1, Lokio/u;->g:Lokio/u;

    goto :goto_36

    :cond_1a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lokio/u;->h:Lokio/u;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v1, Lokio/u;->d:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_2e

    iget-boolean p1, v1, Lokio/u;->f:Z

    if-nez p1, :cond_2c

    goto :goto_2e

    :cond_2c
    move-object p1, v1

    goto :goto_36

    :cond_2e
    :goto_2e
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/u;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokio/u;->c(Lokio/u;)Lokio/u;

    move-result-object p1

    :goto_36
    return-object p1

    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unexpected capacity"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public M(Lokio/ByteString;)Lokio/Buffer;
    .registers 4

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/ByteString;->F()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lokio/ByteString;->L(Lokio/Buffer;II)V

    return-object p0
.end method

.method public N(Lokio/ByteString;II)Lokio/Buffer;
    .registers 5

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2, p3}, Lokio/ByteString;->L(Lokio/Buffer;II)V

    return-object p0
.end method

.method public bridge synthetic P(Lokio/ByteString;)Lokio/d;
    .registers 2

    invoke-virtual {p0, p1}, Lokio/Buffer;->M(Lokio/ByteString;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public Q([B)Lokio/Buffer;
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/Buffer;->S([BII)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public R(Lokio/w;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_12

    invoke-interface {p1, p0, v0, v1}, Lokio/w;->n(Lokio/Buffer;J)V

    :cond_12
    return-wide v0
.end method

.method public S([BII)Lokio/Buffer;
    .registers 13

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    add-int/2addr p3, p2

    :goto_e
    if-ge p2, p3, :cond_2f

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v0

    sub-int v1, p3, p2

    iget v2, v0, Lokio/u;->d:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lokio/u;->b:[B

    iget v3, v0, Lokio/u;->d:I

    add-int v4, p2, v1

    invoke-static {p1, v2, v3, p2, v4}, Lkotlin/collections/k;->copyInto([B[BIII)[B

    iget p2, v0, Lokio/u;->d:I

    add-int/2addr p2, v1

    iput p2, v0, Lokio/u;->d:I

    move p2, v4

    goto :goto_e

    :cond_2f
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide p1

    add-long/2addr p1, v7

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->x(J)V

    return-object p0
.end method

.method public T(Lokio/Options;)I
    .registers 5

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lokio/internal/_BufferKt;->selectPrefix$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    const/4 v0, -0x1

    goto :goto_1f

    :cond_11
    invoke-virtual {p1}, Lokio/Options;->i()[Lokio/ByteString;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lokio/ByteString;->F()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    :goto_1f
    return v0
.end method

.method public U(I)Lokio/Buffer;
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v0

    iget-object v1, v0, Lokio/u;->b:[B

    iget v2, v0, Lokio/u;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lokio/u;->d:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->x(J)V

    return-object p0
.end method

.method public V(J)Lokio/Buffer;
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_e

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lokio/Buffer;->U(I)Lokio/Buffer;

    move-result-object p1

    goto/16 :goto_11f

    :cond_e
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_20

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1f

    const-string p1, "-9223372036854775808"

    invoke-virtual {p0, p1}, Lokio/Buffer;->g0(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    goto/16 :goto_11f

    :cond_1f
    const/4 v3, 0x1

    :cond_20
    const-wide/32 v5, 0x5f5e100

    const/16 v2, 0xa

    cmp-long v7, p1, v5

    if-gez v7, :cond_6e

    const-wide/16 v5, 0x2710

    cmp-long v7, p1, v5

    if-gez v7, :cond_4c

    const-wide/16 v5, 0x64

    cmp-long v7, p1, v5

    if-gez v7, :cond_40

    const-wide/16 v5, 0xa

    cmp-long v7, p1, v5

    if-gez v7, :cond_3d

    goto/16 :goto_e6

    :cond_3d
    const/4 v4, 0x2

    goto/16 :goto_e6

    :cond_40
    const-wide/16 v4, 0x3e8

    cmp-long v6, p1, v4

    if-gez v6, :cond_49

    const/4 v4, 0x3

    goto/16 :goto_e6

    :cond_49
    const/4 v4, 0x4

    goto/16 :goto_e6

    :cond_4c
    const-wide/32 v4, 0xf4240

    cmp-long v6, p1, v4

    if-gez v6, :cond_60

    const-wide/32 v4, 0x186a0

    cmp-long v6, p1, v4

    if-gez v6, :cond_5d

    const/4 v4, 0x5

    goto/16 :goto_e6

    :cond_5d
    const/4 v4, 0x6

    goto/16 :goto_e6

    :cond_60
    const-wide/32 v4, 0x989680

    cmp-long v6, p1, v4

    if-gez v6, :cond_6a

    const/4 v4, 0x7

    goto/16 :goto_e6

    :cond_6a
    const/16 v4, 0x8

    goto/16 :goto_e6

    :cond_6e
    const-wide v4, 0xe8d4a51000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_9c

    const-wide v4, 0x2540be400L

    cmp-long v6, p1, v4

    if-gez v6, :cond_8d

    const-wide/32 v4, 0x3b9aca00

    cmp-long v6, p1, v4

    if-gez v6, :cond_8a

    const/16 v4, 0x9

    goto :goto_e6

    :cond_8a
    const/16 v4, 0xa

    goto :goto_e6

    :cond_8d
    const-wide v4, 0x174876e800L

    cmp-long v6, p1, v4

    if-gez v6, :cond_99

    const/16 v4, 0xb

    goto :goto_e6

    :cond_99
    const/16 v4, 0xc

    goto :goto_e6

    :cond_9c
    const-wide v4, 0x38d7ea4c68000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_c0

    const-wide v4, 0x9184e72a000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_b1

    const/16 v4, 0xd

    goto :goto_e6

    :cond_b1
    const-wide v4, 0x5af3107a4000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_bd

    const/16 v4, 0xe

    goto :goto_e6

    :cond_bd
    const/16 v4, 0xf

    goto :goto_e6

    :cond_c0
    const-wide v4, 0x16345785d8a0000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_d8

    const-wide v4, 0x2386f26fc10000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_d5

    const/16 v4, 0x10

    goto :goto_e6

    :cond_d5
    const/16 v4, 0x11

    goto :goto_e6

    :cond_d8
    const-wide v4, 0xde0b6b3a7640000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_e4

    const/16 v4, 0x12

    goto :goto_e6

    :cond_e4
    const/16 v4, 0x13

    :goto_e6
    if-eqz v3, :cond_ea

    add-int/lit8 v4, v4, 0x1

    :cond_ea
    invoke-virtual {p0, v4}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v5

    iget-object v6, v5, Lokio/u;->b:[B

    iget v7, v5, Lokio/u;->d:I

    add-int/2addr v7, v4

    :goto_f3
    cmp-long v8, p1, v0

    if-eqz v8, :cond_107

    int-to-long v8, v2

    rem-long v10, p1, v8

    long-to-int v11, v10

    add-int/lit8 v7, v7, -0x1

    invoke-static {}, Lokio/internal/_BufferKt;->getHEX_DIGIT_BYTES()[B

    move-result-object v10

    aget-byte v10, v10, v11

    aput-byte v10, v6, v7

    div-long/2addr p1, v8

    goto :goto_f3

    :cond_107
    if-eqz v3, :cond_110

    add-int/lit8 v7, v7, -0x1

    const/16 p1, 0x2d

    int-to-byte p1, p1

    aput-byte p1, v6, v7

    :cond_110
    iget p1, v5, Lokio/u;->d:I

    add-int/2addr p1, v4

    iput p1, v5, Lokio/u;->d:I

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide p1

    int-to-long v0, v4

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->x(J)V

    move-object p1, p0

    :goto_11f
    return-object p1
.end method

.method public W(J)Lokio/Buffer;
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lokio/Buffer;->U(I)Lokio/Buffer;

    move-result-object p1

    goto :goto_83

    :cond_d
    const/4 v0, 0x1

    ushr-long v1, p1, v0

    or-long/2addr v1, p1

    const/4 v3, 0x2

    ushr-long v4, v1, v3

    or-long/2addr v1, v4

    const/4 v4, 0x4

    ushr-long v5, v1, v4

    or-long/2addr v1, v5

    const/16 v5, 0x8

    ushr-long v6, v1, v5

    or-long/2addr v1, v6

    const/16 v6, 0x10

    ushr-long v7, v1, v6

    or-long/2addr v1, v7

    const/16 v7, 0x20

    ushr-long v8, v1, v7

    or-long/2addr v1, v8

    ushr-long v8, v1, v0

    const-wide v10, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v8, v10

    sub-long/2addr v1, v8

    ushr-long v8, v1, v3

    const-wide v10, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v8, v10

    and-long/2addr v1, v10

    add-long/2addr v8, v1

    ushr-long v1, v8, v4

    add-long/2addr v1, v8

    const-wide v8, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v1, v8

    ushr-long v8, v1, v5

    add-long/2addr v1, v8

    ushr-long v5, v1, v6

    add-long/2addr v1, v5

    const-wide/16 v5, 0x3f

    and-long v8, v1, v5

    ushr-long/2addr v1, v7

    and-long/2addr v1, v5

    add-long/2addr v8, v1

    const/4 v1, 0x3

    int-to-long v1, v1

    add-long/2addr v8, v1

    int-to-long v1, v4

    div-long/2addr v8, v1

    long-to-int v1, v8

    invoke-virtual {p0, v1}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v2

    iget-object v3, v2, Lokio/u;->b:[B

    iget v5, v2, Lokio/u;->d:I

    add-int v6, v5, v1

    sub-int/2addr v6, v0

    :goto_62
    if-lt v6, v5, :cond_74

    invoke-static {}, Lokio/internal/_BufferKt;->getHEX_DIGIT_BYTES()[B

    move-result-object v0

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v8, v7

    aget-byte v0, v0, v8

    aput-byte v0, v3, v6

    ushr-long/2addr p1, v4

    add-int/lit8 v6, v6, -0x1

    goto :goto_62

    :cond_74
    iget p1, v2, Lokio/u;->d:I

    add-int/2addr p1, v1

    iput p1, v2, Lokio/u;->d:I

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide p1

    int-to-long v0, v1

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->x(J)V

    move-object p1, p0

    :goto_83
    return-object p1
.end method

.method public X(I)Lokio/Buffer;
    .registers 7

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v0

    iget-object v1, v0, Lokio/u;->b:[B

    iget v2, v0, Lokio/u;->d:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    iput v2, v0, Lokio/u;->d:I

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->x(J)V

    return-object p0
.end method

.method public Y(I)Lokio/Buffer;
    .registers 2

    invoke-static {p1}, Lokio/_UtilKt;->reverseBytes(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lokio/Buffer;->X(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public Z(J)Lokio/Buffer;
    .registers 12

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v1

    iget-object v2, v1, Lokio/u;->b:[B

    iget v3, v1, Lokio/u;->d:I

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x38

    ushr-long v5, p1, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x30

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x28

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x20

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x18

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x10

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    ushr-long v5, p1, v0

    and-long/2addr v5, v7

    long-to-int v0, v5

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    add-int/lit8 v0, v4, 0x1

    and-long/2addr p1, v7

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v2, v4

    iput v0, v1, Lokio/u;->d:I

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide p1

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->x(J)V

    return-object p0
.end method

.method public a0(J)Lokio/Buffer;
    .registers 3

    invoke-static {p1, p2}, Lokio/_UtilKt;->reverseBytes(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->Z(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public b0(I)Lokio/Buffer;
    .registers 7

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v0

    iget-object v1, v0, Lokio/u;->b:[B

    iget v2, v0, Lokio/u;->d:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    iput v2, v0, Lokio/u;->d:I

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->x(J)V

    return-object p0
.end method

.method public c0(I)Lokio/Buffer;
    .registers 2

    int-to-short p1, p1

    invoke-static {p1}, Lokio/_UtilKt;->reverseBytes(S)S

    move-result p1

    invoke-virtual {p0, p1}, Lokio/Buffer;->b0(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lokio/Buffer;->e()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public final d()V
    .registers 3

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void
.end method

.method public d0(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    .registers 8

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    if-eqz v2, :cond_98

    if-lt p3, p2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    if-eqz v2, :cond_75

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    if-eqz v0, :cond_4e

    sget-object v0, Lkotlin/text/b;->b:Ljava/nio/charset/Charset;

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->h0(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object p1

    return-object p1

    :cond_31
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, p1

    invoke-virtual {p0, p1, v1, p2}, Lokio/Buffer;->S([BII)Lokio/Buffer;

    move-result-object p1

    return-object p1

    :cond_4e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "endIndex > string.length: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "endIndex < beginIndex: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_98
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "beginIndex < 0: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public e()Lokio/Buffer;
    .registers 2

    invoke-virtual {p0}, Lokio/Buffer;->g()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public e0(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
    .registers 5

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lokio/Buffer;->d0(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic emit()Lokio/d;
    .registers 2

    invoke-virtual {p0}, Lokio/Buffer;->k()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic emitCompleteSegments()Lokio/d;
    .registers 2

    invoke-virtual {p0}, Lokio/Buffer;->l()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_b

    :cond_8
    :goto_8
    const/4 v2, 0x1

    goto/16 :goto_8b

    :cond_b
    instance-of v4, v1, Lokio/Buffer;

    if-nez v4, :cond_11

    goto/16 :goto_8b

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->I()J

    move-result-wide v4

    check-cast v1, Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->I()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_21

    goto/16 :goto_8b

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->I()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_2c

    goto :goto_8

    :cond_2c
    iget-object v4, v0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v4, Lokio/u;->c:I

    iget v8, v1, Lokio/u;->c:I

    move-wide v9, v6

    :goto_3b
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->I()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-gez v13, :cond_8

    iget v11, v4, Lokio/u;->d:I

    sub-int/2addr v11, v5

    iget v12, v1, Lokio/u;->d:I

    sub-int/2addr v12, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-long v11, v11

    cmp-long v13, v6, v11

    if-gez v13, :cond_73

    move-wide v13, v6

    :goto_53
    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    iget-object v15, v4, Lokio/u;->b:[B

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v15, v5

    iget-object v15, v1, Lokio/u;->b:[B

    add-int/lit8 v17, v8, 0x1

    aget-byte v8, v15, v8

    if-eq v5, v8, :cond_65

    goto :goto_8b

    :cond_65
    cmp-long v5, v13, v11

    if-ltz v5, :cond_6e

    move/from16 v5, v16

    move/from16 v8, v17

    goto :goto_73

    :cond_6e
    move/from16 v5, v16

    move/from16 v8, v17

    goto :goto_53

    :cond_73
    :goto_73
    iget v13, v4, Lokio/u;->d:I

    if-ne v5, v13, :cond_7e

    iget-object v4, v4, Lokio/u;->g:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v4, Lokio/u;->c:I

    :cond_7e
    iget v13, v1, Lokio/u;->d:I

    if-ne v8, v13, :cond_89

    iget-object v1, v1, Lokio/u;->g:Lokio/u;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v8, v1, Lokio/u;->c:I

    :cond_89
    add-long/2addr v9, v11

    goto :goto_3b

    :goto_8b
    return v2
.end method

.method public exhausted()Z
    .registers 6

    iget-wide v0, p0, Lokio/Buffer;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final f()J
    .registers 6

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    goto :goto_25

    :cond_b
    iget-object v2, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lokio/u;->h:Lokio/u;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v2, Lokio/u;->d:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_24

    iget-boolean v4, v2, Lokio/u;->f:Z

    if-eqz v4, :cond_24

    iget v2, v2, Lokio/u;->c:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_24
    move-wide v2, v0

    :goto_25
    return-wide v2
.end method

.method public final f0(Ljava/io/OutputStream;J)Lokio/Buffer;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, p0, Lokio/Buffer;->b:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/u;

    :cond_f
    :goto_f
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_45

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v0, Lokio/u;->d:I

    iget v2, v0, Lokio/u;->c:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, v0, Lokio/u;->b:[B

    iget v3, v0, Lokio/u;->c:I

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iget v1, v0, Lokio/u;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Lokio/u;->c:I

    iget-wide v3, p0, Lokio/Buffer;->b:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lokio/Buffer;->b:J

    sub-long/2addr p2, v5

    iget v2, v0, Lokio/u;->d:I

    if-ne v1, v2, :cond_f

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    move-object v0, v1

    goto :goto_f

    :cond_45
    return-object p0
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public final g()Lokio/Buffer;
    .registers 7

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_10

    goto :goto_3c

    :cond_10
    iget-object v1, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lokio/u;->d()Lokio/u;

    move-result-object v2

    iput-object v2, v0, Lokio/Buffer;->a:Lokio/u;

    iput-object v2, v2, Lokio/u;->h:Lokio/u;

    iput-object v2, v2, Lokio/u;->g:Lokio/u;

    iget-object v3, v1, Lokio/u;->g:Lokio/u;

    :goto_21
    if-eq v3, v1, :cond_35

    iget-object v4, v2, Lokio/u;->h:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lokio/u;->d()Lokio/u;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokio/u;->c(Lokio/u;)Lokio/u;

    iget-object v3, v3, Lokio/u;->g:Lokio/u;

    goto :goto_21

    :cond_35
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->x(J)V

    :goto_3c
    return-object v0
.end method

.method public g0(Ljava/lang/String;)Lokio/Buffer;
    .registers 4

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/Buffer;->h0(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/io/OutputStream;JJ)Lokio/Buffer;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, p0, Lokio/Buffer;->b:J

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_13

    return-object p0

    :cond_13
    iget-object v2, p0, Lokio/Buffer;->a:Lokio/u;

    :goto_15
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v2, Lokio/u;->d:I

    iget v4, v2, Lokio/u;->c:I

    sub-int v5, v3, v4

    int-to-long v5, v5

    cmp-long v7, p2, v5

    if-ltz v7, :cond_29

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    iget-object v2, v2, Lokio/u;->g:Lokio/u;

    goto :goto_15

    :cond_29
    :goto_29
    cmp-long v3, p4, v0

    if-lez v3, :cond_49

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v2, Lokio/u;->c:I

    int-to-long v3, v3

    add-long/2addr v3, p2

    long-to-int p2, v3

    iget p3, v2, Lokio/u;->d:I

    sub-int/2addr p3, p2

    int-to-long v3, p3

    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p3, v3

    iget-object v3, v2, Lokio/u;->b:[B

    invoke-virtual {p1, v3, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    iget-object v2, v2, Lokio/u;->g:Lokio/u;

    move-wide p2, v0

    goto :goto_29

    :cond_49
    return-object p0
.end method

.method public h0(Ljava/lang/String;II)Lokio/Buffer;
    .registers 15

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_17b

    if-lt p3, p2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    if-eqz v2, :cond_158

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-eqz v2, :cond_131

    :goto_20
    if-ge p2, p3, :cond_130

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_61

    invoke-virtual {p0, v1}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v4

    iget-object v5, v4, Lokio/u;->b:[B

    iget v6, v4, Lokio/u;->d:I

    sub-int/2addr v6, p2

    rsub-int v7, v6, 0x2000

    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/lit8 v8, p2, 0x1

    add-int/2addr p2, v6

    int-to-byte v2, v2

    aput-byte v2, v5, p2

    :goto_3f
    move p2, v8

    if-ge p2, v7, :cond_50

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v3, :cond_49

    goto :goto_50

    :cond_49
    add-int/lit8 v8, p2, 0x1

    add-int/2addr p2, v6

    int-to-byte v2, v2

    aput-byte v2, v5, p2

    goto :goto_3f

    :cond_50
    :goto_50
    add-int/2addr v6, p2

    iget v2, v4, Lokio/u;->d:I

    sub-int/2addr v6, v2

    add-int/2addr v2, v6

    iput v2, v4, Lokio/u;->d:I

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v2

    int-to-long v4, v6

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->x(J)V

    goto :goto_20

    :cond_61
    const/16 v4, 0x800

    if-ge v2, v4, :cond_8d

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v5

    iget-object v6, v5, Lokio/u;->b:[B

    iget v7, v5, Lokio/u;->d:I

    shr-int/lit8 v8, v2, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v8, v7, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v6, v8

    add-int/2addr v7, v4

    iput v7, v5, Lokio/u;->d:I

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->x(J)V

    :goto_8a
    add-int/lit8 p2, p2, 0x1

    goto :goto_20

    :cond_8d
    const v4, 0xd800

    const/16 v5, 0x3f

    if-lt v2, v4, :cond_100

    const v4, 0xdfff

    if-le v2, v4, :cond_9a

    goto :goto_100

    :cond_9a
    add-int/lit8 v6, p2, 0x1

    if-ge v6, p3, :cond_a3

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_a4

    :cond_a3
    const/4 v7, 0x0

    :goto_a4
    const v8, 0xdbff

    if-gt v2, v8, :cond_fa

    const v8, 0xdc00

    if-gt v8, v7, :cond_b2

    if-gt v7, v4, :cond_b2

    const/4 v4, 0x1

    goto :goto_b3

    :cond_b2
    const/4 v4, 0x0

    :goto_b3
    if-nez v4, :cond_b6

    goto :goto_fa

    :cond_b6
    const/high16 v4, 0x10000

    and-int/lit16 v2, v2, 0x3ff

    shl-int/lit8 v2, v2, 0xa

    and-int/lit16 v6, v7, 0x3ff

    or-int/2addr v2, v6

    add-int/2addr v2, v4

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v6

    iget-object v7, v6, Lokio/u;->b:[B

    iget v8, v6, Lokio/u;->d:I

    shr-int/lit8 v9, v2, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v10, v2, 0xc

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    add-int/lit8 v9, v8, 0x2

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v5

    or-int/2addr v10, v3

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    add-int/lit8 v9, v8, 0x3

    and-int/2addr v2, v5

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v7, v9

    add-int/2addr v8, v4

    iput v8, v6, Lokio/u;->d:I

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->x(J)V

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_20

    :cond_fa
    :goto_fa
    invoke-virtual {p0, v5}, Lokio/Buffer;->U(I)Lokio/Buffer;

    move p2, v6

    goto/16 :goto_20

    :cond_100
    :goto_100
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v6

    iget-object v7, v6, Lokio/u;->b:[B

    iget v8, v6, Lokio/u;->d:I

    shr-int/lit8 v9, v2, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v5, v10

    or-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, v7, v9

    add-int/lit8 v5, v8, 0x2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v7, v5

    add-int/2addr v8, v4

    iput v8, v6, Lokio/u;->d:I

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->x(J)V

    goto/16 :goto_8a

    :cond_130
    return-object p0

    :cond_131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_17b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "beginIndex < 0: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/u;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_21

    :cond_6
    const/4 v1, 0x1

    :cond_7
    iget v2, v0, Lokio/u;->c:I

    iget v3, v0, Lokio/u;->d:I

    :goto_b
    if-ge v2, v3, :cond_17

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lokio/u;->b:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_17
    iget-object v0, v0, Lokio/u;->g:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lokio/Buffer;->a:Lokio/u;

    if-ne v0, v2, :cond_7

    move v0, v1

    :goto_21
    return v0
.end method

.method public final i(Lokio/Buffer;J)Lokio/Buffer;
    .registers 12

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lokio/Buffer;->b:J

    sub-long v6, v0, p2

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->j(Lokio/Buffer;JJ)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public i0(I)Lokio/Buffer;
    .registers 10

    const/16 v0, 0x80

    if-ge p1, v0, :cond_9

    invoke-virtual {p0, p1}, Lokio/Buffer;->U(I)Lokio/Buffer;

    goto/16 :goto_b4

    :cond_9
    const/16 v1, 0x800

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_35

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v3

    iget-object v4, v3, Lokio/u;->b:[B

    iget v5, v3, Lokio/u;->d:I

    shr-int/lit8 v6, p1, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    iput v5, v3, Lokio/u;->d:I

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->x(J)V

    goto/16 :goto_b4

    :cond_35
    const v1, 0xd800

    const/4 v3, 0x0

    if-gt v1, p1, :cond_41

    const v1, 0xdfff

    if-gt p1, v1, :cond_41

    const/4 v3, 0x1

    :cond_41
    if-eqz v3, :cond_47

    invoke-virtual {p0, v2}, Lokio/Buffer;->U(I)Lokio/Buffer;

    goto :goto_b4

    :cond_47
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_79

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v3

    iget-object v4, v3, Lokio/u;->b:[B

    iget v5, v3, Lokio/u;->d:I

    shr-int/lit8 v6, p1, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x2

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    iput v5, v3, Lokio/u;->d:I

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->x(J)V

    goto :goto_b4

    :cond_79
    const v1, 0x10ffff

    if-gt p1, v1, :cond_b5

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v3

    iget-object v4, v3, Lokio/u;->b:[B

    iget v5, v3, Lokio/u;->d:I

    shr-int/lit8 v6, p1, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, p1, 0xc

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x2

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v2

    or-int/2addr v7, v0

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, 0x3

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v4, v6

    add-int/2addr v5, v1

    iput v5, v3, Lokio/u;->d:I

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->x(J)V

    :goto_b4
    return-object p0

    :cond_b5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lokio/_UtilKt;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unexpected code point: 0x"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(B)J
    .registers 8

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJJ)J
    .registers 22

    move/from16 v0, p1

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v6, v1

    if-gtz v8, :cond_12

    cmp-long v8, v1, v3

    if-gtz v8, :cond_12

    const/4 v5, 0x1

    :cond_12
    if-eqz v5, :cond_cc

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->I()J

    move-result-wide v8

    cmp-long v5, v3, v8

    if-lez v5, :cond_20

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->I()J

    move-result-wide v3

    :cond_20
    move-wide v8, v3

    const-wide/16 v10, -0x1

    cmp-long v3, v1, v8

    if-nez v3, :cond_2b

    move-object/from16 v5, p0

    goto/16 :goto_c4

    :cond_2b
    move-object/from16 v5, p0

    iget-object v3, v5, Lokio/Buffer;->a:Lokio/u;

    if-nez v3, :cond_33

    goto/16 :goto_c4

    :cond_33
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->I()J

    move-result-wide v12

    sub-long/2addr v12, v1

    cmp-long v4, v12, v1

    if-gez v4, :cond_88

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->I()J

    move-result-wide v6

    :goto_40
    cmp-long v4, v6, v1

    if-lez v4, :cond_51

    iget-object v3, v3, Lokio/u;->h:Lokio/u;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v3, Lokio/u;->d:I

    iget v12, v3, Lokio/u;->c:I

    sub-int/2addr v4, v12

    int-to-long v12, v4

    sub-long/2addr v6, v12

    goto :goto_40

    :cond_51
    :goto_51
    cmp-long v4, v6, v8

    if-gez v4, :cond_c4

    iget-object v4, v3, Lokio/u;->b:[B

    iget v12, v3, Lokio/u;->d:I

    int-to-long v12, v12

    iget v14, v3, Lokio/u;->c:I

    int-to-long v14, v14

    add-long/2addr v14, v8

    sub-long/2addr v14, v6

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v13, v12

    iget v12, v3, Lokio/u;->c:I

    int-to-long v14, v12

    add-long/2addr v14, v1

    sub-long/2addr v14, v6

    long-to-int v1, v14

    :goto_6a
    if-ge v1, v13, :cond_7a

    aget-byte v2, v4, v1

    if-ne v2, v0, :cond_77

    :goto_70
    iget v0, v3, Lokio/u;->c:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    add-long v10, v0, v6

    goto :goto_c4

    :cond_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    :cond_7a
    iget v1, v3, Lokio/u;->d:I

    iget v2, v3, Lokio/u;->c:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v6, v1

    iget-object v3, v3, Lokio/u;->g:Lokio/u;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v1, v6

    goto :goto_51

    :cond_88
    :goto_88
    iget v4, v3, Lokio/u;->d:I

    iget v12, v3, Lokio/u;->c:I

    sub-int/2addr v4, v12

    int-to-long v12, v4

    add-long/2addr v12, v6

    cmp-long v4, v12, v1

    if-lez v4, :cond_c5

    :goto_93
    cmp-long v4, v6, v8

    if-gez v4, :cond_c4

    iget-object v4, v3, Lokio/u;->b:[B

    iget v12, v3, Lokio/u;->d:I

    int-to-long v12, v12

    iget v14, v3, Lokio/u;->c:I

    int-to-long v14, v14

    add-long/2addr v14, v8

    sub-long/2addr v14, v6

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v13, v12

    iget v12, v3, Lokio/u;->c:I

    int-to-long v14, v12

    add-long/2addr v14, v1

    sub-long/2addr v14, v6

    long-to-int v1, v14

    :goto_ac
    if-ge v1, v13, :cond_b6

    aget-byte v2, v4, v1

    if-ne v2, v0, :cond_b3

    goto :goto_70

    :cond_b3
    add-int/lit8 v1, v1, 0x1

    goto :goto_ac

    :cond_b6
    iget v1, v3, Lokio/u;->d:I

    iget v2, v3, Lokio/u;->c:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v6, v1

    iget-object v3, v3, Lokio/u;->g:Lokio/u;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v1, v6

    goto :goto_93

    :cond_c4
    :goto_c4
    return-wide v10

    :cond_c5
    iget-object v3, v3, Lokio/u;->g:Lokio/u;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v6, v12

    goto :goto_88

    :cond_cc
    move-object/from16 v5, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->I()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " fromIndex="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " toIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public inputStream()Ljava/io/InputStream;
    .registers 2

    new-instance v0, Lokio/Buffer$b;

    invoke-direct {v0, p0}, Lokio/Buffer$b;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final j(Lokio/Buffer;JJ)Lokio/Buffer;
    .registers 14

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_15

    goto :goto_6f

    :cond_15
    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v2

    add-long/2addr v2, p4

    invoke-virtual {p1, v2, v3}, Lokio/Buffer;->x(J)V

    iget-object v2, p0, Lokio/Buffer;->a:Lokio/u;

    :goto_1f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v2, Lokio/u;->d:I

    iget v4, v2, Lokio/u;->c:I

    sub-int v5, v3, v4

    int-to-long v5, v5

    cmp-long v7, p2, v5

    if-ltz v7, :cond_33

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    iget-object v2, v2, Lokio/u;->g:Lokio/u;

    goto :goto_1f

    :cond_33
    :goto_33
    cmp-long v3, p4, v0

    if-lez v3, :cond_6f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lokio/u;->d()Lokio/u;

    move-result-object v3

    iget v4, v3, Lokio/u;->c:I

    long-to-int p3, p2

    add-int/2addr v4, p3

    iput v4, v3, Lokio/u;->c:I

    long-to-int p2, p4

    add-int/2addr v4, p2

    iget p2, v3, Lokio/u;->d:I

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, Lokio/u;->d:I

    iget-object p2, p1, Lokio/Buffer;->a:Lokio/u;

    if-nez p2, :cond_59

    iput-object v3, v3, Lokio/u;->h:Lokio/u;

    iput-object v3, v3, Lokio/u;->g:Lokio/u;

    iput-object v3, p1, Lokio/Buffer;->a:Lokio/u;

    goto :goto_64

    :cond_59
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p2, Lokio/u;->h:Lokio/u;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Lokio/u;->c(Lokio/u;)Lokio/u;

    :goto_64
    iget p2, v3, Lokio/u;->d:I

    iget p3, v3, Lokio/u;->c:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    iget-object v2, v2, Lokio/u;->g:Lokio/u;

    move-wide p2, v0

    goto :goto_33

    :cond_6f
    :goto_6f
    return-object p0
.end method

.method public k()Lokio/Buffer;
    .registers 1

    return-object p0
.end method

.method public l()Lokio/Buffer;
    .registers 1

    return-object p0
.end method

.method public final m(J)B
    .registers 9

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/u;

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    sub-long/2addr v1, p1

    cmp-long v3, v1, p1

    if-gez v3, :cond_3a

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    :goto_1b
    cmp-long v3, v1, p1

    if-lez v3, :cond_2c

    iget-object v0, v0, Lokio/u;->h:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v0, Lokio/u;->d:I

    iget v4, v0, Lokio/u;->c:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_1b

    :cond_2c
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v0, Lokio/u;->b:[B

    iget v0, v0, Lokio/u;->c:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    sub-long/2addr v4, v1

    long-to-int p1, v4

    aget-byte p1, v3, p1

    goto :goto_54

    :cond_3a
    const-wide/16 v1, 0x0

    :goto_3c
    iget v3, v0, Lokio/u;->d:I

    iget v4, v0, Lokio/u;->c:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    cmp-long v5, v3, p1

    if-lez v5, :cond_55

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v0, Lokio/u;->b:[B

    iget v0, v0, Lokio/u;->c:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    sub-long/2addr v4, v1

    long-to-int p1, v4

    aget-byte p1, v3, p1

    :goto_54
    return p1

    :cond_55
    iget-object v0, v0, Lokio/u;->g:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v1, v3

    goto :goto_3c

    :cond_5c
    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    throw p1
.end method

.method public n(Lokio/Buffer;J)V
    .registers 12

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eq p1, p0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_bb

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    :goto_17
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_ba

    iget-object v1, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Lokio/u;->d:I

    iget-object v2, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v2, Lokio/u;->c:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v3, p2, v1

    if-gez v3, :cond_7c

    iget-object v1, p0, Lokio/Buffer;->a:Lokio/u;

    if-eqz v1, :cond_3b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lokio/u;->h:Lokio/u;

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    if-eqz v1, :cond_70

    iget-boolean v2, v1, Lokio/u;->f:Z

    if-eqz v2, :cond_70

    iget v2, v1, Lokio/u;->d:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    iget-boolean v4, v1, Lokio/u;->e:Z

    if-eqz v4, :cond_4c

    const/4 v4, 0x0

    goto :goto_4e

    :cond_4c
    iget v4, v1, Lokio/u;->c:I

    :goto_4e
    int-to-long v4, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2000

    cmp-long v6, v2, v4

    if-gtz v6, :cond_70

    iget-object v0, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lokio/u;->g(Lokio/u;I)V

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lokio/Buffer;->x(J)V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->x(J)V

    goto :goto_ba

    :cond_70
    iget-object v1, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v2, p2

    invoke-virtual {v1, v2}, Lokio/u;->e(I)Lokio/u;

    move-result-object v1

    iput-object v1, p1, Lokio/Buffer;->a:Lokio/u;

    :cond_7c
    iget-object v1, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v1, Lokio/u;->d:I

    iget v3, v1, Lokio/u;->c:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1}, Lokio/u;->b()Lokio/u;

    move-result-object v4

    iput-object v4, p1, Lokio/Buffer;->a:Lokio/u;

    iget-object v4, p0, Lokio/Buffer;->a:Lokio/u;

    if-nez v4, :cond_98

    iput-object v1, p0, Lokio/Buffer;->a:Lokio/u;

    iput-object v1, v1, Lokio/u;->h:Lokio/u;

    iput-object v1, v1, Lokio/u;->g:Lokio/u;

    goto :goto_a7

    :cond_98
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v4, Lokio/u;->h:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lokio/u;->c(Lokio/u;)Lokio/u;

    move-result-object v1

    invoke-virtual {v1}, Lokio/u;->a()V

    :goto_a7
    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Lokio/Buffer;->x(J)V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->x(J)V

    sub-long/2addr p2, v2

    goto/16 :goto_17

    :cond_ba
    :goto_ba
    return-void

    :cond_bb
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o(Lokio/ByteString;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->p(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public p(Lokio/ByteString;J)J
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bytes"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->F()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_128

    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-ltz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-eqz v0, :cond_112

    move-object/from16 v0, p0

    iget-object v6, v0, Lokio/Buffer;->a:Lokio/u;

    if-nez v6, :cond_28

    :cond_24
    const-wide/16 v7, -0x1

    goto/16 :goto_109

    :cond_28
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->I()J

    move-result-wide v9

    sub-long v9, v9, p2

    const-wide/16 v11, 0x1

    cmp-long v13, v9, p2

    if-gez v13, :cond_a5

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->I()J

    move-result-wide v4

    :goto_38
    cmp-long v9, v4, p2

    if-lez v9, :cond_49

    iget-object v6, v6, Lokio/u;->h:Lokio/u;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v9, v6, Lokio/u;->d:I

    iget v10, v6, Lokio/u;->c:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    sub-long/2addr v4, v9

    goto :goto_38

    :cond_49
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->u()[B

    move-result-object v9

    aget-byte v2, v9, v2

    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->F()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->I()J

    move-result-wide v13

    int-to-long v7, v1

    sub-long/2addr v13, v7

    add-long/2addr v13, v11

    move-object v8, v6

    move-wide v6, v4

    move-wide/from16 v4, p2

    :goto_5e
    cmp-long v10, v6, v13

    if-gez v10, :cond_24

    iget-object v10, v8, Lokio/u;->b:[B

    iget v11, v8, Lokio/u;->d:I

    iget v12, v8, Lokio/u;->c:I

    move-wide/from16 p1, v4

    int-to-long v3, v12

    add-long/2addr v3, v13

    sub-long/2addr v3, v6

    int-to-long v11, v11

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    iget v3, v8, Lokio/u;->c:I

    int-to-long v11, v3

    move-wide/from16 v15, p1

    add-long/2addr v11, v15

    sub-long/2addr v11, v6

    long-to-int v3, v11

    if-ge v3, v4, :cond_97

    :goto_7d
    add-int/lit8 v5, v3, 0x1

    aget-byte v11, v10, v3

    if-ne v11, v2, :cond_92

    const/4 v11, 0x1

    invoke-static {v8, v5, v9, v11, v1}, Lokio/internal/_BufferKt;->rangeEquals(Lokio/u;I[BII)Z

    move-result v12

    if-eqz v12, :cond_92

    iget v1, v8, Lokio/u;->c:I

    sub-int/2addr v3, v1

    int-to-long v1, v3

    add-long v7, v1, v6

    goto/16 :goto_109

    :cond_92
    if-lt v5, v4, :cond_95

    goto :goto_97

    :cond_95
    move v3, v5

    goto :goto_7d

    :cond_97
    :goto_97
    iget v3, v8, Lokio/u;->d:I

    iget v4, v8, Lokio/u;->c:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v6, v3

    iget-object v8, v8, Lokio/u;->g:Lokio/u;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v4, v6

    goto :goto_5e

    :cond_a5
    :goto_a5
    iget v3, v6, Lokio/u;->d:I

    iget v7, v6, Lokio/u;->c:I

    sub-int/2addr v3, v7

    int-to-long v7, v3

    add-long/2addr v7, v4

    cmp-long v3, v7, p2

    if-lez v3, :cond_10a

    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->u()[B

    move-result-object v3

    aget-byte v2, v3, v2

    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->F()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->I()J

    move-result-wide v7

    int-to-long v9, v1

    sub-long/2addr v7, v9

    add-long/2addr v7, v11

    move-wide v9, v4

    move-wide/from16 v4, p2

    :goto_c4
    cmp-long v11, v9, v7

    if-gez v11, :cond_24

    iget-object v11, v6, Lokio/u;->b:[B

    iget v12, v6, Lokio/u;->d:I

    iget v13, v6, Lokio/u;->c:I

    int-to-long v13, v13

    add-long/2addr v13, v7

    sub-long/2addr v13, v9

    move-wide v15, v7

    int-to-long v7, v12

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v8, v7

    iget v7, v6, Lokio/u;->c:I

    int-to-long v12, v7

    add-long/2addr v12, v4

    sub-long/2addr v12, v9

    long-to-int v4, v12

    if-ge v4, v8, :cond_f9

    :goto_e0
    add-int/lit8 v5, v4, 0x1

    aget-byte v7, v11, v4

    const/4 v13, 0x1

    if-ne v7, v2, :cond_f4

    invoke-static {v6, v5, v3, v13, v1}, Lokio/internal/_BufferKt;->rangeEquals(Lokio/u;I[BII)Z

    move-result v7

    if-eqz v7, :cond_f4

    iget v1, v6, Lokio/u;->c:I

    sub-int/2addr v4, v1

    int-to-long v1, v4

    add-long v7, v1, v9

    goto :goto_109

    :cond_f4
    if-lt v5, v8, :cond_f7

    goto :goto_fa

    :cond_f7
    move v4, v5

    goto :goto_e0

    :cond_f9
    const/4 v13, 0x1

    :goto_fa
    iget v4, v6, Lokio/u;->d:I

    iget v5, v6, Lokio/u;->c:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v9, v4

    iget-object v6, v6, Lokio/u;->g:Lokio/u;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v4, v9

    move-wide v7, v15

    goto :goto_c4

    :goto_109
    return-wide v7

    :cond_10a
    const/4 v13, 0x1

    iget-object v6, v6, Lokio/u;->g:Lokio/u;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v4, v7

    goto :goto_a5

    :cond_112
    move-object/from16 v0, p0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fromIndex < 0: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_128
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bytes is empty"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public q(Lokio/ByteString;)J
    .registers 4

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->r(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public r(Lokio/ByteString;J)J
    .registers 15

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p2, v0

    if-ltz v4, :cond_f

    const/4 v4, 0x1

    goto :goto_10

    :cond_f
    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_138

    iget-object v4, p0, Lokio/Buffer;->a:Lokio/u;

    const-wide/16 v5, -0x1

    if-nez v4, :cond_1a

    goto/16 :goto_12f

    :cond_1a
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v7

    sub-long/2addr v7, p2

    const/4 v9, 0x2

    cmp-long v10, v7, p2

    if-gez v10, :cond_b3

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    :goto_28
    cmp-long v7, v0, p2

    if-lez v7, :cond_39

    iget-object v4, v4, Lokio/u;->h:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v7, v4, Lokio/u;->d:I

    iget v8, v4, Lokio/u;->c:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v0, v7

    goto :goto_28

    :cond_39
    invoke-virtual {p1}, Lokio/ByteString;->F()I

    move-result v7

    if-ne v7, v9, :cond_7b

    invoke-virtual {p1, v2}, Lokio/ByteString;->j(I)B

    move-result v2

    invoke-virtual {p1, v3}, Lokio/ByteString;->j(I)B

    move-result p1

    :goto_47
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v7

    cmp-long v3, v0, v7

    if-gez v3, :cond_12f

    iget-object v3, v4, Lokio/u;->b:[B

    iget v7, v4, Lokio/u;->c:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    iget p3, v4, Lokio/u;->d:I

    :goto_59
    if-ge p2, p3, :cond_6d

    aget-byte v7, v3, p2

    if-eq v7, v2, :cond_65

    if-ne v7, p1, :cond_62

    goto :goto_65

    :cond_62
    add-int/lit8 p2, p2, 0x1

    goto :goto_59

    :cond_65
    :goto_65
    iget p1, v4, Lokio/u;->c:I

    :goto_67
    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long v5, p1, v0

    goto/16 :goto_12f

    :cond_6d
    iget p2, v4, Lokio/u;->d:I

    iget p3, v4, Lokio/u;->c:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object v4, v4, Lokio/u;->g:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_47

    :cond_7b
    invoke-virtual {p1}, Lokio/ByteString;->u()[B

    move-result-object p1

    :goto_7f
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v7

    cmp-long v3, v0, v7

    if-gez v3, :cond_12f

    iget-object v3, v4, Lokio/u;->b:[B

    iget v7, v4, Lokio/u;->c:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    iget p3, v4, Lokio/u;->d:I

    :goto_91
    if-ge p2, p3, :cond_a5

    aget-byte v7, v3, p2

    array-length v8, p1

    const/4 v9, 0x0

    :cond_97
    if-ge v9, v8, :cond_a2

    aget-byte v10, p1, v9

    add-int/lit8 v9, v9, 0x1

    if-ne v7, v10, :cond_97

    :goto_9f
    iget p1, v4, Lokio/u;->c:I

    goto :goto_67

    :cond_a2
    add-int/lit8 p2, p2, 0x1

    goto :goto_91

    :cond_a5
    iget p2, v4, Lokio/u;->d:I

    iget p3, v4, Lokio/u;->c:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object v4, v4, Lokio/u;->g:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_7f

    :cond_b3
    :goto_b3
    iget v7, v4, Lokio/u;->d:I

    iget v8, v4, Lokio/u;->c:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v0

    cmp-long v10, v7, p2

    if-lez v10, :cond_130

    invoke-virtual {p1}, Lokio/ByteString;->F()I

    move-result v7

    if-ne v7, v9, :cond_f9

    invoke-virtual {p1, v2}, Lokio/ByteString;->j(I)B

    move-result v2

    invoke-virtual {p1, v3}, Lokio/ByteString;->j(I)B

    move-result p1

    :goto_cc
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v7

    cmp-long v3, v0, v7

    if-gez v3, :cond_12f

    iget-object v3, v4, Lokio/u;->b:[B

    iget v7, v4, Lokio/u;->c:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    iget p3, v4, Lokio/u;->d:I

    :goto_de
    if-ge p2, p3, :cond_eb

    aget-byte v7, v3, p2

    if-eq v7, v2, :cond_65

    if-ne v7, p1, :cond_e8

    goto/16 :goto_65

    :cond_e8
    add-int/lit8 p2, p2, 0x1

    goto :goto_de

    :cond_eb
    iget p2, v4, Lokio/u;->d:I

    iget p3, v4, Lokio/u;->c:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object v4, v4, Lokio/u;->g:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_cc

    :cond_f9
    invoke-virtual {p1}, Lokio/ByteString;->u()[B

    move-result-object p1

    :goto_fd
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v7

    cmp-long v3, v0, v7

    if-gez v3, :cond_12f

    iget-object v3, v4, Lokio/u;->b:[B

    iget v7, v4, Lokio/u;->c:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    iget p3, v4, Lokio/u;->d:I

    :goto_10f
    if-ge p2, p3, :cond_121

    aget-byte v7, v3, p2

    array-length v8, p1

    const/4 v9, 0x0

    :cond_115
    if-ge v9, v8, :cond_11e

    aget-byte v10, p1, v9

    add-int/lit8 v9, v9, 0x1

    if-ne v7, v10, :cond_115

    goto :goto_9f

    :cond_11e
    add-int/lit8 p2, p2, 0x1

    goto :goto_10f

    :cond_121
    iget p2, v4, Lokio/u;->d:I

    iget p3, v4, Lokio/u;->c:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object v4, v4, Lokio/u;->g:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_fd

    :cond_12f
    :goto_12f
    return-wide v5

    :cond_130
    iget-object v4, v4, Lokio/u;->g:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v0, v7

    goto/16 :goto_b3

    :cond_138
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "fromIndex < 0: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/u;

    if-nez v0, :cond_b

    const/4 p1, -0x1

    return p1

    :cond_b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lokio/u;->d:I

    iget v3, v0, Lokio/u;->c:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lokio/u;->b:[B

    iget v3, v0, Lokio/u;->c:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget p1, v0, Lokio/u;->c:I

    add-int/2addr p1, v1

    iput p1, v0, Lokio/u;->c:I

    iget-wide v2, p0, Lokio/Buffer;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->b:J

    iget v2, v0, Lokio/u;->d:I

    if-ne p1, v2, :cond_37

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    :cond_37
    return v1
.end method

.method public read([BII)I
    .registers 11

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/u;

    if-nez v0, :cond_12

    const/4 p1, -0x1

    goto :goto_42

    :cond_12
    iget v1, v0, Lokio/u;->d:I

    iget v2, v0, Lokio/u;->c:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v1, v0, Lokio/u;->b:[B

    iget v2, v0, Lokio/u;->c:I

    add-int v3, v2, p3

    invoke-static {v1, p1, p2, v2, v3}, Lkotlin/collections/k;->copyInto([B[BIII)[B

    iget p1, v0, Lokio/u;->c:I

    add-int/2addr p1, p3

    iput p1, v0, Lokio/u;->c:I

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide p1

    int-to-long v1, p3

    sub-long/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->x(J)V

    iget p1, v0, Lokio/u;->c:I

    iget p2, v0, Lokio/u;->d:I

    if-ne p1, p2, :cond_41

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    :cond_41
    move p1, p3

    :goto_42
    return p1
.end method

.method public read(Lokio/Buffer;J)J
    .registers 9

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    if-eqz v2, :cond_2c

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_1b

    const-wide/16 p1, -0x1

    goto :goto_2b

    :cond_1b
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_27

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide p2

    :cond_27
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->n(Lokio/Buffer;J)V

    move-wide p1, p2

    :goto_2b
    return-wide p1

    :cond_2c
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

.method public readByte()B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_32

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v0, Lokio/u;->c:I

    iget v2, v0, Lokio/u;->d:I

    iget-object v3, v0, Lokio/u;->b:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    invoke-virtual {p0, v5, v6}, Lokio/Buffer;->x(J)V

    if-ne v4, v2, :cond_2f

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    goto :goto_31

    :cond_2f
    iput v4, v0, Lokio/u;->c:I

    :goto_31
    return v1

    :cond_32
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readByteArray()[B
    .registers 3

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteArray(J)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_f

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_21

    long-to-int p2, p1

    new-array p1, p2, [B

    invoke-virtual {p0, p1}, Lokio/Buffer;->readFully([B)V

    return-object p1

    :cond_21
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_27
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "byteCount: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readByteString()Lokio/ByteString;
    .registers 3

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_f

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_33

    const-wide/16 v0, 0x1000

    cmp-long v2, p1, v0

    if-ltz v2, :cond_29

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lokio/Buffer;->K(I)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->skip(J)V

    goto :goto_32

    :cond_29
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/ByteString;-><init>([B)V

    :goto_32
    return-object v0

    :cond_33
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_39
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "byteCount: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readDecimalLong()J
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_e1

    const-wide/16 v1, -0x7

    const/4 v5, 0x0

    move-wide v8, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_12
    iget-object v10, v0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v11, v10, Lokio/u;->b:[B

    iget v12, v10, Lokio/u;->c:I

    iget v13, v10, Lokio/u;->d:I

    :goto_1d
    if-ge v12, v13, :cond_79

    aget-byte v15, v11, v12

    const/16 v14, 0x30

    int-to-byte v14, v14

    if-lt v15, v14, :cond_66

    const/16 v3, 0x39

    int-to-byte v3, v3

    if-gt v15, v3, :cond_66

    sub-int/2addr v14, v15

    const-wide v3, -0xcccccccccccccccL

    cmp-long v16, v8, v3

    if-ltz v16, :cond_44

    if-nez v16, :cond_3d

    int-to-long v3, v14

    cmp-long v16, v3, v1

    if-gez v16, :cond_3d

    goto :goto_44

    :cond_3d
    const-wide/16 v3, 0xa

    mul-long v8, v8, v3

    int-to-long v3, v14

    add-long/2addr v8, v3

    goto :goto_71

    :cond_44
    :goto_44
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, v8, v9}, Lokio/Buffer;->V(J)Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1, v15}, Lokio/Buffer;->U(I)Lokio/Buffer;

    move-result-object v1

    if-nez v6, :cond_56

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    :cond_56
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Number too large: "

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_66
    const/16 v3, 0x2d

    int-to-byte v3, v3

    if-ne v15, v3, :cond_78

    if-nez v5, :cond_78

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    const/4 v6, 0x1

    :goto_71
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v5, v5, 0x1

    const-wide/16 v3, 0x0

    goto :goto_1d

    :cond_78
    const/4 v7, 0x1

    :cond_79
    if-ne v12, v13, :cond_85

    invoke-virtual {v10}, Lokio/u;->b()Lokio/u;

    move-result-object v3

    iput-object v3, v0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v10}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    goto :goto_87

    :cond_85
    iput v12, v10, Lokio/u;->c:I

    :goto_87
    if-nez v7, :cond_91

    iget-object v3, v0, Lokio/Buffer;->a:Lokio/u;

    if-nez v3, :cond_8e

    goto :goto_91

    :cond_8e
    const-wide/16 v3, 0x0

    goto :goto_12

    :cond_91
    :goto_91
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    int-to-long v3, v5

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->x(J)V

    if-eqz v6, :cond_9e

    const/4 v14, 0x2

    goto :goto_9f

    :cond_9e
    const/4 v14, 0x1

    :goto_9f
    if-ge v5, v14, :cond_dc

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_d6

    if-eqz v6, :cond_b0

    const-string v1, "Expected a digit"

    goto :goto_b2

    :cond_b0
    const-string v1, "Expected a digit or \'-\'"

    :goto_b2
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but was 0x"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->m(J)B

    move-result v1

    invoke-static {v1}, Lokio/_UtilKt;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d6
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_dc
    if-eqz v6, :cond_df

    goto :goto_e0

    :cond_df
    neg-long v8, v8

    :goto_e0
    return-wide v8

    :cond_e1
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public readFully([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    add-int/2addr v0, v1

    goto :goto_6

    :cond_14
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1a
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a2

    const/4 v0, 0x0

    move-wide v4, v2

    const/4 v1, 0x0

    :cond_d
    iget-object v6, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v6, Lokio/u;->b:[B

    iget v8, v6, Lokio/u;->c:I

    iget v9, v6, Lokio/u;->d:I

    :goto_18
    if-ge v8, v9, :cond_84

    aget-byte v10, v7, v8

    const/16 v11, 0x30

    int-to-byte v11, v11

    if-lt v10, v11, :cond_29

    const/16 v12, 0x39

    int-to-byte v12, v12

    if-gt v10, v12, :cond_29

    sub-int v11, v10, v11

    goto :goto_43

    :cond_29
    const/16 v11, 0x61

    int-to-byte v11, v11

    if-lt v10, v11, :cond_38

    const/16 v12, 0x66

    int-to-byte v12, v12

    if-gt v10, v12, :cond_38

    :goto_33
    sub-int v11, v10, v11

    add-int/lit8 v11, v11, 0xa

    goto :goto_43

    :cond_38
    const/16 v11, 0x41

    int-to-byte v11, v11

    if-lt v10, v11, :cond_70

    const/16 v12, 0x46

    int-to-byte v12, v12

    if-gt v10, v12, :cond_70

    goto :goto_33

    :goto_43
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v14, v12, v2

    if-nez v14, :cond_53

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_53
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->W(J)Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v10}, Lokio/Buffer;->U(I)Lokio/Buffer;

    move-result-object v0

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Number too large: "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_70
    if-eqz v0, :cond_74

    const/4 v1, 0x1

    goto :goto_84

    :cond_74
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-static {v10}, Lokio/_UtilKt;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_84
    :goto_84
    if-ne v8, v9, :cond_90

    invoke-virtual {v6}, Lokio/u;->b()Lokio/u;

    move-result-object v7

    iput-object v7, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    goto :goto_92

    :cond_90
    iput v8, v6, Lokio/u;->c:I

    :goto_92
    if-nez v1, :cond_98

    iget-object v6, p0, Lokio/Buffer;->a:Lokio/u;

    if-nez v6, :cond_d

    :cond_98
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    int-to-long v6, v0

    sub-long/2addr v1, v6

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->x(J)V

    return-wide v4

    :cond_a2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readInt()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_77

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v0, Lokio/u;->c:I

    iget v4, v0, Lokio/u;->d:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    cmp-long v7, v5, v2

    if-gez v7, :cond_3c

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_76

    :cond_3c
    iget-object v5, v0, Lokio/u;->b:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {p0, v5, v6}, Lokio/Buffer;->x(J)V

    if-ne v7, v4, :cond_73

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    goto :goto_75

    :cond_73
    iput v7, v0, Lokio/u;->c:I

    :goto_75
    move v0, v1

    :goto_76
    return v0

    :cond_77
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readIntLe()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lokio/_UtilKt;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_98

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v0, Lokio/u;->c:I

    iget v4, v0, Lokio/u;->d:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    const/16 v7, 0x20

    cmp-long v8, v5, v2

    if-gez v8, :cond_30

    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    shl-long/2addr v0, v7

    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_97

    :cond_30
    iget-object v5, v0, Lokio/u;->b:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v5, v1

    int-to-long v8, v1

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v1, 0x38

    shl-long/2addr v8, v1

    add-int/lit8 v1, v6, 0x1

    aget-byte v6, v5, v6

    int-to-long v12, v6

    and-long/2addr v12, v10

    const/16 v6, 0x30

    shl-long/2addr v12, v6

    or-long/2addr v8, v12

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v5, v1

    int-to-long v12, v1

    and-long/2addr v12, v10

    const/16 v1, 0x28

    shl-long/2addr v12, v1

    or-long/2addr v8, v12

    add-int/lit8 v1, v6, 0x1

    aget-byte v6, v5, v6

    int-to-long v12, v6

    and-long/2addr v12, v10

    shl-long v6, v12, v7

    or-long/2addr v6, v8

    add-int/lit8 v8, v1, 0x1

    aget-byte v1, v5, v1

    int-to-long v12, v1

    and-long/2addr v12, v10

    const/16 v1, 0x18

    shl-long/2addr v12, v1

    or-long/2addr v6, v12

    add-int/lit8 v1, v8, 0x1

    aget-byte v8, v5, v8

    int-to-long v8, v8

    and-long/2addr v8, v10

    const/16 v12, 0x10

    shl-long/2addr v8, v12

    or-long/2addr v6, v8

    add-int/lit8 v8, v1, 0x1

    aget-byte v1, v5, v1

    int-to-long v12, v1

    and-long/2addr v12, v10

    const/16 v1, 0x8

    shl-long/2addr v12, v1

    or-long/2addr v6, v12

    add-int/lit8 v1, v8, 0x1

    aget-byte v5, v5, v8

    int-to-long v8, v5

    and-long/2addr v8, v10

    or-long v5, v6, v8

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->x(J)V

    if-ne v1, v4, :cond_94

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    goto :goto_96

    :cond_94
    iput v1, v0, Lokio/u;->c:I

    :goto_96
    move-wide v0, v5

    :goto_97
    return-wide v0

    :cond_98
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readLongLe()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    invoke-virtual {p0}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lokio/_UtilKt;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_52

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v0, Lokio/u;->c:I

    iget v4, v0, Lokio/u;->d:I

    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_29

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_51

    :cond_29
    iget-object v5, v0, Lokio/u;->b:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {p0, v5, v6}, Lokio/Buffer;->x(J)V

    if-ne v7, v4, :cond_4e

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    goto :goto_50

    :cond_4e
    iput v7, v0, Lokio/u;->c:I

    :goto_50
    int-to-short v0, v1

    :goto_51
    return v0

    :cond_52
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readShortLe()S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    invoke-virtual {p0}, Lokio/Buffer;->readShort()S

    move-result v0

    invoke-static {v0}, Lokio/_UtilKt;->reverseBytes(S)S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "charset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_14

    const-wide/32 v0, 0x7fffffff

    cmp-long v3, p1, v0

    if-gtz v3, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_62

    iget-wide v0, p0, Lokio/Buffer;->b:J

    cmp-long v3, v0, p1

    if-ltz v3, :cond_5c

    if-nez v2, :cond_22

    const-string p1, ""

    return-object p1

    :cond_22
    iget-object v0, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v0, Lokio/u;->c:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Lokio/u;->d:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_3c

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2

    :cond_3c
    iget-object v2, v0, Lokio/u;->b:[B

    long-to-int v3, p1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v1, v3, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p3, v0, Lokio/u;->c:I

    add-int/2addr p3, v3

    iput p3, v0, Lokio/u;->c:I

    iget-wide v1, p0, Lokio/Buffer;->b:J

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lokio/Buffer;->b:J

    iget p1, v0, Lokio/u;->d:I

    if-ne p3, p1, :cond_5b

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    :cond_5b
    return-object v4

    :cond_5c
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_62
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "byteCount: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lokio/Buffer;->b:J

    invoke-virtual {p0, v0, v1, p1}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readUtf8()Ljava/lang/String;
    .registers 4

    iget-wide v0, p0, Lokio/Buffer;->b:J

    sget-object v2, Lkotlin/text/b;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    sget-object v0, Lkotlin/text/b;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readUtf8CodePoint()I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_bc

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->m(J)B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/16 v3, 0x80

    const/4 v4, 0x1

    const v5, 0xfffd

    if-nez v1, :cond_1e

    and-int/lit8 v1, v0, 0x7f

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_41

    :cond_1e
    and-int/lit16 v1, v0, 0xe0

    const/16 v6, 0xc0

    if-ne v1, v6, :cond_2a

    and-int/lit8 v1, v0, 0x1f

    const/4 v6, 0x2

    const/16 v7, 0x80

    goto :goto_41

    :cond_2a
    and-int/lit16 v1, v0, 0xf0

    const/16 v6, 0xe0

    if-ne v1, v6, :cond_36

    and-int/lit8 v1, v0, 0xf

    const/4 v6, 0x3

    const/16 v7, 0x800

    goto :goto_41

    :cond_36
    and-int/lit16 v1, v0, 0xf8

    const/16 v6, 0xf0

    if-ne v1, v6, :cond_b6

    and-int/lit8 v1, v0, 0x7

    const/4 v6, 0x4

    const/high16 v7, 0x10000

    :goto_41
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v8

    int-to-long v10, v6

    cmp-long v12, v8, v10

    if-ltz v12, :cond_82

    if-ge v4, v6, :cond_66

    const/4 v0, 0x1

    :goto_4d
    add-int/lit8 v8, v0, 0x1

    int-to-long v12, v0

    invoke-virtual {p0, v12, v13}, Lokio/Buffer;->m(J)B

    move-result v0

    and-int/lit16 v9, v0, 0xc0

    if-ne v9, v3, :cond_62

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v1, v0

    if-lt v8, v6, :cond_60

    goto :goto_66

    :cond_60
    move v0, v8

    goto :goto_4d

    :cond_62
    invoke-virtual {p0, v12, v13}, Lokio/Buffer;->skip(J)V

    goto :goto_bb

    :cond_66
    :goto_66
    invoke-virtual {p0, v10, v11}, Lokio/Buffer;->skip(J)V

    const v0, 0x10ffff

    if-le v1, v0, :cond_6f

    goto :goto_bb

    :cond_6f
    const v0, 0xd800

    if-gt v0, v1, :cond_7a

    const v0, 0xdfff

    if-gt v1, v0, :cond_7a

    const/4 v2, 0x1

    :cond_7a
    if-eqz v2, :cond_7d

    goto :goto_bb

    :cond_7d
    if-ge v1, v7, :cond_80

    goto :goto_bb

    :cond_80
    move v5, v1

    goto :goto_bb

    :cond_82
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (to read code point prefixed 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lokio/_UtilKt;->toHexString(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b6
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    :goto_bb
    return v5

    :cond_bc
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_99

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_17

    goto :goto_19

    :cond_17
    add-long v2, p1, v0

    :goto_19
    const/16 v4, 0xa

    int-to-byte v10, v4

    const-wide/16 v6, 0x0

    move-object v4, p0

    move v5, v10

    move-wide v8, v2

    invoke-virtual/range {v4 .. v9}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_30

    invoke-static {p0, v4, v5}, Lokio/internal/_BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_4d

    :cond_30
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_4e

    sub-long v0, v2, v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->m(J)B

    move-result v0

    const/16 v1, 0xd

    int-to-byte v1, v1

    if-ne v0, v1, :cond_4e

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->m(J)B

    move-result v0

    if-ne v0, v10, :cond_4e

    invoke-static {p0, v2, v3}, Lokio/internal/_BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object p1

    :goto_4d
    return-object p1

    :cond_4e
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    const-wide/16 v2, 0x0

    const/16 v0, 0x20

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v4

    int-to-long v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->j(Lokio/Buffer;JJ)Lokio/Buffer;

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_99
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "limit < 0: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public request(J)Z
    .registers 6

    iget-wide v0, p0, Lokio/Buffer;->b:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public require(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, Lokio/Buffer;->b:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public s(JLokio/ByteString;)Z
    .registers 11

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lokio/ByteString;->F()I

    move-result v6

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->t(JLokio/ByteString;II)Z

    move-result p1

    return p1
.end method

.method public skip(J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_38

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/u;

    if-eqz v0, :cond_32

    iget v1, v0, Lokio/u;->d:I

    iget v2, v0, Lokio/u;->c:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v3

    int-to-long v5, v2

    sub-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->x(J)V

    sub-long/2addr p1, v5

    iget v1, v0, Lokio/u;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Lokio/u;->c:I

    iget v2, v0, Lokio/u;->d:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    goto :goto_0

    :cond_32
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_38
    return-void
.end method

.method public t(JLokio/ByteString;II)Z
    .registers 12

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_3b

    if-ltz p4, :cond_3b

    if-ltz p5, :cond_3b

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    sub-long/2addr v1, p1

    int-to-long v3, p5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3b

    invoke-virtual {p3}, Lokio/ByteString;->F()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_22

    goto :goto_3b

    :cond_22
    if-lez p5, :cond_3a

    const/4 v1, 0x0

    :goto_25
    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v1

    add-long/2addr v3, p1

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->m(J)B

    move-result v3

    add-int/2addr v1, p4

    invoke-virtual {p3, v1}, Lokio/ByteString;->j(I)B

    move-result v1

    if-eq v3, v1, :cond_35

    goto :goto_3b

    :cond_35
    if-lt v2, p5, :cond_38

    goto :goto_3a

    :cond_38
    move v1, v2

    goto :goto_25

    :cond_3a
    :goto_3a
    const/4 v0, 0x1

    :cond_3b
    :goto_3b
    return v0
.end method

.method public timeout()Lokio/z;
    .registers 2

    sget-object v0, Lokio/z;->b:Lokio/z;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lokio/Buffer;->J()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lokio/Buffer$a;)Lokio/Buffer$a;
    .registers 3

    const-string v0, "unsafeCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lokio/internal/_BufferKt;->commonReadAndWriteUnsafe(Lokio/Buffer;Lokio/Buffer$a;)Lokio/Buffer$a;

    move-result-object p1

    return-object p1
.end method

.method public v(Lokio/Buffer;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-ltz v2, :cond_11

    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->n(Lokio/Buffer;J)V

    return-void

    :cond_11
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide p2

    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->n(Lokio/Buffer;J)V

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public final w(Lokio/Buffer$a;)Lokio/Buffer$a;
    .registers 3

    const-string v0, "unsafeCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lokio/internal/_BufferKt;->commonReadUnsafe(Lokio/Buffer;Lokio/Buffer$a;)Lokio/Buffer$a;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_a
    if-lez v1, :cond_27

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v2

    iget v3, v2, Lokio/u;->d:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v2, Lokio/u;->b:[B

    iget v5, v2, Lokio/u;->d:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    iget v4, v2, Lokio/u;->d:I

    add-int/2addr v4, v3

    iput v4, v2, Lokio/u;->d:I

    goto :goto_a

    :cond_27
    iget-wide v1, p0, Lokio/Buffer;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lokio/Buffer;->b:J

    return v0
.end method

.method public bridge synthetic write([B)Lokio/d;
    .registers 2

    invoke-virtual {p0, p1}, Lokio/Buffer;->Q([B)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write([BII)Lokio/d;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->S([BII)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeByte(I)Lokio/d;
    .registers 2

    invoke-virtual {p0, p1}, Lokio/Buffer;->U(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeDecimalLong(J)Lokio/d;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->V(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lokio/d;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->W(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeInt(I)Lokio/d;
    .registers 2

    invoke-virtual {p0, p1}, Lokio/Buffer;->X(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeShort(I)Lokio/d;
    .registers 2

    invoke-virtual {p0, p1}, Lokio/Buffer;->b0(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lokio/d;
    .registers 2

    invoke-virtual {p0, p1}, Lokio/Buffer;->g0(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public final x(J)V
    .registers 3

    iput-wide p1, p0, Lokio/Buffer;->b:J

    return-void
.end method

.method public y()Lokio/Buffer;
    .registers 1

    return-object p0
.end method

###### Class okio.Buffer.a (okio.Buffer$a)
.class public final Lokio/Buffer$a;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lokio/Buffer;

.field public b:Z

.field private c:Lokio/u;

.field public d:J

.field public e:[B

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokio/Buffer$a;->d:J

    const/4 v0, -0x1

    iput v0, p0, Lokio/Buffer$a;->f:I

    iput v0, p0, Lokio/Buffer$a;->g:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v0, p0, Lokio/Buffer$a;->a:Lokio/Buffer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    iput-object v0, p0, Lokio/Buffer$a;->a:Lokio/Buffer;

    invoke-virtual {p0, v0}, Lokio/Buffer$a;->f(Lokio/u;)V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lokio/Buffer$a;->d:J

    iput-object v0, p0, Lokio/Buffer$a;->e:[B

    const/4 v0, -0x1

    iput v0, p0, Lokio/Buffer$a;->f:I

    iput v0, p0, Lokio/Buffer$a;->g:I

    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Lokio/u;
    .registers 2

    iget-object v0, p0, Lokio/Buffer$a;->c:Lokio/u;

    return-object v0
.end method

.method public final e(J)I
    .registers 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lokio/Buffer$a;->a:Lokio/Buffer;

    if-eqz v3, :cond_f5

    const-wide/16 v4, -0x1

    cmp-long v6, v1, v4

    if-ltz v6, :cond_d2

    invoke-virtual {v3}, Lokio/Buffer;->I()J

    move-result-wide v4

    cmp-long v7, v1, v4

    if-gtz v7, :cond_d2

    const/4 v4, -0x1

    if-eqz v6, :cond_c5

    invoke-virtual {v3}, Lokio/Buffer;->I()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-nez v7, :cond_23

    goto/16 :goto_c5

    :cond_23
    const-wide/16 v4, 0x0

    invoke-virtual {v3}, Lokio/Buffer;->I()J

    move-result-wide v6

    iget-object v8, v3, Lokio/Buffer;->a:Lokio/u;

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer$a;->d()Lokio/u;

    move-result-object v9

    if-eqz v9, :cond_56

    iget-wide v9, v0, Lokio/Buffer$a;->d:J

    iget v11, v0, Lokio/Buffer$a;->f:I

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer$a;->d()Lokio/u;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v12, v12, Lokio/u;->c:I

    sub-int/2addr v11, v12

    int-to-long v11, v11

    sub-long/2addr v9, v11

    cmp-long v11, v9, v1

    if-lez v11, :cond_4e

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer$a;->d()Lokio/u;

    move-result-object v6

    move-object v15, v8

    move-object v8, v6

    move-wide v6, v9

    move-object v9, v15

    goto :goto_57

    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer$a;->d()Lokio/u;

    move-result-object v4

    move-wide v15, v9

    move-object v9, v4

    move-wide v4, v15

    goto :goto_57

    :cond_56
    move-object v9, v8

    :goto_57
    sub-long v10, v6, v1

    sub-long v12, v1, v4

    cmp-long v14, v10, v12

    if-lez v14, :cond_74

    :goto_5f
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v6, v9, Lokio/u;->d:I

    iget v7, v9, Lokio/u;->c:I

    sub-int v8, v6, v7

    int-to-long v10, v8

    add-long/2addr v10, v4

    cmp-long v8, v1, v10

    if-ltz v8, :cond_8a

    sub-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-object v9, v9, Lokio/u;->g:Lokio/u;

    goto :goto_5f

    :cond_74
    :goto_74
    cmp-long v4, v6, v1

    if-lez v4, :cond_88

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v8, Lokio/u;->h:Lokio/u;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v8, Lokio/u;->d:I

    iget v5, v8, Lokio/u;->c:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v6, v4

    goto :goto_74

    :cond_88
    move-wide v4, v6

    move-object v9, v8

    :cond_8a
    iget-boolean v6, v0, Lokio/Buffer$a;->b:Z

    if-eqz v6, :cond_ab

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v6, v9, Lokio/u;->e:Z

    if-eqz v6, :cond_ab

    invoke-virtual {v9}, Lokio/u;->f()Lokio/u;

    move-result-object v6

    iget-object v7, v3, Lokio/Buffer;->a:Lokio/u;

    if-ne v7, v9, :cond_9f

    iput-object v6, v3, Lokio/Buffer;->a:Lokio/u;

    :cond_9f
    invoke-virtual {v9, v6}, Lokio/u;->c(Lokio/u;)Lokio/u;

    move-result-object v9

    iget-object v3, v9, Lokio/u;->h:Lokio/u;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lokio/u;->b()Lokio/u;

    :cond_ab
    invoke-virtual {v0, v9}, Lokio/Buffer$a;->f(Lokio/u;)V

    iput-wide v1, v0, Lokio/Buffer$a;->d:J

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v9, Lokio/u;->b:[B

    iput-object v3, v0, Lokio/Buffer$a;->e:[B

    iget v3, v9, Lokio/u;->c:I

    sub-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v3, v2

    iput v3, v0, Lokio/Buffer$a;->f:I

    iget v1, v9, Lokio/u;->d:I

    iput v1, v0, Lokio/Buffer$a;->g:I

    sub-int v4, v1, v3

    goto :goto_d1

    :cond_c5
    :goto_c5
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lokio/Buffer$a;->f(Lokio/u;)V

    iput-wide v1, v0, Lokio/Buffer$a;->d:J

    iput-object v3, v0, Lokio/Buffer$a;->e:[B

    iput v4, v0, Lokio/Buffer$a;->f:I

    iput v4, v0, Lokio/Buffer$a;->g:I

    :goto_d1
    return v4

    :cond_d2
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " > size="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokio/Buffer;->I()J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_f5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not attached to a buffer"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final f(Lokio/u;)V
    .registers 2

    iput-object p1, p0, Lokio/Buffer$a;->c:Lokio/u;

    return-void
.end method

###### Class okio.Buffer.b (okio.Buffer$b)
.class public final Lokio/Buffer$b;
.super Ljava/io/InputStream;
.source "Buffer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Buffer;->inputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokio/Buffer;


# direct methods
.method constructor <init>(Lokio/Buffer;)V
    .registers 2

    iput-object p1, p0, Lokio/Buffer$b;->a:Lokio/Buffer;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 5

    iget-object v0, p0, Lokio/Buffer$b;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const v2, 0x7fffffff

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public read()I
    .registers 6

    iget-object v0, p0, Lokio/Buffer$b;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_15

    iget-object v0, p0, Lokio/Buffer$b;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_16

    :cond_15
    const/4 v0, -0x1

    :goto_16
    return v0
.end method

.method public read([BII)I
    .registers 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/Buffer$b;->a:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->read([BII)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokio/Buffer$b;->a:Lokio/Buffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
