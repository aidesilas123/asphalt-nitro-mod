###### Class com.kidoz.sdk.api.ui_views.one_item_view.ItemViewPagerAdapter (com.kidoz.sdk.api.ui_views.one_item_view.ItemViewPagerAdapter)
.class public Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ItemViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;,
        Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$IOnItemInstaniateFinishListener;
    }
.end annotation


# instance fields
.field private mContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kidoz/sdk/api/structure/ContentItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstItemCreated:Z

.field protected mHeight:I

.field private mIsCanClick:Z

.field private mItemInstaniateListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$IOnItemInstaniateFinishListener;

.field private mProperties:Lorg/json/JSONObject;

.field private mViewPagerItemClickListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;

.field protected mWidth:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;II)V
    .registers 5

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mFirstItemCreated:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mContent:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mIsCanClick:Z

    iput p2, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mWidth:I

    iput p3, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mHeight:I

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mProperties:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mIsCanClick:Z

    return p0
.end method

.method static synthetic access$002(Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mIsCanClick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;)Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mViewPagerItemClickListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;

    return-object p0
.end method


# virtual methods
.method public clearContent()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    check-cast p3, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getContentItem(I)Lcom/kidoz/sdk/api/structure/ContentItem;
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mContent:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_13

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kidoz/sdk/api/structure/ContentItem;

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return-object p1
.end method

.method public getCount()I
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mContent:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_14

    goto :goto_18

    :cond_14
    const/16 v1, 0x64

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, -0x2

    return p1
.end method

.method public getRealCount()I
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 10

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int v0, p2, v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mContent:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kidoz/sdk/api/structure/ContentItem;

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mProperties:Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mWidth:I

    iget v6, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mHeight:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;-><init>(Lorg/json/JSONObject;Landroid/content/Context;II)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getContentType()Lcom/kidoz/sdk/api/general/enums/ContentType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->applyViewSettingsByContentType(Lcom/kidoz/sdk/api/general/enums/ContentType;)V

    new-instance v3, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$1;-><init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;Lcom/kidoz/sdk/api/structure/ContentItem;I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v1}, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->setData(Lcom/kidoz/sdk/api/structure/ContentItem;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-nez p2, :cond_4b

    iget-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mFirstItemCreated:Z

    if-nez p1, :cond_4b

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mFirstItemCreated:Z

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mItemInstaniateListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$IOnItemInstaniateFinishListener;

    if-eqz p1, :cond_4b

    invoke-interface {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$IOnItemInstaniateFinishListener;->onFirstItemReady()V

    :cond_4b
    return-object v2
.end method

.method public isAdapterEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mContent:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public setContent(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kidoz/sdk/api/structure/ContentItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mContent:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemInstantiateFinishListener(Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$IOnItemInstaniateFinishListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mItemInstaniateListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$IOnItemInstaniateFinishListener;

    return-void
.end method

.method public setViewPagerItemClickListener(Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mViewPagerItemClickListener:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter$ViewPagerItemClickListener;

    return-void
.end method

.method public toggleIsClickable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->mIsCanClick:Z

    return-void
.end method
