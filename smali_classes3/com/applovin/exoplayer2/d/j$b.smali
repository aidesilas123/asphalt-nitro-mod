###### Class com.applovin.exoplayer2.d.j.b (com.applovin.exoplayer2.d.j$b)
.class final Lcom/applovin/exoplayer2/d/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/d/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method public static d(Ljava/lang/Throwable;)Z
    .registers 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of p0, p0, Landroid/media/MediaDrm$MediaDrmStateException;

    return p0
.end method

.method public static e(Ljava/lang/Throwable;)I
    .registers 1

    check-cast p0, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {p0}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/exoplayer2/l/ai;->bl(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/applovin/exoplayer2/h;->r(I)I

    move-result p0

    return p0
.end method
