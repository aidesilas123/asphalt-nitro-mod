###### Class com.kidoz.sdk.api.ui_views.one_item_view.ItemViewPagerAdapter.AnonymousClass1.C03831 (com.kidoz.sdk.api.ui_views.one_item_view.ItemViewPagerAdapter$1$1)
.class Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1$1;
.super Ljava/lang/Object;
.source "ItemViewPagerAdapter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->access$100(Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;)Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1;

    iget-object v1, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    iget v0, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1;->val$contentItemPosition:I

    invoke-interface {p1, v1, v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;->onClickEnd(Lcom/kidoz/sdk/api/structure/ContentItem;I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->access$002(Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;Z)Z

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
