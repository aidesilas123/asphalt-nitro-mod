###### Class com.kidoz.sdk.api.ads.banner.KidozBannerPresenter.AnonymousClass2 (com.kidoz.sdk.api.ads.banner.KidozBannerPresenter$2)
.class Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;
.super Ljava/lang/Object;
.source "KidozBannerPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->waitForViewReady(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

.field final synthetic val$htmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

.field final synthetic val$numOfRetries:I


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;I)V
    .registers 4

    iput-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;->val$htmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iput p3, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;->val$numOfRetries:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$500(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;->val$htmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$600(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V

    goto :goto_1b

    :cond_10
    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;->val$htmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iget v2, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$2;->val$numOfRetries:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$700(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;I)V

    :goto_1b
    return-void
.end method
