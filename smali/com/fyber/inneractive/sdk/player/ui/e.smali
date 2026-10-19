###### Class com.fyber.inneractive.sdk.player.ui.e (com.fyber.inneractive.sdk.player.ui.e)
.class public Lcom/fyber/inneractive/sdk/player/ui/e;
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
    .registers 15

    new-instance v6, Lcom/fyber/inneractive/sdk/util/l0;

    const/4 v0, 0x0

    invoke-direct {v6, v0, v0}, Lcom/fyber/inneractive/sdk/util/l0;-><init>(II)V

    sget-object v0, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->SQUARE:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    if-ne p1, v0, :cond_35

    iget p4, p4, Lcom/fyber/inneractive/sdk/util/l0;->a:I

    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-eqz p6, :cond_1e

    invoke-virtual {p6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iput v5, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iput v5, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1e
    if-eqz p7, :cond_2c

    invoke-virtual {p7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iput v5, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iput v5, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2c
    move-object v0, p1

    move-object v1, v6

    move v2, p2

    move v3, p3

    move v4, v5

    invoke-static/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/util/p0;->a(Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;Lcom/fyber/inneractive/sdk/util/l0;IIII)V

    goto :goto_52

    :cond_35
    iget v4, p4, Lcom/fyber/inneractive/sdk/util/l0;->a:I

    iget v5, p4, Lcom/fyber/inneractive/sdk/util/l0;->b:I

    move-object v0, p1

    move-object v1, v6

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/util/p0;->a(Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;Lcom/fyber/inneractive/sdk/util/l0;IIII)V

    if-eqz p7, :cond_52

    invoke-virtual {p7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, v6, Lcom/fyber/inneractive/sdk/util/l0;->a:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, v6, Lcom/fyber/inneractive/sdk/util/l0;->b:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_52
    :goto_52
    return-object v6
.end method

.method public a(Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;IIZLcom/fyber/inneractive/sdk/util/l0;IIII)Lcom/fyber/inneractive/sdk/util/l0;
    .registers 16

    sget-object p8, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->DEFAULT:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    if-ne p1, p8, :cond_f

    if-eqz p4, :cond_f

    move-object v0, p1

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p6

    move v5, p7

    invoke-static/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/util/p0;->a(Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;Lcom/fyber/inneractive/sdk/util/l0;IIII)V

    :cond_f
    const/4 p1, 0x0

    iput p1, p5, Lcom/fyber/inneractive/sdk/util/l0;->a:I

    iput p1, p5, Lcom/fyber/inneractive/sdk/util/l0;->b:I

    return-object p5
.end method
