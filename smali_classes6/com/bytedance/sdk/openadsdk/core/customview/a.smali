###### Class com.bytedance.sdk.openadsdk.core.customview.a (com.bytedance.sdk.openadsdk.core.customview.a)
.class public Lcom/bytedance/sdk/openadsdk/core/customview/a;
.super Ljava/lang/Object;
.source "RTLUtil.java"


# direct methods
.method public static a(I)I
    .registers 4

    and-int/lit8 v0, p0, 0x3

    and-int/lit8 v1, p0, 0x5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_a

    const/4 v0, 0x5

    if-ne v1, v0, :cond_d

    :cond_a
    const/high16 v0, 0x800000

    or-int/2addr p0, v0

    :cond_d
    return p0
.end method

.method public static a(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v1, 0x11

    if-eqz v0, :cond_1a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1a

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_1a
    instance-of v0, p0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_29

    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/customview/a;->a(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_29
    instance-of v0, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_38

    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/customview/a;->a(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_38
    instance-of v0, p0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_82

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_82

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    const/16 v2, 0x9

    aget v2, v0, v2

    if-eqz v2, :cond_51

    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_51
    const/16 v2, 0xb

    aget v2, v0, v2

    if-eqz v2, :cond_5c

    const/16 v2, 0x15

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_5c
    const/4 v2, 0x0

    aget v2, v0, v2

    if-eqz v2, :cond_66

    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_66
    const/4 v2, 0x1

    aget v2, v0, v2

    if-eqz v2, :cond_6e

    invoke-virtual {p0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_6e
    const/4 v1, 0x5

    aget v1, v0, v1

    if-eqz v1, :cond_78

    const/16 v2, 0x12

    invoke-virtual {p0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_78
    const/4 v1, 0x7

    aget v0, v0, v1

    if-eqz v0, :cond_82

    const/16 v1, 0x13

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_82
    return-void
.end method
