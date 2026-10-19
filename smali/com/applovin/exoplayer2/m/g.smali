###### Class com.applovin.exoplayer2.m.g (com.applovin.exoplayer2.m.g)
.class public Lcom/applovin/exoplayer2/m/g;
.super Lcom/applovin/exoplayer2/f/h;
.source "SourceFile"


# instance fields
.field public final adJ:I

.field public final adK:Z


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/f/i;Landroid/view/Surface;)V
    .registers 4
    .param p2    # Lcom/applovin/exoplayer2/f/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/f/h;-><init>(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/f/i;)V

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/m/g;->adJ:I

    if-eqz p3, :cond_14

    invoke-virtual {p3}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_14

    :cond_12
    const/4 p1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p1, 0x1

    :goto_15
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/m/g;->adK:Z

    return-void
.end method
