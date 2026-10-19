###### Class com.google.android.material.internal.b (com.google.android.material.internal.b)
.class public final Lcom/google/android/material/internal/b;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final a:Z

.field private static final b:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private A:Landroid/graphics/Typeface;

.field private B:Landroid/graphics/Typeface;

.field private C:Landroid/graphics/Typeface;

.field private D:Landroid/graphics/Typeface;

.field private E:Landroid/graphics/Typeface;

.field private F:Landroid/graphics/Typeface;

.field private G:Lcom/google/android/material/resources/a;

.field private H:Lcom/google/android/material/resources/a;

.field private I:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private J:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private O:Landroid/graphics/Paint;

.field private P:F

.field private Q:F

.field private R:F

.field private S:F

.field private T:F

.field private U:I

.field private V:[I

.field private W:Z

.field private final X:Landroid/text/TextPaint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final Y:Landroid/text/TextPaint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private Z:Landroid/animation/TimeInterpolator;

.field private a0:Landroid/animation/TimeInterpolator;

.field private b0:F

.field private final c:Landroid/view/View;

.field private c0:F

.field private d:Z

.field private d0:F

.field private e:F

.field private e0:Landroid/content/res/ColorStateList;

.field private f:Z

.field private f0:F

.field private g:F

.field private g0:F

.field private h:F

.field private h0:F

.field private i:I

.field private i0:Landroid/content/res/ColorStateList;

.field private final j:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private j0:F

.field private final k:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private k0:F

.field private final l:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private l0:F

.field private m:I

.field private m0:Landroid/text/StaticLayout;

.field private n:I

.field private n0:F

.field private o:F

.field private o0:F

.field private p:F

.field private p0:F

.field private q:Landroid/content/res/ColorStateList;

.field private q0:Ljava/lang/CharSequence;

.field private r:Landroid/content/res/ColorStateList;

.field private r0:I

.field private s:I

.field private s0:F

.field private t:F

.field private t0:F

.field private u:F

.field private u0:I

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-ge v0, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    sput-boolean v0, Lcom/google/android/material/internal/b;->a:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/material/internal/b;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1a
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/android/material/internal/b;->m:I

    iput v0, p0, Lcom/google/android/material/internal/b;->n:I

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/google/android/material/internal/b;->o:F

    iput v0, p0, Lcom/google/android/material/internal/b;->p:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/internal/b;->L:Z

    iput v0, p0, Lcom/google/android/material/internal/b;->r0:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/internal/b;->s0:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/material/internal/b;->t0:F

    sget v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->a:I

    iput v0, p0, Lcom/google/android/material/internal/b;->u0:I

    iput-object p1, p0, Lcom/google/android/material/internal/b;->c:Landroid/view/View;

    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/google/android/material/internal/b;->Y:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/b;->j:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/b;->l:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/google/android/material/internal/b;->e()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/b;->h:F

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/b;->H(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private A(Landroid/text/TextPaint;)V
    .registers 4
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/google/android/material/internal/b;->o:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/google/android/material/internal/b;->C:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    iget v0, p0, Lcom/google/android/material/internal/b;->k0:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_15
    return-void
.end method

.method private B(F)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/material/internal/b;->f:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/material/internal/b;->l:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/internal/b;->h:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_f

    iget-object p1, p0, Lcom/google/android/material/internal/b;->j:Landroid/graphics/Rect;

    goto :goto_11

    :cond_f
    iget-object p1, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    :goto_11
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_5f

    :cond_15
    iget-object v0, p0, Lcom/google/android/material/internal/b;->l:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/b;->j:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/b;->Z:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/b;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/google/android/material/internal/b;->l:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/internal/b;->t:F

    iget v2, p0, Lcom/google/android/material/internal/b;->u:F

    iget-object v3, p0, Lcom/google/android/material/internal/b;->Z:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/b;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/google/android/material/internal/b;->l:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/b;->j:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/b;->Z:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/b;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/google/android/material/internal/b;->l:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/b;->j:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/b;->Z:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/b;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    :goto_5f
    return-void
.end method

.method private static C(FF)Z
    .registers 2

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3727c5ac    # 1.0E-5f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private D()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/internal/b;->c:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private F(Ljava/lang/CharSequence;Z)Z
    .registers 5
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_5

    sget-object p2, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    goto :goto_7

    :cond_5
    sget-object p2, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    :goto_7
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p1

    return p1
.end method

.method private static G(FFFLandroid/animation/TimeInterpolator;)F
    .registers 4
    .param p3    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_6

    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    :cond_6
    invoke-static {p0, p1, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method private I(Landroid/text/TextPaint;Ljava/lang/CharSequence;)F
    .registers 5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    return p1
.end method

.method private static M(Landroid/graphics/Rect;IIII)Z
    .registers 6
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_12

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_12

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_12

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private Q(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/internal/b;->o0:F

    iget-object p1, p0, Lcom/google/android/material/internal/b;->c:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private U(Landroid/graphics/Typeface;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/internal/b;->H:Lcom/google/android/material/resources/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/material/resources/a;->c()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/material/internal/b;->B:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_29

    iput-object p1, p0, Lcom/google/android/material/internal/b;->B:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/google/android/material/internal/b;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/b;->A:Landroid/graphics/Typeface;

    if-nez p1, :cond_25

    iget-object p1, p0, Lcom/google/android/material/internal/b;->B:Landroid/graphics/Typeface;

    :cond_25
    iput-object p1, p0, Lcom/google/android/material/internal/b;->z:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    return p1

    :cond_29
    const/4 p1, 0x0

    return p1
.end method

.method private Y(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/internal/b;->p0:F

    iget-object p1, p0, Lcom/google/android/material/internal/b;->c:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private static a(IIF)I
    .registers 8
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private b(Z)V
    .registers 11

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/internal/b;->i(FZ)V

    iget-object v0, p0, Lcom/google/android/material/internal/b;->J:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/google/android/material/internal/b;->m0:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1c

    iget-object v2, p0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v1, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/b;->q0:Ljava/lang/CharSequence;

    :cond_1c
    iget-object v0, p0, Lcom/google/android/material/internal/b;->q0:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    iget-object v2, p0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    invoke-direct {p0, v2, v0}, Lcom/google/android/material/internal/b;->I(Landroid/text/TextPaint;Ljava/lang/CharSequence;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/b;->n0:F

    goto :goto_2c

    :cond_2a
    iput v1, p0, Lcom/google/android/material/internal/b;->n0:F

    :goto_2c
    iget v0, p0, Lcom/google/android/material/internal/b;->n:I

    iget-boolean v2, p0, Lcom/google/android/material/internal/b;->K:Z

    invoke-static {v0, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v2, v0, 0x70

    const/16 v3, 0x50

    const/16 v4, 0x30

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_68

    if-eq v2, v3, :cond_59

    iget-object v2, p0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    iget-object v6, p0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v2, v6

    div-float/2addr v2, v5

    iget-object v6, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    iput v6, p0, Lcom/google/android/material/internal/b;->u:F

    goto :goto_6f

    :cond_59
    iget-object v2, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v6, p0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    add-float/2addr v2, v6

    iput v2, p0, Lcom/google/android/material/internal/b;->u:F

    goto :goto_6f

    :cond_68
    iget-object v2, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, p0, Lcom/google/android/material/internal/b;->u:F

    :goto_6f
    const v2, 0x800007

    and-int/2addr v0, v2

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-eq v0, v7, :cond_8c

    if-eq v0, v6, :cond_81

    iget-object v0, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/internal/b;->w:F

    goto :goto_99

    :cond_81
    iget-object v0, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v8, p0, Lcom/google/android/material/internal/b;->n0:F

    sub-float/2addr v0, v8

    iput v0, p0, Lcom/google/android/material/internal/b;->w:F

    goto :goto_99

    :cond_8c
    iget-object v0, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget v8, p0, Lcom/google/android/material/internal/b;->n0:F

    div-float/2addr v8, v5

    sub-float/2addr v0, v8

    iput v0, p0, Lcom/google/android/material/internal/b;->w:F

    :goto_99
    invoke-direct {p0, v1, p1}, Lcom/google/android/material/internal/b;->i(FZ)V

    iget-object p1, p0, Lcom/google/android/material/internal/b;->m0:Landroid/text/StaticLayout;

    if-eqz p1, :cond_a6

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    goto :goto_a7

    :cond_a6
    const/4 p1, 0x0

    :goto_a7
    iget-object v0, p0, Lcom/google/android/material/internal/b;->m0:Landroid/text/StaticLayout;

    if-eqz v0, :cond_b5

    iget v8, p0, Lcom/google/android/material/internal/b;->r0:I

    if-le v8, v7, :cond_b5

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    int-to-float v1, v0

    goto :goto_bf

    :cond_b5
    iget-object v0, p0, Lcom/google/android/material/internal/b;->J:Ljava/lang/CharSequence;

    if-eqz v0, :cond_bf

    iget-object v1, p0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v0}, Lcom/google/android/material/internal/b;->I(Landroid/text/TextPaint;Ljava/lang/CharSequence;)F

    move-result v1

    :cond_bf
    :goto_bf
    iget-object v0, p0, Lcom/google/android/material/internal/b;->m0:Landroid/text/StaticLayout;

    if-eqz v0, :cond_c8

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    goto :goto_c9

    :cond_c8
    const/4 v0, 0x0

    :goto_c9
    iput v0, p0, Lcom/google/android/material/internal/b;->s:I

    iget v0, p0, Lcom/google/android/material/internal/b;->m:I

    iget-boolean v8, p0, Lcom/google/android/material/internal/b;->K:Z

    invoke-static {v0, v8}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v8, v0, 0x70

    if-eq v8, v4, :cond_f5

    if-eq v8, v3, :cond_e5

    div-float/2addr p1, v5

    iget-object v3, p0, Lcom/google/android/material/internal/b;->j:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p1

    iput v3, p0, Lcom/google/android/material/internal/b;->t:F

    goto :goto_fc

    :cond_e5
    iget-object v3, p0, Lcom/google/android/material/internal/b;->j:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    iget-object p1, p0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->descent()F

    move-result p1

    add-float/2addr v3, p1

    iput v3, p0, Lcom/google/android/material/internal/b;->t:F

    goto :goto_fc

    :cond_f5
    iget-object p1, p0, Lcom/google/android/material/internal/b;->j:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/internal/b;->t:F

    :goto_fc
    and-int p1, v0, v2

    if-eq p1, v7, :cond_113

    if-eq p1, v6, :cond_10a

    iget-object p1, p0, Lcom/google/android/material/internal/b;->j:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/internal/b;->v:F

    goto :goto_11e

    :cond_10a
    iget-object p1, p0, Lcom/google/android/material/internal/b;->j:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/google/android/material/internal/b;->v:F

    goto :goto_11e

    :cond_113
    iget-object p1, p0, Lcom/google/android/material/internal/b;->j:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, v5

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/google/android/material/internal/b;->v:F

    :goto_11e
    invoke-direct {p0}, Lcom/google/android/material/internal/b;->j()V

    iget p1, p0, Lcom/google/android/material/internal/b;->e:F

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/b;->e0(F)V

    return-void
.end method

.method private c()V
    .registers 2

    iget v0, p0, Lcom/google/android/material/internal/b;->e:F

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/b;->g(F)V

    return-void
.end method

.method private c0(Landroid/graphics/Typeface;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/internal/b;->G:Lcom/google/android/material/resources/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/material/resources/a;->c()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/material/internal/b;->E:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_29

    iput-object p1, p0, Lcom/google/android/material/internal/b;->E:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/google/android/material/internal/b;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/b;->D:Landroid/graphics/Typeface;

    if-nez p1, :cond_25

    iget-object p1, p0, Lcom/google/android/material/internal/b;->E:Landroid/graphics/Typeface;

    :cond_25
    iput-object p1, p0, Lcom/google/android/material/internal/b;->C:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    return p1

    :cond_29
    const/4 p1, 0x0

    return p1
.end method

.method private d(F)F
    .registers 6
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget v0, p0, Lcom/google/android/material/internal/b;->h:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v0

    if-gtz v3, :cond_10

    iget v3, p0, Lcom/google/android/material/internal/b;->g:F

    invoke-static {v2, v1, v3, v0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p1

    return p1

    :cond_10
    invoke-static {v1, v2, v0, v2, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p1

    return p1
.end method

.method private e()F
    .registers 4

    iget v0, p0, Lcom/google/android/material/internal/b;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private e0(F)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/b;->h(F)V

    sget-boolean p1, Lcom/google/android/material/internal/b;->a:Z

    if-eqz p1, :cond_11

    iget p1, p0, Lcom/google/android/material/internal/b;->P:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iput-boolean p1, p0, Lcom/google/android/material/internal/b;->M:Z

    if-eqz p1, :cond_19

    invoke-direct {p0}, Lcom/google/android/material/internal/b;->n()V

    :cond_19
    iget-object p1, p0, Lcom/google/android/material/internal/b;->c:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private f(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/material/internal/b;->D()Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/material/internal/b;->L:Z

    if-eqz v1, :cond_c

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/b;->F(Ljava/lang/CharSequence;Z)Z

    move-result v0

    :cond_c
    return v0
.end method

.method private g(F)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/b;->B(F)V

    iget-boolean v0, p0, Lcom/google/android/material/internal/b;->f:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_34

    iget v0, p0, Lcom/google/android/material/internal/b;->h:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1d

    iget v0, p0, Lcom/google/android/material/internal/b;->v:F

    iput v0, p0, Lcom/google/android/material/internal/b;->x:F

    iget v0, p0, Lcom/google/android/material/internal/b;->t:F

    iput v0, p0, Lcom/google/android/material/internal/b;->y:F

    invoke-direct {p0, v1}, Lcom/google/android/material/internal/b;->e0(F)V

    const/4 v0, 0x0

    goto :goto_50

    :cond_1d
    iget v0, p0, Lcom/google/android/material/internal/b;->w:F

    iput v0, p0, Lcom/google/android/material/internal/b;->x:F

    iget v0, p0, Lcom/google/android/material/internal/b;->u:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/material/internal/b;->i:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/google/android/material/internal/b;->y:F

    invoke-direct {p0, v2}, Lcom/google/android/material/internal/b;->e0(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_50

    :cond_34
    iget v0, p0, Lcom/google/android/material/internal/b;->v:F

    iget v3, p0, Lcom/google/android/material/internal/b;->w:F

    iget-object v4, p0, Lcom/google/android/material/internal/b;->Z:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v3, p1, v4}, Lcom/google/android/material/internal/b;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/b;->x:F

    iget v0, p0, Lcom/google/android/material/internal/b;->t:F

    iget v3, p0, Lcom/google/android/material/internal/b;->u:F

    iget-object v4, p0, Lcom/google/android/material/internal/b;->Z:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v3, p1, v4}, Lcom/google/android/material/internal/b;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/b;->y:F

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/b;->e0(F)V

    move v0, p1

    :goto_50
    sub-float v3, v2, p1

    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->b:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/material/internal/b;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    sub-float v3, v2, v3

    invoke-direct {p0, v3}, Lcom/google/android/material/internal/b;->Q(F)V

    invoke-static {v2, v1, p1, v4}, Lcom/google/android/material/internal/b;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/internal/b;->Y(F)V

    iget-object v1, p0, Lcom/google/android/material/internal/b;->r:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/google/android/material/internal/b;->q:Landroid/content/res/ColorStateList;

    if-eq v1, v2, :cond_7c

    iget-object v1, p0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/google/android/material/internal/b;->v()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->t()I

    move-result v3

    invoke-static {v2, v3, v0}, Lcom/google/android/material/internal/b;->a(IIF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_85

    :cond_7c
    iget-object v0, p0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    :goto_85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a2

    iget v0, p0, Lcom/google/android/material/internal/b;->j0:F

    iget v1, p0, Lcom/google/android/material/internal/b;->k0:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_9d

    iget-object v2, p0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    invoke-static {v1, v0, p1, v4}, Lcom/google/android/material/internal/b;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    goto :goto_a2

    :cond_9d
    iget-object v1, p0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_a2
    :goto_a2
    iget v0, p0, Lcom/google/android/material/internal/b;->f0:F

    iget v1, p0, Lcom/google/android/material/internal/b;->b0:F

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/b;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/b;->R:F

    iget v0, p0, Lcom/google/android/material/internal/b;->g0:F

    iget v1, p0, Lcom/google/android/material/internal/b;->c0:F

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/b;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/b;->S:F

    iget v0, p0, Lcom/google/android/material/internal/b;->h0:F

    iget v1, p0, Lcom/google/android/material/internal/b;->d0:F

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/b;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/b;->T:F

    iget-object v0, p0, Lcom/google/android/material/internal/b;->i0:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/b;->u(Landroid/content/res/ColorStateList;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/b;->e0:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/internal/b;->u(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/google/android/material/internal/b;->a(IIF)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/b;->U:I

    iget-object v1, p0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    iget v2, p0, Lcom/google/android/material/internal/b;->R:F

    iget v3, p0, Lcom/google/android/material/internal/b;->S:F

    iget v4, p0, Lcom/google/android/material/internal/b;->T:F

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-boolean v0, p0, Lcom/google/android/material/internal/b;->f:Z

    if-eqz v0, :cond_f5

    iget-object v0, p0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/b;->d(F)F

    move-result p1

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAlpha(I)V

    :cond_f5
    iget-object p1, p0, Lcom/google/android/material/internal/b;->c:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private h(F)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/b;->i(FZ)V

    return-void
.end method

.method private i(FZ)V
    .registers 15

    iget-object v0, p0, Lcom/google/android/material/internal/b;->I:Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/material/internal/b;->j:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v2}, Lcom/google/android/material/internal/b;->C(FF)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_30

    iget p1, p0, Lcom/google/android/material/internal/b;->p:F

    iget p2, p0, Lcom/google/android/material/internal/b;->j0:F

    iput v2, p0, Lcom/google/android/material/internal/b;->P:F

    iget-object v1, p0, Lcom/google/android/material/internal/b;->F:Landroid/graphics/Typeface;

    iget-object v3, p0, Lcom/google/android/material/internal/b;->z:Landroid/graphics/Typeface;

    if-eq v1, v3, :cond_2e

    iput-object v3, p0, Lcom/google/android/material/internal/b;->F:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    goto :goto_70

    :cond_2e
    const/4 v1, 0x0

    goto :goto_70

    :cond_30
    iget v3, p0, Lcom/google/android/material/internal/b;->o:F

    iget v7, p0, Lcom/google/android/material/internal/b;->k0:F

    iget-object v8, p0, Lcom/google/android/material/internal/b;->F:Landroid/graphics/Typeface;

    iget-object v9, p0, Lcom/google/android/material/internal/b;->C:Landroid/graphics/Typeface;

    if-eq v8, v9, :cond_3e

    iput-object v9, p0, Lcom/google/android/material/internal/b;->F:Landroid/graphics/Typeface;

    const/4 v8, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v8, 0x0

    :goto_3f
    invoke-static {p1, v4}, Lcom/google/android/material/internal/b;->C(FF)Z

    move-result v9

    if-eqz v9, :cond_48

    iput v2, p0, Lcom/google/android/material/internal/b;->P:F

    goto :goto_57

    :cond_48
    iget v9, p0, Lcom/google/android/material/internal/b;->o:F

    iget v10, p0, Lcom/google/android/material/internal/b;->p:F

    iget-object v11, p0, Lcom/google/android/material/internal/b;->a0:Landroid/animation/TimeInterpolator;

    invoke-static {v9, v10, p1, v11}, Lcom/google/android/material/internal/b;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result p1

    iget v9, p0, Lcom/google/android/material/internal/b;->o:F

    div-float/2addr p1, v9

    iput p1, p0, Lcom/google/android/material/internal/b;->P:F

    :goto_57
    iget p1, p0, Lcom/google/android/material/internal/b;->p:F

    iget v9, p0, Lcom/google/android/material/internal/b;->o:F

    div-float/2addr p1, v9

    mul-float v9, v1, p1

    if-eqz p2, :cond_65

    :cond_60
    move v0, v1

    :goto_61
    move p1, v3

    move p2, v7

    move v1, v8

    goto :goto_70

    :cond_65
    cmpl-float p2, v9, v0

    if-lez p2, :cond_60

    div-float/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    move v0, p1

    goto :goto_61

    :goto_70
    cmpl-float v3, v0, v4

    if-lez v3, :cond_9a

    iget v3, p0, Lcom/google/android/material/internal/b;->Q:F

    cmpl-float v3, v3, p1

    if-eqz v3, :cond_7c

    const/4 v3, 0x1

    goto :goto_7d

    :cond_7c
    const/4 v3, 0x0

    :goto_7d
    iget v4, p0, Lcom/google/android/material/internal/b;->l0:F

    cmpl-float v4, v4, p2

    if-eqz v4, :cond_85

    const/4 v4, 0x1

    goto :goto_86

    :cond_85
    const/4 v4, 0x0

    :goto_86
    if-nez v3, :cond_93

    if-nez v4, :cond_93

    iget-boolean v3, p0, Lcom/google/android/material/internal/b;->W:Z

    if-nez v3, :cond_93

    if-eqz v1, :cond_91

    goto :goto_93

    :cond_91
    const/4 v1, 0x0

    goto :goto_94

    :cond_93
    :goto_93
    const/4 v1, 0x1

    :goto_94
    iput p1, p0, Lcom/google/android/material/internal/b;->Q:F

    iput p2, p0, Lcom/google/android/material/internal/b;->l0:F

    iput-boolean v5, p0, Lcom/google/android/material/internal/b;->W:Z

    :cond_9a
    iget-object p1, p0, Lcom/google/android/material/internal/b;->J:Ljava/lang/CharSequence;

    if-eqz p1, :cond_a0

    if-eqz v1, :cond_e5

    :cond_a0
    iget-object p1, p0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    iget p2, p0, Lcom/google/android/material/internal/b;->Q:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    iget-object p2, p0, Lcom/google/android/material/internal/b;->F:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_bb

    iget-object p1, p0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    iget p2, p0, Lcom/google/android/material/internal/b;->l0:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_bb
    iget-object p1, p0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    iget p2, p0, Lcom/google/android/material/internal/b;->P:F

    cmpl-float p2, p2, v2

    if-eqz p2, :cond_c4

    const/4 v5, 0x1

    :cond_c4
    invoke-virtual {p1, v5}, Landroid/text/TextPaint;->setLinearText(Z)V

    iget-object p1, p0, Lcom/google/android/material/internal/b;->I:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/b;->f(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/internal/b;->K:Z

    invoke-direct {p0}, Lcom/google/android/material/internal/b;->k0()Z

    move-result p1

    if-eqz p1, :cond_d7

    iget v6, p0, Lcom/google/android/material/internal/b;->r0:I

    :cond_d7
    iget-boolean p1, p0, Lcom/google/android/material/internal/b;->K:Z

    invoke-direct {p0, v6, v0, p1}, Lcom/google/android/material/internal/b;->k(IFZ)Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/b;->m0:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/b;->J:Ljava/lang/CharSequence;

    :cond_e5
    return-void
.end method

.method private j()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/internal/b;->N:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/b;->N:Landroid/graphics/Bitmap;

    :cond_a
    return-void
.end method

.method private k(IFZ)Landroid/text/StaticLayout;
    .registers 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    :try_start_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_a

    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/internal/b;->y()Landroid/text/Layout$Alignment;

    move-result-object v0

    :goto_a
    iget-object v1, p0, Lcom/google/android/material/internal/b;->I:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    float-to-int p2, p2

    invoke-static {v1, v2, p2}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p2

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v1}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->d(Landroid/text/TextUtils$TruncateAt;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->g(Z)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->c(Landroid/text/Layout$Alignment;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->f(Z)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->i(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p1

    iget p2, p0, Lcom/google/android/material/internal/b;->s0:F

    iget p3, p0, Lcom/google/android/material/internal/b;->t0:F

    invoke-virtual {p1, p2, p3}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->h(FF)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p1

    iget p2, p0, Lcom/google/android/material/internal/b;->u0:I

    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->e(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->a()Landroid/text/StaticLayout;

    move-result-object p1
    :try_end_3c
    .catch Lcom/google/android/material/internal/StaticLayoutBuilderCompat$a; {:try_start_3 .. :try_end_3c} :catch_3d

    goto :goto_4c

    :catch_3d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CollapsingTextHelper"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_4c
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/StaticLayout;

    return-object p1
.end method

.method private k0()Z
    .registers 3

    iget v0, p0, Lcom/google/android/material/internal/b;->r0:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_12

    iget-boolean v0, p0, Lcom/google/android/material/internal/b;->K:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/material/internal/b;->f:Z

    if-eqz v0, :cond_12

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/material/internal/b;->M:Z

    if-nez v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private m(Landroid/graphics/Canvas;FF)V
    .registers 18
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v1

    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    iget v3, v0, Lcom/google/android/material/internal/b;->p0:F

    int-to-float v4, v1

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_30

    iget-object v5, v0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    iget v6, v0, Lcom/google/android/material/internal/b;->R:F

    iget v7, v0, Lcom/google/android/material/internal/b;->S:F

    iget v8, v0, Lcom/google/android/material/internal/b;->T:F

    iget v9, v0, Lcom/google/android/material/internal/b;->U:I

    invoke-virtual {v5}, Landroid/text/TextPaint;->getAlpha()I

    move-result v10

    invoke-static {v9, v10}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_30
    iget-object v5, v0, Lcom/google/android/material/internal/b;->m0:Landroid/text/StaticLayout;

    move-object v13, p1

    invoke-virtual {v5, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v5, v0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    iget v6, v0, Lcom/google/android/material/internal/b;->o0:F

    mul-float v6, v6, v4

    float-to-int v4, v6

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    if-lt v2, v3, :cond_57

    iget-object v4, v0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    iget v5, v0, Lcom/google/android/material/internal/b;->R:F

    iget v6, v0, Lcom/google/android/material/internal/b;->S:F

    iget v7, v0, Lcom/google/android/material/internal/b;->T:F

    iget v8, v0, Lcom/google/android/material/internal/b;->U:I

    invoke-virtual {v4}, Landroid/text/TextPaint;->getAlpha()I

    move-result v9

    invoke-static {v8, v9}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_57
    iget-object v4, v0, Lcom/google/android/material/internal/b;->m0:Landroid/text/StaticLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    move-result v4

    iget-object v7, v0, Lcom/google/android/material/internal/b;->q0:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, 0x0

    int-to-float v4, v4

    iget-object v12, v0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    move-object v6, p1

    move v11, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    if-lt v2, v3, :cond_7d

    iget-object v2, v0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    iget v3, v0, Lcom/google/android/material/internal/b;->R:F

    iget v6, v0, Lcom/google/android/material/internal/b;->S:F

    iget v7, v0, Lcom/google/android/material/internal/b;->T:F

    iget v8, v0, Lcom/google/android/material/internal/b;->U:I

    invoke-virtual {v2, v3, v6, v7, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_7d
    iget-boolean v2, v0, Lcom/google/android/material/internal/b;->f:Z

    if-nez v2, :cond_ba

    iget-object v2, v0, Lcom/google/android/material/internal/b;->q0:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u2026"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_9d
    move-object v7, v2

    iget-object v2, v0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    const/4 v8, 0x0

    iget-object v1, v0, Lcom/google/android/material/internal/b;->m0:Landroid/text/StaticLayout;

    invoke-virtual {v1, v5}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x0

    iget-object v12, v0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    move-object v6, p1

    move v11, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    :cond_ba
    return-void
.end method

.method private n()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/material/internal/b;->N:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/material/internal/b;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/material/internal/b;->J:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_4a

    :cond_15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/b;->g(F)V

    iget-object v0, p0, Lcom/google/android/material/internal/b;->m0:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/b;->m0:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    if-lez v0, :cond_4a

    if-gtz v1, :cond_2a

    goto :goto_4a

    :cond_2a
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/b;->N:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/material/internal/b;->N:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/android/material/internal/b;->m0:Landroid/text/StaticLayout;

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/material/internal/b;->O:Landroid/graphics/Paint;

    if-nez v0, :cond_4a

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/b;->O:Landroid/graphics/Paint;

    :cond_4a
    :goto_4a
    return-void
.end method

.method private r(II)F
    .registers 5

    const/16 v0, 0x11

    if-eq p2, v0, :cond_3c

    and-int/lit8 v0, p2, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_3c

    :cond_a
    const p1, 0x800005

    and-int v0, p2, p1

    if-eq v0, p1, :cond_29

    const/4 p1, 0x5

    and-int/2addr p2, p1

    if-ne p2, p1, :cond_16

    goto :goto_29

    :cond_16
    iget-boolean p1, p0, Lcom/google/android/material/internal/b;->K:Z

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget p2, p0, Lcom/google/android/material/internal/b;->n0:F

    sub-float/2addr p1, p2

    goto :goto_28

    :cond_23
    iget-object p1, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    :goto_28
    return p1

    :cond_29
    :goto_29
    iget-boolean p1, p0, Lcom/google/android/material/internal/b;->K:Z

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    goto :goto_3b

    :cond_33
    iget-object p1, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget p2, p0, Lcom/google/android/material/internal/b;->n0:F

    sub-float/2addr p1, p2

    :goto_3b
    return p1

    :cond_3c
    :goto_3c
    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget v0, p0, Lcom/google/android/material/internal/b;->n0:F

    div-float/2addr v0, p2

    sub-float/2addr p1, v0

    return p1
.end method

.method private s(Landroid/graphics/RectF;II)F
    .registers 6
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x11

    if-eq p3, v0, :cond_36

    and-int/lit8 v0, p3, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_36

    :cond_a
    const p2, 0x800005

    and-int v0, p3, p2

    if-eq v0, p2, :cond_26

    const/4 p2, 0x5

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_16

    goto :goto_26

    :cond_16
    iget-boolean p2, p0, Lcom/google/android/material/internal/b;->K:Z

    if-eqz p2, :cond_20

    iget-object p1, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    goto :goto_25

    :cond_20
    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget p2, p0, Lcom/google/android/material/internal/b;->n0:F

    add-float/2addr p1, p2

    :goto_25
    return p1

    :cond_26
    :goto_26
    iget-boolean p2, p0, Lcom/google/android/material/internal/b;->K:Z

    if-eqz p2, :cond_30

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget p2, p0, Lcom/google/android/material/internal/b;->n0:F

    add-float/2addr p1, p2

    goto :goto_35

    :cond_30
    iget-object p1, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    :goto_35
    return p1

    :cond_36
    :goto_36
    int-to-float p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget p3, p0, Lcom/google/android/material/internal/b;->n0:F

    div-float/2addr p3, p2

    add-float/2addr p1, p3

    return p1
.end method

.method private u(Landroid/content/res/ColorStateList;)I
    .registers 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/google/android/material/internal/b;->V:[I

    if-eqz v1, :cond_d

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1

    :cond_d
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    return p1
.end method

.method private v()I
    .registers 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/internal/b;->q:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/b;->u(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method private y()Landroid/text/Layout$Alignment;
    .registers 3

    iget v0, p0, Lcom/google/android/material/internal/b;->m:I

    iget-boolean v1, p0, Lcom/google/android/material/internal/b;->K:Z

    invoke-static {v0, v1}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/material/internal/b;->K:Z

    if-eqz v0, :cond_17

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_19

    :cond_17
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_19
    return-object v0

    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/material/internal/b;->K:Z

    if-eqz v0, :cond_21

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_23

    :cond_21
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_23
    return-object v0

    :cond_24
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method private z(Landroid/text/TextPaint;)V
    .registers 4
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/google/android/material/internal/b;->p:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/google/android/material/internal/b;->z:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    iget v0, p0, Lcom/google/android/material/internal/b;->j0:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_15
    return-void
.end method


# virtual methods
.method public final E()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/internal/b;->r:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_a
    iget-object v0, p0, Lcom/google/android/material/internal/b;->q:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public H(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_30

    iget-object v0, p0, Lcom/google/android/material/internal/b;->B:Landroid/graphics/Typeface;

    if-eqz v0, :cond_10

    invoke-static {p1, v0}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/b;->A:Landroid/graphics/Typeface;

    :cond_10
    iget-object v0, p0, Lcom/google/android/material/internal/b;->E:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1a

    invoke-static {p1, v0}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/b;->D:Landroid/graphics/Typeface;

    :cond_1a
    iget-object p1, p0, Lcom/google/android/material/internal/b;->A:Landroid/graphics/Typeface;

    if-eqz p1, :cond_1f

    goto :goto_21

    :cond_1f
    iget-object p1, p0, Lcom/google/android/material/internal/b;->B:Landroid/graphics/Typeface;

    :goto_21
    iput-object p1, p0, Lcom/google/android/material/internal/b;->z:Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/google/android/material/internal/b;->D:Landroid/graphics/Typeface;

    if-eqz p1, :cond_28

    goto :goto_2a

    :cond_28
    iget-object p1, p0, Lcom/google/android/material/internal/b;->E:Landroid/graphics/Typeface;

    :goto_2a
    iput-object p1, p0, Lcom/google/android/material/internal/b;->C:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/b;->L(Z)V

    :cond_30
    return-void
.end method

.method J()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/material/internal/b;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/material/internal/b;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    iput-boolean v0, p0, Lcom/google/android/material/internal/b;->d:Z

    return-void
.end method

.method public K()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/b;->L(Z)V

    return-void
.end method

.method public L(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/internal/b;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/material/internal/b;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_12

    :cond_10
    if-eqz p1, :cond_18

    :cond_12
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/b;->b(Z)V

    invoke-direct {p0}, Lcom/google/android/material/internal/b;->c()V

    :cond_18
    return-void
.end method

.method public N(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/b;->M(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/internal/b;->W:Z

    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->J()V

    :cond_13
    return-void
.end method

.method public O(Landroid/graphics/Rect;)V
    .registers 5
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/material/internal/b;->N(IIII)V

    return-void
.end method

.method public P(I)V
    .registers 5

    new-instance v0, Lcom/google/android/material/resources/b;

    iget-object v1, p0, Lcom/google/android/material/internal/b;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/google/android/material/resources/b;->i()Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {v0}, Lcom/google/android/material/resources/b;->i()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/b;->r:Landroid/content/res/ColorStateList;

    :cond_17
    invoke-virtual {v0}, Lcom/google/android/material/resources/b;->j()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_26

    invoke-virtual {v0}, Lcom/google/android/material/resources/b;->j()F

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/b;->p:F

    :cond_26
    iget-object p1, v0, Lcom/google/android/material/resources/b;->c:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2c

    iput-object p1, p0, Lcom/google/android/material/internal/b;->e0:Landroid/content/res/ColorStateList;

    :cond_2c
    iget p1, v0, Lcom/google/android/material/resources/b;->h:F

    iput p1, p0, Lcom/google/android/material/internal/b;->c0:F

    iget p1, v0, Lcom/google/android/material/resources/b;->i:F

    iput p1, p0, Lcom/google/android/material/internal/b;->d0:F

    iget p1, v0, Lcom/google/android/material/resources/b;->j:F

    iput p1, p0, Lcom/google/android/material/internal/b;->b0:F

    iget p1, v0, Lcom/google/android/material/resources/b;->l:F

    iput p1, p0, Lcom/google/android/material/internal/b;->j0:F

    iget-object p1, p0, Lcom/google/android/material/internal/b;->H:Lcom/google/android/material/resources/a;

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Lcom/google/android/material/resources/a;->c()V

    :cond_43
    new-instance p1, Lcom/google/android/material/resources/a;

    new-instance v1, Lcom/google/android/material/internal/b$a;

    invoke-direct {v1, p0}, Lcom/google/android/material/internal/b$a;-><init>(Lcom/google/android/material/internal/b;)V

    invoke-virtual {v0}, Lcom/google/android/material/resources/b;->e()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/android/material/resources/a;-><init>(Lcom/google/android/material/resources/a$a;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/google/android/material/internal/b;->H:Lcom/google/android/material/resources/a;

    iget-object p1, p0, Lcom/google/android/material/internal/b;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/material/internal/b;->H:Lcom/google/android/material/resources/a;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/resources/b;->h(Landroid/content/Context;Lcom/google/android/material/resources/c;)V

    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->K()V

    return-void
.end method

.method public R(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/internal/b;->r:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_9

    iput-object p1, p0, Lcom/google/android/material/internal/b;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->K()V

    :cond_9
    return-void
.end method

.method public S(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/material/internal/b;->n:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/google/android/material/internal/b;->n:I

    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->K()V

    :cond_9
    return-void
.end method

.method public T(Landroid/graphics/Typeface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/b;->U(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->K()V

    :cond_9
    return-void
.end method

.method public V(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/material/internal/b;->j:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/b;->M(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/material/internal/b;->j:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/internal/b;->W:Z

    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->J()V

    :cond_13
    return-void
.end method

.method public W(Landroid/graphics/Rect;)V
    .registers 5
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/material/internal/b;->V(IIII)V

    return-void
.end method

.method public X(F)V
    .registers 3

    iget v0, p0, Lcom/google/android/material/internal/b;->k0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/google/android/material/internal/b;->k0:F

    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->K()V

    :cond_b
    return-void
.end method

.method public Z(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/internal/b;->q:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_9

    iput-object p1, p0, Lcom/google/android/material/internal/b;->q:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->K()V

    :cond_9
    return-void
.end method

.method public a0(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/material/internal/b;->m:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/google/android/material/internal/b;->m:I

    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->K()V

    :cond_9
    return-void
.end method

.method public b0(F)V
    .registers 3

    iget v0, p0, Lcom/google/android/material/internal/b;->o:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/google/android/material/internal/b;->o:F

    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->K()V

    :cond_b
    return-void
.end method

.method public d0(F)V
    .registers 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iget v0, p0, Lcom/google/android/material/internal/b;->e:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_12

    iput p1, p0, Lcom/google/android/material/internal/b;->e:F

    invoke-direct {p0}, Lcom/google/android/material/internal/b;->c()V

    :cond_12
    return-void
.end method

.method public f0(Landroid/animation/TimeInterpolator;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/internal/b;->Z:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->K()V

    return-void
.end method

.method public final g0([I)Z
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/internal/b;->V:[I

    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->E()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->K()V

    const/4 p1, 0x1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public h0(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/google/android/material/internal/b;->I:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_a
    iput-object p1, p0, Lcom/google/android/material/internal/b;->I:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/internal/b;->J:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/google/android/material/internal/b;->j()V

    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->K()V

    :cond_15
    return-void
.end method

.method public i0(Landroid/animation/TimeInterpolator;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/internal/b;->a0:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->K()V

    return-void
.end method

.method public j0(Landroid/graphics/Typeface;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/b;->U(Landroid/graphics/Typeface;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/b;->c0(Landroid/graphics/Typeface;)Z

    move-result p1

    if-nez v0, :cond_c

    if-eqz p1, :cond_f

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->K()V

    :cond_f
    return-void
.end method

.method public l(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/b;->J:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6a

    iget-boolean v1, p0, Lcom/google/android/material/internal/b;->d:Z

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/google/android/material/internal/b;->X:Landroid/text/TextPaint;

    iget v2, p0, Lcom/google/android/material/internal/b;->Q:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v1, p0, Lcom/google/android/material/internal/b;->x:F

    iget v2, p0, Lcom/google/android/material/internal/b;->y:F

    iget-boolean v3, p0, Lcom/google/android/material/internal/b;->M:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/google/android/material/internal/b;->N:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_22

    const/4 v3, 0x1

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    :goto_23
    iget v5, p0, Lcom/google/android/material/internal/b;->P:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_32

    iget-boolean v6, p0, Lcom/google/android/material/internal/b;->f:Z

    if-nez v6, :cond_32

    invoke-virtual {p1, v5, v5, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_32
    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/google/android/material/internal/b;->N:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/google/android/material/internal/b;->O:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_3f
    invoke-direct {p0}, Lcom/google/android/material/internal/b;->k0()Z

    move-result v3

    if-eqz v3, :cond_5f

    iget-boolean v3, p0, Lcom/google/android/material/internal/b;->f:Z

    if-eqz v3, :cond_51

    iget v3, p0, Lcom/google/android/material/internal/b;->e:F

    iget v5, p0, Lcom/google/android/material/internal/b;->h:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_5f

    :cond_51
    iget v1, p0, Lcom/google/android/material/internal/b;->x:F

    iget-object v3, p0, Lcom/google/android/material/internal/b;->m0:Landroid/text/StaticLayout;

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/material/internal/b;->m(Landroid/graphics/Canvas;FF)V

    goto :goto_67

    :cond_5f
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/google/android/material/internal/b;->m0:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_67
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_6a
    return-void
.end method

.method public o(Landroid/graphics/RectF;II)V
    .registers 5
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/internal/b;->I:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/b;->f(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/internal/b;->K:Z

    invoke-direct {p0, p2, p3}, Lcom/google/android/material/internal/b;->r(II)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/b;->s(Landroid/graphics/RectF;II)F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/google/android/material/internal/b;->k:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/google/android/material/internal/b;->q()F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public p()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/internal/b;->r:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public q()F
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/internal/b;->Y:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/b;->z(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/google/android/material/internal/b;->Y:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public t()I
    .registers 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/internal/b;->r:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/b;->u(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method public w()F
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/internal/b;->Y:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/b;->A(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/google/android/material/internal/b;->Y:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public x()F
    .registers 2

    iget v0, p0, Lcom/google/android/material/internal/b;->e:F

    return v0
.end method

###### Class com.google.android.material.internal.b.a (com.google.android.material.internal.b$a)
.class Lcom/google/android/material/internal/b$a;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"

# interfaces
.implements Lcom/google/android/material/resources/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/b;->P(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/b;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/internal/b$a;->a:Lcom/google/android/material/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Typeface;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/internal/b$a;->a:Lcom/google/android/material/internal/b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/b;->T(Landroid/graphics/Typeface;)V

    return-void
.end method
