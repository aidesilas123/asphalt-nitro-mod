###### Class com.applovin.exoplayer2.f.w (com.applovin.exoplayer2.f.w)
.class public final synthetic Lcom/applovin/exoplayer2/f/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/f/m;

.field public final synthetic b:Lcom/applovin/exoplayer2/f/g$c;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/f/m;Lcom/applovin/exoplayer2/f/g$c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/w;->a:Lcom/applovin/exoplayer2/f/m;

    iput-object p2, p0, Lcom/applovin/exoplayer2/f/w;->b:Lcom/applovin/exoplayer2/f/g$c;

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .registers 13

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/w;->a:Lcom/applovin/exoplayer2/f/m;

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/w;->b:Lcom/applovin/exoplayer2/f/g$c;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/applovin/exoplayer2/f/m;->c(Lcom/applovin/exoplayer2/f/m;Lcom/applovin/exoplayer2/f/g$c;Landroid/media/MediaCodec;JJ)V

    return-void
.end method
