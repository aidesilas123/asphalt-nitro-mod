###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass16 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$16)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$16;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initFamilyOneItemView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$16;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshDrawRequest()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$16;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$900(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$16;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$900(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    return-void
.end method
