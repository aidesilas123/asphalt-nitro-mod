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
