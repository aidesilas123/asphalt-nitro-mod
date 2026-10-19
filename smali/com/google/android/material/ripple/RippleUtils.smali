###### Class com.google.android.material.ripple.RippleUtils (com.google.android.material.ripple.RippleUtils)
.class public Lcom/google/android/material/ripple/RippleUtils;
.super Ljava/lang/Object;
.source "RippleUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final a:Z

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I

.field private static final k:[I

.field static final l:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v0, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    sput-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->a:Z

    new-array v0, v1, [I

    const v3, 0x10100a7

    aput v3, v0, v2

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->b:[I

    const/4 v0, 0x2

    new-array v3, v0, [I

    fill-array-data v3, :array_66

    sput-object v3, Lcom/google/android/material/ripple/RippleUtils;->c:[I

    new-array v3, v1, [I

    const v4, 0x101009c

    aput v4, v3, v2

    sput-object v3, Lcom/google/android/material/ripple/RippleUtils;->d:[I

    new-array v3, v1, [I

    const v4, 0x1010367

    aput v4, v3, v2

    sput-object v3, Lcom/google/android/material/ripple/RippleUtils;->e:[I

    new-array v3, v0, [I

    fill-array-data v3, :array_6e

    sput-object v3, Lcom/google/android/material/ripple/RippleUtils;->f:[I

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_76

    sput-object v3, Lcom/google/android/material/ripple/RippleUtils;->g:[I

    new-array v3, v0, [I

    fill-array-data v3, :array_80

    sput-object v3, Lcom/google/android/material/ripple/RippleUtils;->h:[I

    new-array v3, v0, [I

    fill-array-data v3, :array_88

    sput-object v3, Lcom/google/android/material/ripple/RippleUtils;->i:[I

    new-array v1, v1, [I

    const v3, 0x10100a1

    aput v3, v1, v2

    sput-object v1, Lcom/google/android/material/ripple/RippleUtils;->j:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_90

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->k:[I

    const-class v0, Lcom/google/android/material/ripple/RippleUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->l:Ljava/lang/String;

    return-void

    :array_66
    .array-data 4
        0x1010367
        0x101009c
    .end array-data

    :array_6e
    .array-data 4
        0x10100a1
        0x10100a7
    .end array-data

    :array_76
    .array-data 4
        0x10100a1
        0x1010367
        0x101009c
    .end array-data

    :array_80
    .array-data 4
        0x10100a1
        0x101009c
    .end array-data

    :array_88
    .array-data 4
        0x10100a1
        0x1010367
    .end array-data

    :array_90
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .registers 3
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/res/ColorStateList;[I)I
    .registers 3
    .param p0    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    sget-boolean p1, Lcom/google/android/material/ripple/RippleUtils;->a:Z

    if-eqz p1, :cond_14

    invoke-static {p0}, Lcom/google/android/material/ripple/RippleUtils;->a(I)I

    move-result p0

    :cond_14
    return p0
.end method

.method public static convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .registers 7
    .param p0    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->a:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_29

    new-array v0, v1, [[I

    new-array v1, v1, [I

    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->j:[I

    aput-object v4, v0, v3

    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->f:[I

    invoke-static {p0, v4}, Lcom/google/android/material/ripple/RippleUtils;->b(Landroid/content/res/ColorStateList;[I)I

    move-result v4

    aput v4, v1, v3

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    aput-object v3, v0, v2

    sget-object v3, Lcom/google/android/material/ripple/RippleUtils;->b:[I

    invoke-static {p0, v3}, Lcom/google/android/material/ripple/RippleUtils;->b(Landroid/content/res/ColorStateList;[I)I

    move-result p0

    aput p0, v1, v2

    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0

    :cond_29
    const/16 v0, 0xa

    new-array v4, v0, [[I

    new-array v0, v0, [I

    sget-object v5, Lcom/google/android/material/ripple/RippleUtils;->f:[I

    aput-object v5, v4, v3

    invoke-static {p0, v5}, Lcom/google/android/material/ripple/RippleUtils;->b(Landroid/content/res/ColorStateList;[I)I

    move-result v5

    aput v5, v0, v3

    sget-object v5, Lcom/google/android/material/ripple/RippleUtils;->g:[I

    aput-object v5, v4, v2

    invoke-static {p0, v5}, Lcom/google/android/material/ripple/RippleUtils;->b(Landroid/content/res/ColorStateList;[I)I

    move-result v5

    aput v5, v0, v2

    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->h:[I

    aput-object v2, v4, v1

    invoke-static {p0, v2}, Lcom/google/android/material/ripple/RippleUtils;->b(Landroid/content/res/ColorStateList;[I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->i:[I

    aput-object v2, v4, v1

    invoke-static {p0, v2}, Lcom/google/android/material/ripple/RippleUtils;->b(Landroid/content/res/ColorStateList;[I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->j:[I

    aput-object v2, v4, v1

    aput v3, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->b:[I

    aput-object v2, v4, v1

    invoke-static {p0, v2}, Lcom/google/android/material/ripple/RippleUtils;->b(Landroid/content/res/ColorStateList;[I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->c:[I

    aput-object v2, v4, v1

    invoke-static {p0, v2}, Lcom/google/android/material/ripple/RippleUtils;->b(Landroid/content/res/ColorStateList;[I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->d:[I

    aput-object v2, v4, v1

    invoke-static {p0, v2}, Lcom/google/android/material/ripple/RippleUtils;->b(Landroid/content/res/ColorStateList;[I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->e:[I

    aput-object v2, v4, v1

    invoke-static {p0, v2}, Lcom/google/android/material/ripple/RippleUtils;->b(Landroid/content/res/ColorStateList;[I)I

    move-result p0

    aput p0, v0, v1

    const/16 p0, 0x9

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    aput-object v1, v4, p0

    aput v3, v0, p0

    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v4, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method public static sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .registers 4
    .param p0    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_2a

    const/16 v2, 0x1b

    if-gt v1, v2, :cond_2a

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_2a

    sget-object v1, Lcom/google/android/material/ripple/RippleUtils;->k:[I

    invoke-virtual {p0, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/google/android/material/ripple/RippleUtils;->l:Ljava/lang/String;

    const-string v1, "Use a non-transparent color for the default color as it will be used to finish ripple animations."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-object p0

    :cond_2b
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static shouldDrawRippleCompat([I)Z
    .registers 9
    .param p0    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_5
    const/4 v5, 0x1

    if-ge v2, v0, :cond_27

    aget v6, p0, v2

    const v7, 0x101009e

    if-ne v6, v7, :cond_11

    const/4 v3, 0x1

    goto :goto_24

    :cond_11
    const v7, 0x101009c

    if-ne v6, v7, :cond_18

    :goto_16
    const/4 v4, 0x1

    goto :goto_24

    :cond_18
    const v7, 0x10100a7

    if-ne v6, v7, :cond_1e

    goto :goto_16

    :cond_1e
    const v7, 0x1010367

    if-ne v6, v7, :cond_24

    goto :goto_16

    :cond_24
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_27
    if-eqz v3, :cond_2c

    if-eqz v4, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    return v1
.end method
