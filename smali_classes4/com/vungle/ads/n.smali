###### Class com.vungle.ads.n (com.vungle.ads.n)
.class public final synthetic Lcom/vungle/ads/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/BaseAd;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/BaseAd;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/n;->a:Lcom/vungle/ads/BaseAd;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/n;->a:Lcom/vungle/ads/BaseAd;

    invoke-static {v0}, Lcom/vungle/ads/BaseAd;->b(Lcom/vungle/ads/BaseAd;)V

    return-void
.end method
