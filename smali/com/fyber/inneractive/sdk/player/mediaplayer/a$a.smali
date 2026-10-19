###### Class com.fyber.inneractive.sdk.player.mediaplayer.a.RunnableC0192a (com.fyber.inneractive.sdk.player.mediaplayer.a$a)
.class public Lcom/fyber/inneractive/sdk/player/mediaplayer/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/mediaplayer/a;II)V
    .registers 4

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$a;->c:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    iput p2, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$a;->a:I

    iput p3, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$a;->c:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->i:Lcom/fyber/inneractive/sdk/player/mediaplayer/a$k;

    if-eqz v0, :cond_31

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Player Error: %d, %d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$a;->c:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->i:Lcom/fyber/inneractive/sdk/player/mediaplayer/a$k;

    new-instance v2, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$l;

    invoke-direct {v2, v0}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$l;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/fyber/inneractive/sdk/player/controller/g;

    invoke-virtual {v1, v2}, Lcom/fyber/inneractive/sdk/player/controller/g;->a(Ljava/lang/Exception;)V

    :cond_31
    return-void
.end method
