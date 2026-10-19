###### Class com.fyber.inneractive.sdk.player.mediaplayer.a.f (com.fyber.inneractive.sdk.player.mediaplayer.a$f)
.class public Lcom/fyber/inneractive/sdk/player/mediaplayer/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/mediaplayer/a;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$f;->a:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$f;->a:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->b(Lcom/fyber/inneractive/sdk/player/mediaplayer/a;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$f;->a:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$f;->a:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->o:Landroid/os/Handler;

    :cond_13
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$f;->a:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->n:Landroid/os/HandlerThread;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method
