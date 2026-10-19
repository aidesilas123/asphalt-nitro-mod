###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.AnonymousClass1 (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$1)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$1;
.super Ljava/lang/Object;
.source "WebPlayerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;-><init>(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;Z)V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$1;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$1;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$000(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    move-result-object p1

    const/4 p3, 0x1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$1;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$000(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ROVIO:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-ne p1, v0, :cond_34

    const/4 p1, 0x4

    if-ne p2, p1, :cond_34

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$1;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$100(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->getKidozWebView()Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-ne p1, p3, :cond_34

    :try_start_26
    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$1;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$100(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->getKidozWebView()Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_33} :catch_34

    goto :goto_35

    :catch_34
    :cond_34
    const/4 p3, 0x0

    :goto_35
    return p3
.end method
