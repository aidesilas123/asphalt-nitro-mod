###### Class com.facebook.ads.redexgen.X.RunnableC0967Do (com.facebook.ads.redexgen.X.Do)
.class public final Lcom/facebook/ads/redexgen/X/Do;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Dp;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Dp;

.field public final synthetic A01:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dp;[Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Do;->A00:Lcom/facebook/ads/redexgen/X/Dp;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Do;->A01:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K0;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v3, p0

    :try_start_8
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Do;->A00:Lcom/facebook/ads/redexgen/X/Dp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Dp;->A00:Lcom/facebook/ads/redexgen/X/Dy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dy;->A0L(Lcom/facebook/ads/redexgen/X/Dy;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    :cond_13
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Do;->A00:Lcom/facebook/ads/redexgen/X/Dp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Dp;->A00:Lcom/facebook/ads/redexgen/X/Dy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dy;->A06(Lcom/facebook/ads/redexgen/X/Dy;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Do;->A00:Lcom/facebook/ads/redexgen/X/Dp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Dp;->A00:Lcom/facebook/ads/redexgen/X/Dy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dy;->A06(Lcom/facebook/ads/redexgen/X/Dy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/Do;->A01:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;

    array-length v5, v6

    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v5, :cond_3d

    aget-object v1, v6, v2

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Do;->A00:Lcom/facebook/ads/redexgen/X/Dp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Dp;->A00:Lcom/facebook/ads/redexgen/X/Dy;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Dy;->A03(Lcom/facebook/ads/redexgen/X/Dy;Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;)Lcom/facebook/ads/redexgen/X/Dv;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_3d
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Do;->A00:Lcom/facebook/ads/redexgen/X/Dp;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dp;->A00:Lcom/facebook/ads/redexgen/X/Dy;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A0M(Lcom/facebook/ads/redexgen/X/Dy;Z)Z

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Do;->A00:Lcom/facebook/ads/redexgen/X/Dp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Dp;->A00:Lcom/facebook/ads/redexgen/X/Dy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dy;->A07(Lcom/facebook/ads/redexgen/X/Dy;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Dr;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Do;->A00:Lcom/facebook/ads/redexgen/X/Dp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Dp;->A00:Lcom/facebook/ads/redexgen/X/Dy;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Dr;->ABa(Lcom/facebook/ads/redexgen/X/Dy;)V

    goto :goto_51

    :cond_65
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7d

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Do;->A00:Lcom/facebook/ads/redexgen/X/Dp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Dp;->A00:Lcom/facebook/ads/redexgen/X/Dy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dy;->A06(Lcom/facebook/ads/redexgen/X/Dy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Do;->A00:Lcom/facebook/ads/redexgen/X/Dp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Dp;->A00:Lcom/facebook/ads/redexgen/X/Dy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dy;->A0F(Lcom/facebook/ads/redexgen/X/Dy;)V

    :cond_7d
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Do;->A00:Lcom/facebook/ads/redexgen/X/Dp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Dp;->A00:Lcom/facebook/ads/redexgen/X/Dy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dy;->A0G(Lcom/facebook/ads/redexgen/X/Dy;)V

    const/4 v2, 0x0

    :goto_85
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Do;->A00:Lcom/facebook/ads/redexgen/X/Dp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Dp;->A00:Lcom/facebook/ads/redexgen/X/Dy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dy;->A06(Lcom/facebook/ads/redexgen/X/Dy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_b1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Do;->A00:Lcom/facebook/ads/redexgen/X/Dp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Dp;->A00:Lcom/facebook/ads/redexgen/X/Dy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dy;->A06(Lcom/facebook/ads/redexgen/X/Dy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Dv;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Dv;->A03(Lcom/facebook/ads/redexgen/X/Dv;)I

    move-result v0

    if-nez v0, :cond_ae

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Do;->A00:Lcom/facebook/ads/redexgen/X/Dp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Dp;->A00:Lcom/facebook/ads/redexgen/X/Dy;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Dy;->A0H(Lcom/facebook/ads/redexgen/X/Dy;Lcom/facebook/ads/redexgen/X/Dv;)V

    :cond_ae
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    :cond_b1
    return-void
    :try_end_b2
    .catchall {:try_start_8 .. :try_end_b2} :catchall_b2

    :catchall_b2
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
