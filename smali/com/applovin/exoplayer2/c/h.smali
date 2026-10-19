###### Class com.applovin.exoplayer2.c.h (com.applovin.exoplayer2.c.h)
.class public final Lcom/applovin/exoplayer2/c/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final pZ:I

.field public final rO:Ljava/lang/String;

.field public final rP:Lcom/applovin/exoplayer2/v;

.field public final rQ:Lcom/applovin/exoplayer2/v;

.field public final rR:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/v;II)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_a

    if-nez p5, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->aR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/c/h;->rO:Ljava/lang/String;

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/v;

    iput-object p1, p0, Lcom/applovin/exoplayer2/c/h;->rP:Lcom/applovin/exoplayer2/v;

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/v;

    iput-object p1, p0, Lcom/applovin/exoplayer2/c/h;->rQ:Lcom/applovin/exoplayer2/v;

    iput p4, p0, Lcom/applovin/exoplayer2/c/h;->pZ:I

    iput p5, p0, Lcom/applovin/exoplayer2/c/h;->rR:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3f

    const-class v2, Lcom/applovin/exoplayer2/c/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_3f

    :cond_10
    check-cast p1, Lcom/applovin/exoplayer2/c/h;

    iget v2, p0, Lcom/applovin/exoplayer2/c/h;->pZ:I

    iget v3, p1, Lcom/applovin/exoplayer2/c/h;->pZ:I

    if-ne v2, v3, :cond_3d

    iget v2, p0, Lcom/applovin/exoplayer2/c/h;->rR:I

    iget v3, p1, Lcom/applovin/exoplayer2/c/h;->rR:I

    if-ne v2, v3, :cond_3d

    iget-object v2, p0, Lcom/applovin/exoplayer2/c/h;->rO:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/exoplayer2/c/h;->rO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/applovin/exoplayer2/c/h;->rP:Lcom/applovin/exoplayer2/v;

    iget-object v3, p1, Lcom/applovin/exoplayer2/c/h;->rP:Lcom/applovin/exoplayer2/v;

    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/v;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/applovin/exoplayer2/c/h;->rQ:Lcom/applovin/exoplayer2/v;

    iget-object p1, p1, Lcom/applovin/exoplayer2/c/h;->rQ:Lcom/applovin/exoplayer2/v;

    invoke-virtual {v2, p1}, Lcom/applovin/exoplayer2/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    return v0

    :cond_3f
    :goto_3f
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/c/h;->pZ:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/applovin/exoplayer2/c/h;->rR:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/h;->rO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/h;->rP:Lcom/applovin/exoplayer2/v;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/v;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/h;->rQ:Lcom/applovin/exoplayer2/v;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/v;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
