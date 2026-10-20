###### Class com.fyber.inneractive.sdk.player.mediaplayer.a.c (com.fyber.inneractive.sdk.player.mediaplayer.a$c)
.class public Lcom/fyber/inneractive/sdk/player/mediaplayer/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->d()V
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

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$c;->a:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$c;->a:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%sCannot wait for video size anymore"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$c;->a:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    iget v2, v1, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->r:I

    if-nez v2, :cond_2a

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "%sCannot wait for video size anymore. duration is still 0 - aborting"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$c;->a:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    invoke-virtual {v0, v0, v3, v3}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_41

    :cond_2a
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "%sCannot wait for video size anymore. moving into ready"

    invoke-static {v1, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$c;->a:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->a(Lcom/fyber/inneractive/sdk/player/mediaplayer/a;Z)Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$c;->a:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->d()V

    :goto_41
    return-void
.end method
