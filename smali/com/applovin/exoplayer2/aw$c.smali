###### Class com.applovin.exoplayer2.aw.c (com.applovin.exoplayer2.aw$c)
.class final Lcom/applovin/exoplayer2/aw$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/ao$b;
.implements Lcom/applovin/exoplayer2/m/a/a;
.implements Lcom/applovin/exoplayer2/m/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private ij:Lcom/applovin/exoplayer2/m/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ik:Lcom/applovin/exoplayer2/m/a/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private il:Lcom/applovin/exoplayer2/m/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private im:Lcom/applovin/exoplayer2/m/a/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/aw$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x7

    if-eq p1, v0, :cond_28

    const/16 v0, 0x8

    if-eq p1, v0, :cond_23

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_c

    goto :goto_2c

    :cond_c
    check-cast p2, Lcom/applovin/exoplayer2/m/a/i;

    if-nez p2, :cond_16

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw$c;->il:Lcom/applovin/exoplayer2/m/l;

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw$c;->im:Lcom/applovin/exoplayer2/m/a/a;

    goto :goto_2c

    :cond_16
    invoke-virtual {p2}, Lcom/applovin/exoplayer2/m/a/i;->getVideoFrameMetadataListener()Lcom/applovin/exoplayer2/m/l;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw$c;->il:Lcom/applovin/exoplayer2/m/l;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/m/a/i;->getCameraMotionListener()Lcom/applovin/exoplayer2/m/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/aw$c;->im:Lcom/applovin/exoplayer2/m/a/a;

    goto :goto_2c

    :cond_23
    check-cast p2, Lcom/applovin/exoplayer2/m/a/a;

    iput-object p2, p0, Lcom/applovin/exoplayer2/aw$c;->ik:Lcom/applovin/exoplayer2/m/a/a;

    goto :goto_2c

    :cond_28
    check-cast p2, Lcom/applovin/exoplayer2/m/l;

    iput-object p2, p0, Lcom/applovin/exoplayer2/aw$c;->ij:Lcom/applovin/exoplayer2/m/l;

    :goto_2c
    return-void
.end method

.method public a(JJLcom/applovin/exoplayer2/v;Landroid/media/MediaFormat;)V
    .registers 15
    .param p6    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$c;->il:Lcom/applovin/exoplayer2/m/l;

    if-eqz v0, :cond_b

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/applovin/exoplayer2/m/l;->a(JJLcom/applovin/exoplayer2/v;Landroid/media/MediaFormat;)V

    :cond_b
    iget-object v1, p0, Lcom/applovin/exoplayer2/aw$c;->ij:Lcom/applovin/exoplayer2/m/l;

    if-eqz v1, :cond_16

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/applovin/exoplayer2/m/l;->a(JJLcom/applovin/exoplayer2/v;Landroid/media/MediaFormat;)V

    :cond_16
    return-void
.end method

.method public a(J[F)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$c;->im:Lcom/applovin/exoplayer2/m/a/a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/m/a/a;->a(J[F)V

    :cond_7
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$c;->ik:Lcom/applovin/exoplayer2/m/a/a;

    if-eqz v0, :cond_e

    invoke-interface {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/m/a/a;->a(J[F)V

    :cond_e
    return-void
.end method

.method public cZ()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$c;->im:Lcom/applovin/exoplayer2/m/a/a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/applovin/exoplayer2/m/a/a;->cZ()V

    :cond_7
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw$c;->ik:Lcom/applovin/exoplayer2/m/a/a;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/applovin/exoplayer2/m/a/a;->cZ()V

    :cond_e
    return-void
.end method
