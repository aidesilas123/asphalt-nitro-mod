###### Class com.kidoz.sdk.api.ads.banner.KidozBannerView.AnonymousClass2 (com.kidoz.sdk.api.ads.banner.KidozBannerView$2)
.class Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$2;
.super Ljava/lang/Object;
.source "KidozBannerView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->createBannerWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$2;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    iget-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$2;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->access$000(Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$2;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->access$100(Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;)V

    :cond_d
    return-void
.end method
