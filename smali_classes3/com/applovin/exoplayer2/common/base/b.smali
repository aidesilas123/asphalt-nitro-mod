###### Class com.applovin.exoplayer2.common.base.b (com.applovin.exoplayer2.common.base.b)
.class abstract Lcom/applovin/exoplayer2/common/base/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/common/base/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private nA:Lcom/applovin/exoplayer2/common/base/b$a;

.field private nB:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/applovin/exoplayer2/common/base/b$a;->nE:Lcom/applovin/exoplayer2/common/base/b$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/base/b;->nA:Lcom/applovin/exoplayer2/common/base/b$a;

    return-void
.end method

.method private eV()Z
    .registers 3

    sget-object v0, Lcom/applovin/exoplayer2/common/base/b$a;->nG:Lcom/applovin/exoplayer2/common/base/b$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/base/b;->nA:Lcom/applovin/exoplayer2/common/base/b$a;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/base/b;->eT()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/base/b;->nB:Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/base/b;->nA:Lcom/applovin/exoplayer2/common/base/b$a;

    sget-object v1, Lcom/applovin/exoplayer2/common/base/b$a;->nF:Lcom/applovin/exoplayer2/common/base/b$a;

    if-eq v0, v1, :cond_16

    sget-object v0, Lcom/applovin/exoplayer2/common/base/b$a;->nD:Lcom/applovin/exoplayer2/common/base/b$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/base/b;->nA:Lcom/applovin/exoplayer2/common/base/b$a;

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected abstract eT()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final eU()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    sget-object v0, Lcom/applovin/exoplayer2/common/base/b$a;->nF:Lcom/applovin/exoplayer2/common/base/b$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/base/b;->nA:Lcom/applovin/exoplayer2/common/base/b$a;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/base/b;->nA:Lcom/applovin/exoplayer2/common/base/b$a;

    sget-object v1, Lcom/applovin/exoplayer2/common/base/b$a;->nG:Lcom/applovin/exoplayer2/common/base/b$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkState(Z)V

    sget-object v0, Lcom/applovin/exoplayer2/common/base/b$1;->nC:[I

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/base/b;->nA:Lcom/applovin/exoplayer2/common/base/b$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_23

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/base/b;->eV()Z

    move-result v0

    return v0

    :cond_22
    return v2

    :cond_23
    return v3
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/base/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/applovin/exoplayer2/common/base/b$a;->nE:Lcom/applovin/exoplayer2/common/base/b$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/base/b;->nA:Lcom/applovin/exoplayer2/common/base/b$a;

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/base/b;->nB:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/applovin/exoplayer2/common/base/b;->nB:Ljava/lang/Object;

    return-object v0

    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
