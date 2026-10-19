###### Class com.applovin.exoplayer2.i.f.b (com.applovin.exoplayer2.i.f.b)
.class final Lcom/applovin/exoplayer2/i/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/i/f;


# instance fields
.field private final Sb:[Lcom/applovin/exoplayer2/i/a;

.field private final Sc:[J


# direct methods
.method public constructor <init>([Lcom/applovin/exoplayer2/i/a;[J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/f/b;->Sb:[Lcom/applovin/exoplayer2/i/a;

    iput-object p2, p0, Lcom/applovin/exoplayer2/i/f/b;->Sc:[J

    return-void
.end method


# virtual methods
.method public be(J)I
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/f/b;->Sc:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Lcom/applovin/exoplayer2/l/ai;->b([JJZZ)I

    move-result p1

    iget-object p2, p0, Lcom/applovin/exoplayer2/i/f/b;->Sc:[J

    array-length p2, p2

    if-ge p1, p2, :cond_d

    goto :goto_e

    :cond_d
    const/4 p1, -0x1

    :goto_e
    return p1
.end method

.method public bf(J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/f/b;->Sc:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/applovin/exoplayer2/l/ai;->a([JJZZ)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1b

    iget-object p2, p0, Lcom/applovin/exoplayer2/i/f/b;->Sb:[Lcom/applovin/exoplayer2/i/a;

    aget-object v0, p2, p1

    sget-object v1, Lcom/applovin/exoplayer2/i/a;->NV:Lcom/applovin/exoplayer2/i/a;

    if-ne v0, v1, :cond_14

    goto :goto_1b

    :cond_14
    aget-object p1, p2, p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1b
    :goto_1b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public ej(I)J
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    iget-object v2, p0, Lcom/applovin/exoplayer2/i/f/b;->Sc:[J

    array-length v2, v2

    if-ge p1, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/f/b;->Sc:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public lX()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/f/b;->Sc:[J

    array-length v0, v0

    return v0
.end method
