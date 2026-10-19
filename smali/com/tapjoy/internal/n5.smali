###### Class com.tapjoy.internal.n5 (com.tapjoy.internal.n5)
.class public abstract Lcom/tapjoy/internal/n5;
.super Lcom/tapjoy/internal/e0;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Landroid/graphics/Matrix;

.field public final c:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/e0;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tapjoy/internal/n5;->a:I

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/n5;->b:Landroid/graphics/Matrix;

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/tapjoy/internal/n5;->c:[F

    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10

    iget v0, p0, Lcom/tapjoy/internal/n5;->a:I

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_b6

    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :try_start_18
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_51

    :try_start_1e
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    instance-of v4, v3, Landroid/widget/ScrollView;

    if-nez v4, :cond_2c

    instance-of v4, v3, Landroid/widget/HorizontalScrollView;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2a} :catch_2d

    if-eqz v4, :cond_2d

    :cond_2c
    move-object v2, v3

    :catch_2d
    :cond_2d
    :try_start_2d
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    rsub-int/lit8 v5, v3, 0x0

    rsub-int/lit8 v6, v4, 0x0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p1, v5, v6, v7, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_50} :catch_51

    goto :goto_52

    :catch_51
    nop

    :goto_52
    iget v2, p0, Lcom/tapjoy/internal/n5;->a:I

    mul-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    iget v2, p0, Lcom/tapjoy/internal/n5;->a:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_7a

    if-eq v2, v4, :cond_72

    if-ne v2, v3, :cond_6c

    neg-int v2, v1

    int-to-float v2, v2

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7f

    :cond_6c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_72
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v7, v1

    int-to-float v7, v7

    invoke-virtual {p1, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7f

    :cond_7a
    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_7f
    iget-object v2, p0, Lcom/tapjoy/internal/n5;->b:Landroid/graphics/Matrix;

    iget v7, p0, Lcom/tapjoy/internal/n5;->a:I

    mul-int/lit8 v7, v7, -0x5a

    int-to-float v7, v7

    invoke-virtual {v2, v7}, Landroid/graphics/Matrix;->setRotate(F)V

    iget v2, p0, Lcom/tapjoy/internal/n5;->a:I

    if-eq v2, v6, :cond_a9

    if-eq v2, v4, :cond_9f

    if-ne v2, v3, :cond_99

    iget-object v0, p0, Lcom/tapjoy/internal/n5;->b:Landroid/graphics/Matrix;

    sub-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_b0

    :cond_99
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_9f
    iget-object v2, p0, Lcom/tapjoy/internal/n5;->b:Landroid/graphics/Matrix;

    sub-int/2addr v0, v6

    int-to-float v0, v0

    sub-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_b0

    :cond_a9
    iget-object v1, p0, Lcom/tapjoy/internal/n5;->b:Landroid/graphics/Matrix;

    sub-int/2addr v0, v6

    int-to-float v0, v0

    invoke-virtual {v1, v5, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_b0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_b6
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    iget v0, p0, Lcom/tapjoy/internal/n5;->a:I

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    iget-object v0, p0, Lcom/tapjoy/internal/n5;->c:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/tapjoy/internal/n5;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v1, v0, v2

    aget v0, v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getRotationCount()I
    .registers 2

    iget v0, p0, Lcom/tapjoy/internal/n5;->a:I

    return v0
.end method

.method public onMeasure(II)V
    .registers 4

    iget v0, p0, Lcom/tapjoy/internal/n5;->a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    invoke-super {p0, p1, p2}, Lcom/tapjoy/internal/e0;->onMeasure(II)V

    goto :goto_18

    :cond_a
    invoke-super {p0, p2, p1}, Lcom/tapjoy/internal/e0;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_18
    return-void
.end method

.method public setRotationCount(I)V
    .registers 2

    and-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/tapjoy/internal/n5;->a:I

    return-void
.end method
