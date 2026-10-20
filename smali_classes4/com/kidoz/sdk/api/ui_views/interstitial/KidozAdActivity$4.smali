###### Class com.kidoz.sdk.api.ui_views.interstitial.KidozAdActivity.AnonymousClass4 (com.kidoz.sdk.api.ui_views.interstitial.KidozAdActivity$4)
.class Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity$4;
.super Ljava/lang/Object;
.source "KidozAdActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity$4;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity$4;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity$4;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    return-void
.end method
