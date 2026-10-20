###### Class com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog.AnonymousClass13.AnonymousClass1 (com.kidoz.sdk.api.ui_views.feed_view.FeedFamilyViewDialog$13$1)
.class Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13$1;
.super Ljava/lang/Object;
.source "FeedFamilyViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 6

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;->access$700(Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;

    iget-object v2, v2, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/4 v4, 0x0

    aput v2, v0, v4

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;

    iget-object v2, v2, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    new-instance v1, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13$1;->this$1:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;

    iget-object v2, v2, Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog$13;->this$0:Lcom/kidoz/sdk/api/ui_views/feed_view/FeedFamilyViewDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;-><init>(Landroid/content/Context;[I)V

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/BaseDialog;->openDialog()V

    return-void
.end method

.method public onAnimationStart()V
    .registers 1

    return-void
.end method
