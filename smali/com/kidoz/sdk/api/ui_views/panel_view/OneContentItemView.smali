###### Class com.kidoz.sdk.api.ui_views.panel_view.OneContentItemView (com.kidoz.sdk.api.ui_views.panel_view.OneContentItemView)
.class public Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;
.super Landroid/widget/LinearLayout;
.source "OneContentItemView.java"


# instance fields
.field private mContainer:Landroid/widget/RelativeLayout;

.field private mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

.field public mHeight:I

.field private mImageFile:Ljava/io/File;

.field private mItemName:Landroid/widget/TextView;

.field private mItemThumbnail:Landroid/widget/ImageView;

.field private mItemTypeIcon:Landroid/widget/ImageView;

.field private mNameContainerLay:Landroid/widget/LinearLayout;

.field private mPromotedIndication:Landroid/widget/ImageView;

.field private mPromotedIndicationParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mProperties:Lorg/json/JSONObject;

.field private mWebViewContainerLayout:Landroid/widget/FrameLayout;

.field public mWidth:I

.field private webViewParams:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Landroid/content/Context;II)V
    .registers 5

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mWidth:I

    iput p2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mHeight:I

    iput p3, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mWidth:I

    iput p4, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mHeight:I

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mProperties:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->initView()V

    return-void
.end method

.method private initContainer()V
    .registers 3

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initItemName()V
    .registers 7

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemName:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemName:Landroid/widget/TextView;

    const-string v1, "#d7dee0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemName:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mNameContainerLay:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mNameContainerLay:Landroid/widget/LinearLayout;

    const-string v1, "#cb3b3a37"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mNameContainerLay:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemName:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mWidth:I

    int-to-float v3, v2

    const v4, 0x3d449ba6    # 0.048f

    mul-float v3, v3, v4

    float-to-int v3, v3

    int-to-float v2, v2

    const v4, 0x3ccccccd    # 0.025f

    mul-float v2, v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemName:Landroid/widget/TextView;

    int-to-float v3, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v3, v4}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mNameContainerLay:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initItemThumbnail()V
    .registers 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemThumbnail:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemThumbnail:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mWidth:I

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initItemTypeIcon()V
    .registers 6

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mNameContainerLay:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemTypeIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemTypeIcon:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mWidth:I

    int-to-float v1, v1

    const v3, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mHeight:I

    int-to-float v1, v1

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initPromotedIndication()V
    .registers 7

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mPromotedIndication:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mPromotedIndication:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mPromotedIndicationParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mProperties:Lorg/json/JSONObject;

    const-string v3, "promotedIndicatorSize"

    const-wide v4, 0x3fc99999a0000000L    # 0.20000000298023224

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mPromotedIndicationParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mProperties:Lorg/json/JSONObject;

    const-string v3, "promotedIndicatorRatio"

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mPromotedIndicationParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mPromotedIndicationParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mPromotedIndication:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mPromotedIndicationParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initView()V
    .registers 5

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->initContainer()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->initItemThumbnail()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->initItemName()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->initItemTypeIcon()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->initPromotedIndication()V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mWebViewContainerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private loadBackgroundColor()V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getPaliteBgColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_f
    return-void
.end method

.method private loadIteNameAndSetTextColor()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method private loadItemTypeIcon()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemTypeIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    if-eqz v0, :cond_39

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemTypeIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_39

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getSecThumb()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getSecThumb()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/picasso_related/PicassoOk;->getPicasso(Landroid/content/Context;)Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getSecThumb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/imagelib/Picasso;->k(Ljava/lang/String;)Lcom/squareup/imagelib/t;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/imagelib/t;->g(Landroid/widget/ImageView;)V

    :cond_39
    return-void
.end method

.method private loadThumbnail()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemThumbnail:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getThumb()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getThumb()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mWidth:I

    if-lez v0, :cond_58

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mHeight:I

    if-lez v0, :cond_58

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getThumb()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    return-void

    :cond_35
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/picasso_related/PicassoOk;->getPicasso(Landroid/content/Context;)Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getThumb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/imagelib/Picasso;->k(Ljava/lang/String;)Lcom/squareup/imagelib/t;

    move-result-object v0

    iget v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mWidth:I

    iget v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/squareup/imagelib/t;->k(II)Lcom/squareup/imagelib/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/imagelib/t;->a()Lcom/squareup/imagelib/t;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/imagelib/t;->g(Landroid/widget/ImageView;)V

    :cond_58
    return-void
.end method

.method private setPromotedIndication()V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mProperties:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mProperties:Lorg/json/JSONObject;

    const-string v3, "promotedIndicator"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mImageFile:Ljava/io/File;

    :cond_17
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mPromotedIndication:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->isPromoted()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5c

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mImageFile:Ljava/io/File;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-ne v0, v1, :cond_5c

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mPromotedIndicationParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-lez v1, :cond_5c

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-lez v0, :cond_5c

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/picasso_related/PicassoOk;->getPicasso(Landroid/content/Context;)Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mImageFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/squareup/imagelib/Picasso;->j(Ljava/io/File;)Lcom/squareup/imagelib/t;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mPromotedIndicationParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v2, v1}, Lcom/squareup/imagelib/t;->k(II)Lcom/squareup/imagelib/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/imagelib/t;->b()Lcom/squareup/imagelib/t;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mPromotedIndication:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/imagelib/t;->g(Landroid/widget/ImageView;)V

    :cond_5c
    return-void
.end method


# virtual methods
.method public applyViewSettingsByContentType(Lcom/kidoz/sdk/api/general/enums/ContentType;)V
    .registers 3

    if-eqz p1, :cond_12

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/ContentType;->HTML:Lcom/kidoz/sdk/api/general/enums/ContentType;

    if-ne p1, v0, :cond_12

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mNameContainerLay:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1d

    :cond_12
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mNameContainerLay:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mItemTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1d
    return-void
.end method

.method public clearActiveWebView()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mWebViewContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method public setActiveWebView(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mWebViewContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_10
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->webViewParams:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_1c

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->webViewParams:Landroid/widget/FrameLayout$LayoutParams;

    :cond_1c
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mWebViewContainerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->webViewParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setData(Lcom/kidoz/sdk/api/structure/ContentItem;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->loadBackgroundColor()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->loadThumbnail()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->loadItemTypeIcon()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->setPromotedIndication()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getIsHideTextOverlay()Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mNameContainerLay:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_29

    :cond_20
    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->loadIteNameAndSetTextColor()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/OneContentItemView;->mNameContainerLay:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_29
    :goto_29
    return-void
.end method
