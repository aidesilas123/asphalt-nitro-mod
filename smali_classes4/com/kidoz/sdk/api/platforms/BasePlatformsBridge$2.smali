###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge.AnonymousClass2 (com.kidoz.sdk.api.platforms.BasePlatformsBridge$2)
.class Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$2;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->addContainerIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$2;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$2;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$000(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$2;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iget-object v1, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$100(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$2;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$002(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Z)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$2;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$100(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    :cond_28
    return-void
.end method
