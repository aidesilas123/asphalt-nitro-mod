###### Class com.applovin.exoplayer2.common.a.b (com.applovin.exoplayer2.common.a.b)
.class public abstract Lcom/applovin/exoplayer2/common/a/b;
.super Lcom/applovin/exoplayer2/common/a/ax;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/common/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/applovin/exoplayer2/common/a/ax<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private nB:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private oY:Lcom/applovin/exoplayer2/common/a/b$a;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/ax;-><init>()V

    sget-object v0, Lcom/applovin/exoplayer2/common/a/b$a;->pb:Lcom/applovin/exoplayer2/common/a/b$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/a/b;->oY:Lcom/applovin/exoplayer2/common/a/b$a;

    return-void
.end method

.method private eV()Z
    .registers 3

    sget-object v0, Lcom/applovin/exoplayer2/common/a/b$a;->pd:Lcom/applovin/exoplayer2/common/a/b$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/a/b;->oY:Lcom/applovin/exoplayer2/common/a/b$a;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/b;->eT()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/a/b;->nB:Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/b;->oY:Lcom/applovin/exoplayer2/common/a/b$a;

    sget-object v1, Lcom/applovin/exoplayer2/common/a/b$a;->pc:Lcom/applovin/exoplayer2/common/a/b$a;

    if-eq v0, v1, :cond_16

    sget-object v0, Lcom/applovin/exoplayer2/common/a/b$a;->pa:Lcom/applovin/exoplayer2/common/a/b$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/a/b;->oY:Lcom/applovin/exoplayer2/common/a/b$a;

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

    sget-object v0, Lcom/applovin/exoplayer2/common/a/b$a;->pc:Lcom/applovin/exoplayer2/common/a/b$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/a/b;->oY:Lcom/applovin/exoplayer2/common/a/b$a;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/b;->oY:Lcom/applovin/exoplayer2/common/a/b$a;

    sget-object v1, Lcom/applovin/exoplayer2/common/a/b$a;->pd:Lcom/applovin/exoplayer2/common/a/b$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkState(Z)V

    sget-object v0, Lcom/applovin/exoplayer2/common/a/b$1;->oZ:[I

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/b;->oY:Lcom/applovin/exoplayer2/common/a/b$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_23

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/b;->eV()Z

    move-result v0

    return v0

    :cond_22
    return v3

    :cond_23
    return v2
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/applovin/exoplayer2/common/a/b$a;->pb:Lcom/applovin/exoplayer2/common/a/b$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/a/b;->oY:Lcom/applovin/exoplayer2/common/a/b$a;

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/b;->nB:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/applovin/exoplayer2/common/a/b;->nB:Ljava/lang/Object;

    return-object v0

    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
