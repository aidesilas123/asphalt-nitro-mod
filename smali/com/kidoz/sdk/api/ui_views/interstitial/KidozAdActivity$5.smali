###### Class com.kidoz.sdk.api.ui_views.interstitial.KidozAdActivity.AnonymousClass5 (com.kidoz.sdk.api.ui_views.interstitial.KidozAdActivity$5)
.class Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity$5;
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/KidozAdActivity;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    return-void
.end method
