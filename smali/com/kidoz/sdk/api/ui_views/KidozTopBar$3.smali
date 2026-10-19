###### Class com.kidoz.sdk.api.ui_views.KidozTopBar.AnonymousClass3 (com.kidoz.sdk.api.ui_views.KidozTopBar$3)
.class Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;
.super Ljava/lang/Object;
.source "KidozTopBar.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/ParentalLockButton$ParentalLockButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->initLockButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickEnd()V
    .registers 11

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$000(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$002(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;Z)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->isParentalLockActive(Landroid/content/Context;)Z

    move-result v9

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$400(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$500(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/kidoz/events/EventManager;->b:I

    const-string v6, "Parental Lock"

    const-string v7, "Click"

    const-string v8, "Lock Button"

    invoke-virtual/range {v1 .. v9}, Lcom/kidoz/events/EventManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x3f38d4fe    # 0.722f

    const v3, 0x3d23d70a    # 0.04f

    new-instance v4, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3$1;

    invoke-direct {v4, p0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3$1;-><init>(Lcom/kidoz/sdk/api/ui_views/KidozTopBar$3;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->startParentalDialog(Landroid/content/Context;ZFFLcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;)Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    :cond_54
    return-void
.end method

.method public onClickStarted()V
    .registers 1

    return-void
.end method
