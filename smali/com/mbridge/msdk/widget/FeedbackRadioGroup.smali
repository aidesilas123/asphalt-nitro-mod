###### Class com.mbridge.msdk.widget.FeedbackRadioGroup (com.mbridge.msdk.widget.FeedbackRadioGroup)
.class public Lcom/mbridge/msdk/widget/FeedbackRadioGroup;
.super Landroid/widget/RadioGroup;
.source "FeedbackRadioGroup.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 14

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getPaddingTop()I

    move-result p5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_e
    if-ge v0, p1, :cond_71

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, p3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int v5, p4, p2

    if-le v4, v5, :cond_42

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getPaddingLeft()I

    move-result p3

    add-int/2addr p5, v1

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v4

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v4

    goto :goto_50

    :cond_42
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_50
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, p3

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, p5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v4, v2

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v2

    add-int/2addr p3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_71
    return-void
.end method

.method protected onMeasure(II)V
    .registers 20

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-virtual/range {p0 .. p2}, Landroid/widget/RadioGroup;->measureChildren(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1e
    if-ge v6, v5, :cond_91

    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    add-int v14, v10, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadioGroup;->getPaddingLeft()I

    move-result v15

    add-int/2addr v15, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadioGroup;->getPaddingRight()I

    move-result v16

    add-int v15, v15, v16

    if-le v15, v1, :cond_73

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v8, v9

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget v11, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v9, v11

    iget v11, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v9, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "maxHeight:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "---maxWidth:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "FeedbackRadioGroup"

    invoke-static {v12, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v10

    move v10, v13

    goto :goto_83

    :cond_73
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v11, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v11, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v11, v7

    move v10, v14

    :goto_83
    add-int/lit8 v12, v5, -0x1

    if-ne v6, v12, :cond_8d

    add-int/2addr v8, v9

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_8e

    :cond_8d
    move v7, v11

    :goto_8e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_91
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadioGroup;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadioGroup;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v7, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadioGroup;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadioGroup;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v8, v5

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_aa

    goto :goto_ab

    :cond_aa
    move v1, v7

    :goto_ab
    if-ne v4, v5, :cond_ae

    goto :goto_af

    :cond_ae
    move v3, v8

    :goto_af
    invoke-virtual {v0, v1, v3}, Landroid/widget/RadioGroup;->setMeasuredDimension(II)V

    return-void
.end method
