###### Class com.kidoz.sdk.api.ui_views.web_unit_view.ConfigurationView (com.kidoz.sdk.api.ui_views.web_unit_view.ConfigurationView)
.class public Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView;
.super Landroid/view/View;
.source "ConfigurationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView$ConfigurationViewInterface;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConfigurationViewInterface:Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView$ConfigurationViewInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView$ConfigurationViewInterface;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView;->TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView;->mConfigurationViewInterface:Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView$ConfigurationViewInterface;

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView;->TAG:Ljava/lang/String;

    const-string v1, "*** onConfigurationChanged ***"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_17

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView;->TAG:Ljava/lang/String;

    const-string v0, "New configuration: LANDSCAPE"

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_17
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView;->TAG:Ljava/lang/String;

    const-string v0, "New configuration: PORTRAIT"

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView;->mConfigurationViewInterface:Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView$ConfigurationViewInterface;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView$ConfigurationViewInterface;->onViewVisibilityChanged(Z)V

    :cond_b
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView;->TAG:Ljava/lang/String;

    const-string v0, "*** onVisibilityChanged ***"

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Visibility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView;->TAG:Ljava/lang/String;

    const-string v1, "*** onWindowFocusChanged ***"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has window focus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView;->mConfigurationViewInterface:Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView$ConfigurationViewInterface;

    if-eqz v0, :cond_2b

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView$ConfigurationViewInterface;->onViewVisibilityChanged(Z)V

    :cond_2b
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 5

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView;->TAG:Ljava/lang/String;

    const-string v1, "*** onWindowVisibilityChanged ***"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/web_unit_view/ConfigurationView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
