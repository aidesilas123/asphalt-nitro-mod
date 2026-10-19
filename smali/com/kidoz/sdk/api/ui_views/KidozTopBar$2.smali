###### Class com.kidoz.sdk.api.ui_views.KidozTopBar.AnonymousClass2 (com.kidoz.sdk.api.ui_views.KidozTopBar$2)
.class Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2;
.super Ljava/lang/Object;
.source "KidozTopBar.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/utils/Utils$OnGlobalLayoutFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->initRootView()V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutFinished()V
    .registers 6

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$100(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$200(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$100(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;

    move-result-object v0

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$1;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$1;-><init>(Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2;)V

    const-wide/16 v3, 0x140

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_22
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$300(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Lcom/kidoz/sdk/api/ui_views/ExitButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$300(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Lcom/kidoz/sdk/api/ui_views/ExitButton;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$2;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$2;-><init>(Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2;)V

    const-wide/16 v2, 0xf0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
