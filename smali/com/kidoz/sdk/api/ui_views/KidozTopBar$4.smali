###### Class com.kidoz.sdk.api.ui_views.KidozTopBar.AnonymousClass4 (com.kidoz.sdk.api.ui_views.KidozTopBar$4)
.class Lcom/kidoz/sdk/api/ui_views/KidozTopBar$4;
.super Ljava/lang/Object;
.source "KidozTopBar.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/ExitButton$ExitButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->initExitButton(Z)V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$4;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickEnd()V
    .registers 11

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$4;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$000(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$4;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$002(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;Z)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$4;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$4;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$4;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$400(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$4;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$500(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/kidoz/events/EventManager;->b:I

    const/4 v6, 0x0

    const-string v7, "SDK"

    const-string v8, "Click"

    const-string v9, "Exit"

    invoke-virtual/range {v1 .. v9}, Lcom/kidoz/events/EventManager;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$4;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$600(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Lcom/kidoz/sdk/api/ui_views/KidozTopBar$KidozTopBarListener;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$4;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$600(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Lcom/kidoz/sdk/api/ui_views/KidozTopBar$KidozTopBarListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$KidozTopBarListener;->onExitClicked(Landroid/view/View;)V

    :cond_48
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$4;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$002(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;Z)Z

    :cond_4e
    return-void
.end method

.method public onClickStarted()V
    .registers 1

    return-void
.end method
