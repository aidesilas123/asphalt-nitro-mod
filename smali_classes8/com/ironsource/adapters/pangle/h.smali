###### Class com.json.adapters.pangle.h (com.ironsource.adapters.pangle.h)
.class public final synthetic Lcom/ironsource/adapters/pangle/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/pangle/h;->a:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

    iput-object p2, p0, Lcom/ironsource/adapters/pangle/h;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adapters/pangle/h;->a:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

    iget-object v1, p0, Lcom/ironsource/adapters/pangle/h;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/ironsource/adapters/pangle/PangleAdapter;->h(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;Landroid/app/Activity;)V

    return-void
.end method
