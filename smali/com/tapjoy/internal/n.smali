###### Class com.tapjoy.internal.n (com.tapjoy.internal.n)
.class public final Lcom/tapjoy/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/d0;
.implements Lcom/tapjoy/internal/c0;
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Lcom/tapjoy/internal/r7;

.field public b:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/tapjoy/internal/n;->d()Lcom/tapjoy/internal/n;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .registers 1

    return-void
.end method

.method public final d()Lcom/tapjoy/internal/n;
    .registers 7

    new-instance v0, Lcom/tapjoy/internal/n;

    invoke-direct {v0}, Lcom/tapjoy/internal/n;-><init>()V

    iget-wide v1, p0, Lcom/tapjoy/internal/n;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_e

    return-object v0

    :cond_e
    new-instance v1, Lcom/tapjoy/internal/r7;

    iget-object v2, p0, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/r7;-><init>(Lcom/tapjoy/internal/r7;)V

    iput-object v1, v0, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    iput-object v1, v1, Lcom/tapjoy/internal/r7;->g:Lcom/tapjoy/internal/r7;

    iput-object v1, v1, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    iget-object v1, p0, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    iget-object v1, v1, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    :goto_1f
    iget-object v2, p0, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    if-eq v1, v2, :cond_3e

    iget-object v2, v0, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    iget-object v2, v2, Lcom/tapjoy/internal/r7;->g:Lcom/tapjoy/internal/r7;

    new-instance v3, Lcom/tapjoy/internal/r7;

    invoke-direct {v3, v1}, Lcom/tapjoy/internal/r7;-><init>(Lcom/tapjoy/internal/r7;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v3, Lcom/tapjoy/internal/r7;->g:Lcom/tapjoy/internal/r7;

    iget-object v4, v2, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    iput-object v4, v3, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    iget-object v4, v2, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    iput-object v3, v4, Lcom/tapjoy/internal/r7;->g:Lcom/tapjoy/internal/r7;

    iput-object v3, v2, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    iget-object v1, v1, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    goto :goto_1f

    :cond_3e
    iget-wide v1, p0, Lcom/tapjoy/internal/n;->b:J

    iput-wide v1, v0, Lcom/tapjoy/internal/n;->b:J

    return-object v0
.end method

.method public final e([BI)Lcom/tapjoy/internal/n;
    .registers 12

    if-eqz p1, :cond_31

    array-length v0, p1

    int-to-long v1, v0

    const/4 v0, 0x0

    int-to-long v3, v0

    int-to-long v7, p2

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lcom/tapjoy/internal/sa;->a(JJJ)V

    add-int/2addr p2, v0

    :goto_c
    if-ge v0, p2, :cond_2b

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/n;->f(I)Lcom/tapjoy/internal/r7;

    move-result-object v1

    sub-int v2, p2, v0

    iget v3, v1, Lcom/tapjoy/internal/r7;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v1, Lcom/tapjoy/internal/r7;->a:[B

    iget v4, v1, Lcom/tapjoy/internal/r7;->c:I

    invoke-static {p1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    iget v3, v1, Lcom/tapjoy/internal/r7;->c:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/tapjoy/internal/r7;->c:I

    goto :goto_c

    :cond_2b
    iget-wide p1, p0, Lcom/tapjoy/internal/n;->b:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Lcom/tapjoy/internal/n;->b:J

    return-object p0

    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 15

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/tapjoy/internal/n;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/tapjoy/internal/n;

    iget-wide v3, p0, Lcom/tapjoy/internal/n;->b:J

    iget-wide v5, p1, Lcom/tapjoy/internal/n;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1c

    return v0

    :cond_1c
    iget-object v1, p0, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    iget-object p1, p1, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    iget v3, v1, Lcom/tapjoy/internal/r7;->b:I

    iget v4, p1, Lcom/tapjoy/internal/r7;->b:I

    :goto_24
    iget-wide v7, p0, Lcom/tapjoy/internal/n;->b:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_61

    iget v7, v1, Lcom/tapjoy/internal/r7;->c:I

    sub-int/2addr v7, v3

    iget v8, p1, Lcom/tapjoy/internal/r7;->c:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    const/4 v9, 0x0

    :goto_36
    int-to-long v10, v9

    cmp-long v12, v10, v7

    if-gez v12, :cond_4f

    iget-object v10, v1, Lcom/tapjoy/internal/r7;->a:[B

    add-int/lit8 v11, v3, 0x1

    aget-byte v3, v10, v3

    iget-object v10, p1, Lcom/tapjoy/internal/r7;->a:[B

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v10, v4

    if-eq v3, v4, :cond_4a

    return v2

    :cond_4a
    add-int/lit8 v9, v9, 0x1

    move v3, v11

    move v4, v12

    goto :goto_36

    :cond_4f
    iget v9, v1, Lcom/tapjoy/internal/r7;->c:I

    if-ne v3, v9, :cond_57

    iget-object v1, v1, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    iget v3, v1, Lcom/tapjoy/internal/r7;->b:I

    :cond_57
    iget v9, p1, Lcom/tapjoy/internal/r7;->c:I

    if-ne v4, v9, :cond_5f

    iget-object p1, p1, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    iget v4, p1, Lcom/tapjoy/internal/r7;->b:I

    :cond_5f
    add-long/2addr v5, v7

    goto :goto_24

    :cond_61
    return v0
.end method

.method public final f(I)Lcom/tapjoy/internal/r7;
    .registers 7

    const/4 v0, 0x1

    if-lt p1, v0, :cond_4f

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_4f

    iget-object v1, p0, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    if-nez v1, :cond_32

    const-class v2, Lcom/tapjoy/internal/v6;

    monitor-enter v2

    :try_start_e
    sget-object p1, Lcom/tapjoy/internal/v6;->a:Lcom/tapjoy/internal/r7;

    if-eqz p1, :cond_22

    iget-object v0, p1, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    sput-object v0, Lcom/tapjoy/internal/v6;->a:Lcom/tapjoy/internal/r7;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    sget-wide v0, Lcom/tapjoy/internal/v6;->b:J

    const-wide/16 v3, 0x2000

    sub-long/2addr v0, v3

    sput-wide v0, Lcom/tapjoy/internal/v6;->b:J

    monitor-exit v2

    goto :goto_28

    :cond_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_2f

    new-instance p1, Lcom/tapjoy/internal/r7;

    invoke-direct {p1}, Lcom/tapjoy/internal/r7;-><init>()V

    :goto_28
    iput-object p1, p0, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    iput-object p1, p1, Lcom/tapjoy/internal/r7;->g:Lcom/tapjoy/internal/r7;

    iput-object p1, p1, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    return-object p1

    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1

    :cond_32
    iget-object v1, v1, Lcom/tapjoy/internal/r7;->g:Lcom/tapjoy/internal/r7;

    iget v2, v1, Lcom/tapjoy/internal/r7;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_3d

    iget-boolean p1, v1, Lcom/tapjoy/internal/r7;->e:Z

    if-nez p1, :cond_4e

    :cond_3d
    invoke-static {}, Lcom/tapjoy/internal/v6;->a()Lcom/tapjoy/internal/r7;

    move-result-object p1

    iput-object v1, p1, Lcom/tapjoy/internal/r7;->g:Lcom/tapjoy/internal/r7;

    iget-object v0, v1, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    iput-object v0, p1, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    iget-object v0, v1, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    iput-object p1, v0, Lcom/tapjoy/internal/r7;->g:Lcom/tapjoy/internal/r7;

    iput-object p1, v1, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    move-object v1, p1

    :cond_4e
    return-object v1

    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final flush()V
    .registers 1

    return-void
.end method

.method public final g(J)[B
    .registers 12

    iget-wide v0, p0, Lcom/tapjoy/internal/n;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/sa;->a(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_57

    long-to-int p2, p1

    new-array p1, p2, [B

    const/4 v0, 0x0

    :goto_13
    if-ge v0, p2, :cond_56

    sub-int v1, p2, v0

    int-to-long v2, p2

    int-to-long v4, v0

    int-to-long v6, v1

    invoke-static/range {v2 .. v7}, Lcom/tapjoy/internal/sa;->a(JJJ)V

    iget-object v2, p0, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    const/4 v3, -0x1

    if-nez v2, :cond_24

    const/4 v1, -0x1

    goto :goto_4c

    :cond_24
    iget v4, v2, Lcom/tapjoy/internal/r7;->c:I

    iget v5, v2, Lcom/tapjoy/internal/r7;->b:I

    sub-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v4, v2, Lcom/tapjoy/internal/r7;->a:[B

    iget v5, v2, Lcom/tapjoy/internal/r7;->b:I

    invoke-static {v4, v5, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, v2, Lcom/tapjoy/internal/r7;->b:I

    add-int/2addr v4, v1

    iput v4, v2, Lcom/tapjoy/internal/r7;->b:I

    iget-wide v5, p0, Lcom/tapjoy/internal/n;->b:J

    int-to-long v7, v1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/tapjoy/internal/n;->b:J

    iget v5, v2, Lcom/tapjoy/internal/r7;->c:I

    if-ne v4, v5, :cond_4c

    invoke-virtual {v2}, Lcom/tapjoy/internal/r7;->a()Lcom/tapjoy/internal/r7;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    invoke-static {v2}, Lcom/tapjoy/internal/v6;->a(Lcom/tapjoy/internal/r7;)V

    :cond_4c
    :goto_4c
    if-eq v1, v3, :cond_50

    add-int/2addr v0, v1

    goto :goto_13

    :cond_50
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_56
    return-object p1

    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()B
    .registers 10

    iget-wide v0, p0, Lcom/tapjoy/internal/n;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_28

    iget-object v2, p0, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    iget v3, v2, Lcom/tapjoy/internal/r7;->b:I

    iget v4, v2, Lcom/tapjoy/internal/r7;->c:I

    iget-object v5, v2, Lcom/tapjoy/internal/r7;->a:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v5, v3

    const-wide/16 v7, 0x1

    sub-long/2addr v0, v7

    iput-wide v0, p0, Lcom/tapjoy/internal/n;->b:J

    if-ne v6, v4, :cond_25

    invoke-virtual {v2}, Lcom/tapjoy/internal/r7;->a()Lcom/tapjoy/internal/r7;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    invoke-static {v2}, Lcom/tapjoy/internal/v6;->a(Lcom/tapjoy/internal/r7;)V

    goto :goto_27

    :cond_25
    iput v6, v2, Lcom/tapjoy/internal/r7;->b:I

    :goto_27
    return v3

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hashCode()I
    .registers 6

    iget-object v0, p0, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v1, 0x1

    :cond_7
    iget v2, v0, Lcom/tapjoy/internal/r7;->b:I

    iget v3, v0, Lcom/tapjoy/internal/r7;->c:I

    :goto_b
    if-ge v2, v3, :cond_17

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lcom/tapjoy/internal/r7;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_17
    iget-object v0, v0, Lcom/tapjoy/internal/r7;->f:Lcom/tapjoy/internal/r7;

    iget-object v2, p0, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    if-ne v0, v2, :cond_7

    return v1
.end method

.method public final i(I)Lcom/tapjoy/internal/n;
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/n;->f(I)Lcom/tapjoy/internal/r7;

    move-result-object v0

    iget-object v1, v0, Lcom/tapjoy/internal/r7;->a:[B

    iget v2, v0, Lcom/tapjoy/internal/r7;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/tapjoy/internal/r7;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    iget-wide v0, p0, Lcom/tapjoy/internal/n;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tapjoy/internal/n;->b:J

    return-object p0
.end method

.method public final j(J)Ljava/lang/String;
    .registers 11

    sget-object v0, Lcom/tapjoy/internal/sa;->a:Ljava/nio/charset/Charset;

    iget-wide v1, p0, Lcom/tapjoy/internal/n;->b:J

    const-wide/16 v3, 0x0

    move-wide v5, p1

    invoke-static/range {v1 .. v6}, Lcom/tapjoy/internal/sa;->a(JJJ)V

    if-eqz v0, :cond_6b

    const-wide/32 v1, 0x7fffffff

    cmp-long v3, p1, v1

    if-gtz v3, :cond_57

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_1c

    const-string p1, ""

    goto :goto_56

    :cond_1c
    iget-object v1, p0, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    iget v2, v1, Lcom/tapjoy/internal/r7;->b:I

    int-to-long v3, v2

    add-long/2addr v3, p1

    iget v5, v1, Lcom/tapjoy/internal/r7;->c:I

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_34

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/internal/n;->g(J)[B

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p1, v1

    goto :goto_56

    :cond_34
    new-instance v3, Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/r7;->a:[B

    long-to-int v5, p1

    invoke-direct {v3, v4, v2, v5, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v0, v1, Lcom/tapjoy/internal/r7;->b:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    long-to-int v0, v4

    iput v0, v1, Lcom/tapjoy/internal/r7;->b:I

    iget-wide v4, p0, Lcom/tapjoy/internal/n;->b:J

    sub-long/2addr v4, p1

    iput-wide v4, p0, Lcom/tapjoy/internal/n;->b:J

    iget p1, v1, Lcom/tapjoy/internal/r7;->c:I

    if-ne v0, p1, :cond_55

    invoke-virtual {v1}, Lcom/tapjoy/internal/r7;->a()Lcom/tapjoy/internal/r7;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    invoke-static {v1}, Lcom/tapjoy/internal/v6;->a(Lcom/tapjoy/internal/r7;)V

    :cond_55
    move-object p1, v3

    :goto_56
    return-object p1

    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k()[B
    .registers 3

    :try_start_0
    iget-wide v0, p0, Lcom/tapjoy/internal/n;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/n;->g(J)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final l()I
    .registers 11

    iget-wide v0, p0, Lcom/tapjoy/internal/n;->b:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_6a

    iget-object v4, p0, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    iget v5, v4, Lcom/tapjoy/internal/r7;->b:I

    iget v6, v4, Lcom/tapjoy/internal/r7;->c:I

    sub-int v7, v6, v5

    const/4 v8, 0x4

    if-ge v7, v8, :cond_35

    invoke-virtual {p0}, Lcom/tapjoy/internal/n;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lcom/tapjoy/internal/n;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/n;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/tapjoy/internal/n;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    :cond_35
    iget-object v7, v4, Lcom/tapjoy/internal/r7;->a:[B

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v5, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v9, v7, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v5, v9

    add-int/lit8 v9, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tapjoy/internal/n;->b:J

    if-ne v9, v6, :cond_67

    invoke-virtual {v4}, Lcom/tapjoy/internal/r7;->a()Lcom/tapjoy/internal/r7;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/r7;

    invoke-static {v4}, Lcom/tapjoy/internal/v6;->a(Lcom/tapjoy/internal/r7;)V

    goto :goto_69

    :cond_67
    iput v9, v4, Lcom/tapjoy/internal/r7;->b:I

    :goto_69
    return v5

    :cond_6a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 4: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tapjoy/internal/n;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    iget-wide v0, p0, Lcom/tapjoy/internal/n;->b:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_19

    long-to-int v1, v0

    if-nez v1, :cond_f

    sget-object v0, Lcom/tapjoy/internal/c1;->b:Lcom/tapjoy/internal/c1;

    goto :goto_14

    :cond_f
    new-instance v0, Lcom/tapjoy/internal/h8;

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/h8;-><init>(Lcom/tapjoy/internal/n;I)V

    :goto_14
    invoke-virtual {v0}, Lcom/tapjoy/internal/c1;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tapjoy/internal/n;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
