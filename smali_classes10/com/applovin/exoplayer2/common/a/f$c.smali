###### Class com.applovin.exoplayer2.common.a.f.c (com.applovin.exoplayer2.common.a.f$c)
.class Lcom/applovin/exoplayer2/common/a/f$c;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic pD:Lcom/applovin/exoplayer2/common/a/f;


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/common/a/f;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/f$c;->pD:Lcom/applovin/exoplayer2/common/a/f;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/f$c;->pD:Lcom/applovin/exoplayer2/common/a/f;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/common/a/ac;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/f$c;->pD:Lcom/applovin/exoplayer2/common/a/f;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/common/a/f;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/f$c;->pD:Lcom/applovin/exoplayer2/common/a/f;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/f;->fh()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/f$c;->pD:Lcom/applovin/exoplayer2/common/a/f;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/common/a/ac;->size()I

    move-result v0

    return v0
.end method
