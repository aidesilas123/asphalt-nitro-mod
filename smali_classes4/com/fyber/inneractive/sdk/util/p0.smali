###### Class com.fyber.inneractive.sdk.util.p0 (com.fyber.inneractive.sdk.util.p0)
.class public Lcom/fyber/inneractive/sdk/util/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;Lcom/fyber/inneractive/sdk/util/l0;IIII)V
    .registers 8

    if-lez p2, :cond_47

    if-lez p3, :cond_47

    int-to-float p2, p2

    int-to-float p3, p3

    div-float v0, p2, p3

    sget-object v1, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->SQUARE:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    if-ne p0, v1, :cond_11

    int-to-float p0, p5

    mul-float p0, p0, v0

    float-to-int p4, p0

    goto :goto_47

    :cond_11
    const p0, 0x3fe38e39

    sub-float p0, v0, p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float p0, p0, v1

    if-ltz p0, :cond_28

    const p0, 0x3faaaaab

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    :cond_28
    int-to-float p0, p4

    div-float/2addr p0, p2

    const/high16 p4, 0x41200000    # 10.0f

    invoke-static {p0, p4}, Ljava/lang/Math;->min(FF)F

    move-result p0

    int-to-float p5, p5

    mul-float v0, p0, p3

    cmpl-float v1, p5, v0

    if-lez v1, :cond_3c

    mul-float p0, p0, p2

    float-to-int p4, p0

    float-to-int p5, v0

    goto :goto_47

    :cond_3c
    div-float/2addr p5, p3

    invoke-static {p5, p4}, Ljava/lang/Math;->min(FF)F

    move-result p0

    mul-float p2, p2, p0

    float-to-int p4, p2

    mul-float p0, p0, p3

    float-to-int p5, p0

    :cond_47
    :goto_47
    iput p4, p1, Lcom/fyber/inneractive/sdk/util/l0;->a:I

    iput p5, p1, Lcom/fyber/inneractive/sdk/util/l0;->b:I

    return-void
.end method
