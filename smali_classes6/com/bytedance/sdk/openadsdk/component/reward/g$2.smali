###### Class com.bytedance.sdk.openadsdk.component.reward.g.AnonymousClass2 (com.bytedance.sdk.openadsdk.component.reward.g$2)
.class Lcom/bytedance/sdk/openadsdk/component/reward/g$2;
.super Ljava/lang/Object;
.source "PAGRewardProxyListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/g;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->a:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->a:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method
