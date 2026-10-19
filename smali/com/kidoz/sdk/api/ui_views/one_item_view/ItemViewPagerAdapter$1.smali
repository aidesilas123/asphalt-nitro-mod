###### Class com.kidoz.sdk.api.ui_views.one_item_view.ItemViewPagerAdapter.AnonymousClass1 (com.kidoz.sdk.api.ui_views.one_item_view.ItemViewPagerAdapter$1)
.class Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1;
.super Ljava/lang/Object;
.source "ItemViewPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

.field final synthetic val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

.field final synthetic val$contentItemPosition:I


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;Lcom/kidoz/sdk/api/structure/ContentItem;I)V
    .registers 4

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    iput p3, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1;->val$contentItemPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->access$000(Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->access$002(Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;Z)Z

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1$1;-><init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1;)V

    const/16 v1, 0x32

    const/16 v2, 0x64

    invoke-static {p1, v0, v1, v2}, Lcom/kidoz/sdk/api/general/utils/SdkAnimationsUtils;->animateClick(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;II)V

    :cond_1b
    return-void
.end method
