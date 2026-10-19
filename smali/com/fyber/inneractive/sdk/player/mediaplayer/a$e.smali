###### Class com.fyber.inneractive.sdk.player.mediaplayer.a.e (com.fyber.inneractive.sdk.player.mediaplayer.a$e)
.class public Lcom/fyber/inneractive/sdk/player/mediaplayer/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->setSurface(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/Surface;

.field public final synthetic b:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/mediaplayer/a;Landroid/view/Surface;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$e;->b:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$e;->a:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$e;->b:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$e;->a:Landroid/view/Surface;

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->a(Lcom/fyber/inneractive/sdk/player/mediaplayer/a;Landroid/view/Surface;)V

    return-void
.end method
