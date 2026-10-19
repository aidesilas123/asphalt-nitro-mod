###### Class com.applovin.exoplayer2.m.d (com.applovin.exoplayer2.m.d)
.class public final Lcom/applovin/exoplayer2/m/d;
.super Landroid/view/Surface;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/m/d$a;
    }
.end annotation


# static fields
.field private static ado:I

.field private static adp:Z


# instance fields
.field public final Hu:Z

.field private final adq:Lcom/applovin/exoplayer2/m/d$a;

.field private adr:Z


# direct methods
.method private constructor <init>(Lcom/applovin/exoplayer2/m/d$a;Landroid/graphics/SurfaceTexture;Z)V
    .registers 4

    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/d;->adq:Lcom/applovin/exoplayer2/m/d$a;

    iput-boolean p3, p0, Lcom/applovin/exoplayer2/m/d;->Hu:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/m/d$a;Landroid/graphics/SurfaceTexture;ZLcom/applovin/exoplayer2/m/d$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/m/d;-><init>(Lcom/applovin/exoplayer2/m/d$a;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method public static c(Landroid/content/Context;Z)Lcom/applovin/exoplayer2/m/d;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-static {p0}, Lcom/applovin/exoplayer2/m/d;->p(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    invoke-static {p0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    new-instance p0, Lcom/applovin/exoplayer2/m/d$a;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/d$a;-><init>()V

    if-eqz p1, :cond_19

    sget v0, Lcom/applovin/exoplayer2/m/d;->ado:I

    :cond_19
    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/m/d$a;->fP(I)Lcom/applovin/exoplayer2/m/d;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized p(Landroid/content/Context;)Z
    .registers 4

    const-class v0, Lcom/applovin/exoplayer2/m/d;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/applovin/exoplayer2/m/d;->adp:Z

    const/4 v2, 0x1

    if-nez v1, :cond_10

    invoke-static {p0}, Lcom/applovin/exoplayer2/m/d;->q(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/applovin/exoplayer2/m/d;->ado:I

    sput-boolean v2, Lcom/applovin/exoplayer2/m/d;->adp:Z

    :cond_10
    sget p0, Lcom/applovin/exoplayer2/m/d;->ado:I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_18

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    monitor-exit v0

    return v2

    :catchall_18
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static q(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/l/n;->j(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {}, Lcom/applovin/exoplayer2/l/n;->oW()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x2

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public release()V
    .registers 3

    invoke-super {p0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/d;->adq:Lcom/applovin/exoplayer2/m/d$a;

    monitor-enter v0

    :try_start_6
    iget-boolean v1, p0, Lcom/applovin/exoplayer2/m/d;->adr:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/applovin/exoplayer2/m/d;->adq:Lcom/applovin/exoplayer2/m/d$a;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/m/d$a;->release()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/m/d;->adr:Z

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method
