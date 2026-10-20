###### Class com.applovin.exoplayer2.e.i.h (com.applovin.exoplayer2.e.i.h)
.class public final Lcom/applovin/exoplayer2/e/i/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/i/j;


# instance fields
.field private Ai:I

.field private CV:I

.field private final Cs:Lcom/applovin/exoplayer2/l/y;

.field private Ct:Ljava/lang/String;

.field private Cu:I

.field private Cw:J

.field private Z:I

.field private dU:Lcom/applovin/exoplayer2/v;

.field private final dq:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private rJ:J

.field private wl:Lcom/applovin/exoplayer2/e/x;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/applovin/exoplayer2/l/y;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/l/y;-><init>([B)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/h;->Cs:Lcom/applovin/exoplayer2/l/y;

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/h;->Z:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/h;->rJ:J

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/h;->dq:Ljava/lang/String;

    return-void
.end method

.method private L(Lcom/applovin/exoplayer2/l/y;)Z
    .registers 7

    :cond_0
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_45

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/h;->CV:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/h;->CV:I

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/h;->CV:I

    invoke-static {v0}, Lcom/applovin/exoplayer2/b/o;->aF(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/h;->Cs:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object p1

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/h;->CV:I

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, p1, v3

    const/4 v2, 0x2

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    const/4 v2, 0x3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    const/4 p1, 0x4

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/h;->Cu:I

    iput v1, p0, Lcom/applovin/exoplayer2/e/i/h;->CV:I

    return v3

    :cond_45
    return v1
.end method

.method private a(Lcom/applovin/exoplayer2/l/y;[BI)Z
    .registers 6

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    iget v1, p0, Lcom/applovin/exoplayer2/e/i/h;->Cu:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/applovin/exoplayer2/e/i/h;->Cu:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/applovin/exoplayer2/l/y;->r([BII)V

    iget p1, p0, Lcom/applovin/exoplayer2/e/i/h;->Cu:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/h;->Cu:I

    if-ne p1, p3, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private jd()V
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/h;->Cs:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/h;->dU:Lcom/applovin/exoplayer2/v;

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/h;->Ct:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/h;->dq:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/exoplayer2/b/o;->a([BLjava/lang/String;Ljava/lang/String;Lcom/applovin/exoplayer2/d/e;)Lcom/applovin/exoplayer2/v;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/exoplayer2/e/i/h;->dU:Lcom/applovin/exoplayer2/v;

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/h;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-interface {v2, v1}, Lcom/applovin/exoplayer2/e/x;->j(Lcom/applovin/exoplayer2/v;)V

    :cond_1a
    invoke-static {v0}, Lcom/applovin/exoplayer2/b/o;->f([B)I

    move-result v1

    iput v1, p0, Lcom/applovin/exoplayer2/e/i/h;->Ai:I

    const-wide/32 v1, 0xf4240

    invoke-static {v0}, Lcom/applovin/exoplayer2/b/o;->e([B)I

    move-result v0

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/h;->dU:Lcom/applovin/exoplayer2/v;

    iget v0, v0, Lcom/applovin/exoplayer2/v;->dM:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    long-to-int v0, v3

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/h;->Cw:J

    return-void
.end method


# virtual methods
.method public K(Lcom/applovin/exoplayer2/l/y;)V
    .registers 12

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/h;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_5
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    if-lez v0, :cond_7d

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/h;->Z:I

    const/4 v1, 0x1

    if-eqz v0, :cond_74

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_54

    if-ne v0, v3, :cond_4e

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    iget v1, p0, Lcom/applovin/exoplayer2/e/i/h;->Ai:I

    iget v3, p0, Lcom/applovin/exoplayer2/e/i/h;->Cu:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/h;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-interface {v1, p1, v0}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    iget v1, p0, Lcom/applovin/exoplayer2/e/i/h;->Cu:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/applovin/exoplayer2/e/i/h;->Cu:I

    iget v7, p0, Lcom/applovin/exoplayer2/e/i/h;->Ai:I

    if-ne v1, v7, :cond_5

    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/i/h;->rJ:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v0

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/i/h;->wl:Lcom/applovin/exoplayer2/e/x;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/applovin/exoplayer2/e/x;->a(JIIILcom/applovin/exoplayer2/e/x$a;)V

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/i/h;->rJ:J

    iget-wide v3, p0, Lcom/applovin/exoplayer2/e/i/h;->Cw:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/h;->rJ:J

    :cond_4b
    iput v2, p0, Lcom/applovin/exoplayer2/e/i/h;->Z:I

    goto :goto_5

    :cond_4e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_54
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/h;->Cs:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    const/16 v1, 0x12

    invoke-direct {p0, p1, v0, v1}, Lcom/applovin/exoplayer2/e/i/h;->a(Lcom/applovin/exoplayer2/l/y;[BI)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/h;->jd()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/h;->Cs:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/h;->wl:Lcom/applovin/exoplayer2/e/x;

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/h;->Cs:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {v0, v2, v1}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    iput v3, p0, Lcom/applovin/exoplayer2/e/i/h;->Z:I

    goto :goto_5

    :cond_74
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/i/h;->L(Lcom/applovin/exoplayer2/l/y;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput v1, p0, Lcom/applovin/exoplayer2/e/i/h;->Z:I

    goto :goto_5

    :cond_7d
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V
    .registers 4

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jy()V

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/h;->Ct:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jz()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/applovin/exoplayer2/e/j;->y(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/h;->wl:Lcom/applovin/exoplayer2/e/x;

    return-void
.end method

.method public e(JI)V
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_b

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/i/h;->rJ:J

    :cond_b
    return-void
.end method

.method public jb()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/h;->Z:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/h;->Cu:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/h;->CV:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/h;->rJ:J

    return-void
.end method

.method public jc()V
    .registers 1

    return-void
.end method
