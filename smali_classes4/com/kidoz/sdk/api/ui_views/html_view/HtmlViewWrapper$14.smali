###### Class com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.AnonymousClass14 (com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper$14)
.class Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$14;
.super Ljava/lang/Object;
.source "HtmlViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->onGetDonePlayback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$14;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$14;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlWeViewListener:Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onDonePlayBack()V

    :cond_9
    return-void
.end method
