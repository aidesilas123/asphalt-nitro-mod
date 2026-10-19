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
