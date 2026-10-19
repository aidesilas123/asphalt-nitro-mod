###### Class com.applovin.exoplayer2.an.c (com.applovin.exoplayer2.an$c)
.class public final Lcom/applovin/exoplayer2/an$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final gH:Lcom/applovin/exoplayer2/l/m;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/l/m;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/an$c;->gH:Lcom/applovin/exoplayer2/l/m;

    return-void
.end method


# virtual methods
.method public X(I)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/an$c;->gH:Lcom/applovin/exoplayer2/l/m;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/m;->X(I)Z

    move-result p1

    return p1
.end method

.method public varargs b([I)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/an$c;->gH:Lcom/applovin/exoplayer2/l/m;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/m;->b([I)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/applovin/exoplayer2/an$c;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lcom/applovin/exoplayer2/an$c;

    iget-object v0, p0, Lcom/applovin/exoplayer2/an$c;->gH:Lcom/applovin/exoplayer2/l/m;

    iget-object p1, p1, Lcom/applovin/exoplayer2/an$c;->gH:Lcom/applovin/exoplayer2/l/m;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/an$c;->gH:Lcom/applovin/exoplayer2/l/m;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/m;->hashCode()I

    move-result v0

    return v0
.end method
