###### Class com.kidoz.sdk.api.ui_views.KidozTopBar.AnonymousClass3.AnonymousClass1 (com.kidoz.sdk.api.ui_views.KidozTopBar$3$1)
.class Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3$1;
.super Ljava/lang/Object;
.source "KidozTopBar.java"

# interfaces
.implements Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;->onClickEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseDialog()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$002(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;Z)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->isParentalLockActive(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;

    iget-object v1, v1, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$100(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->setIsLockActive(Z)V

    return-void
.end method

.method public onInputPass(Z)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->isParentalLockActive(Landroid/content/Context;)Z

    move-result p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$100(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->setIsLockActive(Z)V

    return-void
.end method
