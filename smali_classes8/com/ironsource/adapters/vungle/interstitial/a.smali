###### Class com.json.adapters.vungle.interstitial.a (com.ironsource.adapters.vungle.interstitial.a)
.class public final synthetic Lcom/ironsource/adapters/vungle/interstitial/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/e1;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/e1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/vungle/interstitial/a;->a:Lcom/vungle/ads/e1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adapters/vungle/interstitial/a;->a:Lcom/vungle/ads/e1;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;->a(Lcom/vungle/ads/e1;)V

    return-void
.end method
