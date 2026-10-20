###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass18 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$18)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$18;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/interfaces/AnotherInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->setAnotherInterface()V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$18;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toggleWidgetState(Z)V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$18;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$300(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$18;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$500(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$18;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$700(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$18;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$000(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$18;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$100(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$18;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    iget-object v1, v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    iget-object v1, v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPager:Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    xor-int/lit8 v2, p1, 0x1

    iput-boolean v2, v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->mIsBlocked:Z

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method
