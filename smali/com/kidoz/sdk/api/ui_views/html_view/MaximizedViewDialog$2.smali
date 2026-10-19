###### Class com.kidoz.sdk.api.ui_views.html_view.MaximizedViewDialog.AnonymousClass2 (com.kidoz.sdk.api.ui_views.html_view.MaximizedViewDialog$2)
.class Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog$2;
.super Ljava/lang/Object;
.source "MaximizedViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;->openDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog$2;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog$2;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;->mWebView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method
