###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.WebPlayerJavaInterface (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$WebPlayerJavaInterface)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;
.super Ljava/lang/Object;
.source "WebPlayerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebPlayerJavaInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeWebView()V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$600(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface$2;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface$2;-><init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_2c

    :catch_f
    move-exception v0

    invoke-static {}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when trying to close web dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method public onInvokeCloseClick()V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$600(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface$1;-><init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_2c

    :catch_f
    move-exception v0

    invoke-static {}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when trying to close web dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method
