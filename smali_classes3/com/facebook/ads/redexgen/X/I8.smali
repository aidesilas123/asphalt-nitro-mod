###### Class com.facebook.ads.redexgen.X.I8 (com.facebook.ads.redexgen.X.I8)
.class public final Lcom/facebook/ads/redexgen/X/I8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OnFrameRenderedListenerV23"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/1A;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1A;Landroid/media/MediaCodec;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/I8;->A00:Lcom/facebook/ads/redexgen/X/1A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, v0}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/1A;Landroid/media/MediaCodec;Lcom/facebook/ads/redexgen/X/I6;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/I8;-><init>(Lcom/facebook/ads/redexgen/X/1A;Landroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I8;->A00:Lcom/facebook/ads/redexgen/X/1A;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1A;->A00:Lcom/facebook/ads/redexgen/X/I8;

    if-eq p0, v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I8;->A00:Lcom/facebook/ads/redexgen/X/1A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1A;->A1R()V

    return-void
.end method
