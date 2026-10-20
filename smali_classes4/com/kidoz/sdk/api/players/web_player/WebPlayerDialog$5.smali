###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.AnonymousClass5 (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$5)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$5;
.super Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;
.source "WebPlayerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->addHtmlPlaybackView()V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$5;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 2

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onClose()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$5;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->closeDialog()V

    return-void
.end method

.method public onHtmlFinishedLoading()V
    .registers 2

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onHtmlFinishedLoading()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$5;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$500(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->hideLoadingProgressView()V

    return-void
.end method

.method public onHtmlStartLoading()V
    .registers 2

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onHtmlStartLoading()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$5;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$500(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->showLoadingProgressView()V

    return-void
.end method
