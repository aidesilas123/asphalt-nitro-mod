###### Class com.json.adapters.pangle.a (com.ironsource.adapters.pangle.a)
.class public final synthetic Lcom/ironsource/adapters/pangle/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/pangle/a;->a:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    iput-object p2, p0, Lcom/ironsource/adapters/pangle/a;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adapters/pangle/a;->a:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;

    iget-object v1, p0, Lcom/ironsource/adapters/pangle/a;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/ironsource/adapters/pangle/PangleAdapter;->a(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;Landroid/app/Activity;)V

    return-void
.end method
