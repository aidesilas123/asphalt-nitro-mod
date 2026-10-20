###### Class com.json.adapters.pangle.e (com.ironsource.adapters.pangle.e)
.class public final synthetic Lcom/ironsource/adapters/pangle/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedRequest;

.field public final synthetic c:Lcom/ironsource/adapters/pangle/PangleRewardedVideoAdListener;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedRequest;Lcom/ironsource/adapters/pangle/PangleRewardedVideoAdListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/pangle/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/adapters/pangle/e;->b:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedRequest;

    iput-object p3, p0, Lcom/ironsource/adapters/pangle/e;->c:Lcom/ironsource/adapters/pangle/PangleRewardedVideoAdListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adapters/pangle/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/adapters/pangle/e;->b:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedRequest;

    iget-object v2, p0, Lcom/ironsource/adapters/pangle/e;->c:Lcom/ironsource/adapters/pangle/PangleRewardedVideoAdListener;

    invoke-static {v0, v1, v2}, Lcom/ironsource/adapters/pangle/PangleAdapter;->e(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedRequest;Lcom/ironsource/adapters/pangle/PangleRewardedVideoAdListener;)V

    return-void
.end method
