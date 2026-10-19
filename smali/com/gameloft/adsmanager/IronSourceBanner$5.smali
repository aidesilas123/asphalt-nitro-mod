###### Class com.gameloft.adsmanager.IronSourceBanner.AnonymousClass5 (com.gameloft.adsmanager.IronSourceBanner$5)
.class Lcom/gameloft/adsmanager/IronSourceBanner$5;
.super Ljava/lang/Object;
.source "IronSourceBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSourceBanner;->Move(III)V
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

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$5;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    iput p2, p0, Lcom/gameloft/adsmanager/IronSourceBanner$5;->val$x:I

    iput p3, p0, Lcom/gameloft/adsmanager/IronSourceBanner$5;->val$y:I

    iput p4, p0, Lcom/gameloft/adsmanager/IronSourceBanner$5;->val$anchor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$5;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$5;->val$x:I

    iget v1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$5;->val$y:I

    iget v2, p0, Lcom/gameloft/adsmanager/IronSourceBanner$5;->val$anchor:I

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->SetBannerPositionAndAnchor(III)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$5;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/adsmanager/JavaUtils;->ApplyCorrection(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$5;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    sget-object v1, Lcom/gameloft/adsmanager/JavaUtils;->bannerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
