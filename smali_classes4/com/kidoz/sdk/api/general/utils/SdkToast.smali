###### Class com.kidoz.sdk.api.general.utils.SdkToast (com.kidoz.sdk.api.general.utils.SdkToast)
.class public Lcom/kidoz/sdk/api/general/utils/SdkToast;
.super Ljava/lang/Object;
.source "SdkToast.java"


# static fields
.field private static mInstance:Lcom/kidoz/sdk/api/general/utils/SdkToast;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTextView:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/utils/SdkToast;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/utils/SdkToast;->initToast(Landroid/content/Context;)V

    return-void
.end method

.method private generateToastLayout(Landroid/content/Context;)Landroid/view/View;
    .registers 6

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/kidoz/sdk/api/general/utils/SdkToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/utils/SdkToast;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/utils/SdkToast;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/utils/SdkToast;->mTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/utils/SdkToast;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/utils/SdkToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMinLines(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/utils/SdkToast;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p1, v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result p1

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/utils/SdkToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v2, "#ee39b0c6"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/utils/SdkToast;->mContext:Landroid/content/Context;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/kidoz/sdk/api/general/utils/Utils;->spTOpx(Landroid/content/Context;F)I

    move-result v2

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/utils/SdkToast;->mContext:Landroid/content/Context;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v2, v3}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_79

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/utils/SdkToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7e

    :cond_79
    iget-object v2, p0, Lcom/kidoz/sdk/api/general/utils/SdkToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_7e
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/utils/SdkToast;->mTextView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static getSdkInstance(Landroid/content/Context;)Lcom/kidoz/sdk/api/general/utils/SdkToast;
    .registers 2

    sget-object v0, Lcom/kidoz/sdk/api/general/utils/SdkToast;->mInstance:Lcom/kidoz/sdk/api/general/utils/SdkToast;

    if-nez v0, :cond_b

    new-instance v0, Lcom/kidoz/sdk/api/general/utils/SdkToast;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/general/utils/SdkToast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kidoz/sdk/api/general/utils/SdkToast;->mInstance:Lcom/kidoz/sdk/api/general/utils/SdkToast;

    :cond_b
    sget-object p0, Lcom/kidoz/sdk/api/general/utils/SdkToast;->mInstance:Lcom/kidoz/sdk/api/general/utils/SdkToast;

    return-object p0
.end method

.method private initToast(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/SdkToast;->mToast:Landroid/widget/Toast;

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/utils/SdkToast;->generateToastLayout(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public showToast(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/SdkToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/utils/SdkToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setDuration(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/utils/SdkToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
