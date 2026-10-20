###### Class com.applovin.exoplayer2.common.a.l.b (com.applovin.exoplayer2.common.a.l$b)
.class abstract Lcom/applovin/exoplayer2/common/a/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
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
.field final synthetic pQ:Lcom/applovin/exoplayer2/common/a/l;

.field pR:I

.field pS:I

.field pT:I


# direct methods
.method private constructor <init>(Lcom/applovin/exoplayer2/common/a/l;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/applovin/exoplayer2/common/a/l;->pL:I

    iput v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pR:I

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/common/a/l;->fJ()I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pS:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pT:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/common/a/l;Lcom/applovin/exoplayer2/common/a/l$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/common/a/l$b;-><init>(Lcom/applovin/exoplayer2/common/a/l;)V

    return-void
.end method

.method private fN()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget v0, v0, Lcom/applovin/exoplayer2/common/a/l;->pL:I

    iget v1, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pR:I

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method abstract bd(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pS:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/l$b;->fN()V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/l$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pS:I

    iput v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pT:I

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/common/a/l$b;->bd(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget v2, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pS:I

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/common/a/l;->bc(I)I

    move-result v1

    iput v1, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pS:I

    return-object v0

    :cond_1c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/l$b;->fN()V

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pT:I

    const/4 v1, 0x1

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/j;->I(Z)V

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pR:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pR:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget v1, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pT:I

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/common/a/l;->a(Lcom/applovin/exoplayer2/common/a/l;I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget v1, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pS:I

    iget v2, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pT:I

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/common/a/l;->q(II)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pS:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/common/a/l$b;->pT:I

    return-void
.end method
