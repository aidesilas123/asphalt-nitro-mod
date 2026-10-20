###### Class com.applovin.exoplayer2.i.c.a.C0046a (com.applovin.exoplayer2.i.c.a$a)
.class final Lcom/applovin/exoplayer2/i/c/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/i/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final Rg:Lcom/applovin/exoplayer2/l/y;

.field private final Rh:[I

.field private Ri:Z

.field private Rj:I

.field private Rk:I

.field private Rl:I

.field private Rm:I

.field private Rn:I

.field private Ro:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rg:Lcom/applovin/exoplayer2/l/y;

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rh:[I

    return-void
.end method

.method private A(Lcom/applovin/exoplayer2/l/y;I)V
    .registers 20

    move-object/from16 v0, p0

    rem-int/lit8 v1, p2, 0x5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    return-void

    :cond_8
    move-object/from16 v1, p1

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    iget-object v2, v0, Lcom/applovin/exoplayer2/i/c/a$a;->Rh:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    div-int/lit8 v2, p2, 0x5

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v2, :cond_79

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v9

    int-to-double v10, v6

    const-wide v12, 0x3ff66e978d4fdf3bL    # 1.402

    add-int/lit8 v7, v7, -0x80

    int-to-double v6, v7

    mul-double v12, v12, v6

    add-double/2addr v12, v10

    double-to-int v12, v12

    const-wide v13, 0x3fd60663c74fb54aL    # 0.34414

    add-int/lit8 v8, v8, -0x80

    move/from16 p2, v4

    int-to-double v3, v8

    mul-double v13, v13, v3

    sub-double v13, v10, v13

    const-wide v15, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v6, v6, v15

    sub-double/2addr v13, v6

    double-to-int v6, v13

    const-wide v7, 0x3ffc5a1cac083127L    # 1.772

    mul-double v3, v3, v7

    add-double/2addr v10, v3

    double-to-int v3, v10

    iget-object v4, v0, Lcom/applovin/exoplayer2/i/c/a$a;->Rh:[I

    shl-int/lit8 v7, v9, 0x18

    const/16 v8, 0xff

    const/4 v9, 0x0

    invoke-static {v12, v9, v8}, Lcom/applovin/exoplayer2/l/ai;->k(III)I

    move-result v10

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v7, v10

    invoke-static {v6, v9, v8}, Lcom/applovin/exoplayer2/l/ai;->k(III)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v7

    invoke-static {v3, v9, v8}, Lcom/applovin/exoplayer2/l/ai;->k(III)I

    move-result v3

    or-int/2addr v3, v6

    aput v3, v4, v5

    add-int/lit8 v4, p2, 0x1

    const/4 v3, 0x0

    goto :goto_16

    :cond_79
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/applovin/exoplayer2/i/c/a$a;->Ri:Z

    return-void
.end method

.method private B(Lcom/applovin/exoplayer2/l/y;I)V
    .registers 6

    const/4 v0, 0x4

    if-ge p2, v0, :cond_4

    return-void

    :cond_4
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    add-int/lit8 p2, p2, -0x4

    if-eqz v1, :cond_36

    const/4 v1, 0x7

    if-ge p2, v1, :cond_1b

    return-void

    :cond_1b
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pt()I

    move-result v1

    if-ge v1, v0, :cond_22

    return-void

    :cond_22
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result v2

    iput v2, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rn:I

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result v2

    iput v2, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Ro:I

    iget-object v2, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rg:Lcom/applovin/exoplayer2/l/y;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    add-int/lit8 p2, p2, -0x7

    :cond_36
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rg:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rg:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v1

    if-ge v0, v1, :cond_5a

    if-lez p2, :cond_5a

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rg:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lcom/applovin/exoplayer2/l/y;->r([BII)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rg:Lcom/applovin/exoplayer2/l/y;

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    :cond_5a
    return-void
.end method

.method private C(Lcom/applovin/exoplayer2/l/y;I)V
    .registers 4

    const/16 v0, 0x13

    if-ge p2, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result p2

    iput p2, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rj:I

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result p2

    iput p2, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rk:I

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result p2

    iput p2, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rl:I

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rm:I

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/i/c/a$a;Lcom/applovin/exoplayer2/l/y;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/i/c/a$a;->A(Lcom/applovin/exoplayer2/l/y;I)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/i/c/a$a;Lcom/applovin/exoplayer2/l/y;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/i/c/a$a;->B(Lcom/applovin/exoplayer2/l/y;I)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/i/c/a$a;Lcom/applovin/exoplayer2/l/y;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/i/c/a$a;->C(Lcom/applovin/exoplayer2/l/y;I)V

    return-void
.end method


# virtual methods
.method public Y()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rj:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rk:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rl:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rm:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rn:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Ro:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rg:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Ri:Z

    return-void
.end method

.method public lU()Lcom/applovin/exoplayer2/i/a;
    .registers 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rj:I

    if-eqz v0, :cond_ca

    iget v0, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rk:I

    if-eqz v0, :cond_ca

    iget v0, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rn:I

    if-eqz v0, :cond_ca

    iget v0, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Ro:I

    if-eqz v0, :cond_ca

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rg:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v0

    if-eqz v0, :cond_ca

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rg:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rg:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v1

    if-ne v0, v1, :cond_ca

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Ri:Z

    if-nez v0, :cond_2c

    goto/16 :goto_ca

    :cond_2c
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rg:Lcom/applovin/exoplayer2/l/y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget v0, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rn:I

    iget v2, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Ro:I

    mul-int v0, v0, v2

    new-array v2, v0, [I

    const/4 v3, 0x0

    :cond_3b
    :goto_3b
    if-ge v3, v0, :cond_7e

    iget-object v4, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rg:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v4

    if-eqz v4, :cond_4f

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rh:[I

    aget v4, v6, v4

    aput v4, v2, v3

    :goto_4d
    move v3, v5

    goto :goto_3b

    :cond_4f
    iget-object v4, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rg:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v4

    if-eqz v4, :cond_3b

    and-int/lit8 v5, v4, 0x40

    if-nez v5, :cond_5e

    and-int/lit8 v5, v4, 0x3f

    goto :goto_69

    :cond_5e
    and-int/lit8 v5, v4, 0x3f

    shl-int/lit8 v5, v5, 0x8

    iget-object v6, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rg:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v6

    or-int/2addr v5, v6

    :goto_69
    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_6f

    const/4 v4, 0x0

    goto :goto_79

    :cond_6f
    iget-object v4, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rh:[I

    iget-object v6, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rg:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v6

    aget v4, v4, v6

    :goto_79
    add-int/2addr v5, v3

    invoke-static {v2, v3, v5, v4}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_4d

    :cond_7e
    iget v0, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rn:I

    iget v3, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Ro:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Lcom/applovin/exoplayer2/i/a$a;

    invoke-direct {v2}, Lcom/applovin/exoplayer2/i/a$a;-><init>()V

    invoke-virtual {v2, v0}, Lcom/applovin/exoplayer2/i/a$a;->a(Landroid/graphics/Bitmap;)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object v0

    iget v2, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rl:I

    int-to-float v2, v2

    iget v3, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rj:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/i/a$a;->o(F)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/i/a$a;->eg(I)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object v0

    iget v2, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rm:I

    int-to-float v2, v2

    iget v3, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rk:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v2, v1}, Lcom/applovin/exoplayer2/i/a$a;->b(FI)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/i/a$a;->ef(I)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object v0

    iget v1, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rn:I

    int-to-float v1, v1

    iget v2, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rj:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/i/a$a;->p(F)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object v0

    iget v1, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Ro:I

    int-to-float v1, v1

    iget v2, p0, Lcom/applovin/exoplayer2/i/c/a$a;->Rk:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/i/a$a;->q(F)Lcom/applovin/exoplayer2/i/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/i/a$a;->lU()Lcom/applovin/exoplayer2/i/a;

    move-result-object v0

    return-object v0

    :cond_ca
    :goto_ca
    const/4 v0, 0x0

    return-object v0
.end method
