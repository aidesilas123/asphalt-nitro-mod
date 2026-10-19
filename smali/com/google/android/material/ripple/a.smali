###### Class com.google.android.material.ripple.a (com.google.android.material.ripple.a)
.class public Lcom/google/android/material/ripple/a;
.super Landroid/graphics/drawable/Drawable;
.source "RippleDrawableCompat.java"

# interfaces
.implements Lcom/google/android/material/shape/l;
.implements Landroidx/core/graphics/drawable/TintAwareDrawable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/ripple/a$b;
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/material/ripple/a$b;


# direct methods
.method private constructor <init>(Lcom/google/android/material/ripple/a$b;)V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/ripple/a;->a:Lcom/google/android/material/ripple/a$b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/ripple/a$b;Lcom/google/android/material/ripple/a$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/material/ripple/a;-><init>(Lcom/google/android/material/ripple/a$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 4

    new-instance v0, Lcom/google/android/material/ripple/a$b;

    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    invoke-direct {v0, v1}, Lcom/google/android/material/ripple/a$b;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/ripple/a;-><init>(Lcom/google/android/material/ripple/a$b;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/material/ripple/a;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/ripple/a$b;

    iget-object v1, p0, Lcom/google/android/material/ripple/a;->a:Lcom/google/android/material/ripple/a$b;

    invoke-direct {v0, v1}, Lcom/google/android/material/ripple/a$b;-><init>(Lcom/google/android/material/ripple/a$b;)V

    iput-object v0, p0, Lcom/google/android/material/ripple/a;->a:Lcom/google/android/material/ripple/a$b;

    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/material/ripple/a;->a:Lcom/google/android/material/ripple/a$b;

    iget-boolean v1, v0, Lcom/google/android/material/ripple/a$b;->b:Z

    if-eqz v1, :cond_b

    iget-object v0, v0, Lcom/google/android/material/ripple/a$b;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/ripple/a;->a:Lcom/google/android/material/ripple/a$b;

    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/ripple/a;->a:Lcom/google/android/material/ripple/a$b;

    iget-object v0, v0, Lcom/google/android/material/ripple/a$b;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mutate()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/material/ripple/a;->a()Lcom/google/android/material/ripple/a;

    move-result-object v0

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/material/ripple/a;->a:Lcom/google/android/material/ripple/a$b;

    iget-object v0, v0, Lcom/google/android/material/ripple/a$b;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .registers 6
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/ripple/a;->a:Lcom/google/android/material/ripple/a$b;

    iget-object v1, v1, Lcom/google/android/material/ripple/a$b;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->shouldDrawRippleCompat([I)Z

    move-result p1

    iget-object v1, p0, Lcom/google/android/material/ripple/a;->a:Lcom/google/android/material/ripple/a$b;

    iget-boolean v3, v1, Lcom/google/android/material/ripple/a$b;->b:Z

    if-eq v3, p1, :cond_1d

    iput-boolean p1, v1, Lcom/google/android/material/ripple/a$b;->b:Z

    goto :goto_1e

    :cond_1d
    move v2, v0

    :goto_1e
    return v2
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/ripple/a;->a:Lcom/google/android/material/ripple/a$b;

    iget-object v0, v0, Lcom/google/android/material/ripple/a$b;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/ripple/a;->a:Lcom/google/android/material/ripple/a$b;

    iget-object v0, v0, Lcom/google/android/material/ripple/a$b;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 3
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/ripple/a;->a:Lcom/google/android/material/ripple/a$b;

    iget-object v0, v0, Lcom/google/android/material/ripple/a$b;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public setTint(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/ripple/a;->a:Lcom/google/android/material/ripple/a$b;

    iget-object v0, v0, Lcom/google/android/material/ripple/a$b;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/ripple/a;->a:Lcom/google/android/material/ripple/a$b;

    iget-object v0, v0, Lcom/google/android/material/ripple/a$b;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/ripple/a;->a:Lcom/google/android/material/ripple/a$b;

    iget-object v0, v0, Lcom/google/android/material/ripple/a$b;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

###### Class com.google.android.material.ripple.a.C0235a (com.google.android.material.ripple.a$a)
.class synthetic Lcom/google/android/material/ripple/a$a;
.super Ljava/lang/Object;
.source "RippleDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/ripple/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.material.ripple.a.b (com.google.android.material.ripple.a$b)
.class final Lcom/google/android/material/ripple/a$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "RippleDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/ripple/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:Lcom/google/android/material/shape/MaterialShapeDrawable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/ripple/a$b;)V
    .registers 3
    .param p1    # Lcom/google/android/material/ripple/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iget-object v0, p1, Lcom/google/android/material/ripple/a$b;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iput-object v0, p0, Lcom/google/android/material/ripple/a$b;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-boolean p1, p1, Lcom/google/android/material/ripple/a$b;->b:Z

    iput-boolean p1, p0, Lcom/google/android/material/ripple/a$b;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/MaterialShapeDrawable;)V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/ripple/a$b;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/ripple/a$b;->b:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/material/ripple/a;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/material/ripple/a;

    new-instance v1, Lcom/google/android/material/ripple/a$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/ripple/a$b;-><init>(Lcom/google/android/material/ripple/a$b;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/ripple/a;-><init>(Lcom/google/android/material/ripple/a$b;Lcom/google/android/material/ripple/a$a;)V

    return-object v0
.end method

.method public getChangingConfigurations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/material/ripple/a$b;->a()Lcom/google/android/material/ripple/a;

    move-result-object v0

    return-object v0
.end method
