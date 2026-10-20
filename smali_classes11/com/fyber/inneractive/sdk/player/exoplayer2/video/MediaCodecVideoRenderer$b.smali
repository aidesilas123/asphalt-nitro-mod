###### Class com.fyber.inneractive.sdk.player.exoplayer2.video.MediaCodecVideoRenderer.b (com.fyber.inneractive.sdk.player.exoplayer2.video.MediaCodecVideoRenderer$b)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/video/MediaCodecVideoRenderer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/player/exoplayer2/video/MediaCodecVideoRenderer;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/MediaCodecVideoRenderer$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, p1}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .registers 6
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/MediaCodecVideoRenderer$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/video/MediaCodecVideoRenderer;

    iget-object p2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/MediaCodecVideoRenderer;->v0:Lcom/fyber/inneractive/sdk/player/exoplayer2/video/MediaCodecVideoRenderer$b;

    if-eq p0, p2, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/MediaCodecVideoRenderer;->C()V

    return-void
.end method
