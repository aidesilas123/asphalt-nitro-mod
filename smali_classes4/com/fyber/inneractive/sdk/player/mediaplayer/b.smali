###### Class com.fyber.inneractive.sdk.player.mediaplayer.b (com.fyber.inneractive.sdk.player.mediaplayer.b)
.class public Lcom/fyber/inneractive/sdk/player/mediaplayer/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/player/enums/b;

.field public final synthetic b:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/mediaplayer/a;Lcom/fyber/inneractive/sdk/player/enums/b;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/b;->b:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/b;->a:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/b;->b:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->i:Lcom/fyber/inneractive/sdk/player/mediaplayer/a$k;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/b;->a:Lcom/fyber/inneractive/sdk/player/enums/b;

    check-cast v0, Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/controller/g;->a(Lcom/fyber/inneractive/sdk/player/enums/b;)V

    :cond_d
    return-void
.end method
