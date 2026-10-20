###### Class com.applovin.exoplayer2.e.i.t (com.applovin.exoplayer2.e.i.t)
.class public final Lcom/applovin/exoplayer2/e/i/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/i/ad;


# instance fields
.field private Cu:I

.field private final EL:Lcom/applovin/exoplayer2/e/i/j;

.field private final EN:Lcom/applovin/exoplayer2/l/x;

.field private EO:Z

.field private EP:Z

.field private EQ:Z

.field private ER:I

.field private ES:I

.field private ET:Z

.field private Z:I

.field private rJ:J

.field private zS:Lcom/applovin/exoplayer2/l/ag;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/i/j;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/t;->EL:Lcom/applovin/exoplayer2/e/i/j;

    new-instance p1, Lcom/applovin/exoplayer2/l/x;

    const/16 v0, 0xa

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/l/x;-><init>([B)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/t;->Z:I

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/l/y;[BI)Z
    .registers 7
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    iget v1, p0, Lcom/applovin/exoplayer2/e/i/t;->Cu:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_10

    return v1

    :cond_10
    if-nez p2, :cond_16

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    goto :goto_1b

    :cond_16
    iget v2, p0, Lcom/applovin/exoplayer2/e/i/t;->Cu:I

    invoke-virtual {p1, p2, v2, v0}, Lcom/applovin/exoplayer2/l/y;->r([BII)V

    :goto_1b
    iget p1, p0, Lcom/applovin/exoplayer2/e/i/t;->Cu:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/t;->Cu:I

    if-ne p1, p3, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    return v1
.end method

.method private jr()Z
    .registers 8

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->fx(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v0

    const-string v2, "PesReader"

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v3, :cond_2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected start code prefix: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/applovin/exoplayer2/e/i/t;->ES:I

    return v1

    :cond_2b
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v0

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v5

    iput-boolean v5, p0, Lcom/applovin/exoplayer2/e/i/t;->ET:Z

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v5

    iput-boolean v5, p0, Lcom/applovin/exoplayer2/e/i/t;->EO:Z

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v5

    iput-boolean v5, p0, Lcom/applovin/exoplayer2/e/i/t;->EP:Z

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v5, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v1

    iput v1, p0, Lcom/applovin/exoplayer2/e/i/t;->ER:I

    if-nez v0, :cond_71

    iput v4, p0, Lcom/applovin/exoplayer2/e/i/t;->ES:I

    goto :goto_91

    :cond_71
    add-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x9

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/t;->ES:I

    if-gez v0, :cond_91

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found negative packet payload size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/exoplayer2/e/i/t;->ES:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/applovin/exoplayer2/e/i/t;->ES:I

    :cond_91
    :goto_91
    return v3
.end method

.method private js()V
    .registers 11

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->fx(I)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/t;->rJ:J

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/t;->EO:Z

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v5, v7}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-boolean v5, p0, Lcom/applovin/exoplayer2/e/i/t;->EQ:Z

    if-nez v5, :cond_82

    iget-boolean v5, p0, Lcom/applovin/exoplayer2/e/i/t;->EP:Z

    if-eqz v5, :cond_82

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v5, v1}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v2, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v2, v7}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v2, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v2, v7}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v2, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/t;->zS:Lcom/applovin/exoplayer2/l/ag;

    invoke-virtual {v2, v0, v1}, Lcom/applovin/exoplayer2/l/ag;->br(J)J

    iput-boolean v6, p0, Lcom/applovin/exoplayer2/e/i/t;->EQ:Z

    :cond_82
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/t;->zS:Lcom/applovin/exoplayer2/l/ag;

    invoke-virtual {v0, v3, v4}, Lcom/applovin/exoplayer2/l/ag;->br(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/t;->rJ:J

    :cond_8a
    return-void
.end method

.method private v(I)V
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/t;->Z:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/t;->Cu:I

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/l/ag;Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/t;->zS:Lcom/applovin/exoplayer2/l/ag;

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/t;->EL:Lcom/applovin/exoplayer2/e/i/j;

    invoke-interface {p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/j;->a(Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V

    return-void
.end method

.method public final jb()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/t;->Z:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/t;->Cu:I

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/t;->EQ:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/t;->EL:Lcom/applovin/exoplayer2/e/i/j;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/e/i/j;->jb()V

    return-void
.end method

.method public final p(Lcom/applovin/exoplayer2/l/y;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/t;->zS:Lcom/applovin/exoplayer2/l/ag;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, p2, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_4c

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/t;->Z:I

    if-eqz v0, :cond_49

    if-eq v0, v4, :cond_49

    const-string v5, "PesReader"

    if-eq v0, v3, :cond_44

    if-ne v0, v2, :cond_3e

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/t;->ES:I

    if-eq v0, v1, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected start indicator: expected "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/applovin/exoplayer2/e/i/t;->ES:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " more bytes"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/t;->EL:Lcom/applovin/exoplayer2/e/i/j;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/e/i/j;->jc()V

    goto :goto_49

    :cond_3e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_44
    const-string v0, "Unexpected start indicator reading extended header"

    invoke-static {v5, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    :goto_49
    invoke-direct {p0, v4}, Lcom/applovin/exoplayer2/e/i/t;->v(I)V

    :cond_4c
    :goto_4c
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    if-lez v0, :cond_e0

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/t;->Z:I

    if-eqz v0, :cond_d7

    const/4 v5, 0x0

    if-eq v0, v4, :cond_bf

    if-eq v0, v3, :cond_90

    if-ne v0, v2, :cond_8a

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    iget v6, p0, Lcom/applovin/exoplayer2/e/i/t;->ES:I

    if-ne v6, v1, :cond_66

    goto :goto_68

    :cond_66
    sub-int v5, v0, v6

    :goto_68
    if-lez v5, :cond_73

    sub-int/2addr v0, v5

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Lcom/applovin/exoplayer2/l/y;->fA(I)V

    :cond_73
    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/t;->EL:Lcom/applovin/exoplayer2/e/i/j;

    invoke-interface {v5, p1}, Lcom/applovin/exoplayer2/e/i/j;->K(Lcom/applovin/exoplayer2/l/y;)V

    iget v5, p0, Lcom/applovin/exoplayer2/e/i/t;->ES:I

    if-eq v5, v1, :cond_4c

    sub-int/2addr v5, v0

    iput v5, p0, Lcom/applovin/exoplayer2/e/i/t;->ES:I

    if-nez v5, :cond_4c

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/t;->EL:Lcom/applovin/exoplayer2/e/i/j;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/e/i/j;->jc()V

    invoke-direct {p0, v4}, Lcom/applovin/exoplayer2/e/i/t;->v(I)V

    goto :goto_4c

    :cond_8a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_90
    const/16 v0, 0xa

    iget v6, p0, Lcom/applovin/exoplayer2/e/i/t;->ER:I

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    iget-object v6, v6, Lcom/applovin/exoplayer2/l/x;->tf:[B

    invoke-direct {p0, p1, v6, v0}, Lcom/applovin/exoplayer2/e/i/t;->a(Lcom/applovin/exoplayer2/l/y;[BI)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x0

    iget v6, p0, Lcom/applovin/exoplayer2/e/i/t;->ER:I

    invoke-direct {p0, p1, v0, v6}, Lcom/applovin/exoplayer2/e/i/t;->a(Lcom/applovin/exoplayer2/l/y;[BI)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/t;->js()V

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/t;->ET:Z

    if-eqz v0, :cond_b3

    const/4 v5, 0x4

    :cond_b3
    or-int/2addr p2, v5

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/t;->EL:Lcom/applovin/exoplayer2/e/i/j;

    iget-wide v5, p0, Lcom/applovin/exoplayer2/e/i/t;->rJ:J

    invoke-interface {v0, v5, v6, p2}, Lcom/applovin/exoplayer2/e/i/j;->e(JI)V

    invoke-direct {p0, v2}, Lcom/applovin/exoplayer2/e/i/t;->v(I)V

    goto :goto_4c

    :cond_bf
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/t;->EN:Lcom/applovin/exoplayer2/l/x;

    iget-object v0, v0, Lcom/applovin/exoplayer2/l/x;->tf:[B

    const/16 v6, 0x9

    invoke-direct {p0, p1, v0, v6}, Lcom/applovin/exoplayer2/e/i/t;->a(Lcom/applovin/exoplayer2/l/y;[BI)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/t;->jr()Z

    move-result v0

    if-eqz v0, :cond_d2

    const/4 v5, 0x2

    :cond_d2
    invoke-direct {p0, v5}, Lcom/applovin/exoplayer2/e/i/t;->v(I)V

    goto/16 :goto_4c

    :cond_d7
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    goto/16 :goto_4c

    :cond_e0
    return-void
.end method
