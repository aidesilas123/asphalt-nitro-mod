###### Class com.json.adapters.pangle.d (com.ironsource.adapters.pangle.d)
.class public final synthetic Lcom/ironsource/adapters/pangle/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialRequest;

.field public final synthetic c:Lcom/ironsource/adapters/pangle/PangleInterstitialAdListener;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialRequest;Lcom/ironsource/adapters/pangle/PangleInterstitialAdListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/pangle/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/adapters/pangle/d;->b:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialRequest;

    iput-object p3, p0, Lcom/ironsource/adapters/pangle/d;->c:Lcom/ironsource/adapters/pangle/PangleInterstitialAdListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adapters/pangle/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/adapters/pangle/d;->b:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialRequest;

    iget-object v2, p0, Lcom/ironsource/adapters/pangle/d;->c:Lcom/ironsource/adapters/pangle/PangleInterstitialAdListener;

    invoke-static {v0, v1, v2}, Lcom/ironsource/adapters/pangle/PangleAdapter;->d(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialRequest;Lcom/ironsource/adapters/pangle/PangleInterstitialAdListener;)V

    return-void
.end method
