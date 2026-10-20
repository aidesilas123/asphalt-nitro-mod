###### Class com.applovin.exoplayer2.b.r.a (com.applovin.exoplayer2.b.r$a)
.class public final Lcom/applovin/exoplayer2/b/r$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public dM:I

.field public dv:I

.field public eg:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public jz:I

.field public mH:I

.field public mI:I

.field public mJ:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aK(I)Z
    .registers 10

    invoke-static {p1}, Lcom/applovin/exoplayer2/b/r;->aJ(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    ushr-int/lit8 v0, p1, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    return v1

    :cond_10
    ushr-int/lit8 v4, p1, 0x11

    and-int/2addr v4, v2

    if-nez v4, :cond_16

    return v1

    :cond_16
    ushr-int/lit8 v5, p1, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_af

    if-ne v5, v6, :cond_21

    goto/16 :goto_af

    :cond_21
    ushr-int/lit8 v6, p1, 0xa

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_27

    return v1

    :cond_27
    iput v0, p0, Lcom/applovin/exoplayer2/b/r$a;->mH:I

    invoke-static {}, Lcom/applovin/exoplayer2/b/r;->eF()[Ljava/lang/String;

    move-result-object v1

    rsub-int/lit8 v7, v4, 0x3

    aget-object v1, v1, v7

    iput-object v1, p0, Lcom/applovin/exoplayer2/b/r$a;->eg:Ljava/lang/String;

    invoke-static {}, Lcom/applovin/exoplayer2/b/r;->eG()[I

    move-result-object v1

    aget v1, v1, v6

    iput v1, p0, Lcom/applovin/exoplayer2/b/r$a;->dM:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_42

    div-int/2addr v1, v6

    iput v1, p0, Lcom/applovin/exoplayer2/b/r$a;->dM:I

    goto :goto_48

    :cond_42
    if-nez v0, :cond_48

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/applovin/exoplayer2/b/r$a;->dM:I

    :cond_48
    :goto_48
    ushr-int/lit8 v1, p1, 0x9

    and-int/2addr v1, v3

    invoke-static {v0, v4}, Lcom/applovin/exoplayer2/b/r;->m(II)I

    move-result v7

    iput v7, p0, Lcom/applovin/exoplayer2/b/r$a;->mJ:I

    if-ne v4, v2, :cond_71

    if-ne v0, v2, :cond_5d

    invoke-static {}, Lcom/applovin/exoplayer2/b/r;->eH()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_64

    :cond_5d
    invoke-static {}, Lcom/applovin/exoplayer2/b/r;->eI()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    :goto_64
    iput v0, p0, Lcom/applovin/exoplayer2/b/r$a;->dv:I

    mul-int/lit8 v0, v0, 0xc

    iget v4, p0, Lcom/applovin/exoplayer2/b/r$a;->dM:I

    div-int/2addr v0, v4

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/applovin/exoplayer2/b/r$a;->jz:I

    goto :goto_a6

    :cond_71
    const/16 v7, 0x90

    if-ne v0, v2, :cond_91

    if-ne v4, v6, :cond_7f

    invoke-static {}, Lcom/applovin/exoplayer2/b/r;->eJ()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_86

    :cond_7f
    invoke-static {}, Lcom/applovin/exoplayer2/b/r;->eK()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    :goto_86
    iput v0, p0, Lcom/applovin/exoplayer2/b/r$a;->dv:I

    mul-int/lit16 v0, v0, 0x90

    iget v4, p0, Lcom/applovin/exoplayer2/b/r$a;->dM:I

    div-int/2addr v0, v4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/applovin/exoplayer2/b/r$a;->jz:I

    goto :goto_a6

    :cond_91
    invoke-static {}, Lcom/applovin/exoplayer2/b/r;->eL()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    iput v0, p0, Lcom/applovin/exoplayer2/b/r$a;->dv:I

    if-ne v4, v3, :cond_9e

    const/16 v7, 0x48

    :cond_9e
    mul-int v7, v7, v0

    iget v0, p0, Lcom/applovin/exoplayer2/b/r$a;->dM:I

    div-int/2addr v7, v0

    add-int/2addr v7, v1

    iput v7, p0, Lcom/applovin/exoplayer2/b/r$a;->jz:I

    :goto_a6
    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_ac

    const/4 v6, 0x1

    :cond_ac
    iput v6, p0, Lcom/applovin/exoplayer2/b/r$a;->mI:I

    return v3

    :cond_af
    :goto_af
    return v1
.end method
