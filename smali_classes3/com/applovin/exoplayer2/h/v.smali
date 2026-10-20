###### Class com.applovin.exoplayer2.h.v (com.applovin.exoplayer2.h.v)
.class Lcom/applovin/exoplayer2/h/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/h/v$a;
    }
.end annotation


# instance fields
.field private Dh:J

.field private final Lu:Lcom/applovin/exoplayer2/k/b;

.field private final MK:I

.field private ML:Lcom/applovin/exoplayer2/h/v$a;

.field private MM:Lcom/applovin/exoplayer2/h/v$a;

.field private MN:Lcom/applovin/exoplayer2/h/v$a;

.field private final uO:Lcom/applovin/exoplayer2/l/y;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/k/b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/v;->Lu:Lcom/applovin/exoplayer2/k/b;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/k/b;->oc()I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/h/v;->MK:I

    new-instance v0, Lcom/applovin/exoplayer2/l/y;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/h/v;->uO:Lcom/applovin/exoplayer2/l/y;

    new-instance v0, Lcom/applovin/exoplayer2/h/v$a;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/applovin/exoplayer2/h/v$a;-><init>(JI)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/h/v;->ML:Lcom/applovin/exoplayer2/h/v$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/h/v;->MM:Lcom/applovin/exoplayer2/h/v$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/h/v;->MN:Lcom/applovin/exoplayer2/h/v$a;

    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/h/v$a;J)Lcom/applovin/exoplayer2/h/v$a;
    .registers 6

    :goto_0
    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/v$a;->zl:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    iget-object p0, p0, Lcom/applovin/exoplayer2/h/v$a;->MR:Lcom/applovin/exoplayer2/h/v$a;

    goto :goto_0

    :cond_9
    return-object p0
.end method

