###### Class com.gameloft.adsmanager.IronSourceBanner (com.gameloft.adsmanager.IronSourceBanner)
.class public Lcom/gameloft/adsmanager/IronSourceBanner;
.super Lcom/gameloft/adsmanager/Banner/BaseBannerObject;
.source "IronSourceBanner.java"


# instance fields
.field private isBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field private parent:Lcom/gameloft/adsmanager/IronSource;

.field public sdkLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gameloft/adsmanager/IronSource;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;-><init>(Lcom/gameloft/adsmanager/BaseAdsProvider;)V

    iput-object p2, p0, Lcom/gameloft/adsmanager/IronSourceBanner;->sdkLocation:Ljava/lang/String;

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner;->parent:Lcom/gameloft/adsmanager/IronSource;

    sget-object p1, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    new-instance v0, Lcom/gameloft/adsmanager/IronSourceBanner$1;

    invoke-direct {v0, p0, p2}, Lcom/gameloft/adsmanager/IronSourceBanner$1;-><init>(Lcom/gameloft/adsmanager/IronSourceBanner;Ljava/lang/String;)V

    new-instance v1, Lcom/gameloft/adsmanager/IronSourceBanner$2;

    invoke-direct {v1, p0, p2}, Lcom/gameloft/adsmanager/IronSourceBanner$2;-><init>(Lcom/gameloft/adsmanager/IronSourceBanner;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/gameloft/adsmanager/JavaUtils;->PostAndLogException(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/adsmanager/IronSourceBanner;->isBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object p0
.end method

.method static synthetic access$002(Lcom/gameloft/adsmanager/IronSourceBanner;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner;->isBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object p1
.end method

.method static synthetic access$100(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/gameloft/adsmanager/IronSource;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/adsmanager/IronSourceBanner;->parent:Lcom/gameloft/adsmanager/IronSource;

    return-object p0
.end method


# virtual methods
.method public Close()V
    .registers 3

    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    new-instance v1, Lcom/gameloft/adsmanager/IronSourceBanner$6;

    invoke-direct {v1, p0}, Lcom/gameloft/adsmanager/IronSourceBanner$6;-><init>(Lcom/gameloft/adsmanager/IronSourceBanner;)V

    invoke-static {v0, v1}, Lcom/gameloft/adsmanager/JavaUtils;->PostAndLogException(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    return-void
.end method

.method public Destroy()V
    .registers 1

    return-void
.end method

.method public IsValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public Move(III)V
    .registers 6

    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    new-instance v1, Lcom/gameloft/adsmanager/IronSourceBanner$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/gameloft/adsmanager/IronSourceBanner$5;-><init>(Lcom/gameloft/adsmanager/IronSourceBanner;III)V

    invoke-static {v0, v1}, Lcom/gameloft/adsmanager/JavaUtils;->PostAndLogException(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    return-void
.end method

.method public Show(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget-object p4, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    new-instance p5, Lcom/gameloft/adsmanager/IronSourceBanner$3;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/gameloft/adsmanager/IronSourceBanner$3;-><init>(Lcom/gameloft/adsmanager/IronSourceBanner;III)V

    new-instance p1, Lcom/gameloft/adsmanager/IronSourceBanner$4;

    invoke-direct {p1, p0}, Lcom/gameloft/adsmanager/IronSourceBanner$4;-><init>(Lcom/gameloft/adsmanager/IronSourceBanner;)V

    invoke-static {p4, p5, p1}, Lcom/gameloft/adsmanager/JavaUtils;->PostAndLogException(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.gameloft.adsmanager.IronSourceBanner.AnonymousClass1 (com.gameloft.adsmanager.IronSourceBanner$1)
.class Lcom/gameloft/adsmanager/IronSourceBanner$1;
.super Ljava/lang/Object;
.source "IronSourceBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSourceBanner;-><init>(Lcom/gameloft/adsmanager/IronSource;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

.field final synthetic val$sdkLocation:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSourceBanner;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    iput-object p2, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1;->val$sdkLocation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    sget-object v1, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    sget-object v2, Lcom/ironsource/mediationsdk/ISBannerSize;->SMART:Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/IronSource;->createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$002(Lcom/gameloft/adsmanager/IronSourceBanner;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    new-instance v1, Lcom/gameloft/adsmanager/IronSourceBanner$1$1;

    invoke-direct {v1, p0}, Lcom/gameloft/adsmanager/IronSourceBanner$1$1;-><init>(Lcom/gameloft/adsmanager/IronSourceBanner$1;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setLevelPlayBannerListener(Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;)V

    const-string v0, "IronSourceBanner.java"

    const-string v1, "Load banner called"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    return-void
.end method

###### Class com.gameloft.adsmanager.IronSourceBanner.AnonymousClass1.C02061 (com.gameloft.adsmanager.IronSourceBanner$1$1)
.class Lcom/gameloft/adsmanager/IronSourceBanner$1$1;
.super Ljava/lang/Object;
.source "IronSourceBanner.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSourceBanner$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gameloft/adsmanager/IronSourceBanner$1;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSourceBanner$1;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1$1;->this$1:Lcom/gameloft/adsmanager/IronSourceBanner$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 3

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1$1;->this$1:Lcom/gameloft/adsmanager/IronSourceBanner$1;

    iget-object v0, p1, Lcom/gameloft/adsmanager/IronSourceBanner$1;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    iget-object p1, p1, Lcom/gameloft/adsmanager/IronSourceBanner$1;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->OnClick(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLeftApplication(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 2

    return-void
.end method

.method public onAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 7

    const-string v0, "IronSourceBanner.java"

    const-string v1, "Banner load error"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Banner failed to load with errorCode= ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") and message= ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1$1;->this$1:Lcom/gameloft/adsmanager/IronSourceBanner$1;

    iget-object p1, p1, Lcom/gameloft/adsmanager/IronSourceBanner$1;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {p1}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$100(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/gameloft/adsmanager/IronSource;

    move-result-object p1

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1$1;->this$1:Lcom/gameloft/adsmanager/IronSourceBanner$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/IronSourceBanner$1;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnBannerLoadError(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1$1;->this$1:Lcom/gameloft/adsmanager/IronSourceBanner$1;

    iget-object p1, p1, Lcom/gameloft/adsmanager/IronSourceBanner$1;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {p1}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$100(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/gameloft/adsmanager/IronSource;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/gameloft/adsmanager/IronSource;->bannerObject:Lcom/gameloft/adsmanager/IronSourceBanner;

    return-void
.end method

.method public onAdLoaded(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    const-string p1, "IronSourceBanner.java"

    const-string v0, "Banner loaded"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1$1;->this$1:Lcom/gameloft/adsmanager/IronSourceBanner$1;

    iget-object p1, p1, Lcom/gameloft/adsmanager/IronSourceBanner$1;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {p1}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$100(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/gameloft/adsmanager/IronSource;

    move-result-object p1

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1$1;->this$1:Lcom/gameloft/adsmanager/IronSourceBanner$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/IronSourceBanner$1;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-virtual {p1, v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnBannerAvailable(Lcom/gameloft/adsmanager/Banner/BaseBannerObject;)V

    return-void
.end method

.method public onAdScreenDismissed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 2

    return-void
.end method

.method public onAdScreenPresented(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 2

    return-void
.end method

###### Class com.gameloft.adsmanager.IronSourceBanner.AnonymousClass2 (com.gameloft.adsmanager.IronSourceBanner$2)
.class Lcom/gameloft/adsmanager/IronSourceBanner$2;
.super Ljava/lang/Object;
.source "IronSourceBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSourceBanner;-><init>(Lcom/gameloft/adsmanager/IronSource;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

.field final synthetic val$sdkLocation:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSourceBanner;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$2;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    iput-object p2, p0, Lcom/gameloft/adsmanager/IronSourceBanner$2;->val$sdkLocation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$2;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$100(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/gameloft/adsmanager/IronSource;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$2;->val$sdkLocation:Ljava/lang/String;

    const/16 v2, 0x22b8

    invoke-virtual {v0, v2, v1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnBannerLoadError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$2;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$100(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/gameloft/adsmanager/IronSource;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/gameloft/adsmanager/IronSource;->bannerObject:Lcom/gameloft/adsmanager/IronSourceBanner;

    return-void
.end method

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

###### Class com.gameloft.adsmanager.IronSourceBanner.AnonymousClass3.AnonymousClass1 (com.gameloft.adsmanager.IronSourceBanner$3$1)
.class Lcom/gameloft/adsmanager/IronSourceBanner$3$1;
.super Ljava/lang/Object;
.source "IronSourceBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSourceBanner$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gameloft/adsmanager/IronSourceBanner$3;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSourceBanner$3;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$3$1;->this$1:Lcom/gameloft/adsmanager/IronSourceBanner$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$3$1;->this$1:Lcom/gameloft/adsmanager/IronSourceBanner$3;

    iget-object v0, v0, Lcom/gameloft/adsmanager/IronSourceBanner$3;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$3$1;->this$1:Lcom/gameloft/adsmanager/IronSourceBanner$3;

    iget-object v0, v0, Lcom/gameloft/adsmanager/IronSourceBanner$3;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_15

    :catch_15
    :cond_15
    return-void
.end method

###### Class com.gameloft.adsmanager.IronSourceBanner.AnonymousClass4 (com.gameloft.adsmanager.IronSourceBanner$4)
.class Lcom/gameloft/adsmanager/IronSourceBanner$4;
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


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSourceBanner;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$4;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$4;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    iget-object v1, v0, Lcom/gameloft/adsmanager/IronSourceBanner;->sdkLocation:Ljava/lang/String;

    const/16 v2, 0x22b8

    invoke-virtual {v0, v2, v1}, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->OnShowError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$4;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$100(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/gameloft/adsmanager/IronSource;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/gameloft/adsmanager/IronSource;->bannerObject:Lcom/gameloft/adsmanager/IronSourceBanner;

    return-void
.end method

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

###### Class com.gameloft.adsmanager.IronSourceBanner.AnonymousClass6 (com.gameloft.adsmanager.IronSourceBanner$6)
.class Lcom/gameloft/adsmanager/IronSourceBanner$6;
.super Ljava/lang/Object;
.source "IronSourceBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSourceBanner;->Close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/IronSourceBanner;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSourceBanner;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$6;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$6;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Lcom/gameloft/adsmanager/AdsManager;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$6;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v1}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$6;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$000(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$6;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$002(Lcom/gameloft/adsmanager/IronSourceBanner;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$6;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    iget-object v2, v0, Lcom/gameloft/adsmanager/IronSourceBanner;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->OnClosed(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$6;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$100(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/gameloft/adsmanager/IronSource;

    move-result-object v0

    iput-object v1, v0, Lcom/gameloft/adsmanager/IronSource;->bannerObject:Lcom/gameloft/adsmanager/IronSourceBanner;

    return-void
.end method
