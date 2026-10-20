###### Class com.bytedance.sdk.openadsdk.component.reward.h.AnonymousClass3 (com.bytedance.sdk.openadsdk.component.reward.h$3)
.class Lcom/bytedance/sdk/openadsdk/component/reward/h$3;
.super Lcom/bytedance/sdk/component/g/h;
.source "PAGRewardVideoAdImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/h;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/h;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$3;->b:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$3;->a:I

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/g/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a()Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$3;->a:I

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$3;->b:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->c(Lcom/bytedance/sdk/openadsdk/component/reward/h;)Lcom/bytedance/sdk/openadsdk/apiImpl/d/a;

    move-result-object v1

    if-eqz v1, :cond_46

    const-string v1, "MultiProcess"

    const-string v2, "start registerRewardVideoListener ! "

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$3;->b:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->c(Lcom/bytedance/sdk/openadsdk/component/reward/h;)Lcom/bytedance/sdk/openadsdk/apiImpl/d/a;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/d;-><init>(Lcom/bytedance/sdk/openadsdk/apiImpl/d/a;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    if-eqz v0, :cond_46

    :try_start_2d
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$3;->b:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->d(Lcom/bytedance/sdk/openadsdk/component/reward/h;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->registerRewardVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;)V

    const-string v0, "end registerRewardVideoListener ! "

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3b} :catch_3c

    goto :goto_46

    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTRewardVideoAdImpl"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    :goto_46
    return-void
.end method
