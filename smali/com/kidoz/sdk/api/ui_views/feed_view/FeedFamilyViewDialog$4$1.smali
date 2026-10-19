###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass4.AnonymousClass1 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$4$1)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4$1;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$100(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$4;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->previousItem()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
