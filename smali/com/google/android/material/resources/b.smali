###### Class com.google.android.material.resources.b (com.google.android.material.resources.b)
.class public Lcom/google/android/material/resources/b;
.super Ljava/lang/Object;
.source "TextAppearance.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:I

.field public final f:I

.field public final g:Z

.field public final h:F

.field public final i:F

.field public final j:F

.field public final k:Z

.field public final l:F

.field private m:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:F

.field private final o:I
    .annotation build Landroidx/annotation/FontRes;
    .end annotation
.end field

.field private p:Z

.field private q:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/resources/b;->p:Z

    sget-object v1, Lcom/google/android/material/R$styleable;->V4:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$styleable;->W4:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/resources/b;->l(F)V

    sget v2, Lcom/google/android/material/R$styleable;->Z4:I

    invoke-static {p1, v1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/resources/b;->k(Landroid/content/res/ColorStateList;)V

    sget v2, Lcom/google/android/material/R$styleable;->a5:I

    invoke-static {p1, v1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/resources/b;->a:Landroid/content/res/ColorStateList;

    sget v2, Lcom/google/android/material/R$styleable;->b5:I

    invoke-static {p1, v1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/resources/b;->b:Landroid/content/res/ColorStateList;

    sget v2, Lcom/google/android/material/R$styleable;->Y4:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/resources/b;->e:I

    sget v2, Lcom/google/android/material/R$styleable;->X4:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/resources/b;->f:I

    sget v2, Lcom/google/android/material/R$styleable;->h5:I

    sget v4, Lcom/google/android/material/R$styleable;->g5:I

    invoke-static {v1, v2, v4}, Lcom/google/android/material/resources/MaterialResources;->b(Landroid/content/res/TypedArray;II)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/resources/b;->o:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/resources/b;->d:Ljava/lang/String;

    sget v2, Lcom/google/android/material/R$styleable;->i5:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/material/resources/b;->g:Z

    sget v2, Lcom/google/android/material/R$styleable;->c5:I

    invoke-static {p1, v1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/resources/b;->c:Landroid/content/res/ColorStateList;

    sget v2, Lcom/google/android/material/R$styleable;->d5:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/resources/b;->h:F

    sget v2, Lcom/google/android/material/R$styleable;->e5:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/resources/b;->i:F

    sget v2, Lcom/google/android/material/R$styleable;->f5:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/resources/b;->j:F

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_9d

    sget-object v0, Lcom/google/android/material/R$styleable;->z3:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$styleable;->A3:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/resources/b;->k:Z

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/google/android/material/resources/b;->l:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_a1

    :cond_9d
    iput-boolean v0, p0, Lcom/google/android/material/resources/b;->k:Z

    iput v3, p0, Lcom/google/android/material/resources/b;->l:F

    :goto_a1
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/resources/b;)Landroid/graphics/Typeface;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/resources/b;->q:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/resources/b;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/resources/b;->q:Landroid/graphics/Typeface;

    return-object p1
.end method

.method static synthetic c(Lcom/google/android/material/resources/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/material/resources/b;->p:Z

    return p1
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/resources/b;->q:Landroid/graphics/Typeface;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/material/resources/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget v1, p0, Lcom/google/android/material/resources/b;->e:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/resources/b;->q:Landroid/graphics/Typeface;

    :cond_10
    iget-object v0, p0, Lcom/google/android/material/resources/b;->q:Landroid/graphics/Typeface;

    if-nez v0, :cond_3c

    iget v0, p0, Lcom/google/android/material/resources/b;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    const/4 v1, 0x3

    if-eq v0, v1, :cond_24

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/resources/b;->q:Landroid/graphics/Typeface;

    goto :goto_32

    :cond_24
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/resources/b;->q:Landroid/graphics/Typeface;

    goto :goto_32

    :cond_29
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/resources/b;->q:Landroid/graphics/Typeface;

    goto :goto_32

    :cond_2e
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/google/android/material/resources/b;->q:Landroid/graphics/Typeface;

    :goto_32
    iget-object v0, p0, Lcom/google/android/material/resources/b;->q:Landroid/graphics/Typeface;

    iget v1, p0, Lcom/google/android/material/resources/b;->e:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/resources/b;->q:Landroid/graphics/Typeface;

    :cond_3c
    return-void
.end method

.method private m(Landroid/content/Context;)Z
    .registers 4

    invoke-static {}, Lcom/google/android/material/resources/TextAppearanceConfig;->shouldLoadFontSynchronously()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget v0, p0, Lcom/google/android/material/resources/b;->o:I

    if-eqz v0, :cond_11

    invoke-static {p1, v0}, Landroidx/core/content/res/ResourcesCompat;->getCachedFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method


# virtual methods
.method public e()Landroid/graphics/Typeface;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/material/resources/b;->d()V

    iget-object v0, p0, Lcom/google/android/material/resources/b;->q:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public f(Landroid/content/Context;)Landroid/graphics/Typeface;
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/material/resources/b;->p:Z

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/google/android/material/resources/b;->q:Landroid/graphics/Typeface;

    return-object p1

    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_39

    :try_start_d
    iget v0, p0, Lcom/google/android/material/resources/b;->o:I

    invoke-static {p1, v0}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/resources/b;->q:Landroid/graphics/Typeface;

    if-eqz p1, :cond_39

    iget v0, p0, Lcom/google/android/material/resources/b;->e:I

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/resources/b;->q:Landroid/graphics/Typeface;
    :try_end_1f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d .. :try_end_1f} :catch_39
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_1f} :catch_39
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1f} :catch_20

    goto :goto_39

    :catch_20
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading font "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/material/resources/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextAppearance"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_39
    :cond_39
    :goto_39
    invoke-direct {p0}, Lcom/google/android/material/resources/b;->d()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/resources/b;->p:Z

    iget-object p1, p0, Lcom/google/android/material/resources/b;->q:Landroid/graphics/Typeface;

    return-object p1
.end method

.method public g(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/c;)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/resources/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/material/resources/b;->e()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/resources/b;->p(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    new-instance v0, Lcom/google/android/material/resources/b$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/resources/b$b;-><init>(Lcom/google/android/material/resources/b;Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/c;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/resources/b;->h(Landroid/content/Context;Lcom/google/android/material/resources/c;)V

    return-void
.end method

.method public h(Landroid/content/Context;Lcom/google/android/material/resources/c;)V
    .registers 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/resources/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/google/android/material/resources/b;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/google/android/material/resources/b;->f(Landroid/content/Context;)Landroid/graphics/Typeface;

    goto :goto_d

    :cond_a
    invoke-direct {p0}, Lcom/google/android/material/resources/b;->d()V

    :goto_d
    iget v0, p0, Lcom/google/android/material/resources/b;->o:I

    const/4 v1, 0x1

    if-nez v0, :cond_14

    iput-boolean v1, p0, Lcom/google/android/material/resources/b;->p:Z

    :cond_14
    iget-boolean v2, p0, Lcom/google/android/material/resources/b;->p:Z

    if-eqz v2, :cond_1e

    iget-object p1, p0, Lcom/google/android/material/resources/b;->q:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1, v1}, Lcom/google/android/material/resources/c;->b(Landroid/graphics/Typeface;Z)V

    return-void

    :cond_1e
    :try_start_1e
    new-instance v2, Lcom/google/android/material/resources/b$a;

    invoke-direct {v2, p0, p2}, Lcom/google/android/material/resources/b$a;-><init>(Lcom/google/android/material/resources/b;Lcom/google/android/material/resources/c;)V

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V
    :try_end_27
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_27} :catch_48
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_28

    goto :goto_4d

    :catch_28
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading font "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/material/resources/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TextAppearance"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v1, p0, Lcom/google/android/material/resources/b;->p:Z

    const/4 p1, -0x3

    invoke-virtual {p2, p1}, Lcom/google/android/material/resources/c;->a(I)V

    goto :goto_4d

    :catch_48
    iput-boolean v1, p0, Lcom/google/android/material/resources/b;->p:Z

    invoke-virtual {p2, v1}, Lcom/google/android/material/resources/c;->a(I)V

    :goto_4d
    return-void
.end method

.method public i()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/resources/b;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public j()F
    .registers 2

    iget v0, p0, Lcom/google/android/material/resources/b;->n:F

    return v0
.end method

.method public k(Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/resources/b;->m:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public l(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/resources/b;->n:F

    return-void
.end method

.method public n(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/c;)V
    .registers 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/resources/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/resources/b;->o(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/c;)V

    iget-object p1, p0, Lcom/google/android/material/resources/b;->m:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_12

    iget-object p3, p2, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    goto :goto_14

    :cond_12
    const/high16 p1, -0x1000000

    :goto_14
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setColor(I)V

    iget p1, p0, Lcom/google/android/material/resources/b;->j:F

    iget p3, p0, Lcom/google/android/material/resources/b;->h:F

    iget v0, p0, Lcom/google/android/material/resources/b;->i:F

    iget-object v1, p0, Lcom/google/android/material/resources/b;->c:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2c

    iget-object v2, p2, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public o(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/c;)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/resources/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/google/android/material/resources/b;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/google/android/material/resources/b;->f(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/resources/b;->p(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    goto :goto_11

    :cond_e
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/resources/b;->g(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/c;)V

    :goto_11
    return-void
.end method

.method public p(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p3}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_7

    move-object p3, p1

    :cond_7
    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget p1, p0, Lcom/google/android/material/resources/b;->e:I

    invoke-virtual {p3}, Landroid/graphics/Typeface;->getStyle()I

    move-result p3

    not-int p3, p3

    and-int/2addr p1, p3

    and-int/lit8 p3, p1, 0x1

    if-eqz p3, :cond_18

    const/4 p3, 0x1

    goto :goto_19

    :cond_18
    const/4 p3, 0x0

    :goto_19
    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_23

    const/high16 p1, -0x41800000    # -0.25f

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSkewX(F)V

    iget p1, p0, Lcom/google/android/material/resources/b;->n:F

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p1, p3, :cond_3b

    iget-boolean p1, p0, Lcom/google/android/material/resources/b;->k:Z

    if-eqz p1, :cond_3b

    iget p1, p0, Lcom/google/android/material/resources/b;->l:F

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_3b
    return-void
.end method
