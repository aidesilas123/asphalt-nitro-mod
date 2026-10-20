###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.AnonymousClass9 (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$9)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$9;
.super Ljava/lang/Object;
.source "WebPlayerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->invokeJSfunction(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

.field final synthetic val$function:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$9;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    iput-object p2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$9;->val$function:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_17

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$9;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$100(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->getKidozWebView()Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$9;->val$function:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_36

    :cond_17
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$9;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$100(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->getKidozWebView()Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$9;->val$function:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_36

    :catch_27
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$9;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$100(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->getKidozWebView()Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$9;->val$function:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_36
    return-void
.end method
