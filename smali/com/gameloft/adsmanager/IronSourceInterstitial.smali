###### Class com.gameloft.adsmanager.IronSourceInterstitial (com.gameloft.adsmanager.IronSourceInterstitial)
.class public Lcom/gameloft/adsmanager/IronSourceInterstitial;
.super Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;
.source "IronSourceInterstitial.java"


# instance fields
.field private parent:Lcom/gameloft/adsmanager/IronSource;

.field public sdkLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gameloft/adsmanager/IronSource;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;-><init>(Lcom/gameloft/adsmanager/BaseAdsProvider;)V

    iput-object p2, p0, Lcom/gameloft/adsmanager/IronSourceInterstitial;->sdkLocation:Ljava/lang/String;

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceInterstitial;->parent:Lcom/gameloft/adsmanager/IronSource;

    return-void
.end method

.method static synthetic access$000(Lcom/gameloft/adsmanager/IronSourceInterstitial;)Lcom/gameloft/adsmanager/IronSource;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/adsmanager/IronSourceInterstitial;->parent:Lcom/gameloft/adsmanager/IronSource;

    return-object p0
.end method


# virtual methods
.method public Close()V
    .registers 1

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

.method public Show(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSourceInterstitial;->parent:Lcom/gameloft/adsmanager/IronSource;

    iput-object p0, p1, Lcom/gameloft/adsmanager/IronSource;->onScreenInterstitial:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    sget-object p1, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    new-instance p2, Lcom/gameloft/adsmanager/IronSourceInterstitial$1;

    invoke-direct {p2, p0}, Lcom/gameloft/adsmanager/IronSourceInterstitial$1;-><init>(Lcom/gameloft/adsmanager/IronSourceInterstitial;)V

    new-instance v0, Lcom/gameloft/adsmanager/IronSourceInterstitial$2;

    invoke-direct {v0, p0}, Lcom/gameloft/adsmanager/IronSourceInterstitial$2;-><init>(Lcom/gameloft/adsmanager/IronSourceInterstitial;)V

    invoke-static {p1, p2, v0}, Lcom/gameloft/adsmanager/JavaUtils;->PostAndLogException(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.gameloft.adsmanager.IronSourceInterstitial.AnonymousClass1 (com.gameloft.adsmanager.IronSourceInterstitial$1)
.class Lcom/gameloft/adsmanager/IronSourceInterstitial$1;
.super Ljava/lang/Object;
.source "IronSourceInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSourceInterstitial;->Show(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/IronSourceInterstitial;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSourceInterstitial;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceInterstitial$1;->this$0:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceInterstitial$1;->this$0:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceInterstitial;->access$000(Lcom/gameloft/adsmanager/IronSourceInterstitial;)Lcom/gameloft/adsmanager/IronSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnPauseGameAudio()V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceInterstitial$1;->this$0:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    iget-object v0, v0, Lcom/gameloft/adsmanager/IronSourceInterstitial;->sdkLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->showInterstitial(Ljava/lang/String;)V

    return-void
.end method

###### Class com.gameloft.adsmanager.IronSourceInterstitial.AnonymousClass2 (com.gameloft.adsmanager.IronSourceInterstitial$2)
.class Lcom/gameloft/adsmanager/IronSourceInterstitial$2;
.super Ljava/lang/Object;
.source "IronSourceInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSourceInterstitial;->Show(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/IronSourceInterstitial;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSourceInterstitial;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceInterstitial$2;->this$0:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceInterstitial$2;->this$0:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    iget-object v1, v0, Lcom/gameloft/adsmanager/IronSourceInterstitial;->sdkLocation:Ljava/lang/String;

    const/16 v2, 0x22b8

    invoke-virtual {v0, v2, v1}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;->OnShowError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceInterstitial$2;->this$0:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    invoke-static {v0}, Lcom/gameloft/adsmanager/IronSourceInterstitial;->access$000(Lcom/gameloft/adsmanager/IronSourceInterstitial;)Lcom/gameloft/adsmanager/IronSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/IronSource;->ResetInterstitial()V

    return-void
.end method
