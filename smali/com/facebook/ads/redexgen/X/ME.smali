###### Class com.facebook.ads.redexgen.X.ME (com.facebook.ads.redexgen.X.ME)
.class public final Lcom/facebook/ads/redexgen/X/ME;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    }
.end annotation


# static fields
.field public static final A07:I

.field public static final A08:I

.field public static final A09:I


# instance fields
.field public A00:I

.field public A01:Z

.field public final A02:Landroid/widget/ImageView;

.field public final A03:Landroid/widget/LinearLayout;

.field public final A04:Landroid/widget/TextView;

.field public final A05:Lcom/facebook/ads/redexgen/X/YA;

.field public final A06:Lcom/facebook/ads/redexgen/X/NY;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/high16 v1, 0x41700000    # 15.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ME;->A07:I

    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ME;->A08:I

    const/high16 v1, 0x42300000    # 44.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ME;->A09:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;I)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/ME;->A01:Z

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ME;->A05:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A02:Landroid/widget/ImageView;

    sget v2, Lcom/facebook/ads/redexgen/X/ME;->A08:I

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/NY;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/NY;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A06:Lcom/facebook/ads/redexgen/X/NY;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NY;->setProgress(F)V

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/facebook/ads/redexgen/X/NY;->setPadding(IIII)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A04:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/ME;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A03:Landroid/widget/LinearLayout;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/ME;->A00:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ME;->A00()V

    return-void
.end method

.method private A00()V
    .registers 8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A00:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ME;->setToolbarActionMode(I)V

    const/4 v4, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/ME;->setGravity(I)V

    sget v0, Lcom/facebook/ads/redexgen/X/ME;->A09:I

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ME;->A04:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0X(Landroid/widget/TextView;ZI)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A04:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A04:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A03:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A02:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A03:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A06:Lcom/facebook/ads/redexgen/X/NY;

    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/ME;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A04:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/ME;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private A01()V
    .registers 7

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A06:Lcom/facebook/ads/redexgen/X/NY;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A00:I

    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    if-ne v0, v4, :cond_29

    :cond_c
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A01:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x4

    :goto_11
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NY;->setVisibility(I)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ME;->A02:Landroid/widget/ImageView;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A00:I

    const/4 v0, 0x5

    if-ne v1, v0, :cond_20

    const/4 v5, 0x4

    :cond_1c
    :goto_1c
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_20
    if-eq v1, v3, :cond_1c

    if-ne v1, v4, :cond_25

    goto :goto_1c

    :cond_25
    const/4 v5, 0x0

    goto :goto_1c

    :cond_27
    const/4 v0, 0x0

    goto :goto_11

    :cond_29
    const/16 v0, 0x8

    goto :goto_11
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/redexgen/X/1M;ZZ)V
    .registers 8

    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/1M;->A04(Z)I

    move-result v3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A06:Lcom/facebook/ads/redexgen/X/NY;

    const/16 v0, 0x4d

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/2d;->A01(II)I

    move-result v0

    const/16 v2, 0x6e

    invoke-virtual {v1, v0, v3, v2}, Lcom/facebook/ads/redexgen/X/NY;->A02(III)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    if-eqz p3, :cond_23

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A04:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/2d;->A01(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_22
.end method

.method public final A03()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A04:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final A04()Z
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A00:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_a

    const/4 v0, 0x4

    if-eq v1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getToolbarActionMode()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A00:I

    return v0
.end method

.method public setActionClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/ME;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setInitialUnskippableSeconds(I)V
    .registers 3

    if-lez p1, :cond_6

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ME;->setToolbarActionMode(I)V

    :cond_6
    return-void
.end method

.method public setProgress(F)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A06:Lcom/facebook/ads/redexgen/X/NY;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NY;->setProgressWithAnimation(F)V

    return-void
.end method

.method public setProgressClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A06:Lcom/facebook/ads/redexgen/X/NY;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NY;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setProgressImage(Lcom/facebook/ads/redexgen/X/Ld;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A06:Lcom/facebook/ads/redexgen/X/NY;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NY;->setImage(Lcom/facebook/ads/redexgen/X/Ld;)V

    return-void
.end method

.method public setProgressImmediate(F)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A06:Lcom/facebook/ads/redexgen/X/NY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->clearAnimation()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A06:Lcom/facebook/ads/redexgen/X/NY;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NY;->setProgress(F)V

    return-void
.end method

.method public setProgressSpinnerInvisible(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/ME;->A01:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ME;->A01()V

    return-void
.end method

.method public setToolbarActionMode(I)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A05:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0S;->ADA(I)V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/ME;->A00:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ME;->A01()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ME;->setVisibility(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_1f

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A02:Landroid/widget/ImageView;

    const/16 v0, 0xff

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_1f
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A02:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/ads/redexgen/X/ME;->A08:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    packed-switch p1, :pswitch_data_78

    :pswitch_29
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ld;->A0F:Lcom/facebook/ads/redexgen/X/Ld;

    :goto_2b
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A02:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Le;->A01(Lcom/facebook/ads/redexgen/X/Ld;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3f

    const/16 v1, 0x3ed

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A02:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0G(ILandroid/view/View;)V

    :goto_3e
    return-void

    :cond_3f
    const/16 v1, 0x3ea

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A02:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0G(ILandroid/view/View;)V

    goto :goto_3e

    :pswitch_47
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ld;->A0F:Lcom/facebook/ads/redexgen/X/Ld;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_54

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A02:Landroid/widget/ImageView;

    const/16 v0, 0x6e

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_54
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A02:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/ads/redexgen/X/ME;->A07:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_2b

    :pswitch_5c
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ld;->A0F:Lcom/facebook/ads/redexgen/X/Ld;

    goto :goto_2b

    :pswitch_5f
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ld;->A0F:Lcom/facebook/ads/redexgen/X/Ld;

    goto :goto_2b

    :pswitch_62
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ld;->A0F:Lcom/facebook/ads/redexgen/X/Ld;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A02:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ME;->setVisibility(I)V

    goto :goto_2b

    :pswitch_6f
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ld;->A0N:Lcom/facebook/ads/redexgen/X/Ld;

    goto :goto_2b

    :pswitch_72
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ld;->A0U:Lcom/facebook/ads/redexgen/X/Ld;

    goto :goto_2b

    :pswitch_75
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ld;->A0F:Lcom/facebook/ads/redexgen/X/Ld;

    goto :goto_2b

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_75
        :pswitch_72
        :pswitch_29
        :pswitch_6f
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_47
    .end packed-switch
.end method

.method public setToolbarMessage(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A04:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x8

    :goto_f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setToolbarMessageEnabled(Z)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A04:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_9
    const/4 v0, 0x4

    goto :goto_5
.end method
