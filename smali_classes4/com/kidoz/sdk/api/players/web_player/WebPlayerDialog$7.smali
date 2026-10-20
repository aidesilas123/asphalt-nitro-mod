###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.AnonymousClass7 (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$7)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$7;
.super Ljava/lang/Object;
.source "WebPlayerDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/players/web_player/WebPlayerView$IOnRemoveViewRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->addWebPlayerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$7;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveView()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$7;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->closeDialog()V

    return-void
.end method
