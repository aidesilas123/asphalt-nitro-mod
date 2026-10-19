###### Class com.tapjoy.internal.w5 (com.tapjoy.internal.w5)
.class public final Lcom/tapjoy/internal/w5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/tapjoy/internal/c0;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/n;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/w5;->a:Lcom/tapjoy/internal/c0;

    return-void
.end method

.method public static a(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method public static a(J)I
    .registers 7

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    const/4 p0, 0x2

    return p0

    :cond_14
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1e

    const/4 p0, 0x3

    return p0

    :cond_1e
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_28

    const/4 p0, 0x4

    return p0

    :cond_28
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_34

    const/4 p0, 0x5

    return p0

    :cond_34
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_40

    const/4 p0, 0x6

    return p0

    :cond_40
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_49

    const/4 p0, 0x7

    return p0

    :cond_49
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_53

    const/16 p0, 0x8

    return p0

    :cond_53
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long v0, p0, v2

    if-nez v0, :cond_5d

    const/16 p0, 0x9

    return p0

    :cond_5d
    const/16 p0, 0xa

    return p0
.end method


# virtual methods
.method public final b(Lcom/tapjoy/internal/c1;)V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/w5;->a:Lcom/tapjoy/internal/c0;

    check-cast v0, Lcom/tapjoy/internal/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/c1;->b(Lcom/tapjoy/internal/n;)V

    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(I)V
    .registers 8

    iget-object v0, p0, Lcom/tapjoy/internal/w5;->a:Lcom/tapjoy/internal/c0;

    check-cast v0, Lcom/tapjoy/internal/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/tapjoy/internal/sa;->a:Ljava/nio/charset/Charset;

    const/high16 v1, -0x1000000

    and-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x18

    const/high16 v2, 0xff0000

    and-int/2addr v2, p1

    ushr-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const v2, 0xff00

    and-int/2addr v2, p1

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/n;->f(I)Lcom/tapjoy/internal/r7;

    move-result-object v1

    iget-object v2, v1, Lcom/tapjoy/internal/r7;->a:[B

    iget v3, v1, Lcom/tapjoy/internal/r7;->c:I

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, p1, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    ushr-int/lit8 v5, p1, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    iput v3, v1, Lcom/tapjoy/internal/r7;->c:I

    iget-wide v1, v0, Lcom/tapjoy/internal/n;->b:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/tapjoy/internal/n;->b:J

    return-void
.end method

.method public final d(J)V
    .registers 13

    iget-object v0, p0, Lcom/tapjoy/internal/w5;->a:Lcom/tapjoy/internal/c0;

    check-cast v0, Lcom/tapjoy/internal/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/tapjoy/internal/sa;->a(J)J

    move-result-wide p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/n;->f(I)Lcom/tapjoy/internal/r7;

    move-result-object v2

    iget-object v3, v2, Lcom/tapjoy/internal/r7;->a:[B

    iget v4, v2, Lcom/tapjoy/internal/r7;->c:I

    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0x38

    ushr-long v6, p1, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v3, v4

    add-int/lit8 v4, v5, 0x1

    const/16 v6, 0x30

    ushr-long v6, p1, v6

    and-long/2addr v6, v8

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v3, v5

    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0x28

    ushr-long v6, p1, v6

    and-long/2addr v6, v8

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v3, v4

    add-int/lit8 v4, v5, 0x1

    const/16 v6, 0x20

    ushr-long v6, p1, v6

    and-long/2addr v6, v8

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v3, v5

    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0x18

    ushr-long v6, p1, v6

    and-long/2addr v6, v8

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v3, v4

    add-int/lit8 v4, v5, 0x1

    const/16 v6, 0x10

    ushr-long v6, p1, v6

    and-long/2addr v6, v8

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v3, v5

    add-int/lit8 v5, v4, 0x1

    ushr-long v6, p1, v1

    and-long/2addr v6, v8

    long-to-int v1, v6

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    add-int/lit8 v1, v5, 0x1

    and-long/2addr p1, v8

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v3, v5

    iput v1, v2, Lcom/tapjoy/internal/r7;->c:I

    iget-wide p1, v0, Lcom/tapjoy/internal/n;->b:J

    const-wide/16 v1, 0x8

    add-long/2addr p1, v1

    iput-wide p1, v0, Lcom/tapjoy/internal/n;->b:J

    return-void
.end method

.method public final e(I)V
    .registers 4

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/tapjoy/internal/w5;->a:Lcom/tapjoy/internal/c0;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    check-cast v0, Lcom/tapjoy/internal/n;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/n;->i(I)Lcom/tapjoy/internal/n;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_12
    iget-object v0, p0, Lcom/tapjoy/internal/w5;->a:Lcom/tapjoy/internal/c0;

    check-cast v0, Lcom/tapjoy/internal/n;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/n;->i(I)Lcom/tapjoy/internal/n;

    return-void
.end method

.method public final f(J)V
    .registers 8

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    iget-object v0, p0, Lcom/tapjoy/internal/w5;->a:Lcom/tapjoy/internal/c0;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    check-cast v0, Lcom/tapjoy/internal/n;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/n;->i(I)Lcom/tapjoy/internal/n;

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_18
    iget-object v0, p0, Lcom/tapjoy/internal/w5;->a:Lcom/tapjoy/internal/c0;

    long-to-int p2, p1

    check-cast v0, Lcom/tapjoy/internal/n;

    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/n;->i(I)Lcom/tapjoy/internal/n;

    return-void
.end method
