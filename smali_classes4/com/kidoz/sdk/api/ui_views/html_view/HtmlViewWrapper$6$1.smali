###### Class com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.AnonymousClass6.AnonymousClass1 (com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper$6$1)
.class Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$6$1;
.super Ljava/lang/Object;
.source "HtmlViewWrapper.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$6;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$6;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$6$1;->this$1:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestoreClick()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$6$1;->this$1:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$6;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$6;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mAllowClickHandling:Z

    return-void
.end method
