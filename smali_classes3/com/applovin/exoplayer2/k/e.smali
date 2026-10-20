###### Class com.applovin.exoplayer2.k.e (com.applovin.exoplayer2.k.e)
.class public abstract Lcom/applovin/exoplayer2/k/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/k/i;


# instance fields
.field private final Zn:Z

.field private final Zo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/applovin/exoplayer2/k/aa;",
            ">;"
        }
    .end annotation
.end field

.field private Zp:I

.field private tw:Lcom/applovin/exoplayer2/k/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/k/e;->Zn:Z

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/e;->Zo:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected final b(Lcom/applovin/exoplayer2/k/l;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/applovin/exoplayer2/k/e;->Zp:I

    if-ge v0, v1, :cond_15

    iget-object v1, p0, Lcom/applovin/exoplayer2/k/e;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/k/aa;

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/k/e;->Zn:Z

    invoke-interface {v1, p0, p1, v2}, Lcom/applovin/exoplayer2/k/aa;->a(Lcom/applovin/exoplayer2/k/i;Lcom/applovin/exoplayer2/k/l;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public final c(Lcom/applovin/exoplayer2/k/aa;)V
    .registers 3

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/e;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/e;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/applovin/exoplayer2/k/e;->Zp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/applovin/exoplayer2/k/e;->Zp:I

    :cond_16
    return-void
.end method

.method protected final c(Lcom/applovin/exoplayer2/k/l;)V
    .registers 5

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/e;->tw:Lcom/applovin/exoplayer2/k/l;

    const/4 v0, 0x0

    :goto_3
    iget v1, p0, Lcom/applovin/exoplayer2/k/e;->Zp:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/applovin/exoplayer2/k/e;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/k/aa;

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/k/e;->Zn:Z

    invoke-interface {v1, p0, p1, v2}, Lcom/applovin/exoplayer2/k/aa;->b(Lcom/applovin/exoplayer2/k/i;Lcom/applovin/exoplayer2/k/l;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_17
    return-void
.end method

.method protected final fe(I)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/e;->tw:Lcom/applovin/exoplayer2/k/l;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/k/l;

    const/4 v1, 0x0

    :goto_9
    iget v2, p0, Lcom/applovin/exoplayer2/k/e;->Zp:I

    if-ge v1, v2, :cond_1d

    iget-object v2, p0, Lcom/applovin/exoplayer2/k/e;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/k/aa;

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/k/e;->Zn:Z

    invoke-interface {v2, p0, v0, v3, p1}, Lcom/applovin/exoplayer2/k/aa;->a(Lcom/applovin/exoplayer2/k/i;Lcom/applovin/exoplayer2/k/l;ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1d
    return-void
.end method

.method public synthetic kT()Ljava/util/Map;
    .registers 2

    invoke-static {p0}, Lcom/applovin/exoplayer2/k/f0;->a(Lcom/applovin/exoplayer2/k/i;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final oe()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/e;->tw:Lcom/applovin/exoplayer2/k/l;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/k/l;

    const/4 v1, 0x0

    :goto_9
    iget v2, p0, Lcom/applovin/exoplayer2/k/e;->Zp:I

    if-ge v1, v2, :cond_1d

    iget-object v2, p0, Lcom/applovin/exoplayer2/k/e;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/k/aa;

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/k/e;->Zn:Z

    invoke-interface {v2, p0, v0, v3}, Lcom/applovin/exoplayer2/k/aa;->c(Lcom/applovin/exoplayer2/k/i;Lcom/applovin/exoplayer2/k/l;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/e;->tw:Lcom/applovin/exoplayer2/k/l;

    return-void
.end method
