###### Class com.kidoz.sdk.api.general.BaseDialog.ConfigurationHelperView (com.kidoz.sdk.api.general.BaseDialog$ConfigurationHelperView)
.class public Lcom/kidoz/sdk/api/general/BaseDialog$ConfigurationHelperView;
.super Landroid/view/View;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigurationHelperView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/BaseDialog;


# direct methods
.method public constructor <init>(Lcom/kidoz/sdk/api/general/BaseDialog;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$ConfigurationHelperView;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$ConfigurationHelperView;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDialogOrientationChange(Z)V

    goto :goto_15

    :cond_f
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$ConfigurationHelperView;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDialogOrientationChange(Z)V

    :goto_15
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$ConfigurationHelperView;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    invoke-virtual {p1, p2}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDialogVisibilityChange(I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog$ConfigurationHelperView;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDialogFocusChange(Z)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$ConfigurationHelperView;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDialogWindowVisibilityChange(Z)V

    goto :goto_19

    :cond_c
    const/16 v0, 0x8

    if-eq p1, v0, :cond_13

    const/4 v0, 0x4

    if-ne p1, v0, :cond_19

    :cond_13
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$ConfigurationHelperView;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDialogWindowVisibilityChange(Z)V

    :cond_19
    :goto_19
    return-void
.end method
