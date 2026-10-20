###### Class com.applovin.exoplayer2.l.ah (com.applovin.exoplayer2.l.ah)
.class public final Lcom/applovin/exoplayer2/l/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bg(Ljava/lang/String;)V
    .registers 3

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    invoke-static {p0}, Lcom/applovin/exoplayer2/l/ah;->bh(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private static bh(Ljava/lang/String;)V
    .registers 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x12
    .end annotation

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static pV()V
    .registers 2

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    invoke-static {}, Lcom/applovin/exoplayer2/l/ah;->pW()V

    :cond_9
    return-void
.end method

.method private static pW()V
    .registers 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x12
    .end annotation

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
