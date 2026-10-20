###### Class com.applovin.exoplayer2.e.i.af (com.applovin.exoplayer2.e.i.af)
.class final Lcom/applovin/exoplayer2/e/i/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final CX:[Lcom/applovin/exoplayer2/e/x;

.field private final zN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/v;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/af;->zN:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/applovin/exoplayer2/e/x;

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/af;->CX:[Lcom/applovin/exoplayer2/e/x;

    return-void
.end method


# virtual methods
.method public a(JLcom/applovin/exoplayer2/l/y;)V
    .registers 8

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p3}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v0

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v1

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v2

    const/16 v3, 0x1b2

    if-ne v0, v3, :cond_26

    const v0, 0x47413934

    if-ne v1, v0, :cond_26

    const/4 v0, 0x3

    if-ne v2, v0, :cond_26

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/af;->CX:[Lcom/applovin/exoplayer2/e/x;

    invoke-static {p1, p2, p3, v0}, Lcom/applovin/exoplayer2/e/b;->b(JLcom/applovin/exoplayer2/l/y;[Lcom/applovin/exoplayer2/e/x;)V

    :cond_26
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/af;->CX:[Lcom/applovin/exoplayer2/e/x;

    array-length v2, v2

    if-ge v1, v2, :cond_7c

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jy()V

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jz()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lcom/applovin/exoplayer2/e/j;->y(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/i/af;->zN:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/v;

    iget-object v4, v3, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    const-string v5, "application/cea-608"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    const-string v5, "application/cea-708"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 v5, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v5, 0x1

    :goto_31
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid closed caption mime type provided: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/applovin/exoplayer2/l/a;->checkArgument(ZLjava/lang/Object;)V

    new-instance v5, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {v5}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jA()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/v$a;->g(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/applovin/exoplayer2/v$a;->m(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v4

    iget v5, v3, Lcom/applovin/exoplayer2/v;->dr:I

    invoke-virtual {v4, v5}, Lcom/applovin/exoplayer2/v$a;->E(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v4

    iget-object v5, v3, Lcom/applovin/exoplayer2/v;->dq:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/applovin/exoplayer2/v$a;->j(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v4

    iget v5, v3, Lcom/applovin/exoplayer2/v;->dQ:I

    invoke-virtual {v4, v5}, Lcom/applovin/exoplayer2/v$a;->S(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v4

    iget-object v3, v3, Lcom/applovin/exoplayer2/v;->dB:Ljava/util/List;

    invoke-virtual {v4, v3}, Lcom/applovin/exoplayer2/v$a;->c(Ljava/util/List;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/applovin/exoplayer2/e/x;->j(Lcom/applovin/exoplayer2/v;)V

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/i/af;->CX:[Lcom/applovin/exoplayer2/e/x;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7c
    return-void
.end method
