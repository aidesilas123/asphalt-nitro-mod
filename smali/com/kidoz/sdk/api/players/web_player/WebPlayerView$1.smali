###### Class com.kidoz.sdk.api.players.web_player.WebPlayerView.AnonymousClass1 (com.kidoz.sdk.api.players.web_player.WebPlayerView$1)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerView$1;
.super Ljava/lang/Object;
.source "WebPlayerView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/players/web_player/KidozWebView$IOnLounchExternalAppFromRedirectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView$1;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLounch()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView$1;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->access$000(Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerView$IOnRemoveViewRequestListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView$1;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->access$000(Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerView$IOnRemoveViewRequestListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView$IOnRemoveViewRequestListener;->onRemoveView()V

    :cond_11
    return-void
.end method
