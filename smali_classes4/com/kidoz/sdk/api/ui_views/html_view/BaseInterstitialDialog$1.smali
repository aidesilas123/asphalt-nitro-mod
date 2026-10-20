###### Class com.kidoz.sdk.api.ui_views.html_view.BaseInterstitialDialog.AnonymousClass1 (com.kidoz.sdk.api.ui_views.html_view.BaseInterstitialDialog$1)
.class Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;
.super Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;
.source "BaseInterstitialDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public forwardToGooglePlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v8, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;-><init>(Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1d
    return-void
.end method

.method public onClose()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->close()V

    return-void
.end method

.method public onDonePlayBack()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->donePlayback()V

    return-void
.end method

.method public onHtmlFinishedLoading()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->onHtmlFinish()V

    return-void
.end method

.method public onHtmlStartLoading()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->onHtmlStart()V

    return-void
.end method

.method public onOpenMaximized()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->openMaximized()V

    return-void
.end method

.method public onViewReady()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->viewReady()V

    return-void
.end method
