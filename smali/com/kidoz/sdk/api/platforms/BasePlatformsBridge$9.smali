###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge.AnonymousClass9 (com.kidoz.sdk.api.platforms.BasePlatformsBridge$9)
.class Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$9;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->printToastLog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

.field final synthetic val$log:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$9;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iput-object p2, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$9;->val$log:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$9;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$9;->val$log:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
