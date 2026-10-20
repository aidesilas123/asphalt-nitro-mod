###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass7 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$7)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$7;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->initAnimation()V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$7;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$7;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$202(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;Z)Z

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$7;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->openDialog()V

    return-void
.end method
