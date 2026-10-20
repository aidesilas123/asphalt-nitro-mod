###### Class com.applovin.exoplayer2.common.a.am (com.applovin.exoplayer2.common.a.am)
.class final Lcom/applovin/exoplayer2/common/a/am;
.super Lcom/applovin/exoplayer2/common/a/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/applovin/exoplayer2/common/a/w<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final qT:Lcom/applovin/exoplayer2/common/a/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/am<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient dS:I

.field private final transient oW:I

.field final transient qU:[Ljava/lang/Object;

.field final transient qV:[Ljava/lang/Object;

.field private final transient qW:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v6, Lcom/applovin/exoplayer2/common/a/am;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/applovin/exoplayer2/common/a/am;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v6, Lcom/applovin/exoplayer2/common/a/am;->qT:Lcom/applovin/exoplayer2/common/a/am;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .registers 6

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/w;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/am;->qU:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/applovin/exoplayer2/common/a/am;->qV:[Ljava/lang/Object;

    iput p4, p0, Lcom/applovin/exoplayer2/common/a/am;->qW:I

    iput p2, p0, Lcom/applovin/exoplayer2/common/a/am;->dS:I

    iput p5, p0, Lcom/applovin/exoplayer2/common/a/am;->oW:I

    return-void
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/am;->qU:[Ljava/lang/Object;

    iget v1, p0, Lcom/applovin/exoplayer2/common/a/am;->oW:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/applovin/exoplayer2/common/a/am;->oW:I

    add-int/2addr p2, p1

    return p2
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/am;->qV:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    if-nez v0, :cond_8

    goto :goto_1f

    :cond_8
    invoke-static {p1}, Lcom/applovin/exoplayer2/common/a/p;->s(Ljava/lang/Object;)I

    move-result v2

    :goto_c
    iget v3, p0, Lcom/applovin/exoplayer2/common/a/am;->qW:I

    and-int/2addr v2, v3

    aget-object v3, v0, v2

    if-nez v3, :cond_14

    return v1

    :cond_14
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1f
    :goto_1f
    return v1
.end method

.method public fU()Lcom/applovin/exoplayer2/common/a/ax;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/applovin/exoplayer2/common/a/ax<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/w;->fY()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/s;->fU()Lcom/applovin/exoplayer2/common/a/ax;

    move-result-object v0

    return-object v0
.end method

.method fV()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/am;->qU:[Ljava/lang/Object;

    return-object v0
.end method

.method fW()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method fX()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/am;->oW:I

    return v0
.end method

.method fZ()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method gA()Lcom/applovin/exoplayer2/common/a/s;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/applovin/exoplayer2/common/a/s<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/am;->qU:[Ljava/lang/Object;

    iget v1, p0, Lcom/applovin/exoplayer2/common/a/am;->oW:I

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/common/a/s;->b([Ljava/lang/Object;I)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    return-object v0
.end method

.method gz()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/am;->dS:I

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/am;->fU()Lcom/applovin/exoplayer2/common/a/ax;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/am;->oW:I

    return v0
.end method
