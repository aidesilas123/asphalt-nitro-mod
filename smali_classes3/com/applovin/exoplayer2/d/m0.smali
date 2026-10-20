###### Class com.applovin.exoplayer2.d.m0 (com.applovin.exoplayer2.d.m0)
.class public final synthetic Lcom/applovin/exoplayer2/d/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/applovin/exoplayer2/d/f;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static b(Lcom/applovin/exoplayer2/d/f;Lcom/applovin/exoplayer2/d/f;)V
    .registers 3
    .param p0    # Lcom/applovin/exoplayer2/d/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/applovin/exoplayer2/d/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/d/f;->a(Lcom/applovin/exoplayer2/d/g$a;)V

    :cond_9
    if-eqz p0, :cond_e

    invoke-interface {p0, v0}, Lcom/applovin/exoplayer2/d/f;->b(Lcom/applovin/exoplayer2/d/g$a;)V

    :cond_e
    return-void
.end method
