###### Class com.applovin.exoplayer2.ap (com.applovin.exoplayer2.ap)
.class final Lcom/applovin/exoplayer2/ap;
.super Lcom/applovin/exoplayer2/a;
.source "SourceFile"


# instance fields
.field private final ha:I

.field private final hb:I

.field private final hc:[I

.field private final hd:[I

.field private final he:[Lcom/applovin/exoplayer2/ba;

.field private final hf:[Ljava/lang/Object;

.field private final hg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/applovin/exoplayer2/h/z;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/applovin/exoplayer2/ag;",
            ">;",
            "Lcom/applovin/exoplayer2/h/z;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/applovin/exoplayer2/a;-><init>(ZLcom/applovin/exoplayer2/h/z;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    new-array v1, p2, [I

    iput-object v1, p0, Lcom/applovin/exoplayer2/ap;->hc:[I

    new-array v1, p2, [I

    iput-object v1, p0, Lcom/applovin/exoplayer2/ap;->hd:[I

    new-array v1, p2, [Lcom/applovin/exoplayer2/ba;

    iput-object v1, p0, Lcom/applovin/exoplayer2/ap;->he:[Lcom/applovin/exoplayer2/ba;

    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/applovin/exoplayer2/ap;->hf:[Ljava/lang/Object;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/ap;->hg:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/ag;

    iget-object v3, p0, Lcom/applovin/exoplayer2/ap;->he:[Lcom/applovin/exoplayer2/ba;

    invoke-interface {v2}, Lcom/applovin/exoplayer2/ag;->bf()Lcom/applovin/exoplayer2/ba;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/applovin/exoplayer2/ap;->hd:[I

    aput v0, v3, v1

    iget-object v3, p0, Lcom/applovin/exoplayer2/ap;->hc:[I

    aput p2, v3, v1

    iget-object v3, p0, Lcom/applovin/exoplayer2/ap;->he:[Lcom/applovin/exoplayer2/ba;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/ba;->cP()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/applovin/exoplayer2/ap;->he:[Lcom/applovin/exoplayer2/ba;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/ba;->cQ()I

    move-result v3

    add-int/2addr p2, v3

    iget-object v3, p0, Lcom/applovin/exoplayer2/ap;->hf:[Ljava/lang/Object;

    invoke-interface {v2}, Lcom/applovin/exoplayer2/ag;->be()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/ap;->hg:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/applovin/exoplayer2/ap;->hf:[Ljava/lang/Object;

    aget-object v3, v3, v1

    add-int/lit8 v4, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    goto :goto_25

    :cond_6c
    iput v0, p0, Lcom/applovin/exoplayer2/ap;->ha:I

    iput p2, p0, Lcom/applovin/exoplayer2/ap;->hb:I

    return-void
.end method


# virtual methods
.method protected c(I)I
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/ap;->hc:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/applovin/exoplayer2/l/ai;->a([IIZZ)I

    move-result p1

    return p1
.end method

.method cO()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/ba;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/ap;->he:[Lcom/applovin/exoplayer2/ba;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public cP()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/ap;->ha:I

    return v0
.end method

.method public cQ()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/ap;->hb:I

    return v0
.end method

.method protected d(I)I
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/ap;->hd:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/applovin/exoplayer2/l/ai;->a([IIZZ)I

    move-result p1

    return p1
.end method

.method protected d(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ap;->hg:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_c

    const/4 p1, -0x1

    goto :goto_10

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_10
    return p1
.end method

.method protected e(I)Lcom/applovin/exoplayer2/ba;
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ap;->he:[Lcom/applovin/exoplayer2/ba;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected f(I)I
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ap;->hc:[I

    aget p1, v0, p1

    return p1
.end method

.method protected g(I)I
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ap;->hd:[I

    aget p1, v0, p1

    return p1
.end method

.method protected h(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/ap;->hf:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
