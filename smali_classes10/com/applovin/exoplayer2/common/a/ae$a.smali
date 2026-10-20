###### Class com.applovin.exoplayer2.common.a.ae.a (com.applovin.exoplayer2.common.a.ae$a)
.class Lcom/applovin/exoplayer2/common/a/ae$a;
.super Lcom/applovin/exoplayer2/common/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/applovin/exoplayer2/common/a/c<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field transient qM:Lcom/applovin/exoplayer2/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/base/Supplier<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/applovin/exoplayer2/common/base/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lcom/applovin/exoplayer2/common/base/Supplier<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/common/a/c;-><init>(Ljava/util/Map;)V

    invoke-static {p2}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/common/base/Supplier;

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/ae$a;->qM:Lcom/applovin/exoplayer2/common/base/Supplier;

    return-void
.end method


# virtual methods
.method protected fb()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/ae$a;->qM:Lcom/applovin/exoplayer2/common/base/Supplier;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method protected synthetic fd()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/ae$a;->fb()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method fe()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/d;->ff()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method fl()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/d;->fm()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
