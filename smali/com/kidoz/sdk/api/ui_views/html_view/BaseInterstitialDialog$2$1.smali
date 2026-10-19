###### Class com.kidoz.sdk.api.ui_views.html_view.BaseInterstitialDialog.AnonymousClass2.AnonymousClass1 (com.kidoz.sdk.api.ui_views.html_view.BaseInterstitialDialog$2$1)
.class Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2$1;
.super Ljava/lang/Object;
.source "BaseInterstitialDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$2;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/BaseDialog;->closeDialog()V

    return-void
.end method

.method public onAnimationStart()V
    .registers 1

    return-void
.end method
