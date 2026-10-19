###### Class com.applovin.exoplayer2.e.m (com.applovin.exoplayer2.e.m)
.class public final Lcom/applovin/exoplayer2/e/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/m$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/applovin/exoplayer2/l/y;I)I
    .registers 2

    packed-switch p1, :pswitch_data_22

    const/4 p0, -0x1

    return p0

    :pswitch_5
    const/16 p0, 0x100

    add-int/lit8 p1, p1, -0x8

    shl-int/2addr p0, p1

    return p0

    :pswitch_b
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_12
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_19
    const/16 p0, 0x240

    add-int/lit8 p1, p1, -0x2

    shl-int/2addr p0, p1

    return p0

    :pswitch_1f
    const/16 p0, 0xc0

    return p0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_12
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/p;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/applovin/exoplayer2/e/i;->ic()V

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/applovin/exoplayer2/e/i;->bI(I)V

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lcom/applovin/exoplayer2/e/i;->c([BII)V

    aget-byte v1, v1, v2

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Lcom/applovin/exoplayer2/e/i;->bI(I)V

    if-eqz v0, :cond_1c

    const/4 v1, 0x7

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x6

    :goto_1d
    new-instance v3, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {v3, v1}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v4

    invoke-static {p0, v4, v2, v1}, Lcom/applovin/exoplayer2/e/k;->a(Lcom/applovin/exoplayer2/e/i;[BII)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/applovin/exoplayer2/l/y;->fA(I)V

    invoke-interface {p0}, Lcom/applovin/exoplayer2/e/i;->ic()V

    new-instance p0, Lcom/applovin/exoplayer2/e/m$a;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/m$a;-><init>()V

    invoke-static {v3, p1, v0, p0}, Lcom/applovin/exoplayer2/e/m;->a(Lcom/applovin/exoplayer2/l/y;Lcom/applovin/exoplayer2/e/p;ZLcom/applovin/exoplayer2/e/m$a;)Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-wide p0, p0, Lcom/applovin/exoplayer2/e/m$a;->uy:J

    return-wide p0

    :cond_3e
    const/4 p0, 0x0

    invoke-static {p0, p0}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0
.end method

.method private static a(ILcom/applovin/exoplayer2/e/p;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-gt p0, v2, :cond_c

    iget p1, p1, Lcom/applovin/exoplayer2/e/p;->mI:I

    sub-int/2addr p1, v1

    if-ne p0, p1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0

    :cond_c
    const/16 v2, 0xa

    if-gt p0, v2, :cond_16

    iget p0, p1, Lcom/applovin/exoplayer2/e/p;->mI:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method public static a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/p;ILcom/applovin/exoplayer2/e/m$a;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/applovin/exoplayer2/e/i;->id()J

    move-result-wide v0

    const/4 v2, 0x2

    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4, v2}, Lcom/applovin/exoplayer2/e/i;->c([BII)V

    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    if-eq v5, p2, :cond_26

    invoke-interface {p0}, Lcom/applovin/exoplayer2/e/i;->ic()V

    invoke-interface {p0}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    invoke-interface {p0, p1}, Lcom/applovin/exoplayer2/e/i;->bI(I)V

    return v4

    :cond_26
    new-instance v5, Lcom/applovin/exoplayer2/l/y;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v6

    invoke-static {v3, v4, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v3

    const/16 v4, 0xe

    invoke-static {p0, v3, v2, v4}, Lcom/applovin/exoplayer2/e/k;->a(Lcom/applovin/exoplayer2/e/i;[BII)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/applovin/exoplayer2/l/y;->fA(I)V

    invoke-interface {p0}, Lcom/applovin/exoplayer2/e/i;->ic()V

    invoke-interface {p0}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-interface {p0, v1}, Lcom/applovin/exoplayer2/e/i;->bI(I)V

    invoke-static {v5, p1, p2, p3}, Lcom/applovin/exoplayer2/e/m;->a(Lcom/applovin/exoplayer2/l/y;Lcom/applovin/exoplayer2/e/p;ILcom/applovin/exoplayer2/e/m$a;)Z

    move-result p0

    return p0
.end method

.method private static a(Lcom/applovin/exoplayer2/l/y;Lcom/applovin/exoplayer2/e/p;I)Z
    .registers 3

    invoke-static {p0, p2}, Lcom/applovin/exoplayer2/e/m;->a(Lcom/applovin/exoplayer2/l/y;I)I

    move-result p0

    const/4 p2, -0x1

    if-eq p0, p2, :cond_d

    iget p1, p1, Lcom/applovin/exoplayer2/e/p;->uC:I

    if-gt p0, p1, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static a(Lcom/applovin/exoplayer2/l/y;Lcom/applovin/exoplayer2/e/p;ILcom/applovin/exoplayer2/e/m$a;)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v3

    const/16 v5, 0x10

    ushr-long v5, v3, v5

    move/from16 v7, p2

    int-to-long v7, v7

    const/4 v9, 0x0

    cmp-long v10, v5, v7

    if-eqz v10, :cond_19

    return v9

    :cond_19
    const-wide/16 v7, 0x1

    and-long/2addr v5, v7

    const/4 v10, 0x1

    cmp-long v11, v5, v7

    if-nez v11, :cond_23

    const/4 v5, 0x1

    goto :goto_24

    :cond_23
    const/4 v5, 0x0

    :goto_24
    const/16 v6, 0xc

    shr-long v11, v3, v6

    const-wide/16 v13, 0xf

    and-long/2addr v11, v13

    long-to-int v6, v11

    const/16 v11, 0x8

    shr-long v11, v3, v11

    and-long/2addr v11, v13

    long-to-int v12, v11

    const/4 v11, 0x4

    shr-long v15, v3, v11

    and-long/2addr v13, v15

    long-to-int v11, v13

    shr-long v13, v3, v10

    const-wide/16 v15, 0x7

    and-long/2addr v13, v15

    long-to-int v14, v13

    and-long/2addr v3, v7

    cmp-long v13, v3, v7

    if-nez v13, :cond_44

    const/4 v3, 0x1

    goto :goto_45

    :cond_44
    const/4 v3, 0x0

    :goto_45
    invoke-static {v11, v1}, Lcom/applovin/exoplayer2/e/m;->a(ILcom/applovin/exoplayer2/e/p;)Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-static {v14, v1}, Lcom/applovin/exoplayer2/e/m;->b(ILcom/applovin/exoplayer2/e/p;)Z

    move-result v4

    if-eqz v4, :cond_6e

    if-nez v3, :cond_6e

    move-object/from16 v3, p3

    invoke-static {v0, v1, v5, v3}, Lcom/applovin/exoplayer2/e/m;->a(Lcom/applovin/exoplayer2/l/y;Lcom/applovin/exoplayer2/e/p;ZLcom/applovin/exoplayer2/e/m$a;)Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-static {v0, v1, v6}, Lcom/applovin/exoplayer2/e/m;->a(Lcom/applovin/exoplayer2/l/y;Lcom/applovin/exoplayer2/e/p;I)Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-static {v0, v1, v12}, Lcom/applovin/exoplayer2/e/m;->b(Lcom/applovin/exoplayer2/l/y;Lcom/applovin/exoplayer2/e/p;I)Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-static {v0, v2}, Lcom/applovin/exoplayer2/e/m;->b(Lcom/applovin/exoplayer2/l/y;I)Z

    move-result v0

    if-eqz v0, :cond_6e

    const/4 v9, 0x1

    :cond_6e
    return v9
.end method

.method private static a(Lcom/applovin/exoplayer2/l/y;Lcom/applovin/exoplayer2/e/p;ZLcom/applovin/exoplayer2/e/m$a;)Z
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pK()J

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_10

    if-eqz p2, :cond_7

    goto :goto_c

    :cond_7
    iget p0, p1, Lcom/applovin/exoplayer2/e/p;->uC:I

    int-to-long p0, p0

    mul-long v0, v0, p0

    :goto_c
    iput-wide v0, p3, Lcom/applovin/exoplayer2/e/m$a;->uy:J

    const/4 p0, 0x1

    return p0

    :catch_10
    const/4 p0, 0x0

    return p0
.end method

.method private static b(ILcom/applovin/exoplayer2/e/p;)Z
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    iget p1, p1, Lcom/applovin/exoplayer2/e/p;->uH:I

    if-ne p0, p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static b(Lcom/applovin/exoplayer2/l/y;I)Z
    .registers 6

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v1

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3}, Lcom/applovin/exoplayer2/l/ai;->c([BIII)I

    move-result p0

    if-ne v0, p0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    return v2
.end method

.method private static b(Lcom/applovin/exoplayer2/l/y;Lcom/applovin/exoplayer2/e/p;I)Z
    .registers 7

    iget v0, p1, Lcom/applovin/exoplayer2/e/p;->dM:I

    const/4 v1, 0x1

    if-nez p2, :cond_6

    return v1

    :cond_6
    const/16 v2, 0xb

    const/4 v3, 0x0

    if-gt p2, v2, :cond_12

    iget p0, p1, Lcom/applovin/exoplayer2/e/p;->uF:I

    if-ne p2, p0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1

    :cond_12
    const/16 p1, 0xc

    if-ne p2, p1, :cond_21

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    if-ne p0, v0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return v1

    :cond_21
    const/16 p1, 0xe

    if-gt p2, p1, :cond_32

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result p0

    if-ne p2, p1, :cond_2d

    mul-int/lit8 p0, p0, 0xa

    :cond_2d
    if-ne p0, v0, :cond_30

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    return v1

    :cond_32
    return v3
.end method

###### Class com.applovin.exoplayer2.e.m.a (com.applovin.exoplayer2.e.m$a)
.class public final Lcom/applovin/exoplayer2/e/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public uy:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
