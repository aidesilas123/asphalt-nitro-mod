###### Class com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper.AnonymousClass2 (com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper$2)
.class Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$2;
.super Ljava/lang/Object;
.source "IntrstWrapper.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/UniquePlacement/UniqueInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$2;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialClose()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$2;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$200(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$2;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$300(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$2;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mInnerHelperInterface:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$InnerHelperInterface;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$InnerHelperInterface;->onAdClose()V

    :cond_13
    return-void
.end method
