###### Class com.applovin.exoplayer2.k.s.a (com.applovin.exoplayer2.k.s$a)
.class final Lcom/applovin/exoplayer2/k/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/k/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method private static i(Ljava/lang/Throwable;)Z
    .registers 2
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p0, Landroid/system/ErrnoException;

    if-eqz v0, :cond_e

    check-cast p0, Landroid/system/ErrnoException;

    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    sget v0, Landroid/system/OsConstants;->EACCES:I

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method static synthetic j(Ljava/lang/Throwable;)Z
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/k/s$a;->i(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method
