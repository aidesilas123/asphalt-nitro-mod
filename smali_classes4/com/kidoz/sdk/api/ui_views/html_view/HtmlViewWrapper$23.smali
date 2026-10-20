###### Class com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.AnonymousClass23 (com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper$23)
.class Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$23;
.super Ljava/lang/Object;
.source "HtmlViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->toggleWidgetState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

.field final synthetic val$isEnabled:Z


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;Z)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$23;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iput-boolean p2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$23;->val$isEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$23;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlWeViewListener:Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

    if-eqz v0, :cond_b

    iget-boolean v1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$23;->val$isEnabled:Z

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->toggleWidgetState(Z)V

    :cond_b
    return-void
.end method
