###### Class com.applovin.exoplayer2.b.n.h (com.applovin.exoplayer2.b.n$h)
.class final Lcom/applovin/exoplayer2/b/n$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "h"
.end annotation


# instance fields
.field private final jS:Landroid/os/Handler;

.field final synthetic lR:Lcom/applovin/exoplayer2/b/n;

.field private final mh:Landroid/media/AudioTrack$StreamEventCallback;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/b/n;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n$h;->lR:Lcom/applovin/exoplayer2/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/n$h;->jS:Landroid/os/Handler;

    new-instance v0, Lcom/applovin/exoplayer2/b/n$h$1;

    invoke-direct {v0, p0, p1}, Lcom/applovin/exoplayer2/b/n$h$1;-><init>(Lcom/applovin/exoplayer2/b/n$h;Lcom/applovin/exoplayer2/b/n;)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/n$h;->mh:Landroid/media/AudioTrack$StreamEventCallback;

    return-void
.end method


# virtual methods
.method public c(Landroid/media/AudioTrack;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n$h;->jS:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/applovin/exoplayer2/b/k0;

    invoke-direct {v1, v0}, Lcom/applovin/exoplayer2/b/k0;-><init>(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n$h;->mh:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-virtual {p1, v1, v0}, Landroid/media/AudioTrack;->registerStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    return-void
.end method

.method public d(Landroid/media/AudioTrack;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n$h;->mh:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-virtual {p1, v0}, Landroid/media/AudioTrack;->unregisterStreamEventCallback(Landroid/media/AudioTrack$StreamEventCallback;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/b/n$h;->jS:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
