###### Class com.applovin.exoplayer2.common.a.l.d (com.applovin.exoplayer2.common.a.l$d)
.class final Lcom/applovin/exoplayer2/common/a/l$d;
.super Lcom/applovin/exoplayer2/common/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/exoplayer2/common/a/e<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic pQ:Lcom/applovin/exoplayer2/common/a/l;

.field private pU:I

.field private final pn:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/common/a/l;I)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/e;-><init>()V

    iget-object p1, p1, Lcom/applovin/exoplayer2/common/a/l;->pI:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pn:Ljava/lang/Object;

    iput p2, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pU:I

    return-void
.end method

.method private fO()V
    .registers 4

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pU:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/common/a/l;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pn:Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget-object v1, v1, Lcom/applovin/exoplayer2/common/a/l;->pI:[Ljava/lang/Object;

    iget v2, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pU:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_1d
    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pn:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/common/a/l;->a(Lcom/applovin/exoplayer2/common/a/l;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pU:I

    :cond_27
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pn:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/l$d;->fO()V

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pU:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget-object v1, v1, Lcom/applovin/exoplayer2/common/a/l;->pJ:[Ljava/lang/Object;

    aget-object v0, v1, v0

    :goto_10
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/l$d;->fO()V

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pU:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pn:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/exoplayer2/common/a/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    :cond_11
    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/l$d;->pQ:Lcom/applovin/exoplayer2/common/a/l;

    iget-object v1, v1, Lcom/applovin/exoplayer2/common/a/l;->pJ:[Ljava/lang/Object;

    aget-object v2, v1, v0

    aput-object p1, v1, v0

    return-object v2
.end method
