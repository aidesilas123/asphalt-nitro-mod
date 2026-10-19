###### Class com.kidoz.sdk.api.players.web_player.WebPlayerDialog.AnonymousClass8 (com.kidoz.sdk.api.players.web_player.WebPlayerDialog$8)
.class Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$8;
.super Ljava/lang/Object;
.source "WebPlayerDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/KidozTopBar$KidozTopBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->initTopBar()V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$8;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExitClicked(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog$8;->this$0:Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->closeDialog()V

    return-void
.end method
