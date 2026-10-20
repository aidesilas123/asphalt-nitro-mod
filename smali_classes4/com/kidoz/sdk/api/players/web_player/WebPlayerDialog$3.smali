###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.AnonymousClass3 (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$3)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;
.super Ljava/lang/Object;
.source "WebPlayerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->setAutoCloseTimer()V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$100(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    move-result-object v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$100(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->getKidozWebView()Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    move-result-object v0

    if-eqz v0, :cond_72

    new-instance v6, Lcom/kidoz/events/a;

    invoke-direct {v6}, Lcom/kidoz/events/a;-><init>()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$200(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/structure/ContentItem;

    move-result-object v0

    if-eqz v0, :cond_3f

    const-string v0, "ItemID"

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$200(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/structure/ContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AdvertiserID"

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$200(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/structure/ContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getAdvertiserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v1

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$300(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$400(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/kidoz/events/EventManager;->a:I

    const-string v7, "WebView Error"

    const-string v8, "Error opening google start redirect"

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->access$100(Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->getKidozWebView()Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->getLastOverloadUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Lcom/kidoz/events/EventManager;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_72} :catch_72

    :catch_72
    :cond_72
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$3;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->closeDialog()V

    return-void
.end method
