###### Class com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.AnonymousClass1 (com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView$1)
.class Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$1;
.super Ljava/lang/Object;
.source "OneItemFamilyView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/utils/Utils$OnGlobalLayoutFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutFinished()V
    .registers 6

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mWidth:I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHeight:I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    iget-object v2, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mProperties:Lorg/json/JSONObject;

    iget v3, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mWidth:I

    iget v4, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHeight:I

    invoke-direct {v1, v2, v3, v4}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;-><init>(Lorg/json/JSONObject;II)V

    iput-object v1, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAdapter:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    iget-object v1, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAdapter:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPagerItemClickListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->setViewPagerItemClickListener(Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    iget-object v1, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPager:Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAdapter:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAdapter:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->setContent(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAdapter:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAdapter:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$1$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$1$1;-><init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$1;)V

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->setOnItemInstantiateFinishListener(Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$IOnItemInstaniateFinishListener;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    iget v1, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mWidth:I

    int-to-float v1, v1

    const v2, 0x3e6147ae    # 0.22f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mMaximizeBtn:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mMaximizeBtn:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method
