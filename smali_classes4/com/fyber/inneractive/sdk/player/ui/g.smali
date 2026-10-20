###### Class com.fyber.inneractive.sdk.player.ui.g (com.fyber.inneractive.sdk.player.ui.g)
.class public Lcom/fyber/inneractive/sdk/player/ui/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/ui/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;IILcom/fyber/inneractive/sdk/util/l0;ILandroid/view/ViewGroup;Landroid/widget/ImageView;)Lcom/fyber/inneractive/sdk/util/l0;
    .registers 14

    new-instance p5, Lcom/fyber/inneractive/sdk/util/l0;

    const/4 p6, 0x0

    invoke-direct {p5, p6, p6}, Lcom/fyber/inneractive/sdk/util/l0;-><init>(II)V

    sget-object p6, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->SQUARE:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    if-ne p1, p6, :cond_27

    if-eqz p7, :cond_1c

    invoke-virtual {p7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p6

    iget v0, p4, Lcom/fyber/inneractive/sdk/util/l0;->a:I

    iput v0, p6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p6

    iget p7, p4, Lcom/fyber/inneractive/sdk/util/l0;->a:I

    iput p7, p6, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1c
    iget v5, p4, Lcom/fyber/inneractive/sdk/util/l0;->a:I

    move-object v0, p1

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, v5

    invoke-static/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/util/p0;->a(Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;Lcom/fyber/inneractive/sdk/util/l0;IIII)V

    goto :goto_44

    :cond_27
    iget v4, p4, Lcom/fyber/inneractive/sdk/util/l0;->a:I

    iget v5, p4, Lcom/fyber/inneractive/sdk/util/l0;->b:I

    move-object v0, p1

    move-object v1, p5

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/util/p0;->a(Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;Lcom/fyber/inneractive/sdk/util/l0;IIII)V

    if-eqz p7, :cond_44

    invoke-virtual {p7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, p5, Lcom/fyber/inneractive/sdk/util/l0;->a:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, p5, Lcom/fyber/inneractive/sdk/util/l0;->b:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_44
    :goto_44
    return-object p5
.end method

.method public a(Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;IIZLcom/fyber/inneractive/sdk/util/l0;IIII)Lcom/fyber/inneractive/sdk/util/l0;
    .registers 16

    if-nez p5, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    sget-object v0, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->SQUARE:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    if-ne p1, v0, :cond_18

    invoke-static {p6, p8}, Ljava/lang/Math;->min(II)I

    move-result p1

    mul-int/lit8 p9, p9, 0x2

    invoke-static {p9}, Lcom/fyber/inneractive/sdk/util/l;->b(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p5, Lcom/fyber/inneractive/sdk/util/l0;->a:I

    iput p1, p5, Lcom/fyber/inneractive/sdk/util/l0;->b:I

    goto :goto_5a

    :cond_18
    sget-object v0, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->LANDSCAPE:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    if-ne p1, v0, :cond_30

    invoke-static {p6, p8}, Ljava/lang/Math;->min(II)I

    move-result p1

    mul-int/lit8 p9, p9, 0x2

    invoke-static {p9}, Lcom/fyber/inneractive/sdk/util/l;->b(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p5, Lcom/fyber/inneractive/sdk/util/l0;->a:I

    mul-int/lit8 p1, p1, 0x9

    div-int/lit8 p1, p1, 0x10

    iput p1, p5, Lcom/fyber/inneractive/sdk/util/l0;->b:I

    goto :goto_5a

    :cond_30
    sget-object p8, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->MRECT:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    if-ne p1, p8, :cond_45

    const/16 p1, 0x12c

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/util/l;->b(I)I

    move-result p1

    iput p1, p5, Lcom/fyber/inneractive/sdk/util/l0;->a:I

    const/16 p1, 0xfa

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/util/l;->b(I)I

    move-result p1

    iput p1, p5, Lcom/fyber/inneractive/sdk/util/l0;->b:I

    goto :goto_5a

    :cond_45
    sget-object p8, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->DEFAULT:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    if-ne p1, p8, :cond_55

    if-eqz p4, :cond_55

    move-object v0, p1

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p6

    move v5, p7

    invoke-static/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/util/p0;->a(Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;Lcom/fyber/inneractive/sdk/util/l0;IIII)V

    goto :goto_5a

    :cond_55
    const/4 p1, 0x0

    iput p1, p5, Lcom/fyber/inneractive/sdk/util/l0;->a:I

    iput p1, p5, Lcom/fyber/inneractive/sdk/util/l0;->b:I

    :goto_5a
    return-object p5
.end method
