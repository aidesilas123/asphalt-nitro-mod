###### Class okio.internal._BufferKt (okio.internal._BufferKt)
.class public final Lokio/internal/_BufferKt;
.super Ljava/lang/Object;
.source "-Buffer.kt"


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0123456789abcdef"

    invoke-static {v0}, Lokio/_JvmPlatformKt;->asUtf8ToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lokio/internal/_BufferKt;->a:[B

    return-void
.end method

.method public static final commonClear(Lokio/Buffer;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void
.end method

.method public static final commonClose(Lokio/Buffer$a;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/Buffer$a;->a:Lokio/Buffer;

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_20

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

    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "not attached to a buffer"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonCompleteSegmentByteCount(Lokio/Buffer;)J
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    return-wide v2

    :cond_10
    iget-object p0, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lokio/u;->h:Lokio/u;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, p0, Lokio/u;->d:I

    const/16 v3, 0x2000

    if-ge v2, v3, :cond_29

    iget-boolean v3, p0, Lokio/u;->f:Z

    if-eqz v3, :cond_29

    iget p0, p0, Lokio/u;->c:I

    sub-int/2addr v2, p0

    int-to-long v2, v2

    sub-long/2addr v0, v2

    :cond_29
    return-wide v0
.end method

.method public static final commonCopy(Lokio/Buffer;)Lokio/Buffer;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_15

    return-object v0

    :cond_15
    iget-object v1, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lokio/u;->d()Lokio/u;

    move-result-object v2

    iput-object v2, v0, Lokio/Buffer;->a:Lokio/u;

    iput-object v2, v2, Lokio/u;->h:Lokio/u;

    iput-object v2, v2, Lokio/u;->g:Lokio/u;

    iget-object v3, v1, Lokio/u;->g:Lokio/u;

    :goto_26
    if-eq v3, v1, :cond_3a

    iget-object v4, v2, Lokio/u;->h:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lokio/u;->d()Lokio/u;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokio/u;->c(Lokio/u;)Lokio/u;

    iget-object v3, v3, Lokio/u;->g:Lokio/u;

    goto :goto_26

    :cond_3a
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->x(J)V

    return-object v0
.end method

.method public static final commonCopyTo(Lokio/Buffer;Lokio/Buffer;JJ)Lokio/Buffer;
    .registers 14

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_1a

    return-object p0

    :cond_1a
    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v2

    add-long/2addr v2, p4

    invoke-virtual {p1, v2, v3}, Lokio/Buffer;->x(J)V

    iget-object v2, p0, Lokio/Buffer;->a:Lokio/u;

    :goto_24
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v2, Lokio/u;->d:I

    iget v4, v2, Lokio/u;->c:I

    sub-int v5, v3, v4

    int-to-long v5, v5

    cmp-long v7, p2, v5

    if-ltz v7, :cond_38

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    iget-object v2, v2, Lokio/u;->g:Lokio/u;

    goto :goto_24

    :cond_38
    :goto_38
    cmp-long v3, p4, v0

    if-lez v3, :cond_74

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

    if-nez p2, :cond_5e

    iput-object v3, v3, Lokio/u;->h:Lokio/u;

    iput-object v3, v3, Lokio/u;->g:Lokio/u;

    iput-object v3, p1, Lokio/Buffer;->a:Lokio/u;

    goto :goto_69

    :cond_5e
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p2, Lokio/u;->h:Lokio/u;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Lokio/u;->c(Lokio/u;)Lokio/u;

    :goto_69
    iget p2, v3, Lokio/u;->d:I

    iget p3, v3, Lokio/u;->c:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    iget-object v2, v2, Lokio/u;->g:Lokio/u;

    move-wide p2, v0

    goto :goto_38

    :cond_74
    return-object p0
.end method

.method public static final commonEquals(Lokio/Buffer;Ljava/lang/Object;)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v0, v1, :cond_d

    return v2

    :cond_d
    instance-of v3, v1, Lokio/Buffer;

    const/4 v4, 0x0

    if-nez v3, :cond_13

    return v4

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->I()J

    move-result-wide v5

    check-cast v1, Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->I()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-eqz v3, :cond_22

    return v4

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->I()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_2d

    return v2

    :cond_2d
    iget-object v3, v0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v3, Lokio/u;->c:I

    iget v6, v1, Lokio/u;->c:I

    move-wide v9, v7

    :goto_3c
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->I()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-gez v13, :cond_8c

    iget v11, v3, Lokio/u;->d:I

    sub-int/2addr v11, v5

    iget v12, v1, Lokio/u;->d:I

    sub-int/2addr v12, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-long v11, v11

    cmp-long v13, v7, v11

    if-gez v13, :cond_74

    move-wide v13, v7

    :goto_54
    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    iget-object v15, v3, Lokio/u;->b:[B

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v15, v5

    iget-object v15, v1, Lokio/u;->b:[B

    add-int/lit8 v17, v6, 0x1

    aget-byte v6, v15, v6

    if-eq v5, v6, :cond_66

    return v4

    :cond_66
    cmp-long v5, v13, v11

    if-ltz v5, :cond_6f

    move/from16 v5, v16

    move/from16 v6, v17

    goto :goto_74

    :cond_6f
    move/from16 v5, v16

    move/from16 v6, v17

    goto :goto_54

    :cond_74
    :goto_74
    iget v13, v3, Lokio/u;->d:I

    if-ne v5, v13, :cond_7f

    iget-object v3, v3, Lokio/u;->g:Lokio/u;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v3, Lokio/u;->c:I

    :cond_7f
    iget v13, v1, Lokio/u;->d:I

    if-ne v6, v13, :cond_8a

    iget-object v1, v1, Lokio/u;->g:Lokio/u;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v6, v1, Lokio/u;->c:I

    :cond_8a
    add-long/2addr v9, v11

    goto :goto_3c

    :cond_8c
    return v2
.end method

.method public static final commonExpandBuffer(Lokio/Buffer$a;I)J
    .registers 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_6e

    const/16 v2, 0x2000

    if-gt p1, v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_5a

    iget-object v0, p0, Lokio/Buffer$a;->a:Lokio/Buffer;

    if-eqz v0, :cond_4e

    iget-boolean v1, p0, Lokio/Buffer$a;->b:Z

    if-eqz v1, :cond_42

    invoke-virtual {v0}, Lokio/Buffer;->I()J

    move-result-wide v3

    invoke-virtual {v0, p1}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object p1

    iget v1, p1, Lokio/u;->d:I

    rsub-int v1, v1, 0x2000

    iput v2, p1, Lokio/u;->d:I

    int-to-long v5, v1

    add-long v7, v3, v5

    invoke-virtual {v0, v7, v8}, Lokio/Buffer;->x(J)V

    invoke-virtual {p0, p1}, Lokio/Buffer$a;->f(Lokio/u;)V

    iput-wide v3, p0, Lokio/Buffer$a;->d:J

    iget-object p1, p1, Lokio/u;->b:[B

    iput-object p1, p0, Lokio/Buffer$a;->e:[B

    rsub-int p1, v1, 0x2000

    iput p1, p0, Lokio/Buffer$a;->f:I

    iput v2, p0, Lokio/Buffer$a;->g:I

    return-wide v5

    :cond_42
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "expandBuffer() only permitted for read/write buffers"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not attached to a buffer"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "minByteCount > Segment.SIZE: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "minByteCount <= 0: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final commonGet(Lokio/Buffer;J)B
    .registers 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    const-wide/16 v5, 0x1

    move-wide v3, p1

    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/u;

    if-eqz v0, :cond_61

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    sub-long/2addr v1, p1

    cmp-long v3, v1, p1

    if-gez v3, :cond_3f

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    :goto_20
    cmp-long p0, v1, p1

    if-lez p0, :cond_31

    iget-object v0, v0, Lokio/u;->h:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p0, v0, Lokio/u;->d:I

    iget v3, v0, Lokio/u;->c:I

    sub-int/2addr p0, v3

    int-to-long v3, p0

    sub-long/2addr v1, v3

    goto :goto_20

    :cond_31
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, v0, Lokio/u;->b:[B

    iget v0, v0, Lokio/u;->c:I

    int-to-long v3, v0

    add-long/2addr v3, p1

    sub-long/2addr v3, v1

    long-to-int p1, v3

    aget-byte p0, p0, p1

    return p0

    :cond_3f
    const-wide/16 v1, 0x0

    :goto_41
    iget p0, v0, Lokio/u;->d:I

    iget v3, v0, Lokio/u;->c:I

    sub-int/2addr p0, v3

    int-to-long v3, p0

    add-long/2addr v3, v1

    cmp-long p0, v3, p1

    if-lez p0, :cond_5a

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, v0, Lokio/u;->b:[B

    iget v0, v0, Lokio/u;->c:I

    int-to-long v3, v0

    add-long/2addr v3, p1

    sub-long/2addr v3, v1

    long-to-int p1, v3

    aget-byte p0, p0, p1

    return p0

    :cond_5a
    iget-object v0, v0, Lokio/u;->g:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v1, v3

    goto :goto_41

    :cond_61
    const/4 p0, 0x0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    throw p0
.end method

.method public static final commonHashCode(Lokio/Buffer;)I
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/u;

    if-nez v0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    const/4 v1, 0x1

    :cond_c
    iget v2, v0, Lokio/u;->c:I

    iget v3, v0, Lokio/u;->d:I

    :goto_10
    if-ge v2, v3, :cond_1c

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lokio/u;->b:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1c
    iget-object v0, v0, Lokio/u;->g:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lokio/Buffer;->a:Lokio/u;

    if-ne v0, v2, :cond_c

    return v1
.end method

.method public static final commonIndexOf(Lokio/Buffer;BJJ)J
    .registers 21

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    const-string v6, "<this>"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    cmp-long v9, v7, v2

    if-gtz v9, :cond_18

    cmp-long v9, v2, v4

    if-gtz v9, :cond_18

    const/4 v6, 0x1

    :cond_18
    if-eqz v6, :cond_d1

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v9

    cmp-long v6, v4, v9

    if-lez v6, :cond_26

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v4

    :cond_26
    move-wide v9, v4

    const-wide/16 v11, -0x1

    cmp-long v4, v2, v9

    if-nez v4, :cond_2e

    return-wide v11

    :cond_2e
    iget-object v4, v0, Lokio/Buffer;->a:Lokio/u;

    if-nez v4, :cond_33

    return-wide v11

    :cond_33
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v5

    sub-long/2addr v5, v2

    cmp-long v13, v5, v2

    if-gez v13, :cond_88

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v5

    :goto_40
    cmp-long v0, v5, v2

    if-lez v0, :cond_51

    iget-object v4, v4, Lokio/u;->h:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, v4, Lokio/u;->d:I

    iget v7, v4, Lokio/u;->c:I

    sub-int/2addr v0, v7

    int-to-long v7, v0

    sub-long/2addr v5, v7

    goto :goto_40

    :cond_51
    :goto_51
    cmp-long v0, v5, v9

    if-gez v0, :cond_87

    iget-object v0, v4, Lokio/u;->b:[B

    iget v7, v4, Lokio/u;->d:I

    int-to-long v7, v7

    iget v13, v4, Lokio/u;->c:I

    int-to-long v13, v13

    add-long/2addr v13, v9

    sub-long/2addr v13, v5

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v8, v7

    iget v7, v4, Lokio/u;->c:I

    int-to-long v13, v7

    add-long/2addr v13, v2

    sub-long/2addr v13, v5

    long-to-int v2, v13

    :goto_6a
    if-ge v2, v8, :cond_79

    aget-byte v3, v0, v2

    if-ne v3, v1, :cond_76

    iget v0, v4, Lokio/u;->c:I

    sub-int/2addr v2, v0

    int-to-long v0, v2

    add-long/2addr v0, v5

    return-wide v0

    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    :cond_79
    iget v0, v4, Lokio/u;->d:I

    iget v2, v4, Lokio/u;->c:I

    sub-int/2addr v0, v2

    int-to-long v2, v0

    add-long/2addr v5, v2

    iget-object v4, v4, Lokio/u;->g:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v2, v5

    goto :goto_51

    :cond_87
    return-wide v11

    :cond_88
    :goto_88
    iget v0, v4, Lokio/u;->d:I

    iget v5, v4, Lokio/u;->c:I

    sub-int/2addr v0, v5

    int-to-long v5, v0

    add-long/2addr v5, v7

    cmp-long v0, v5, v2

    if-lez v0, :cond_ca

    :goto_93
    cmp-long v0, v7, v9

    if-gez v0, :cond_c9

    iget-object v0, v4, Lokio/u;->b:[B

    iget v5, v4, Lokio/u;->d:I

    int-to-long v5, v5

    iget v13, v4, Lokio/u;->c:I

    int-to-long v13, v13

    add-long/2addr v13, v9

    sub-long/2addr v13, v7

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v6, v5

    iget v5, v4, Lokio/u;->c:I

    int-to-long v13, v5

    add-long/2addr v13, v2

    sub-long/2addr v13, v7

    long-to-int v2, v13

    :goto_ac
    if-ge v2, v6, :cond_bb

    aget-byte v3, v0, v2

    if-ne v3, v1, :cond_b8

    iget v0, v4, Lokio/u;->c:I

    sub-int/2addr v2, v0

    int-to-long v0, v2

    add-long/2addr v0, v7

    return-wide v0

    :cond_b8
    add-int/lit8 v2, v2, 0x1

    goto :goto_ac

    :cond_bb
    iget v0, v4, Lokio/u;->d:I

    iget v2, v4, Lokio/u;->c:I

    sub-int/2addr v0, v2

    int-to-long v2, v0

    add-long/2addr v7, v2

    iget-object v4, v4, Lokio/u;->g:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v2, v7

    goto :goto_93

    :cond_c9
    return-wide v11

    :cond_ca
    iget-object v4, v4, Lokio/u;->g:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v7, v5

    goto :goto_88

    :cond_d1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " fromIndex="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " toIndex="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final commonIndexOf(Lokio/Buffer;Lokio/ByteString;J)J
    .registers 19

    move-object v0, p0

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bytes"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->F()I

    move-result v1

    const/4 v3, 0x0

    if-lez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    if-eqz v1, :cond_12c

    const-wide/16 v5, 0x0

    cmp-long v1, p2, v5

    if-ltz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    if-eqz v1, :cond_118

    iget-object v1, v0, Lokio/Buffer;->a:Lokio/u;

    const-wide/16 v7, -0x1

    if-nez v1, :cond_2b

    return-wide v7

    :cond_2b
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v9

    sub-long v9, v9, p2

    const-wide/16 v11, 0x1

    cmp-long v13, v9, p2

    if-gez v13, :cond_a7

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v5

    :goto_3b
    cmp-long v9, v5, p2

    if-lez v9, :cond_4c

    iget-object v1, v1, Lokio/u;->h:Lokio/u;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v9, v1, Lokio/u;->d:I

    iget v10, v1, Lokio/u;->c:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    sub-long/2addr v5, v9

    goto :goto_3b

    :cond_4c
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->u()[B

    move-result-object v9

    aget-byte v3, v9, v3

    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->F()I

    move-result v2

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v13

    int-to-long v7, v2

    sub-long/2addr v13, v7

    add-long/2addr v13, v11

    move-wide v6, v5

    move-object v5, v1

    move-wide/from16 v0, p2

    :goto_61
    cmp-long v8, v6, v13

    if-gez v8, :cond_a4

    iget-object v8, v5, Lokio/u;->b:[B

    iget v10, v5, Lokio/u;->d:I

    iget v11, v5, Lokio/u;->c:I

    int-to-long v11, v11

    add-long/2addr v11, v13

    sub-long/2addr v11, v6

    move-object p0, v5

    int-to-long v4, v10

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    move-object v4, p0

    iget v10, v4, Lokio/u;->c:I

    int-to-long v10, v10

    add-long/2addr v10, v0

    sub-long/2addr v10, v6

    long-to-int v0, v10

    if-ge v0, v5, :cond_96

    :goto_7e
    add-int/lit8 v1, v0, 0x1

    aget-byte v10, v8, v0

    if-ne v10, v3, :cond_91

    const/4 v10, 0x1

    invoke-static {v4, v1, v9, v10, v2}, Lokio/internal/_BufferKt;->rangeEquals(Lokio/u;I[BII)Z

    move-result v11

    if-eqz v11, :cond_91

    iget v1, v4, Lokio/u;->c:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v6

    return-wide v0

    :cond_91
    if-lt v1, v5, :cond_94

    goto :goto_96

    :cond_94
    move v0, v1

    goto :goto_7e

    :cond_96
    :goto_96
    iget v0, v4, Lokio/u;->d:I

    iget v1, v4, Lokio/u;->c:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v6, v0

    iget-object v5, v4, Lokio/u;->g:Lokio/u;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v0, v6

    goto :goto_61

    :cond_a4
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_a7
    :goto_a7
    iget v4, v1, Lokio/u;->d:I

    iget v7, v1, Lokio/u;->c:I

    sub-int/2addr v4, v7

    int-to-long v7, v4

    add-long/2addr v7, v5

    cmp-long v4, v7, p2

    if-lez v4, :cond_10e

    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->u()[B

    move-result-object v4

    aget-byte v3, v4, v3

    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->F()I

    move-result v2

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v7

    int-to-long v9, v2

    sub-long/2addr v7, v9

    add-long/2addr v7, v11

    move-wide v9, v5

    move-object v5, v1

    move-wide/from16 v0, p2

    :goto_c7
    cmp-long v6, v9, v7

    if-gez v6, :cond_10b

    iget-object v6, v5, Lokio/u;->b:[B

    iget v11, v5, Lokio/u;->d:I

    iget v12, v5, Lokio/u;->c:I

    int-to-long v12, v12

    add-long/2addr v12, v7

    sub-long/2addr v12, v9

    move-wide p0, v7

    int-to-long v7, v11

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v8, v7

    iget v7, v5, Lokio/u;->c:I

    int-to-long v11, v7

    add-long/2addr v11, v0

    sub-long/2addr v11, v9

    long-to-int v0, v11

    if-ge v0, v8, :cond_fb

    :goto_e3
    add-int/lit8 v1, v0, 0x1

    aget-byte v7, v6, v0

    const/4 v13, 0x1

    if-ne v7, v3, :cond_f6

    invoke-static {v5, v1, v4, v13, v2}, Lokio/internal/_BufferKt;->rangeEquals(Lokio/u;I[BII)Z

    move-result v7

    if-eqz v7, :cond_f6

    iget v1, v5, Lokio/u;->c:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v9

    return-wide v0

    :cond_f6
    if-lt v1, v8, :cond_f9

    goto :goto_fc

    :cond_f9
    move v0, v1

    goto :goto_e3

    :cond_fb
    const/4 v13, 0x1

    :goto_fc
    iget v0, v5, Lokio/u;->d:I

    iget v1, v5, Lokio/u;->c:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v9, v0

    iget-object v5, v5, Lokio/u;->g:Lokio/u;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v7, p0

    move-wide v0, v9

    goto :goto_c7

    :cond_10b
    const-wide/16 v5, -0x1

    return-wide v5

    :cond_10e
    const-wide/16 v5, -0x1

    const/4 v13, 0x1

    iget-object v1, v1, Lokio/u;->g:Lokio/u;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v5, v7

    goto :goto_a7

    :cond_118
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "fromIndex < 0: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final commonIndexOfElement(Lokio/Buffer;Lokio/ByteString;J)J
    .registers 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p2, v0

    if-ltz v4, :cond_14

    const/4 v4, 0x1

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    :goto_15
    if-eqz v4, :cond_13b

    iget-object v4, p0, Lokio/Buffer;->a:Lokio/u;

    const-wide/16 v5, -0x1

    if-nez v4, :cond_1e

    return-wide v5

    :cond_1e
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v7

    sub-long/2addr v7, p2

    const/4 v9, 0x2

    cmp-long v10, v7, p2

    if-gez v10, :cond_b6

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    :goto_2c
    cmp-long v7, v0, p2

    if-lez v7, :cond_3d

    iget-object v4, v4, Lokio/u;->h:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v7, v4, Lokio/u;->d:I

    iget v8, v4, Lokio/u;->c:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v0, v7

    goto :goto_2c

    :cond_3d
    invoke-virtual {p1}, Lokio/ByteString;->F()I

    move-result v7

    if-ne v7, v9, :cond_7d

    invoke-virtual {p1, v2}, Lokio/ByteString;->j(I)B

    move-result v2

    invoke-virtual {p1, v3}, Lokio/ByteString;->j(I)B

    move-result p1

    :goto_4b
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v7

    cmp-long v3, v0, v7

    if-gez v3, :cond_b5

    iget-object v3, v4, Lokio/u;->b:[B

    iget v7, v4, Lokio/u;->c:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    iget p3, v4, Lokio/u;->d:I

    :goto_5d
    if-ge p2, p3, :cond_6f

    aget-byte v7, v3, p2

    if-eq v7, v2, :cond_69

    if-ne v7, p1, :cond_66

    goto :goto_69

    :cond_66
    add-int/lit8 p2, p2, 0x1

    goto :goto_5d

    :cond_69
    :goto_69
    iget p0, v4, Lokio/u;->c:I

    :goto_6b
    sub-int/2addr p2, p0

    int-to-long p0, p2

    add-long/2addr p0, v0

    return-wide p0

    :cond_6f
    iget p2, v4, Lokio/u;->d:I

    iget p3, v4, Lokio/u;->c:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object v4, v4, Lokio/u;->g:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_4b

    :cond_7d
    invoke-virtual {p1}, Lokio/ByteString;->u()[B

    move-result-object p1

    :goto_81
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v7

    cmp-long v3, v0, v7

    if-gez v3, :cond_b5

    iget-object v3, v4, Lokio/u;->b:[B

    iget v7, v4, Lokio/u;->c:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    iget p3, v4, Lokio/u;->d:I

    :goto_93
    if-ge p2, p3, :cond_a7

    aget-byte v7, v3, p2

    array-length v8, p1

    const/4 v9, 0x0

    :cond_99
    if-ge v9, v8, :cond_a4

    aget-byte v10, p1, v9

    add-int/lit8 v9, v9, 0x1

    if-ne v7, v10, :cond_99

    :goto_a1
    iget p0, v4, Lokio/u;->c:I

    goto :goto_6b

    :cond_a4
    add-int/lit8 p2, p2, 0x1

    goto :goto_93

    :cond_a7
    iget p2, v4, Lokio/u;->d:I

    iget p3, v4, Lokio/u;->c:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object v4, v4, Lokio/u;->g:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_81

    :cond_b5
    return-wide v5

    :cond_b6
    :goto_b6
    iget v7, v4, Lokio/u;->d:I

    iget v8, v4, Lokio/u;->c:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v0

    cmp-long v10, v7, p2

    if-lez v10, :cond_133

    invoke-virtual {p1}, Lokio/ByteString;->F()I

    move-result v7

    if-ne v7, v9, :cond_fc

    invoke-virtual {p1, v2}, Lokio/ByteString;->j(I)B

    move-result v2

    invoke-virtual {p1, v3}, Lokio/ByteString;->j(I)B

    move-result p1

    :goto_cf
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v7

    cmp-long v3, v0, v7

    if-gez v3, :cond_132

    iget-object v3, v4, Lokio/u;->b:[B

    iget v7, v4, Lokio/u;->c:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    iget p3, v4, Lokio/u;->d:I

    :goto_e1
    if-ge p2, p3, :cond_ee

    aget-byte v7, v3, p2

    if-eq v7, v2, :cond_69

    if-ne v7, p1, :cond_eb

    goto/16 :goto_69

    :cond_eb
    add-int/lit8 p2, p2, 0x1

    goto :goto_e1

    :cond_ee
    iget p2, v4, Lokio/u;->d:I

    iget p3, v4, Lokio/u;->c:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object v4, v4, Lokio/u;->g:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_cf

    :cond_fc
    invoke-virtual {p1}, Lokio/ByteString;->u()[B

    move-result-object p1

    :goto_100
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v7

    cmp-long v3, v0, v7

    if-gez v3, :cond_132

    iget-object v3, v4, Lokio/u;->b:[B

    iget v7, v4, Lokio/u;->c:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    iget p3, v4, Lokio/u;->d:I

    :goto_112
    if-ge p2, p3, :cond_124

    aget-byte v7, v3, p2

    array-length v8, p1

    const/4 v9, 0x0

    :cond_118
    if-ge v9, v8, :cond_121

    aget-byte v10, p1, v9

    add-int/lit8 v9, v9, 0x1

    if-ne v7, v10, :cond_118

    goto :goto_a1

    :cond_121
    add-int/lit8 p2, p2, 0x1

    goto :goto_112

    :cond_124
    iget p2, v4, Lokio/u;->d:I

    iget p3, v4, Lokio/u;->c:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object v4, v4, Lokio/u;->g:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_100

    :cond_132
    return-wide v5

    :cond_133
    iget-object v4, v4, Lokio/u;->g:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v0, v7

    goto/16 :goto_b6

    :cond_13b
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "fromIndex < 0: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final commonNext(Lokio/Buffer$a;)I
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lokio/Buffer$a;->d:J

    iget-object v2, p0, Lokio/Buffer$a;->a:Lokio/Buffer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lokio/Buffer;->I()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_30

    iget-wide v0, p0, Lokio/Buffer$a;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_24

    const-wide/16 v0, 0x0

    goto :goto_2b

    :cond_24
    iget v2, p0, Lokio/Buffer$a;->g:I

    iget v3, p0, Lokio/Buffer$a;->f:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    :goto_2b
    invoke-virtual {p0, v0, v1}, Lokio/Buffer$a;->e(J)I

    move-result p0

    return p0

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no more bytes"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonRangeEquals(Lokio/Buffer;JLokio/ByteString;II)Z
    .registers 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_41

    if-ltz p4, :cond_41

    if-ltz p5, :cond_41

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    sub-long/2addr v1, p1

    int-to-long v3, p5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_41

    invoke-virtual {p3}, Lokio/ByteString;->F()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_27

    goto :goto_41

    :cond_27
    if-lez p5, :cond_3f

    const/4 v1, 0x0

    :goto_2a
    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v1

    add-long/2addr v3, p1

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->m(J)B

    move-result v3

    add-int/2addr v1, p4

    invoke-virtual {p3, v1}, Lokio/ByteString;->j(I)B

    move-result v1

    if-eq v3, v1, :cond_3a

    return v0

    :cond_3a
    if-lt v2, p5, :cond_3d

    goto :goto_3f

    :cond_3d
    move v1, v2

    goto :goto_2a

    :cond_3f
    :goto_3f
    const/4 p0, 0x1

    return p0

    :cond_41
    :goto_41
    return v0
.end method

.method public static final commonRead(Lokio/Buffer;[B)I
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/Buffer;->read([BII)I

    move-result p0

    return p0
.end method

.method public static final commonRead(Lokio/Buffer;[BII)I
    .registers 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/u;

    if-nez v0, :cond_17

    const/4 p0, -0x1

    return p0

    :cond_17
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

    if-ne p1, p2, :cond_46

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    :cond_46
    return p3
.end method

.method public static final commonRead(Lokio/Buffer;Lokio/Buffer;J)J
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    if-eqz v2, :cond_30

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_20

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_20
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2c

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide p2

    :cond_2c
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->n(Lokio/Buffer;J)V

    return-wide p2

    :cond_30
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "byteCount < 0: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final commonReadAll(Lokio/Buffer;Lokio/w;)J
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_17

    invoke-interface {p1, p0, v0, v1}, Lokio/w;->n(Lokio/Buffer;J)V

    :cond_17
    return-wide v0
.end method

.method public static final commonReadAndWriteUnsafe(Lokio/Buffer;Lokio/Buffer$a;)Lokio/Buffer$a;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unsafeCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lokio/_UtilKt;->resolveDefaultParameter(Lokio/Buffer$a;)Lokio/Buffer$a;

    move-result-object p1

    iget-object v0, p1, Lokio/Buffer$a;->a:Lokio/Buffer;

    const/4 v1, 0x1

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_1d

    iput-object p0, p1, Lokio/Buffer$a;->a:Lokio/Buffer;

    iput-boolean v1, p1, Lokio/Buffer$a;->b:Z

    return-object p1

    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "already attached to a buffer"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonReadByte(Lokio/Buffer;)B
    .registers 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_37

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

    if-ne v4, v2, :cond_34

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    goto :goto_36

    :cond_34
    iput v4, v0, Lokio/u;->c:I

    :goto_36
    return v1

    :cond_37
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static final commonReadByteArray(Lokio/Buffer;)[B
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadByteArray(Lokio/Buffer;J)[B
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_14

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_26

    long-to-int p2, p1

    new-array p1, p2, [B

    invoke-virtual {p0, p1}, Lokio/Buffer;->readFully([B)V

    return-object p1

    :cond_26
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_2c
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "byteCount: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final commonReadByteString(Lokio/Buffer;)Lokio/ByteString;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadByteString(Lokio/Buffer;J)Lokio/ByteString;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_14

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_38

    const-wide/16 v0, 0x1000

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2e

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lokio/Buffer;->K(I)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->skip(J)V

    return-object v0

    :cond_2e
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0

    :cond_38
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_3e
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "byteCount: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final commonReadDecimalLong(Lokio/Buffer;)J
    .registers 18

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_e6

    const-wide/16 v1, -0x7

    const/4 v5, 0x0

    move-wide v8, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_17
    iget-object v10, v0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v11, v10, Lokio/u;->b:[B

    iget v12, v10, Lokio/u;->c:I

    iget v13, v10, Lokio/u;->d:I

    :goto_22
    if-ge v12, v13, :cond_7e

    aget-byte v15, v11, v12

    const/16 v14, 0x30

    int-to-byte v14, v14

    if-lt v15, v14, :cond_6b

    const/16 v3, 0x39

    int-to-byte v3, v3

    if-gt v15, v3, :cond_6b

    sub-int/2addr v14, v15

    const-wide v3, -0xcccccccccccccccL

    cmp-long v16, v8, v3

    if-ltz v16, :cond_49

    if-nez v16, :cond_42

    int-to-long v3, v14

    cmp-long v16, v3, v1

    if-gez v16, :cond_42

    goto :goto_49

    :cond_42
    const-wide/16 v3, 0xa

    mul-long v8, v8, v3

    int-to-long v3, v14

    add-long/2addr v8, v3

    goto :goto_76

    :cond_49
    :goto_49
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->V(J)Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v15}, Lokio/Buffer;->U(I)Lokio/Buffer;

    move-result-object v0

    if-nez v6, :cond_5b

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    :cond_5b
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Number too large: "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6b
    const/16 v3, 0x2d

    int-to-byte v3, v3

    if-ne v15, v3, :cond_7d

    if-nez v5, :cond_7d

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    const/4 v6, 0x1

    :goto_76
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v5, v5, 0x1

    const-wide/16 v3, 0x0

    goto :goto_22

    :cond_7d
    const/4 v7, 0x1

    :cond_7e
    if-ne v12, v13, :cond_8a

    invoke-virtual {v10}, Lokio/u;->b()Lokio/u;

    move-result-object v3

    iput-object v3, v0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v10}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    goto :goto_8c

    :cond_8a
    iput v12, v10, Lokio/u;->c:I

    :goto_8c
    if-nez v7, :cond_96

    iget-object v3, v0, Lokio/Buffer;->a:Lokio/u;

    if-nez v3, :cond_93

    goto :goto_96

    :cond_93
    const-wide/16 v3, 0x0

    goto :goto_17

    :cond_96
    :goto_96
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    int-to-long v3, v5

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->x(J)V

    if-eqz v6, :cond_a3

    const/4 v14, 0x2

    goto :goto_a4

    :cond_a3
    const/4 v14, 0x1

    :goto_a4
    if-ge v5, v14, :cond_e1

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_db

    if-eqz v6, :cond_b5

    const-string v1, "Expected a digit"

    goto :goto_b7

    :cond_b5
    const-string v1, "Expected a digit or \'-\'"

    :goto_b7
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but was 0x"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->m(J)B

    move-result v0

    invoke-static {v0}, Lokio/_UtilKt;->toHexString(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_db
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_e1
    if-eqz v6, :cond_e4

    goto :goto_e5

    :cond_e4
    neg-long v8, v8

    :goto_e5
    return-wide v8

    :cond_e6
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public static final commonReadFully(Lokio/Buffer;Lokio/Buffer;J)V
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-ltz v2, :cond_16

    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->n(Lokio/Buffer;J)V

    return-void

    :cond_16
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide p2

    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->n(Lokio/Buffer;J)V

    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static final commonReadFully(Lokio/Buffer;[B)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_1f

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_19

    add-int/2addr v0, v1

    goto :goto_b

    :cond_19
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1f
    return-void
.end method

.method public static final commonReadHexadecimalUnsignedLong(Lokio/Buffer;)J
    .registers 16

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a7

    const/4 v0, 0x0

    move-wide v4, v2

    const/4 v1, 0x0

    :cond_12
    iget-object v6, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v6, Lokio/u;->b:[B

    iget v8, v6, Lokio/u;->c:I

    iget v9, v6, Lokio/u;->d:I

    :goto_1d
    if-ge v8, v9, :cond_89

    aget-byte v10, v7, v8

    const/16 v11, 0x30

    int-to-byte v11, v11

    if-lt v10, v11, :cond_2e

    const/16 v12, 0x39

    int-to-byte v12, v12

    if-gt v10, v12, :cond_2e

    sub-int v11, v10, v11

    goto :goto_48

    :cond_2e
    const/16 v11, 0x61

    int-to-byte v11, v11

    if-lt v10, v11, :cond_3d

    const/16 v12, 0x66

    int-to-byte v12, v12

    if-gt v10, v12, :cond_3d

    :goto_38
    sub-int v11, v10, v11

    add-int/lit8 v11, v11, 0xa

    goto :goto_48

    :cond_3d
    const/16 v11, 0x41

    int-to-byte v11, v11

    if-lt v10, v11, :cond_75

    const/16 v12, 0x46

    int-to-byte v12, v12

    if-gt v10, v12, :cond_75

    goto :goto_38

    :goto_48
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v14, v12, v2

    if-nez v14, :cond_58

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_58
    new-instance p0, Lokio/Buffer;

    invoke-direct {p0}, Lokio/Buffer;-><init>()V

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->W(J)Lokio/Buffer;

    move-result-object p0

    invoke-virtual {p0, v10}, Lokio/Buffer;->U(I)Lokio/Buffer;

    move-result-object p0

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Number too large: "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    if-eqz v0, :cond_79

    const/4 v1, 0x1

    goto :goto_89

    :cond_79
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-static {v10}, Lokio/_UtilKt;->toHexString(B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_89
    :goto_89
    if-ne v8, v9, :cond_95

    invoke-virtual {v6}, Lokio/u;->b()Lokio/u;

    move-result-object v7

    iput-object v7, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    goto :goto_97

    :cond_95
    iput v8, v6, Lokio/u;->c:I

    :goto_97
    if-nez v1, :cond_9d

    iget-object v6, p0, Lokio/Buffer;->a:Lokio/u;

    if-nez v6, :cond_12

    :cond_9d
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    int-to-long v6, v0

    sub-long/2addr v1, v6

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->x(J)V

    return-wide v4

    :cond_a7
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static final commonReadInt(Lokio/Buffer;)I
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_7b

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v0, Lokio/u;->c:I

    iget v4, v0, Lokio/u;->d:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    cmp-long v7, v5, v2

    if-gez v7, :cond_41

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

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0

    :cond_41
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

    if-ne v7, v4, :cond_78

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    goto :goto_7a

    :cond_78
    iput v7, v0, Lokio/u;->c:I

    :goto_7a
    return v1

    :cond_7b
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static final commonReadLong(Lokio/Buffer;)J
    .registers 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_9c

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v0, Lokio/u;->c:I

    iget v4, v0, Lokio/u;->d:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    const/16 v7, 0x20

    cmp-long v8, v5, v2

    if-gez v8, :cond_35

    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    shl-long/2addr v0, v7

    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result p0

    int-to-long v4, p0

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    :cond_35
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

    if-ne v1, v4, :cond_99

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    goto :goto_9b

    :cond_99
    iput v1, v0, Lokio/u;->c:I

    :goto_9b
    return-wide v5

    :cond_9c
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static final commonReadShort(Lokio/Buffer;)S
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_57

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v0, Lokio/u;->c:I

    iget v4, v0, Lokio/u;->d:I

    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2e

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0

    :cond_2e
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

    if-ne v7, v4, :cond_53

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    goto :goto_55

    :cond_53
    iput v7, v0, Lokio/u;->c:I

    :goto_55
    int-to-short p0, v1

    return p0

    :cond_57
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static final commonReadUnsafe(Lokio/Buffer;Lokio/Buffer$a;)Lokio/Buffer$a;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unsafeCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lokio/_UtilKt;->resolveDefaultParameter(Lokio/Buffer$a;)Lokio/Buffer$a;

    move-result-object p1

    iget-object v0, p1, Lokio/Buffer$a;->a:Lokio/Buffer;

    const/4 v1, 0x0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_1d

    iput-object p0, p1, Lokio/Buffer$a;->a:Lokio/Buffer;

    iput-boolean v1, p1, Lokio/Buffer$a;->b:Z

    return-object p1

    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "already attached to a buffer"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonReadUtf8(Lokio/Buffer;J)Ljava/lang/String;
    .registers 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_15

    const-wide/32 v1, 0x7fffffff

    cmp-long v4, p1, v1

    if-gtz v4, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    if-eqz v1, :cond_6c

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    cmp-long v4, v1, p1

    if-ltz v4, :cond_66

    if-nez v3, :cond_25

    const-string p0, ""

    return-object p0

    :cond_25
    iget-object v1, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v1, Lokio/u;->c:I

    int-to-long v3, v2

    add-long/2addr v3, p1

    iget v5, v1, Lokio/u;->d:I

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_40

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object p0

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-static {p0, v0, v0, p1, p2}, Lokio/internal/_Utf8Kt;->commonToUtf8String$default([BIIILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_40
    iget-object v0, v1, Lokio/u;->b:[B

    long-to-int v3, p1

    add-int v4, v2, v3

    invoke-static {v0, v2, v4}, Lokio/internal/_Utf8Kt;->commonToUtf8String([BII)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lokio/u;->c:I

    add-int/2addr v2, v3

    iput v2, v1, Lokio/u;->c:I

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->x(J)V

    iget p1, v1, Lokio/u;->c:I

    iget p2, v1, Lokio/u;->d:I

    if-ne p1, p2, :cond_65

    invoke-virtual {v1}, Lokio/u;->b()Lokio/u;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    :cond_65
    return-object v0

    :cond_66
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_6c
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "byteCount: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final commonReadUtf8CodePoint(Lokio/Buffer;)I
    .registers 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c1

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->m(J)B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/16 v3, 0x80

    const/4 v4, 0x1

    const v5, 0xfffd

    if-nez v1, :cond_23

    and-int/lit8 v1, v0, 0x7f

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_46

    :cond_23
    and-int/lit16 v1, v0, 0xe0

    const/16 v6, 0xc0

    if-ne v1, v6, :cond_2f

    and-int/lit8 v1, v0, 0x1f

    const/4 v6, 0x2

    const/16 v7, 0x80

    goto :goto_46

    :cond_2f
    and-int/lit16 v1, v0, 0xf0

    const/16 v6, 0xe0

    if-ne v1, v6, :cond_3b

    and-int/lit8 v1, v0, 0xf

    const/4 v6, 0x3

    const/16 v7, 0x800

    goto :goto_46

    :cond_3b
    and-int/lit16 v1, v0, 0xf8

    const/16 v6, 0xf0

    if-ne v1, v6, :cond_bb

    and-int/lit8 v1, v0, 0x7

    const/4 v6, 0x4

    const/high16 v7, 0x10000

    :goto_46
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v8

    int-to-long v10, v6

    cmp-long v12, v8, v10

    if-ltz v12, :cond_87

    if-ge v4, v6, :cond_6b

    const/4 v0, 0x1

    :goto_52
    add-int/lit8 v8, v0, 0x1

    int-to-long v12, v0

    invoke-virtual {p0, v12, v13}, Lokio/Buffer;->m(J)B

    move-result v0

    and-int/lit16 v9, v0, 0xc0

    if-ne v9, v3, :cond_67

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v1, v0

    if-lt v8, v6, :cond_65

    goto :goto_6b

    :cond_65
    move v0, v8

    goto :goto_52

    :cond_67
    invoke-virtual {p0, v12, v13}, Lokio/Buffer;->skip(J)V

    return v5

    :cond_6b
    :goto_6b
    invoke-virtual {p0, v10, v11}, Lokio/Buffer;->skip(J)V

    const p0, 0x10ffff

    if-le v1, p0, :cond_74

    goto :goto_86

    :cond_74
    const p0, 0xd800

    if-gt p0, v1, :cond_7f

    const p0, 0xdfff

    if-gt v1, p0, :cond_7f

    const/4 v2, 0x1

    :cond_7f
    if-eqz v2, :cond_82

    goto :goto_86

    :cond_82
    if-ge v1, v7, :cond_85

    goto :goto_86

    :cond_85
    move v5, v1

    :goto_86
    return v5

    :cond_87
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

    const-string p0, " (to read code point prefixed 0x"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lokio/_UtilKt;->toHexString(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_bb
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    return v5

    :cond_c1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static final commonReadUtf8Line(Lokio/Buffer;)Ljava/lang/String;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_17

    invoke-static {p0, v0, v1}, Lokio/internal/_BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object p0

    goto :goto_2b

    :cond_17
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2a

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return-object p0
.end method

.method public static final commonReadUtf8LineStrict(Lokio/Buffer;J)Ljava/lang/String;
    .registers 14

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_9e

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_1c

    goto :goto_1e

    :cond_1c
    add-long v2, p1, v0

    :goto_1e
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

    if-eqz v8, :cond_35

    invoke-static {p0, v4, v5}, Lokio/internal/_BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_35
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_53

    sub-long v0, v2, v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->m(J)B

    move-result v0

    const/16 v1, 0xd

    int-to-byte v1, v1

    if-ne v0, v1, :cond_53

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->m(J)B

    move-result v0

    if-ne v0, v10, :cond_53

    invoke-static {p0, v2, v3}, Lokio/internal/_BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_53
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

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " content="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->q()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2026

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9e
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "limit < 0: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final commonResizeBuffer(Lokio/Buffer$a;J)J
    .registers 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lokio/Buffer$a;->a:Lokio/Buffer;

    if-eqz v3, :cond_b7

    iget-boolean v4, v0, Lokio/Buffer$a;->b:Z

    if-eqz v4, :cond_ab

    invoke-virtual {v3}, Lokio/Buffer;->I()J

    move-result-wide v4

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    cmp-long v10, v1, v4

    if-gtz v10, :cond_71

    cmp-long v10, v1, v8

    if-ltz v10, :cond_22

    const/4 v6, 0x1

    goto :goto_23

    :cond_22
    const/4 v6, 0x0

    :goto_23
    if-eqz v6, :cond_5d

    sub-long v6, v4, v1

    :goto_27
    cmp-long v10, v6, v8

    if-lez v10, :cond_4f

    iget-object v10, v3, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v10, v10, Lokio/u;->h:Lokio/u;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v11, v10, Lokio/u;->d:I

    iget v12, v10, Lokio/u;->c:I

    sub-int v12, v11, v12

    int-to-long v12, v12

    cmp-long v14, v12, v6

    if-gtz v14, :cond_4b

    invoke-virtual {v10}, Lokio/u;->b()Lokio/u;

    move-result-object v11

    iput-object v11, v3, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v10}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    sub-long/2addr v6, v12

    goto :goto_27

    :cond_4b
    long-to-int v7, v6

    sub-int/2addr v11, v7

    iput v11, v10, Lokio/u;->d:I

    :cond_4f
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lokio/Buffer$a;->f(Lokio/u;)V

    iput-wide v1, v0, Lokio/Buffer$a;->d:J

    iput-object v6, v0, Lokio/Buffer$a;->e:[B

    const/4 v6, -0x1

    iput v6, v0, Lokio/Buffer$a;->f:I

    iput v6, v0, Lokio/Buffer$a;->g:I

    goto :goto_a7

    :cond_5d
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "newSize < 0: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_71
    if-lez v10, :cond_a7

    sub-long v10, v1, v4

    const/4 v12, 0x1

    :goto_76
    cmp-long v13, v10, v8

    if-lez v13, :cond_a7

    invoke-virtual {v3, v7}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v13

    iget v14, v13, Lokio/u;->d:I

    rsub-int v14, v14, 0x2000

    int-to-long v14, v14

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v15, v14

    iget v14, v13, Lokio/u;->d:I

    add-int/2addr v14, v15

    iput v14, v13, Lokio/u;->d:I

    int-to-long v6, v15

    sub-long/2addr v10, v6

    if-eqz v12, :cond_a5

    invoke-virtual {v0, v13}, Lokio/Buffer$a;->f(Lokio/u;)V

    iput-wide v4, v0, Lokio/Buffer$a;->d:J

    iget-object v6, v13, Lokio/u;->b:[B

    iput-object v6, v0, Lokio/Buffer$a;->e:[B

    iget v6, v13, Lokio/u;->d:I

    sub-int v7, v6, v15

    iput v7, v0, Lokio/Buffer$a;->f:I

    iput v6, v0, Lokio/Buffer$a;->g:I

    const/4 v7, 0x1

    const/4 v12, 0x0

    goto :goto_76

    :cond_a5
    const/4 v7, 0x1

    goto :goto_76

    :cond_a7
    :goto_a7
    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->x(J)V

    return-wide v4

    :cond_ab
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "resizeBuffer() only permitted for read/write buffers"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final commonSeek(Lokio/Buffer$a;J)I
    .registers 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lokio/Buffer$a;->a:Lokio/Buffer;

    if-eqz v3, :cond_f9

    const-wide/16 v4, -0x1

    cmp-long v6, v1, v4

    if-ltz v6, :cond_d6

    invoke-virtual {v3}, Lokio/Buffer;->I()J

    move-result-wide v4

    cmp-long v7, v1, v4

    if-gtz v7, :cond_d6

    if-eqz v6, :cond_c8

    invoke-virtual {v3}, Lokio/Buffer;->I()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_27

    goto/16 :goto_c8

    :cond_27
    const-wide/16 v4, 0x0

    invoke-virtual {v3}, Lokio/Buffer;->I()J

    move-result-wide v6

    iget-object v8, v3, Lokio/Buffer;->a:Lokio/u;

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer$a;->d()Lokio/u;

    move-result-object v9

    if-eqz v9, :cond_5a

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

    if-lez v11, :cond_52

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer$a;->d()Lokio/u;

    move-result-object v6

    move-object v15, v8

    move-object v8, v6

    move-wide v6, v9

    move-object v9, v15

    goto :goto_5b

    :cond_52
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer$a;->d()Lokio/u;

    move-result-object v4

    move-wide v15, v9

    move-object v9, v4

    move-wide v4, v15

    goto :goto_5b

    :cond_5a
    move-object v9, v8

    :goto_5b
    sub-long v10, v6, v1

    sub-long v12, v1, v4

    cmp-long v14, v10, v12

    if-lez v14, :cond_78

    :goto_63
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v6, v9, Lokio/u;->d:I

    iget v7, v9, Lokio/u;->c:I

    sub-int v8, v6, v7

    int-to-long v10, v8

    add-long/2addr v10, v4

    cmp-long v8, v1, v10

    if-ltz v8, :cond_8e

    sub-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-object v9, v9, Lokio/u;->g:Lokio/u;

    goto :goto_63

    :cond_78
    :goto_78
    cmp-long v4, v6, v1

    if-lez v4, :cond_8c

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v8, Lokio/u;->h:Lokio/u;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v8, Lokio/u;->d:I

    iget v5, v8, Lokio/u;->c:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v6, v4

    goto :goto_78

    :cond_8c
    move-wide v4, v6

    move-object v9, v8

    :cond_8e
    iget-boolean v6, v0, Lokio/Buffer$a;->b:Z

    if-eqz v6, :cond_af

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v6, v9, Lokio/u;->e:Z

    if-eqz v6, :cond_af

    invoke-virtual {v9}, Lokio/u;->f()Lokio/u;

    move-result-object v6

    iget-object v7, v3, Lokio/Buffer;->a:Lokio/u;

    if-ne v7, v9, :cond_a3

    iput-object v6, v3, Lokio/Buffer;->a:Lokio/u;

    :cond_a3
    invoke-virtual {v9, v6}, Lokio/u;->c(Lokio/u;)Lokio/u;

    move-result-object v9

    iget-object v3, v9, Lokio/u;->h:Lokio/u;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lokio/u;->b()Lokio/u;

    :cond_af
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

    sub-int/2addr v1, v3

    return v1

    :cond_c8
    :goto_c8
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lokio/Buffer$a;->f(Lokio/u;)V

    iput-wide v1, v0, Lokio/Buffer$a;->d:J

    iput-object v3, v0, Lokio/Buffer$a;->e:[B

    const/4 v1, -0x1

    iput v1, v0, Lokio/Buffer$a;->f:I

    iput v1, v0, Lokio/Buffer$a;->g:I

    return v1

    :cond_d6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " > size="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokio/Buffer;->I()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final commonSelect(Lokio/Buffer;Lokio/Options;)I
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lokio/internal/_BufferKt;->selectPrefix$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    return v1

    :cond_15
    invoke-virtual {p1}, Lokio/Options;->i()[Lokio/ByteString;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lokio/ByteString;->F()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    return v0
.end method

.method public static final commonSkip(Lokio/Buffer;J)V
    .registers 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_5
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_3d

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/u;

    if-eqz v0, :cond_37

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

    if-ne v1, v2, :cond_5

    invoke-virtual {v0}, Lokio/u;->b()Lokio/u;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/u;)V

    goto :goto_5

    :cond_37
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_3d
    return-void
.end method

.method public static final commonSnapshot(Lokio/Buffer;)Lokio/ByteString;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lokio/Buffer;->K(I)Lokio/ByteString;

    move-result-object p0

    return-object p0

    :cond_1f
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "size > Int.MAX_VALUE: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final commonSnapshot(Lokio/Buffer;I)Lokio/ByteString;
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_a

    sget-object p0, Lokio/ByteString;->b:Lokio/ByteString;

    return-object p0

    :cond_a
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    invoke-static/range {v0 .. v5}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/u;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_19
    if-ge v2, p1, :cond_33

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v0, Lokio/u;->d:I

    iget v5, v0, Lokio/u;->c:I

    if-eq v4, v5, :cond_2b

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v0, Lokio/u;->g:Lokio/u;

    goto :goto_19

    :cond_2b
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "s.limit == s.pos"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_33
    new-array v0, v3, [[B

    mul-int/lit8 v2, v3, 0x2

    new-array v2, v2, [I

    iget-object p0, p0, Lokio/Buffer;->a:Lokio/u;

    const/4 v4, 0x0

    :goto_3c
    if-ge v1, p1, :cond_5e

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Lokio/u;->b:[B

    aput-object v5, v0, v4

    iget v5, p0, Lokio/u;->d:I

    iget v6, p0, Lokio/u;->c:I

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    aput v5, v2, v4

    add-int v5, v4, v3

    iget v6, p0, Lokio/u;->c:I

    aput v6, v2, v5

    const/4 v5, 0x1

    iput-boolean v5, p0, Lokio/u;->e:Z

    add-int/2addr v4, v5

    iget-object p0, p0, Lokio/u;->g:Lokio/u;

    goto :goto_3c

    :cond_5e
    new-instance p0, Lokio/v;

    invoke-direct {p0, v0, v2}, Lokio/v;-><init>([[B[I)V

    return-object p0
.end method

.method public static final commonWritableSegment(Lokio/Buffer;I)Lokio/u;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x2000

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    if-gt p1, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    if-eqz v1, :cond_39

    iget-object v1, p0, Lokio/Buffer;->a:Lokio/u;

    if-nez v1, :cond_1f

    invoke-static {}, Lokio/SegmentPool;->take()Lokio/u;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->a:Lokio/u;

    iput-object p1, p1, Lokio/u;->h:Lokio/u;

    iput-object p1, p1, Lokio/u;->g:Lokio/u;

    return-object p1

    :cond_1f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, v1, Lokio/u;->h:Lokio/u;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lokio/u;->d:I

    add-int/2addr v1, p1

    if-gt v1, v0, :cond_30

    iget-boolean p1, p0, Lokio/u;->f:Z

    if-nez p1, :cond_38

    :cond_30
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/u;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokio/u;->c(Lokio/u;)Lokio/u;

    move-result-object p0

    :cond_38
    return-object p0

    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unexpected capacity"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonWrite(Lokio/Buffer;Lokio/ByteString;II)Lokio/Buffer;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2, p3}, Lokio/ByteString;->L(Lokio/Buffer;II)V

    return-object p0
.end method

.method public static final commonWrite(Lokio/Buffer;Lokio/y;J)Lokio/Buffer;
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_22

    invoke-interface {p1, p0, p2, p3}, Lokio/y;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1c

    sub-long/2addr p2, v0

    goto :goto_a

    :cond_1c
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_22
    return-object p0
.end method

.method public static final commonWrite(Lokio/Buffer;[B)Lokio/Buffer;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/Buffer;->S([BII)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static final commonWrite(Lokio/Buffer;[BII)Lokio/Buffer;
    .registers 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    add-int/2addr p3, p2

    :goto_13
    if-ge p2, p3, :cond_34

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

    goto :goto_13

    :cond_34
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide p1

    add-long/2addr p1, v7

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->x(J)V

    return-object p0
.end method

.method public static final commonWrite(Lokio/Buffer;Lokio/Buffer;J)V
    .registers 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eq p1, p0, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-eqz v1, :cond_c0

    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    :goto_1c
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_bf

    iget-object v1, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Lokio/u;->d:I

    iget-object v2, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v2, Lokio/u;->c:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v3, p2, v1

    if-gez v3, :cond_81

    iget-object v1, p0, Lokio/Buffer;->a:Lokio/u;

    if-eqz v1, :cond_40

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lokio/u;->h:Lokio/u;

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    :goto_41
    if-eqz v1, :cond_75

    iget-boolean v2, v1, Lokio/u;->f:Z

    if-eqz v2, :cond_75

    iget v2, v1, Lokio/u;->d:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    iget-boolean v4, v1, Lokio/u;->e:Z

    if-eqz v4, :cond_51

    const/4 v4, 0x0

    goto :goto_53

    :cond_51
    iget v4, v1, Lokio/u;->c:I

    :goto_53
    int-to-long v4, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2000

    cmp-long v6, v2, v4

    if-gtz v6, :cond_75

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

    return-void

    :cond_75
    iget-object v1, p1, Lokio/Buffer;->a:Lokio/u;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v2, p2

    invoke-virtual {v1, v2}, Lokio/u;->e(I)Lokio/u;

    move-result-object v1

    iput-object v1, p1, Lokio/Buffer;->a:Lokio/u;

    :cond_81
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

    if-nez v4, :cond_9d

    iput-object v1, p0, Lokio/Buffer;->a:Lokio/u;

    iput-object v1, v1, Lokio/u;->h:Lokio/u;

    iput-object v1, v1, Lokio/u;->g:Lokio/u;

    goto :goto_ac

    :cond_9d
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v4, Lokio/u;->h:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lokio/u;->c(Lokio/u;)Lokio/u;

    move-result-object v1

    invoke-virtual {v1}, Lokio/u;->a()V

    :goto_ac
    invoke-virtual {p1}, Lokio/Buffer;->I()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Lokio/Buffer;->x(J)V

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->x(J)V

    sub-long/2addr p2, v2

    goto/16 :goto_1c

    :cond_bf
    return-void

    :cond_c0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == this"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic commonWrite$default(Lokio/Buffer;Lokio/ByteString;IIILjava/lang/Object;)Lokio/Buffer;
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_d

    invoke-virtual {p1}, Lokio/ByteString;->F()I

    move-result p3

    :cond_d
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "byteString"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2, p3}, Lokio/ByteString;->L(Lokio/Buffer;II)V

    return-object p0
.end method

.method public static final commonWriteAll(Lokio/Buffer;Lokio/y;)J
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_c
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lokio/y;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_19

    return-wide v0

    :cond_19
    add-long/2addr v0, v2

    goto :goto_c
.end method

.method public static final commonWriteByte(Lokio/Buffer;I)Lokio/Buffer;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

.method public static final commonWriteDecimalLong(Lokio/Buffer;J)Lokio/Buffer;
    .registers 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_12

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lokio/Buffer;->U(I)Lokio/Buffer;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_23

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_22

    const-string p1, "-9223372036854775808"

    invoke-virtual {p0, p1}, Lokio/Buffer;->g0(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p0

    return-object p0

    :cond_22
    const/4 v3, 0x1

    :cond_23
    const-wide/32 v5, 0x5f5e100

    const/16 v2, 0xa

    cmp-long v7, p1, v5

    if-gez v7, :cond_71

    const-wide/16 v5, 0x2710

    cmp-long v7, p1, v5

    if-gez v7, :cond_4f

    const-wide/16 v5, 0x64

    cmp-long v7, p1, v5

    if-gez v7, :cond_43

    const-wide/16 v5, 0xa

    cmp-long v7, p1, v5

    if-gez v7, :cond_40

    goto/16 :goto_e9

    :cond_40
    const/4 v4, 0x2

    goto/16 :goto_e9

    :cond_43
    const-wide/16 v4, 0x3e8

    cmp-long v6, p1, v4

    if-gez v6, :cond_4c

    const/4 v4, 0x3

    goto/16 :goto_e9

    :cond_4c
    const/4 v4, 0x4

    goto/16 :goto_e9

    :cond_4f
    const-wide/32 v4, 0xf4240

    cmp-long v6, p1, v4

    if-gez v6, :cond_63

    const-wide/32 v4, 0x186a0

    cmp-long v6, p1, v4

    if-gez v6, :cond_60

    const/4 v4, 0x5

    goto/16 :goto_e9

    :cond_60
    const/4 v4, 0x6

    goto/16 :goto_e9

    :cond_63
    const-wide/32 v4, 0x989680

    cmp-long v6, p1, v4

    if-gez v6, :cond_6d

    const/4 v4, 0x7

    goto/16 :goto_e9

    :cond_6d
    const/16 v4, 0x8

    goto/16 :goto_e9

    :cond_71
    const-wide v4, 0xe8d4a51000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_9f

    const-wide v4, 0x2540be400L

    cmp-long v6, p1, v4

    if-gez v6, :cond_90

    const-wide/32 v4, 0x3b9aca00

    cmp-long v6, p1, v4

    if-gez v6, :cond_8d

    const/16 v4, 0x9

    goto :goto_e9

    :cond_8d
    const/16 v4, 0xa

    goto :goto_e9

    :cond_90
    const-wide v4, 0x174876e800L

    cmp-long v6, p1, v4

    if-gez v6, :cond_9c

    const/16 v4, 0xb

    goto :goto_e9

    :cond_9c
    const/16 v4, 0xc

    goto :goto_e9

    :cond_9f
    const-wide v4, 0x38d7ea4c68000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_c3

    const-wide v4, 0x9184e72a000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_b4

    const/16 v4, 0xd

    goto :goto_e9

    :cond_b4
    const-wide v4, 0x5af3107a4000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_c0

    const/16 v4, 0xe

    goto :goto_e9

    :cond_c0
    const/16 v4, 0xf

    goto :goto_e9

    :cond_c3
    const-wide v4, 0x16345785d8a0000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_db

    const-wide v4, 0x2386f26fc10000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_d8

    const/16 v4, 0x10

    goto :goto_e9

    :cond_d8
    const/16 v4, 0x11

    goto :goto_e9

    :cond_db
    const-wide v4, 0xde0b6b3a7640000L

    cmp-long v6, p1, v4

    if-gez v6, :cond_e7

    const/16 v4, 0x12

    goto :goto_e9

    :cond_e7
    const/16 v4, 0x13

    :goto_e9
    if-eqz v3, :cond_ed

    add-int/lit8 v4, v4, 0x1

    :cond_ed
    invoke-virtual {p0, v4}, Lokio/Buffer;->L(I)Lokio/u;

    move-result-object v5

    iget-object v6, v5, Lokio/u;->b:[B

    iget v7, v5, Lokio/u;->d:I

    add-int/2addr v7, v4

    :goto_f6
    cmp-long v8, p1, v0

    if-eqz v8, :cond_10a

    int-to-long v8, v2

    rem-long v10, p1, v8

    long-to-int v11, v10

    add-int/lit8 v7, v7, -0x1

    invoke-static {}, Lokio/internal/_BufferKt;->getHEX_DIGIT_BYTES()[B

    move-result-object v10

    aget-byte v10, v10, v11

    aput-byte v10, v6, v7

    div-long/2addr p1, v8

    goto :goto_f6

    :cond_10a
    if-eqz v3, :cond_113

    add-int/lit8 v7, v7, -0x1

    const/16 p1, 0x2d

    int-to-byte p1, p1

    aput-byte p1, v6, v7

    :cond_113
    iget p1, v5, Lokio/u;->d:I

    add-int/2addr p1, v4

    iput p1, v5, Lokio/u;->d:I

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide p1

    int-to-long v0, v4

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->x(J)V

    return-object p0
.end method

.method public static final commonWriteHexadecimalUnsignedLong(Lokio/Buffer;J)Lokio/Buffer;
    .registers 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_12

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lokio/Buffer;->U(I)Lokio/Buffer;

    move-result-object p0

    return-object p0

    :cond_12
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

    :goto_67
    if-lt v6, v5, :cond_79

    invoke-static {}, Lokio/internal/_BufferKt;->getHEX_DIGIT_BYTES()[B

    move-result-object v0

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v8, v7

    aget-byte v0, v0, v8

    aput-byte v0, v3, v6

    ushr-long/2addr p1, v4

    add-int/lit8 v6, v6, -0x1

    goto :goto_67

    :cond_79
    iget p1, v2, Lokio/u;->d:I

    add-int/2addr p1, v1

    iput p1, v2, Lokio/u;->d:I

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide p1

    int-to-long v0, v1

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->x(J)V

    return-object p0
.end method

.method public static final commonWriteInt(Lokio/Buffer;I)Lokio/Buffer;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

.method public static final commonWriteLong(Lokio/Buffer;J)Lokio/Buffer;
    .registers 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

.method public static final commonWriteShort(Lokio/Buffer;I)Lokio/Buffer;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

.method public static final commonWriteUtf8(Lokio/Buffer;Ljava/lang/String;II)Lokio/Buffer;
    .registers 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    if-eqz v2, :cond_180

    if-lt p3, p2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    if-eqz v2, :cond_15d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    if-eqz v2, :cond_136

    :goto_25
    if-ge p2, p3, :cond_135

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_66

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

    :goto_44
    move p2, v8

    if-ge p2, v7, :cond_55

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v3, :cond_4e

    goto :goto_55

    :cond_4e
    add-int/lit8 v8, p2, 0x1

    add-int/2addr p2, v6

    int-to-byte v2, v2

    aput-byte v2, v5, p2

    goto :goto_44

    :cond_55
    :goto_55
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

    goto :goto_25

    :cond_66
    const/16 v4, 0x800

    if-ge v2, v4, :cond_92

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

    :goto_8f
    add-int/lit8 p2, p2, 0x1

    goto :goto_25

    :cond_92
    const v4, 0xd800

    const/16 v5, 0x3f

    if-lt v2, v4, :cond_105

    const v4, 0xdfff

    if-le v2, v4, :cond_9f

    goto :goto_105

    :cond_9f
    add-int/lit8 v6, p2, 0x1

    if-ge v6, p3, :cond_a8

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_a9

    :cond_a8
    const/4 v7, 0x0

    :goto_a9
    const v8, 0xdbff

    if-gt v2, v8, :cond_ff

    const v8, 0xdc00

    if-gt v8, v7, :cond_b7

    if-gt v7, v4, :cond_b7

    const/4 v4, 0x1

    goto :goto_b8

    :cond_b7
    const/4 v4, 0x0

    :goto_b8
    if-nez v4, :cond_bb

    goto :goto_ff

    :cond_bb
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

    goto/16 :goto_25

    :cond_ff
    :goto_ff
    invoke-virtual {p0, v5}, Lokio/Buffer;->U(I)Lokio/Buffer;

    move p2, v6

    goto/16 :goto_25

    :cond_105
    :goto_105
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

    goto/16 :goto_8f

    :cond_135
    return-object p0

    :cond_136
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "endIndex > string.length: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "endIndex < beginIndex: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_180
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "beginIndex < 0: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final commonWriteUtf8CodePoint(Lokio/Buffer;I)Lokio/Buffer;
    .registers 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x80

    if-ge p1, v0, :cond_e

    invoke-virtual {p0, p1}, Lokio/Buffer;->U(I)Lokio/Buffer;

    goto/16 :goto_b9

    :cond_e
    const/16 v1, 0x800

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_3a

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

    goto/16 :goto_b9

    :cond_3a
    const v1, 0xd800

    const/4 v3, 0x0

    if-gt v1, p1, :cond_46

    const v1, 0xdfff

    if-gt p1, v1, :cond_46

    const/4 v3, 0x1

    :cond_46
    if-eqz v3, :cond_4c

    invoke-virtual {p0, v2}, Lokio/Buffer;->U(I)Lokio/Buffer;

    goto :goto_b9

    :cond_4c
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_7e

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

    goto :goto_b9

    :cond_7e
    const v1, 0x10ffff

    if-gt p1, v1, :cond_ba

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

    :goto_b9
    return-object p0

    :cond_ba
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lokio/_UtilKt;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpected code point: 0x"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getHEX_DIGIT_BYTES()[B
    .registers 1

    sget-object v0, Lokio/internal/_BufferKt;->a:[B

    return-object v0
.end method

.method public static synthetic getHEX_DIGIT_BYTES$annotations()V
    .registers 0

    return-void
.end method

.method public static final rangeEquals(Lokio/u;I[BII)Z
    .registers 10

    const-string v0, "segment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lokio/u;->d:I

    iget-object v1, p0, Lokio/u;->b:[B

    :goto_e
    if-ge p3, p4, :cond_2e

    if-ne p1, v0, :cond_21

    iget-object p0, p0, Lokio/u;->g:Lokio/u;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lokio/u;->b:[B

    iget v0, p0, Lokio/u;->c:I

    iget v1, p0, Lokio/u;->d:I

    move v4, v1

    move-object v1, p1

    move p1, v0

    move v0, v4

    :cond_21
    aget-byte v2, v1, p1

    aget-byte v3, p2, p3

    if-eq v2, v3, :cond_29

    const/4 p0, 0x0

    return p0

    :cond_29
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_e

    :cond_2e
    const/4 p0, 0x1

    return p0
.end method

.method public static final readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_22

    sub-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->m(J)B

    move-result v4

    const/16 v5, 0xd

    int-to-byte v5, v5

    if-ne v4, v5, :cond_22

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    goto :goto_29

    :cond_22
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    :goto_29
    return-object p1
.end method

.method public static final seek(Lokio/Buffer;JLkotlin/jvm/b/p;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokio/Buffer;",
            "J",
            "Lkotlin/jvm/b/p<",
            "-",
            "Lokio/u;",
            "-",
            "Ljava/lang/Long;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lambda"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/u;

    if-nez v0, :cond_1a

    const/4 p0, 0x0

    const-wide/16 p1, -0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1a
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    sub-long/2addr v1, p1

    cmp-long v3, v1, p1

    if-gez v3, :cond_41

    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    :goto_27
    cmp-long p0, v1, p1

    if-lez p0, :cond_38

    iget-object v0, v0, Lokio/u;->h:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p0, v0, Lokio/u;->d:I

    iget v3, v0, Lokio/u;->c:I

    sub-int/2addr p0, v3

    int-to-long v3, p0

    sub-long/2addr v1, v3

    goto :goto_27

    :cond_38
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p3, v0, p0}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_41
    const-wide/16 v1, 0x0

    :goto_43
    iget p0, v0, Lokio/u;->d:I

    iget v3, v0, Lokio/u;->c:I

    sub-int/2addr p0, v3

    int-to-long v3, p0

    add-long/2addr v3, v1

    cmp-long p0, v3, p1

    if-lez p0, :cond_57

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p3, v0, p0}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_57
    iget-object v0, v0, Lokio/u;->g:Lokio/u;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v1, v3

    goto :goto_43
.end method

.method public static final selectPrefix(Lokio/Buffer;Lokio/Options;Z)I
    .registers 20

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "options"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lokio/Buffer;->a:Lokio/u;

    const/4 v1, -0x2

    const/4 v3, -0x1

    if-nez v0, :cond_19

    if-eqz p2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, -0x1

    :goto_18
    return v1

    :cond_19
    iget-object v4, v0, Lokio/u;->b:[B

    iget v5, v0, Lokio/u;->c:I

    iget v6, v0, Lokio/u;->d:I

    invoke-virtual/range {p1 .. p1}, Lokio/Options;->j()[I

    move-result-object v2

    const/4 v7, 0x0

    move-object v9, v0

    const/4 v8, 0x0

    const/4 v10, -0x1

    :goto_27
    add-int/lit8 v11, v8, 0x1

    aget v8, v2, v8

    add-int/lit8 v12, v11, 0x1

    aget v11, v2, v11

    if-eq v11, v3, :cond_32

    move v10, v11

    :cond_32
    if-nez v9, :cond_35

    goto :goto_62

    :cond_35
    const/4 v11, 0x0

    if-gez v8, :cond_82

    mul-int/lit8 v8, v8, -0x1

    add-int v13, v12, v8

    :goto_3c
    add-int/lit8 v8, v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v14, v12, 0x1

    aget v12, v2, v12

    if-eq v5, v12, :cond_49

    return v10

    :cond_49
    if-ne v14, v13, :cond_4d

    const/4 v5, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v5, 0x0

    :goto_4e
    if-ne v8, v6, :cond_6f

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v9, Lokio/u;->g:Lokio/u;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v6, v4, Lokio/u;->c:I

    iget-object v8, v4, Lokio/u;->b:[B

    iget v9, v4, Lokio/u;->d:I

    if-ne v4, v0, :cond_69

    if-nez v5, :cond_66

    :goto_62
    if-eqz p2, :cond_65

    return v1

    :cond_65
    return v10

    :cond_66
    move-object v4, v8

    move-object v8, v11

    goto :goto_75

    :cond_69
    move-object/from16 v16, v8

    move-object v8, v4

    move-object/from16 v4, v16

    goto :goto_75

    :cond_6f
    move-object/from16 v16, v9

    move v9, v6

    move v6, v8

    move-object/from16 v8, v16

    :goto_75
    if-eqz v5, :cond_7d

    aget v5, v2, v14

    move v13, v6

    move v6, v9

    move-object v9, v8

    goto :goto_a7

    :cond_7d
    move v5, v6

    move v6, v9

    move v12, v14

    move-object v9, v8

    goto :goto_3c

    :cond_82
    add-int/lit8 v13, v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int v14, v12, v8

    :goto_8a
    if-ne v12, v14, :cond_8d

    return v10

    :cond_8d
    aget v15, v2, v12

    if-ne v5, v15, :cond_ae

    add-int/2addr v12, v8

    aget v5, v2, v12

    if-ne v13, v6, :cond_a7

    iget-object v9, v9, Lokio/u;->g:Lokio/u;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v9, Lokio/u;->c:I

    iget-object v6, v9, Lokio/u;->b:[B

    iget v8, v9, Lokio/u;->d:I

    move v13, v4

    move-object v4, v6

    move v6, v8

    if-ne v9, v0, :cond_a7

    move-object v9, v11

    :cond_a7
    :goto_a7
    if-ltz v5, :cond_aa

    return v5

    :cond_aa
    neg-int v8, v5

    move v5, v13

    goto/16 :goto_27

    :cond_ae
    add-int/lit8 v12, v12, 0x1

    goto :goto_8a
.end method

.method public static synthetic selectPrefix$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-static {p0, p1, p2}, Lokio/internal/_BufferKt;->selectPrefix(Lokio/Buffer;Lokio/Options;Z)I

    move-result p0

    return p0
.end method
