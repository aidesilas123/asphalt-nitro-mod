###### Class com.applovin.exoplayer2.common.a.aq.AnonymousClass1.C00201 (com.applovin.exoplayer2.common.a.aq$1$1)
.class Lcom/applovin/exoplayer2/common/a/aq$1$1;
.super Lcom/applovin/exoplayer2/common/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/exoplayer2/common/a/aq$1;->fU()Lcom/applovin/exoplayer2/common/a/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/exoplayer2/common/a/b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final rb:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field final rc:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field final synthetic rd:Lcom/applovin/exoplayer2/common/a/aq$1;


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/common/a/aq$1;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/aq$1$1;->rd:Lcom/applovin/exoplayer2/common/a/aq$1;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/b;-><init>()V

    iget-object v0, p1, Lcom/applovin/exoplayer2/common/a/aq$1;->qZ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/common/a/aq$1$1;->rb:Ljava/util/Iterator;

    iget-object p1, p1, Lcom/applovin/exoplayer2/common/a/aq$1;->ra:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/aq$1$1;->rc:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected eT()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/aq$1$1;->rb:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/aq$1$1;->rb:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/aq$1$1;->rc:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/aq$1$1;->rc:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/aq$1$1;->rd:Lcom/applovin/exoplayer2/common/a/aq$1;

    iget-object v1, v1, Lcom/applovin/exoplayer2/common/a/aq$1;->qZ:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    :cond_28
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/b;->eU()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
