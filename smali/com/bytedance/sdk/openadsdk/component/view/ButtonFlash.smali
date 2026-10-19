###### Class com.bytedance.sdk.openadsdk.component.view.ButtonFlash (com.bytedance.sdk.openadsdk.component.view.ButtonFlash)
.class public Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;
.super Landroid/widget/TextView;
.source "ButtonFlash.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/LinearGradient;

.field private e:Landroid/graphics/RectF;

.field private f:Landroid/graphics/Matrix;

.field private g:Landroid/animation/ValueAnimator;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->h:Z

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->b()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->a:I

    return p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;)Landroid/graphics/Matrix;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->f:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private b()V
    .registers 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->e:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->c:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->c()V

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->b:I

    return p0
.end method

.method private c()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_2e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->g:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->g:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->h:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->g:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->g:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2c
    return-void

    nop

    :array_2e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;)Landroid/graphics/LinearGradient;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->d:Landroid/graphics/LinearGradient;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->g:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_f
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->f:Landroid/graphics/Matrix;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->c:Landroid/graphics/Paint;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_10
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 13

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->a:I

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->b:I

    new-instance p1, Landroid/graphics/LinearGradient;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->a:I

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float v3, p2, p3

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->b:I

    int-to-float v4, p2

    const/4 p2, 0x3

    new-array v5, p2, [I

    fill-array-data v5, :array_5e

    new-array v6, p2, [F

    fill-array-data v6, :array_68

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->d:Landroid/graphics/LinearGradient;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->c:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->c:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->f:Landroid/graphics/Matrix;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->a:I

    neg-int p2, p2

    int-to-float p2, p2

    iget p3, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->b:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->d:Landroid/graphics/LinearGradient;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->f:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->e:Landroid/graphics/RectF;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->a:I

    int-to-float p2, p2

    iget p3, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->b:I

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    :array_5e
    .array-data 4
        0xffffff
        0x50ffffff
        0xffffff
    .end array-data

    :array_68
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public setAutoRun(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->h:Z

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.component.view.ButtonFlash.AnonymousClass1 (com.bytedance.sdk.openadsdk.component.view.ButtonFlash$1)
.class Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash$1;
.super Ljava/lang/Object;
.source "ButtonFlash.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash$1;->a:Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash$1;->a:Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->a(Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float v0, v0, p1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash$1;->a:Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->a(Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash$1;->a:Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->b(Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;)Landroid/graphics/Matrix;

    move-result-object p1

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash$1;->a:Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->b(Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash$1;->a:Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->c(Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :cond_35
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash$1;->a:Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->d(Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;)Landroid/graphics/LinearGradient;

    move-result-object p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash$1;->a:Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->d(Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;)Landroid/graphics/LinearGradient;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash$1;->a:Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;->b(Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_4c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash$1;->a:Lcom/bytedance/sdk/openadsdk/component/view/ButtonFlash;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
