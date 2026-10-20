###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.WebPlayerJavaInterface.AnonymousClass1 (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$WebPlayerJavaInterface$1)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface$1;
.super Ljava/lang/Object;
.source "WebPlayerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;->onInvokeCloseClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface$1;->this$1:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface$1;->this$1:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;

    iget-object v0, v0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$WebPlayerJavaInterface;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->closeDialog()V

    return-void
.end method
