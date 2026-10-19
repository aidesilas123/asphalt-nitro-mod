###### Class com.google.android.material.color.Hct (com.google.android.material.color.Hct)
.class final Lcom/google/android/material/color/Hct;
.super Ljava/lang/Object;
.source "Hct.java"


# instance fields
.field private a:F

.field private b:F

.field private c:F


# direct methods
.method private constructor <init>(FFF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/google/android/material/color/Hct;->b(FFF)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/color/Hct;->g(I)V

    return-void
.end method

.method private static a(FFF)Lcom/google/android/material/color/Cam16;
    .registers 15

    const/high16 v0, 0x447a0000    # 1000.0f

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    move-object v4, v3

    const/high16 v2, 0x447a0000    # 1000.0f

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    :goto_c
    sub-float v6, v5, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6d

    sub-float v6, v3, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    invoke-static {v6, p1, p0}, Lcom/google/android/material/color/Cam16;->c(FFF)Lcom/google/android/material/color/Cam16;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/material/color/Cam16;->i()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/material/color/ColorUtils;->lstarFromInt(I)F

    move-result v8

    sub-float v9, p2, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x3e4ccccd    # 0.2f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_59

    invoke-static {v7}, Lcom/google/android/material/color/Cam16;->fromInt(I)Lcom/google/android/material/color/Cam16;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/material/color/Cam16;->j()F

    move-result v10

    invoke-virtual {v7}, Lcom/google/android/material/color/Cam16;->g()F

    move-result v11

    invoke-static {v10, v11, p0}, Lcom/google/android/material/color/Cam16;->c(FFF)Lcom/google/android/material/color/Cam16;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/google/android/material/color/Cam16;->a(Lcom/google/android/material/color/Cam16;)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_59

    cmpg-float v11, v10, v0

    if-gtz v11, :cond_59

    move-object v4, v7

    move v2, v9

    move v0, v10

    :cond_59
    cmpl-float v7, v2, v1

    if-nez v7, :cond_65

    const v7, 0x3089705f    # 1.0E-9f

    cmpg-float v7, v0, v7

    if-gez v7, :cond_65

    goto :goto_6d

    :cond_65
    cmpg-float v7, v8, p2

    if-gez v7, :cond_6b

    move v5, v6

    goto :goto_c

    :cond_6b
    move v3, v6

    goto :goto_c

    :cond_6d
    :goto_6d
    return-object v4
.end method

.method private static b(FFF)I
    .registers 4

    sget-object v0, Lcom/google/android/material/color/f;->a:Lcom/google/android/material/color/f;

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/color/Hct;->c(FFFLcom/google/android/material/color/f;)I

    move-result p0

    return p0
.end method

.method static c(FFFLcom/google/android/material/color/f;)I
    .registers 10

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_5e

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_5e

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1e

    goto :goto_5e

    :cond_1e
    invoke-static {p0}, Lcom/google/android/material/color/MathUtils;->sanitizeDegrees(F)F

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v0, p1

    move-object v3, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_29
    sub-float v4, v1, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3ecccccd    # 0.4f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_52

    invoke-static {p0, v0, p2}, Lcom/google/android/material/color/Hct;->a(FFF)Lcom/google/android/material/color/Cam16;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v2, :cond_4b

    if-eqz v4, :cond_45

    invoke-virtual {v4, p3}, Lcom/google/android/material/color/Cam16;->l(Lcom/google/android/material/color/f;)I

    move-result p0

    return p0

    :cond_45
    const/4 v2, 0x0

    :goto_46
    sub-float v0, p1, v1

    div-float/2addr v0, v5

    add-float/2addr v0, v1

    goto :goto_29

    :cond_4b
    if-nez v4, :cond_4f

    move p1, v0

    goto :goto_46

    :cond_4f
    move v1, v0

    move-object v3, v4

    goto :goto_46

    :cond_52
    if-nez v3, :cond_59

    invoke-static {p2}, Lcom/google/android/material/color/ColorUtils;->intFromLstar(F)I

    move-result p0

    return p0

    :cond_59
    invoke-virtual {v3, p3}, Lcom/google/android/material/color/Cam16;->l(Lcom/google/android/material/color/f;)I

    move-result p0

    return p0

    :cond_5e
    :goto_5e
    invoke-static {p2}, Lcom/google/android/material/color/ColorUtils;->intFromLstar(F)I

    move-result p0

    return p0
.end method

.method public static from(FFF)Lcom/google/android/material/color/Hct;
    .registers 4

    new-instance v0, Lcom/google/android/material/color/Hct;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/color/Hct;-><init>(FFF)V

    return-object v0
.end method

.method public static fromInt(I)Lcom/google/android/material/color/Hct;
    .registers 4

    invoke-static {p0}, Lcom/google/android/material/color/Cam16;->fromInt(I)Lcom/google/android/material/color/Cam16;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/color/Hct;

    invoke-virtual {v0}, Lcom/google/android/material/color/Cam16;->h()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/material/color/Cam16;->g()F

    move-result v0

    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->lstarFromInt(I)F

    move-result p0

    invoke-direct {v1, v2, v0, p0}, Lcom/google/android/material/color/Hct;-><init>(FFF)V

    return-object v1
.end method

.method private g(I)V
    .registers 4

    invoke-static {p1}, Lcom/google/android/material/color/Cam16;->fromInt(I)Lcom/google/android/material/color/Cam16;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/material/color/ColorUtils;->lstarFromInt(I)F

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/material/color/Cam16;->h()F

    move-result v1

    iput v1, p0, Lcom/google/android/material/color/Hct;->a:F

    invoke-virtual {v0}, Lcom/google/android/material/color/Cam16;->g()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/color/Hct;->b:F

    iput p1, p0, Lcom/google/android/material/color/Hct;->c:F

    return-void
.end method


# virtual methods
.method public d()F
    .registers 2

    iget v0, p0, Lcom/google/android/material/color/Hct;->b:F

    return v0
.end method

.method public e()F
    .registers 2

    iget v0, p0, Lcom/google/android/material/color/Hct;->a:F

    return v0
.end method

.method public f()F
    .registers 2

    iget v0, p0, Lcom/google/android/material/color/Hct;->c:F

    return v0
.end method

.method public h(F)V
    .registers 4

    iget v0, p0, Lcom/google/android/material/color/Hct;->a:F

    iget v1, p0, Lcom/google/android/material/color/Hct;->b:F

    invoke-static {v0, v1, p1}, Lcom/google/android/material/color/Hct;->b(FFF)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/color/Hct;->g(I)V

    return-void
.end method

.method public i()I
    .registers 4

    iget v0, p0, Lcom/google/android/material/color/Hct;->a:F

    iget v1, p0, Lcom/google/android/material/color/Hct;->b:F

    iget v2, p0, Lcom/google/android/material/color/Hct;->c:F

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/Hct;->b(FFF)I

    move-result v0

    return v0
.end method