.method private static a(Lcom/applovin/exoplayer2/h/v$a;JLjava/nio/ByteBuffer;I)Lcom/applovin/exoplayer2/h/v$a;
    .registers 8

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/h/v;->a(Lcom/applovin/exoplayer2/h/v$a;J)Lcom/applovin/exoplayer2/h/v$a;

    move-result-object p0

    :cond_4
    :goto_4
    if-lez p4, :cond_25

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/v$a;->zl:J

    sub-long/2addr v0, p1

    long-to-int v1, v0

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/v$a;->MQ:Lcom/applovin/exoplayer2/k/a;

    iget-object v1, v1, Lcom/applovin/exoplayer2/k/a;->tf:[B

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/h/v$a;->aZ(J)I

    move-result v2

    invoke-virtual {p3, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/v$a;->zl:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_4

    iget-object p0, p0, Lcom/applovin/exoplayer2/h/v$a;->MR:Lcom/applovin/exoplayer2/h/v$a;

    goto :goto_4

    :cond_25
    return-object p0
.end method

.method private static a(Lcom/applovin/exoplayer2/h/v$a;J[BI)Lcom/applovin/exoplayer2/h/v$a;
    .registers 10

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/h/v;->a(Lcom/applovin/exoplayer2/h/v$a;J)Lcom/applovin/exoplayer2/h/v$a;

    move-result-object p0

    move v0, p4

    :cond_5
    :goto_5
    if-lez v0, :cond_28

    iget-wide v1, p0, Lcom/applovin/exoplayer2/h/v$a;->zl:J

    sub-long/2addr v1, p1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/h/v$a;->MQ:Lcom/applovin/exoplayer2/k/a;

    iget-object v2, v2, Lcom/applovin/exoplayer2/k/a;->tf:[B

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/h/v$a;->aZ(J)I

    move-result v3

    sub-int v4, p4, v0

    invoke-static {v2, v3, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    iget-wide v1, p0, Lcom/applovin/exoplayer2/h/v$a;->zl:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_5

    iget-object p0, p0, Lcom/applovin/exoplayer2/h/v$a;->MR:Lcom/applovin/exoplayer2/h/v$a;

    goto :goto_5

    :cond_28
    return-object p0
.end method

.method private static a(Lcom/applovin/exoplayer2/h/v$a;Lcom/applovin/exoplayer2/c/g;Lcom/applovin/exoplayer2/h/w$a;Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/h/v$a;
    .registers 9

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/c/g;->hg()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/h/v;->b(Lcom/applovin/exoplayer2/h/v$a;Lcom/applovin/exoplayer2/c/g;Lcom/applovin/exoplayer2/h/w$a;Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/h/v$a;

    move-result-object p0

    :cond_a
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/c/a;->ha()Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    iget-wide v1, p2, Lcom/applovin/exoplayer2/h/w$a;->zr:J

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v3

    invoke-static {p0, v1, v2, v3, v0}, Lcom/applovin/exoplayer2/h/v;->a(Lcom/applovin/exoplayer2/h/v$a;J[BI)Lcom/applovin/exoplayer2/h/v$a;

    move-result-object p0

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/l/y;->pD()I

    move-result p3

    iget-wide v1, p2, Lcom/applovin/exoplayer2/h/w$a;->zr:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    iput-wide v1, p2, Lcom/applovin/exoplayer2/h/w$a;->zr:J

    iget v1, p2, Lcom/applovin/exoplayer2/h/w$a;->oW:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/applovin/exoplayer2/h/w$a;->oW:I

    invoke-virtual {p1, p3}, Lcom/applovin/exoplayer2/c/g;->by(I)V

    iget-wide v0, p2, Lcom/applovin/exoplayer2/h/w$a;->zr:J

    iget-object v2, p1, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    invoke-static {p0, v0, v1, v2, p3}, Lcom/applovin/exoplayer2/h/v;->a(Lcom/applovin/exoplayer2/h/v$a;JLjava/nio/ByteBuffer;I)Lcom/applovin/exoplayer2/h/v$a;

    move-result-object p0

    iget-wide v0, p2, Lcom/applovin/exoplayer2/h/w$a;->zr:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/applovin/exoplayer2/h/w$a;->zr:J

    iget v0, p2, Lcom/applovin/exoplayer2/h/w$a;->oW:I

    sub-int/2addr v0, p3

    iput v0, p2, Lcom/applovin/exoplayer2/h/w$a;->oW:I

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/c/g;->bx(I)V

    iget-wide v0, p2, Lcom/applovin/exoplayer2/h/w$a;->zr:J

    iget-object p1, p1, Lcom/applovin/exoplayer2/c/g;->rK:Ljava/nio/ByteBuffer;

    iget p2, p2, Lcom/applovin/exoplayer2/h/w$a;->oW:I

    invoke-static {p0, v0, v1, p1, p2}, Lcom/applovin/exoplayer2/h/v;->a(Lcom/applovin/exoplayer2/h/v$a;JLjava/nio/ByteBuffer;I)Lcom/applovin/exoplayer2/h/v$a;

    move-result-object p0

    goto :goto_61

    :cond_52
    iget p3, p2, Lcom/applovin/exoplayer2/h/w$a;->oW:I

    invoke-virtual {p1, p3}, Lcom/applovin/exoplayer2/c/g;->by(I)V

    iget-wide v0, p2, Lcom/applovin/exoplayer2/h/w$a;->zr:J

    iget-object p1, p1, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    iget p2, p2, Lcom/applovin/exoplayer2/h/w$a;->oW:I

    invoke-static {p0, v0, v1, p1, p2}, Lcom/applovin/exoplayer2/h/v;->a(Lcom/applovin/exoplayer2/h/v$a;JLjava/nio/ByteBuffer;I)Lcom/applovin/exoplayer2/h/v$a;

    move-result-object p0

    :goto_61
    return-object p0
.end method

.method private a(Lcom/applovin/exoplayer2/h/v$a;)V
    .registers 8

    iget-boolean v0, p1, Lcom/applovin/exoplayer2/h/v$a;->MP:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/v;->MN:Lcom/applovin/exoplayer2/h/v$a;

    iget-boolean v1, v0, Lcom/applovin/exoplayer2/h/v$a;->MP:Z

    iget-wide v2, v0, Lcom/applovin/exoplayer2/h/v$a;->MO:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/h/v$a;->MO:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iget v2, p0, Lcom/applovin/exoplayer2/h/v;->MK:I

    div-int/2addr v0, v2

    add-int/2addr v1, v0

    new-array v0, v1, [Lcom/applovin/exoplayer2/k/a;

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_23

    iget-object v3, p1, Lcom/applovin/exoplayer2/h/v$a;->MQ:Lcom/applovin/exoplayer2/k/a;

    aput-object v3, v0, v2

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/h/v$a;->lv()Lcom/applovin/exoplayer2/h/v$a;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_23
    iget-object p1, p0, Lcom/applovin/exoplayer2/h/v;->Lu:Lcom/applovin/exoplayer2/k/b;

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/k/b;->a([Lcom/applovin/exoplayer2/k/a;)V

    return-void
.end method

.method private static b(Lcom/applovin/exoplayer2/h/v$a;Lcom/applovin/exoplayer2/c/g;Lcom/applovin/exoplayer2/h/w$a;Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/h/v$a;
    .registers 22

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    iget-wide v2, v0, Lcom/applovin/exoplayer2/h/w$a;->zr:J

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v5

    move-object/from16 v6, p0

    invoke-static {v6, v2, v3, v5, v4}, Lcom/applovin/exoplayer2/h/v;->a(Lcom/applovin/exoplayer2/h/v$a;J[BI)Lcom/applovin/exoplayer2/h/v$a;

    move-result-object v5

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-virtual/range {p3 .. p3}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v6

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    and-int/lit16 v8, v6, 0x80

    if-eqz v8, :cond_24

    const/4 v8, 0x1

    goto :goto_25

    :cond_24
    const/4 v8, 0x0

    :goto_25
    and-int/lit8 v6, v6, 0x7f

    move-object/from16 v9, p1

    iget-object v9, v9, Lcom/applovin/exoplayer2/c/g;->rG:Lcom/applovin/exoplayer2/c/c;

    iget-object v10, v9, Lcom/applovin/exoplayer2/c/c;->rk:[B

    if-nez v10, :cond_36

    const/16 v10, 0x10

    new-array v10, v10, [B

    iput-object v10, v9, Lcom/applovin/exoplayer2/c/c;->rk:[B

    goto :goto_39

    :cond_36
    invoke-static {v10, v7}, Ljava/util/Arrays;->fill([BB)V

    :goto_39
    iget-object v10, v9, Lcom/applovin/exoplayer2/c/c;->rk:[B

    invoke-static {v5, v2, v3, v10, v6}, Lcom/applovin/exoplayer2/h/v;->a(Lcom/applovin/exoplayer2/h/v$a;J[BI)Lcom/applovin/exoplayer2/h/v$a;

    move-result-object v5

    int-to-long v10, v6

    add-long/2addr v2, v10

    if-eqz v8, :cond_58

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v6

    invoke-static {v5, v2, v3, v6, v4}, Lcom/applovin/exoplayer2/h/v;->a(Lcom/applovin/exoplayer2/h/v$a;J[BI)Lcom/applovin/exoplayer2/h/v$a;

    move-result-object v5

    const-wide/16 v10, 0x2

    add-long/2addr v2, v10

    invoke-virtual/range {p3 .. p3}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result v4

    move v10, v4

    goto :goto_59

    :cond_58
    const/4 v10, 0x1

    :goto_59
    iget-object v4, v9, Lcom/applovin/exoplayer2/c/c;->rn:[I

    if-eqz v4, :cond_60

    array-length v6, v4

    if-ge v6, v10, :cond_62

    :cond_60
    new-array v4, v10, [I

    :cond_62
    move-object v11, v4

    iget-object v4, v9, Lcom/applovin/exoplayer2/c/c;->ro:[I

    if-eqz v4, :cond_6a

    array-length v6, v4

    if-ge v6, v10, :cond_6c

    :cond_6a
    new-array v4, v10, [I

    :cond_6c
    move-object v12, v4

    if-eqz v8, :cond_92

    mul-int/lit8 v4, v10, 0x6

    invoke-virtual {v1, v4}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v6

    invoke-static {v5, v2, v3, v6, v4}, Lcom/applovin/exoplayer2/h/v;->a(Lcom/applovin/exoplayer2/h/v$a;J[BI)Lcom/applovin/exoplayer2/h/v$a;

    move-result-object v5

    int-to-long v13, v4

    add-long/2addr v2, v13

    invoke-virtual {v1, v7}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    :goto_81
    if-ge v7, v10, :cond_9e

    invoke-virtual/range {p3 .. p3}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result v4

    aput v4, v11, v7

    invoke-virtual/range {p3 .. p3}, Lcom/applovin/exoplayer2/l/y;->pD()I

    move-result v4

    aput v4, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_81

    :cond_92
    aput v7, v11, v7

    iget v1, v0, Lcom/applovin/exoplayer2/h/w$a;->oW:I

    iget-wide v13, v0, Lcom/applovin/exoplayer2/h/w$a;->zr:J

    sub-long v13, v2, v13

    long-to-int v4, v13

    sub-int/2addr v1, v4

    aput v1, v12, v7

    :cond_9e
    iget-object v1, v0, Lcom/applovin/exoplayer2/h/w$a;->xZ:Lcom/applovin/exoplayer2/e/x$a;

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/e/x$a;

    iget-object v13, v1, Lcom/applovin/exoplayer2/e/x$a;->uV:[B

    iget-object v14, v9, Lcom/applovin/exoplayer2/c/c;->rk:[B

    iget v15, v1, Lcom/applovin/exoplayer2/e/x$a;->uU:I

    iget v4, v1, Lcom/applovin/exoplayer2/e/x$a;->rq:I

    iget v1, v1, Lcom/applovin/exoplayer2/e/x$a;->rr:I

    move/from16 v16, v4

    move/from16 v17, v1

    invoke-virtual/range {v9 .. v17}, Lcom/applovin/exoplayer2/c/c;->a(I[I[I[B[BIII)V

    iget-wide v6, v0, Lcom/applovin/exoplayer2/h/w$a;->zr:J

    sub-long/2addr v2, v6

    long-to-int v1, v2

    int-to-long v2, v1

    add-long/2addr v6, v2

    iput-wide v6, v0, Lcom/applovin/exoplayer2/h/w$a;->zr:J

    iget v2, v0, Lcom/applovin/exoplayer2/h/w$a;->oW:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/applovin/exoplayer2/h/w$a;->oW:I

    return-object v5
.end method

.method private dN(I)I
    .registers 8

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/v;->MN:Lcom/applovin/exoplayer2/h/v$a;

    iget-boolean v1, v0, Lcom/applovin/exoplayer2/h/v$a;->MP:Z

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/v;->Lu:Lcom/applovin/exoplayer2/k/b;

    invoke-interface {v1}, Lcom/applovin/exoplayer2/k/b;->oa()Lcom/applovin/exoplayer2/k/a;

    move-result-object v1

    new-instance v2, Lcom/applovin/exoplayer2/h/v$a;

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/v;->MN:Lcom/applovin/exoplayer2/h/v$a;

    iget-wide v3, v3, Lcom/applovin/exoplayer2/h/v$a;->zl:J

    iget v5, p0, Lcom/applovin/exoplayer2/h/v;->MK:I

    invoke-direct {v2, v3, v4, v5}, Lcom/applovin/exoplayer2/h/v$a;-><init>(JI)V

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/h/v$a;->a(Lcom/applovin/exoplayer2/k/a;Lcom/applovin/exoplayer2/h/v$a;)V

    :cond_1a
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/v;->MN:Lcom/applovin/exoplayer2/h/v$a;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/h/v$a;->zl:J

    iget-wide v2, p0, Lcom/applovin/exoplayer2/h/v;->Dh:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private dO(I)V
    .registers 7

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/v;->Dh:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/applovin/exoplayer2/h/v;->Dh:J

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/v;->MN:Lcom/applovin/exoplayer2/h/v$a;

    iget-wide v2, p1, Lcom/applovin/exoplayer2/h/v$a;->zl:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    iget-object p1, p1, Lcom/applovin/exoplayer2/h/v$a;->MR:Lcom/applovin/exoplayer2/h/v$a;

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/v;->MN:Lcom/applovin/exoplayer2/h/v$a;

    :cond_12
    return-void
.end method


# virtual methods
.method public Y()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/v;->ML:Lcom/applovin/exoplayer2/h/v$a;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/h/v;->a(Lcom/applovin/exoplayer2/h/v$a;)V

    new-instance v0, Lcom/applovin/exoplayer2/h/v$a;

    iget v1, p0, Lcom/applovin/exoplayer2/h/v;->MK:I

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/applovin/exoplayer2/h/v$a;-><init>(JI)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/h/v;->ML:Lcom/applovin/exoplayer2/h/v$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/h/v;->MM:Lcom/applovin/exoplayer2/h/v$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/h/v;->MN:Lcom/applovin/exoplayer2/h/v$a;

    iput-wide v2, p0, Lcom/applovin/exoplayer2/h/v;->Dh:J

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/v;->Lu:Lcom/applovin/exoplayer2/k/b;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/k/b;->ob()V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/k/g;IZ)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/h/v;->dN(I)I

    move-result p2

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/v;->MN:Lcom/applovin/exoplayer2/h/v$a;

    iget-object v1, v0, Lcom/applovin/exoplayer2/h/v$a;->MQ:Lcom/applovin/exoplayer2/k/a;

    iget-object v1, v1, Lcom/applovin/exoplayer2/k/a;->tf:[B

    iget-wide v2, p0, Lcom/applovin/exoplayer2/h/v;->Dh:J

    invoke-virtual {v0, v2, v3}, Lcom/applovin/exoplayer2/h/v$a;->aZ(J)I

    move-result v0

    invoke-interface {p1, v1, v0, p2}, Lcom/applovin/exoplayer2/k/g;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_20

    if-eqz p3, :cond_1a

    return p2

    :cond_1a
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_20
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/h/v;->dO(I)V

    return p1
.end method

.method public a(Lcom/applovin/exoplayer2/c/g;Lcom/applovin/exoplayer2/h/w$a;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/v;->MM:Lcom/applovin/exoplayer2/h/v$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/v;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-static {v0, p1, p2, v1}, Lcom/applovin/exoplayer2/h/v;->a(Lcom/applovin/exoplayer2/h/v$a;Lcom/applovin/exoplayer2/c/g;Lcom/applovin/exoplayer2/h/w$a;Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/h/v$a;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/v;->MM:Lcom/applovin/exoplayer2/h/v$a;

    return-void
.end method

.method public aY(J)V
    .registers 7

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-void

    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/v;->ML:Lcom/applovin/exoplayer2/h/v$a;

    iget-wide v1, v0, Lcom/applovin/exoplayer2/h/v$a;->zl:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1f

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/v;->Lu:Lcom/applovin/exoplayer2/k/b;

    iget-object v0, v0, Lcom/applovin/exoplayer2/h/v$a;->MQ:Lcom/applovin/exoplayer2/k/a;

    invoke-interface {v1, v0}, Lcom/applovin/exoplayer2/k/b;->a(Lcom/applovin/exoplayer2/k/a;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/v;->ML:Lcom/applovin/exoplayer2/h/v$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/v$a;->lv()Lcom/applovin/exoplayer2/h/v$a;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/h/v;->ML:Lcom/applovin/exoplayer2/h/v$a;

    goto :goto_7

    :cond_1f
    iget-object p1, p0, Lcom/applovin/exoplayer2/h/v;->MM:Lcom/applovin/exoplayer2/h/v$a;

    iget-wide p1, p1, Lcom/applovin/exoplayer2/h/v$a;->MO:J

    iget-wide v1, v0, Lcom/applovin/exoplayer2/h/v$a;->MO:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_2b

    iput-object v0, p0, Lcom/applovin/exoplayer2/h/v;->MM:Lcom/applovin/exoplayer2/h/v$a;

    :cond_2b
    return-void
.end method

.method public b(Lcom/applovin/exoplayer2/c/g;Lcom/applovin/exoplayer2/h/w$a;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/v;->MM:Lcom/applovin/exoplayer2/h/v$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/v;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-static {v0, p1, p2, v1}, Lcom/applovin/exoplayer2/h/v;->a(Lcom/applovin/exoplayer2/h/v$a;Lcom/applovin/exoplayer2/c/g;Lcom/applovin/exoplayer2/h/w$a;Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/h/v$a;

    return-void
.end method

.method public c(Lcom/applovin/exoplayer2/l/y;I)V
    .registers 8

    :goto_0
    if-lez p2, :cond_1a

    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/h/v;->dN(I)I

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/v;->MN:Lcom/applovin/exoplayer2/h/v$a;

    iget-object v2, v1, Lcom/applovin/exoplayer2/h/v$a;->MQ:Lcom/applovin/exoplayer2/k/a;

    iget-object v2, v2, Lcom/applovin/exoplayer2/k/a;->tf:[B

    iget-wide v3, p0, Lcom/applovin/exoplayer2/h/v;->Dh:J

    invoke-virtual {v1, v3, v4}, Lcom/applovin/exoplayer2/h/v$a;->aZ(J)I

    move-result v1

    invoke-virtual {p1, v2, v1, v0}, Lcom/applovin/exoplayer2/l/y;->r([BII)V

    sub-int/2addr p2, v0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/h/v;->dO(I)V

    goto :goto_0

    :cond_1a
    return-void
.end method

.method public lt()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/v;->ML:Lcom/applovin/exoplayer2/h/v$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/h/v;->MM:Lcom/applovin/exoplayer2/h/v$a;

    return-void
.end method

.method public lu()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/v;->Dh:J

    return-wide v0
.end method
