###### Class com.applovin.exoplayer2.common.a.an (com.applovin.exoplayer2.common.a.an)
.class final Lcom/applovin/exoplayer2/common/a/an;
.super Lcom/applovin/exoplayer2/common/a/ai;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/exoplayer2/common/a/ai<",
        "Ljava/lang/Comparable;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final qX:Lcom/applovin/exoplayer2/common/a/an;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/common/a/an;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/common/a/an;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/common/a/an;->qX:Lcom/applovin/exoplayer2/common/a/an;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/ai;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 3

    invoke-static {p1}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, p2, :cond_7

    const/4 p1, 0x0

    return p1

    :cond_7
    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/common/a/an;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

.method public gO()Lcom/applovin/exoplayer2/common/a/ai;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/applovin/exoplayer2/common/a/ai<",
            "TS;>;"
        }
    .end annotation

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/ai;->gP()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Ordering.natural().reverse()"

    return-object v0
.end method
