###### Class com.gameloft.adsmanager.IronSourceBanner.AnonymousClass3 (com.gameloft.adsmanager.IronSourceBanner$3)
.class Lcom/gameloft/adsmanager/IronSourceBanner$3;
.super Ljava/lang/Object;
.source "IronSourceBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSourceBanner;->Show(IIILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

.field final synthetic val$anchor:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSourceBanner;III)V
    .registers 5

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$3;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    iput p2, p0, Lcom/gameloft/adsmanager/IronSourceBanner$3;->val$x:I

    iput p3, p0, Lcom/gameloft/adsmanager/IronSourceBanner$3;->val$y:I

    iput p4, p0, Lcom/gameloft/adsmanager/IronSourceBanner$3;->val$anchor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$3;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    if-nez v0, :cond_1b

    const-string v0, "IronSourceBanner.java"

    const-string v1, "BannerLayout is null"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$3;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    const/16 v1, 0x22b8

    iget-object v2, v0, Lcom/gameloft/adsmanager/IronSourceBanner;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->OnShowError(ILjava/lang/String;)V

    return-void

    :cond_1b
    iget v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$3;->val$x:I

    iget v1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$3;->val$y:I

    iget v2, p0, Lcom/gameloft/adsmanager/IronSourceBanner$3;->val$anchor:I

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->SetBannerPositionAndAnchor(III)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$3;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/adsmanager/JavaUtils;->ApplyCorrection(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$3;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    sget-object v1, Lcom/gameloft/adsmanager/JavaUtils;->bannerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$3;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v1}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$3;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$3;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    iget-object v1, v0, Lcom/gameloft/adsmanager/IronSourceBanner;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->OnDisplay(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$3;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    new-instance v1, Lcom/gameloft/adsmanager/IronSourceBanner$3$1;

    invoke-direct {v1, p0}, Lcom/gameloft/adsmanager/IronSourceBanner$3$1;-><init>(Lcom/gameloft/adsmanager/IronSourceBanner$3;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
