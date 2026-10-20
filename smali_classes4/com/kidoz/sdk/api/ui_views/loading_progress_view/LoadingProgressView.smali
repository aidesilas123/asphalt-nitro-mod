###### Class com.kidoz.sdk.api.ui_views.loading_progress_view.LoadingProgressView (com.kidoz.sdk.api.ui_views.loading_progress_view.LoadingProgressView)
.class public Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;
.super Landroid/view/View;
.source "LoadingProgressView.java"


# static fields
.field private static final LINE_WIDTH:F = 0.037037037f


# instance fields
.field private mDrawable:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/Utils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    new-instance p2, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;

    const-string p3, "#f57900"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3d17b426

    mul-float p1, p1, v0

    invoke-direct {p2, p3, p1}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;-><init>(IF)V

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->mDrawable:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->mDrawable:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_a
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->mDrawable:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setCircleColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->mDrawable:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->setPaintColor(I)V

    return-void
.end method

.method public setCircleWidth(F)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->mDrawable:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->setStrokeWidth(F)V

    return-void
.end method

.method public setCircleWidthRelativeToSize(F)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->mDrawable:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;

    const v1, 0x3d17b426

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->setStrokeWidth(F)V

    return-void
.end method

.method public startLoadingAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->mDrawable:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->mDrawable:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->start()V

    :cond_11
    return-void
.end method

.method public stopLoadingAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->mDrawable:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->stop()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->mDrawable:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;

    if-eq p1, v0, :cond_d

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method
