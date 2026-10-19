###### Class com.kidoz.sdk.api.dialogs.ParentalLockLayoutGenerator (com.kidoz.sdk.api.dialogs.ParentalLockLayoutGenerator)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;
.super Ljava/lang/Object;
.source "ParentalLockLayoutGenerator.java"


# static fields
.field static ANIMATABLE_VIEW:I

.field static ANSWER_1_TEXT_VIEW_ID:I

.field static ANSWER_2_TEXT_VIEW_ID:I

.field static ANSWER_3_TEXT_VIEW_ID:I

.field static ANSWER_4_TEXT_VIEW_ID:I

.field static EQUATION_TEXT_VIEW_ID:I

.field static EQUATION_VIEW_CONTAINER_ID:I

.field static EXIT_BUTTON_ID:I

.field static FEEDBACK_ACTION_TEXT_VIEW_ID:I

.field static FEEDBACK_MESSAGE_CONTAINER_ID:I

.field static FEEDBACK_MESSAGE_TEXT_VIEW_ID:I

.field static INNER_VIEW_CONTAINER_ID:I

.field static PARENTAL_CARDVIEW_ID:I

.field static PARENTAL_DIALOG_TITLE_ID:I

.field static PARENTAL_LOCK_DIALOG_MESSAGE_TEXTVIEW_ID:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateParentalLockView(Landroid/content/Context;I)Landroid/view/View;
    .registers 18

    move-object/from16 v0, p0

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v2, "#50000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xd

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v6

    sput v6, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->ANIMATABLE_VIEW:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    invoke-direct {v2, v0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v6

    sput v6, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->PARENTAL_CARDVIEW_ID:I

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setId(I)V

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v0, v6}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v7

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v7, v7, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v2, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v8, 0x11

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    div-int/lit8 v9, p1, 0x11

    new-instance v10, Lcom/kidoz/sdk/api/ui_views/CloseButtonView;

    const-string v11, "#ffffff"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v10, v0, v9, v9, v11}, Lcom/kidoz/sdk/api/ui_views/CloseButtonView;-><init>(Landroid/content/Context;III)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v9

    sput v9, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->EXIT_BUTTON_ID:I

    invoke-virtual {v10, v9}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0xb

    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-static {v0, v12}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v0, v12}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v9, v15, v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v10, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v10

    sput v10, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->PARENTAL_DIALOG_TITLE_ID:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMinLines(I)V

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v13, 0x41a80000    # 21.0f

    invoke-virtual {v9, v10, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v6}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v14

    invoke-virtual {v13, v14, v15, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v9, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/view/View;

    invoke-direct {v5, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v9, "#86e6fc"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v0, v13}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v14

    invoke-direct {v9, v3, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v12}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v14

    invoke-static {v0, v12}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v9, v14, v15, v11, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v9

    sput v9, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->PARENTAL_LOCK_DIALOG_MESSAGE_TEXTVIEW_ID:I

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v0, v9}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v0, v6}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v14

    invoke-static {v0, v9}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v12

    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v11, v14, v12, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41b80000    # 23.0f

    invoke-virtual {v5, v10, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v6

    sput v6, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->INNER_VIEW_CONTAINER_ID:I

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v11, 0x41700000    # 15.0f

    invoke-static {v0, v11}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v0, v11}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v14

    invoke-static {v0, v11}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v6, v12, v15, v14, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v6, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->EQUATION_VIEW_CONTAINER_ID:I

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v6, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {v0, v9}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v14

    invoke-static {v0, v9}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v12, v14, v15, v4, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v13, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v11, v2, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v4, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v12, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v13

    sput v13, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->EQUATION_TEXT_VIEW_ID:I

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v13, 0x42300000    # 44.0f

    invoke-virtual {v11, v10, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    new-instance v11, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v11}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-virtual {v6, v11}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v11, v13, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v13, 0x41200000    # 10.0f

    invoke-static {v0, v13}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v15

    invoke-virtual {v11, v15, v15, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iput v8, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    div-int/lit8 v13, p1, 0x5

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v15

    sput v15, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->ANSWER_1_TEXT_VIEW_ID:I

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v15, -0x1000000

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-virtual {v13, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v9, v3, :cond_260

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_263

    :cond_260
    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_263
    invoke-virtual {v2, v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v13

    sput v13, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->ANSWER_2_TEXT_VIEW_ID:I

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v13, 0x420c0000    # 35.0f

    invoke-virtual {v2, v10, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    if-lt v9, v3, :cond_288

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_28b

    :cond_288
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_28b
    invoke-virtual {v4, v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v4

    sput v4, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->ANSWER_3_TEXT_VIEW_ID:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x420c0000    # 35.0f

    invoke-virtual {v2, v10, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    if-lt v9, v3, :cond_2b0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2b3

    :cond_2b0
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2b3
    invoke-virtual {v12, v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v4

    sput v4, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->ANSWER_4_TEXT_VIEW_ID:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x420c0000    # 35.0f

    invoke-virtual {v2, v10, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    if-lt v9, v3, :cond_2d8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2db

    :cond_2d8
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2db
    invoke-virtual {v14, v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v3

    sput v3, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->FEEDBACK_MESSAGE_CONTAINER_ID:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v0, v3}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v4

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v0, v6}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v0, v3}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v9

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v0, v3}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v4, v6, v9, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v4

    sput v4, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->FEEDBACK_MESSAGE_TEXT_VIEW_ID:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-virtual {v3, v10, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v0, v7}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v0, v7}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v11

    const/4 v7, 0x0

    invoke-virtual {v6, v9, v7, v11, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v6

    sput v6, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->FEEDBACK_ACTION_TEXT_VIEW_ID:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v10, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xc

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0xb

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v0, v7}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v0

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v7, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-object v1
.end method
