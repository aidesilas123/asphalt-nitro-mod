###### Class okio.m (okio.m)
.class public final Lokio/m;
.super Ljava/lang/Object;
.source "GzipSource.kt"

# interfaces
.implements Lokio/y;


# instance fields
.field private a:B

.field private final b:Lokio/RealBufferedSource;

.field private final c:Ljava/util/zip/Inflater;

.field private final d:Lokio/n;

.field private final e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lokio/y;)V
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/RealBufferedSource;

    invoke-direct {v0, p1}, Lokio/RealBufferedSource;-><init>(Lokio/y;)V

    iput-object v0, p0, Lokio/m;->b:Lokio/RealBufferedSource;

    new-instance p1, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, Lokio/m;->c:Ljava/util/zip/Inflater;

    new-instance v1, Lokio/n;

    invoke-direct {v1, v0, p1}, Lokio/n;-><init>(Lokio/e;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lokio/m;->d:Lokio/n;

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lokio/m;->e:Ljava/util/zip/CRC32;

    return-void
.end method

.method private final a(Ljava/lang/String;II)V
    .registers 8

    if-ne p3, p2, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, p1

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s: actual 0x%08x != expected 0x%08x"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(this, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final d()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    iget-object v0, v6, Lokio/m;->b:Lokio/RealBufferedSource;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lokio/RealBufferedSource;->require(J)V

    iget-object v0, v6, Lokio/m;->b:Lokio/RealBufferedSource;

    iget-object v0, v0, Lokio/RealBufferedSource;->b:Lokio/Buffer;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->m(J)B

    move-result v7

    shr-int/lit8 v0, v7, 0x1

    const/4 v8, 0x1

    and-int/2addr v0, v8

    const/4 v9, 0x0

    if-ne v0, v8, :cond_1c

    const/4 v10, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v10, 0x0

    :goto_1d
    if-eqz v10, :cond_2c

    iget-object v0, v6, Lokio/m;->b:Lokio/RealBufferedSource;

    iget-object v1, v0, Lokio/RealBufferedSource;->b:Lokio/Buffer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/m;->f(Lokio/Buffer;JJ)V

    :cond_2c
    iget-object v0, v6, Lokio/m;->b:Lokio/RealBufferedSource;

    invoke-virtual {v0}, Lokio/RealBufferedSource;->readShort()S

    move-result v0

    const/16 v1, 0x1f8b

    const-string v2, "ID1ID2"

    invoke-direct {v6, v2, v1, v0}, Lokio/m;->a(Ljava/lang/String;II)V

    iget-object v0, v6, Lokio/m;->b:Lokio/RealBufferedSource;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lokio/RealBufferedSource;->skip(J)V

    shr-int/lit8 v0, v7, 0x2

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_47

    const/4 v0, 0x1

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    :goto_48
    if-eqz v0, :cond_81

    iget-object v0, v6, Lokio/m;->b:Lokio/RealBufferedSource;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lokio/RealBufferedSource;->require(J)V

    if-eqz v10, :cond_60

    iget-object v0, v6, Lokio/m;->b:Lokio/RealBufferedSource;

    iget-object v1, v0, Lokio/RealBufferedSource;->b:Lokio/Buffer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/m;->f(Lokio/Buffer;JJ)V

    :cond_60
    iget-object v0, v6, Lokio/m;->b:Lokio/RealBufferedSource;

    iget-object v0, v0, Lokio/RealBufferedSource;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readShortLe()S

    move-result v0

    int-to-long v11, v0

    iget-object v0, v6, Lokio/m;->b:Lokio/RealBufferedSource;

    invoke-virtual {v0, v11, v12}, Lokio/RealBufferedSource;->require(J)V

    if-eqz v10, :cond_7c

    iget-object v0, v6, Lokio/m;->b:Lokio/RealBufferedSource;

    iget-object v1, v0, Lokio/RealBufferedSource;->b:Lokio/Buffer;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide v4, v11

    invoke-direct/range {v0 .. v5}, Lokio/m;->f(Lokio/Buffer;JJ)V

    :cond_7c
    iget-object v0, v6, Lokio/m;->b:Lokio/RealBufferedSource;

    invoke-virtual {v0, v11, v12}, Lokio/RealBufferedSource;->skip(J)V

    :cond_81
    shr-int/lit8 v0, v7, 0x3

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_88

    const/4 v0, 0x1

    goto :goto_89

    :cond_88
    const/4 v0, 0x0

    :goto_89
    const-wide/16 v11, -0x1

    const-wide/16 v13, 0x1

    if-eqz v0, :cond_b6

    iget-object v0, v6, Lokio/m;->b:Lokio/RealBufferedSource;

    invoke-virtual {v0, v9}, Lokio/RealBufferedSource;->indexOf(B)J

    move-result-wide v15

    cmp-long v0, v15, v11

    if-eqz v0, :cond_b0

    if-eqz v10, :cond_a8

    iget-object v0, v6, Lokio/m;->b:Lokio/RealBufferedSource;

    iget-object v1, v0, Lokio/RealBufferedSource;->b:Lokio/Buffer;

    const-wide/16 v2, 0x0

    add-long v4, v15, v13

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/m;->f(Lokio/Buffer;JJ)V

    :cond_a8
    iget-object v0, v6, Lokio/m;->b:Lokio/RealBufferedSource;

    add-long v1, v15, v13

    invoke-virtual {v0, v1, v2}, Lokio/RealBufferedSource;->skip(J)V

    goto :goto_b6

    :cond_b0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_b6
    :goto_b6
    shr-int/lit8 v0, v7, 0x4

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_bc

    goto :goto_bd

    :cond_bc
    const/4 v8, 0x0

    :goto_bd
    if-eqz v8, :cond_e5

    iget-object v0, v6, Lokio/m;->b:Lokio/RealBufferedSource;

    invoke-virtual {v0, v9}, Lokio/RealBufferedSource;->indexOf(B)J

    move-result-wide v7

    cmp-long v0, v7, v11

    if-eqz v0, :cond_df

    if-eqz v10, :cond_d8

    iget-object v0, v6, Lokio/m;->b:Lokio/RealBufferedSource;

    iget-object v1, v0, Lokio/RealBufferedSource;->b:Lokio/Buffer;

    const-wide/16 v2, 0x0

    add-long v4, v7, v13

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/m;->f(Lokio/Buffer;JJ)V

    :cond_d8
    iget-object v0, v6, Lokio/m;->b:Lokio/RealBufferedSource;

    add-long/2addr v7, v13

    invoke-virtual {v0, v7, v8}, Lokio/RealBufferedSource;->skip(J)V

    goto :goto_e5

    :cond_df
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_e5
    :goto_e5
    if-eqz v10, :cond_ff

    iget-object v0, v6, Lokio/m;->b:Lokio/RealBufferedSource;

    invoke-virtual {v0}, Lokio/RealBufferedSource;->readShortLe()S

    move-result v0

    iget-object v1, v6, Lokio/m;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    int-to-short v1, v2

    const-string v2, "FHCRC"

    invoke-direct {v6, v2, v0, v1}, Lokio/m;->a(Ljava/lang/String;II)V

    iget-object v0, v6, Lokio/m;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    :cond_ff
    return-void
.end method

.method private final e()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokio/m;->b:Lokio/RealBufferedSource;

    invoke-virtual {v0}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v0

    iget-object v1, p0, Lokio/m;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    const-string v1, "CRC"

    invoke-direct {p0, v1, v0, v2}, Lokio/m;->a(Ljava/lang/String;II)V

    iget-object v0, p0, Lokio/m;->b:Lokio/RealBufferedSource;

    invoke-virtual {v0}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v0

    iget-object v1, p0, Lokio/m;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v1

    long-to-int v2, v1

    const-string v1, "ISIZE"

    invoke-direct {p0, v1, v0, v2}, Lokio/m;->a(Ljava/lang/String;II)V

    return-void
.end method

.method private final f(Lokio/Buffer;JJ)V
    .registers 11

    iget-object p1, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_5
    iget v0, p1, Lokio/u;->d:I

    iget v1, p1, Lokio/u;->c:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    cmp-long v4, p2, v2

    if-ltz v4, :cond_19

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p2, v0

    iget-object p1, p1, Lokio/u;->g:Lokio/u;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_5

    :cond_19
    const-wide/16 v0, 0x0

    :goto_1b
    cmp-long v2, p4, v0

    if-lez v2, :cond_3d

    iget v2, p1, Lokio/u;->c:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int p2, v2

    iget p3, p1, Lokio/u;->d:I

    sub-int/2addr p3, p2

    int-to-long v2, p3

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    iget-object v2, p0, Lokio/m;->e:Ljava/util/zip/CRC32;

    iget-object v3, p1, Lokio/u;->b:[B

    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    iget-object p1, p1, Lokio/u;->g:Lokio/u;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_1b

    :cond_3d
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokio/m;->d:Lokio/n;

    invoke-virtual {v0}, Lokio/n;->close()V

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    cmp-long v3, p2, v0

    if-ltz v3, :cond_e

    const/4 v4, 0x1

    goto :goto_f

    :cond_e
    const/4 v4, 0x0

    :goto_f
    if-eqz v4, :cond_57

    if-nez v3, :cond_14

    return-wide v0

    :cond_14
    iget-byte v0, p0, Lokio/m;->a:B

    if-nez v0, :cond_1d

    invoke-direct {p0}, Lokio/m;->d()V

    iput-byte v2, p0, Lokio/m;->a:B

    :cond_1d
    iget-byte v0, p0, Lokio/m;->a:B

    const-wide/16 v3, -0x1

    const/4 v1, 0x2

    if-ne v0, v2, :cond_3b

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v7

    iget-object v0, p0, Lokio/m;->d:Lokio/n;

    invoke-virtual {v0, p1, p2, p3}, Lokio/n;->read(Lokio/Buffer;J)J

    move-result-wide p2

    cmp-long v0, p2, v3

    if-eqz v0, :cond_39

    move-object v5, p0

    move-object v6, p1

    move-wide v9, p2

    invoke-direct/range {v5 .. v10}, Lokio/m;->f(Lokio/Buffer;JJ)V

    return-wide p2

    :cond_39
    iput-byte v1, p0, Lokio/m;->a:B

    :cond_3b
    iget-byte p1, p0, Lokio/m;->a:B

    if-ne p1, v1, :cond_56

    invoke-direct {p0}, Lokio/m;->e()V

    const/4 p1, 0x3

    iput-byte p1, p0, Lokio/m;->a:B

    iget-object p1, p0, Lokio/m;->b:Lokio/RealBufferedSource;

    invoke-virtual {p1}, Lokio/RealBufferedSource;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_4e

    goto :goto_56

    :cond_4e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "gzip finished without exhausting source"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_56
    :goto_56
    return-wide v3

    :cond_57
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

    iget-object v0, p0, Lokio/m;->b:Lokio/RealBufferedSource;

    invoke-virtual {v0}, Lokio/RealBufferedSource;->timeout()Lokio/z;

    move-result-object v0

    return-object v0
.end method
