###### Class com.fyber.inneractive.sdk.player.mediaplayer.c (com.fyber.inneractive.sdk.player.mediaplayer.c)
.class public Lcom/fyber/inneractive/sdk/player/mediaplayer/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/mediaplayer/a;I)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/c;->b:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    iput p2, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/c;->b:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/c;->a:I

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "timelog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "seekTo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " msec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
