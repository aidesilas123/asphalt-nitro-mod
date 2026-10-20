###### Class com.vungle.ads.w (com.vungle.ads.w)
.class public final synthetic Lcom/vungle/ads/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/vungle/ads/internal/ImpressionTracker$b;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/NativeAd;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/NativeAd;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/w;->a:Lcom/vungle/ads/NativeAd;

    return-void
.end method


# virtual methods
.method public final onImpression(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/w;->a:Lcom/vungle/ads/NativeAd;

    invoke-static {v0, p1}, Lcom/vungle/ads/NativeAd;->d(Lcom/vungle/ads/NativeAd;Landroid/view/View;)V

    return-void
.end method
