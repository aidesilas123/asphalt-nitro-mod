###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass15 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$15)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$15;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;


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

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$15;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;)V
    .registers 3

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$20;->$SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    goto :goto_22

    :cond_f
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$15;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$800(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->startGifAnim()V

    goto :goto_22

    :cond_19
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$15;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$800(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->stopGifAnim()V

    :goto_22
    return-void
.end method
