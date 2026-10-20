###### Class com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.AnonymousClass12 (com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper$12)
.class Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$12;
.super Ljava/lang/Object;
.source "HtmlViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->onRequestStoreLocalParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$scope_type:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$12;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$12;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$12;->val$value:Ljava/lang/String;

    iput-object p4, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$12;->val$scope_type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$12;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$12;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    iget-object v2, v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mWidgetType:Ljava/lang/String;

    iget-object v3, v0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->mHtmlPageUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$12;->val$key:Ljava/lang/String;

    iget-object v5, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$12;->val$value:Ljava/lang/String;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$12;->val$scope_type:Ljava/lang/String;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/StorageLife;->valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/StorageLife;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;->saveData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/general/utils/StorageLife;)V

    return-void
.end method
