###### Class com.kidoz.sdk.api.general.BaseDialog.AnonymousClass1 (com.kidoz.sdk.api.general.BaseDialog$1)
.class Lcom/kidoz/sdk/api/general/BaseDialog$1;
.super Ljava/lang/Object;
.source "BaseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/BaseDialog;->initDialog(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/BaseDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/BaseDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$1;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$1;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    iget-object p1, p1, Lcom/kidoz/sdk/api/general/BaseDialog;->mCallingActivity:Landroid/app/Activity;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$1;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/BaseDialog;->access$000(Lcom/kidoz/sdk/api/general/BaseDialog;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$1;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/BaseDialog;->restoreUserOriginalOrientation()V

    :cond_1a
    return-void
.end method
