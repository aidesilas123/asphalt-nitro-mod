###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.AnonymousClass2 (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$2)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$2;
.super Ljava/lang/Object;
.source "WebPlayerDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView$ConfigurationViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->initConfigurationView()V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewVisibilityChanged(Z)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    :try_start_3
    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    const-string v0, "javascript:toonsWebApi.appForeground()"

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->invokeJSfunction(Ljava/lang/String;)V

    goto :goto_12

    :cond_b
    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$2;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    const-string v0, "javascript:toonsWebApi.appBackground()"

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->invokeJSfunction(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_12

    :catch_12
    :goto_12
    return-void
.end method
