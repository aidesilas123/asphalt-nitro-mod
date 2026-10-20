###### Class com.kidoz.sdk.api.ui_views.html_view.BaseInterstitialDialog.AnonymousClass1.RunnableC03821 (com.kidoz.sdk.api.ui_views.html_view.BaseInterstitialDialog$1$1)
.class Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;
.super Ljava/lang/Object;
.source "BaseInterstitialDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->forwardToGooglePlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;

.field final synthetic val$advertiserID:Ljava/lang/String;

.field final synthetic val$appID:Ljava/lang/String;

.field final synthetic val$googlePlayLink:Ljava/lang/String;

.field final synthetic val$styleID:Ljava/lang/String;

.field final synthetic val$widgetType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->val$appID:Ljava/lang/String;

    iput-object p3, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->val$googlePlayLink:Ljava/lang/String;

    iput-object p4, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->val$advertiserID:Ljava/lang/String;

    iput-object p5, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->val$widgetType:Ljava/lang/String;

    iput-object p6, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->val$styleID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    new-instance v1, Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-direct {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;-><init>()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->val$appID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->setId(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->val$googlePlayLink:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->setData(Ljava/lang/String;)V

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/ContentType;->PROMOTED_PLAY_APPLICATION:Lcom/kidoz/sdk/api/general/enums/ContentType;

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->setContentType(Lcom/kidoz/sdk/api/general/enums/ContentType;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->val$advertiserID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->setAdvertiserID(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->setIsPromoted(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->val$widgetType:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/html_view/BaseInterstitialDialog$1$1;->val$styleID:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->handleContentItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZLcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;)V

    return-void
.end method
