###### Class com.applovin.impl.adview.j (com.applovin.impl.adview.j)
.class public abstract Lcom/applovin/impl/adview/j;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/adview/j$a;
    }
.end annotation


# instance fields
.field protected final E:Landroid/content/Context;

.field protected ahA:F


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/applovin/impl/adview/j;->ahA:F

    iput-object p1, p0, Lcom/applovin/impl/adview/j;->E:Landroid/content/Context;

    return-void
.end method

.method public static a(Lcom/applovin/impl/adview/j$a;Landroid/content/Context;)Lcom/applovin/impl/adview/j;
    .registers 3

    sget-object v0, Lcom/applovin/impl/adview/j$a;->ahD:Lcom/applovin/impl/adview/j$a;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p0, Lcom/applovin/impl/adview/r;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/r;-><init>(Landroid/content/Context;)V

    goto :goto_2f

    :cond_e
    sget-object v0, Lcom/applovin/impl/adview/j$a;->ahC:Lcom/applovin/impl/adview/j$a;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance p0, Lcom/applovin/impl/adview/s;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/s;-><init>(Landroid/content/Context;)V

    goto :goto_2f

    :cond_1c
    sget-object v0, Lcom/applovin/impl/adview/j$a;->ahE:Lcom/applovin/impl/adview/j$a;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    new-instance p0, Lcom/applovin/impl/adview/t;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/t;-><init>(Landroid/content/Context;)V

    goto :goto_2f

    :cond_2a
    new-instance p0, Lcom/applovin/impl/adview/z;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/z;-><init>(Landroid/content/Context;)V

    :goto_2f
    return-object p0
.end method


# virtual methods
.method public fZ(I)V
    .registers 3

    int-to-float p1, p1

    const/high16 v0, 0x41f00000    # 30.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/j;->setViewScale(F)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lcom/applovin/impl/adview/j;->getSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/applovin/impl/adview/j;->getSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1b
    return-void
.end method

.method public getSize()F
    .registers 3

    iget v0, p0, Lcom/applovin/impl/adview/j;->ahA:F

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float v0, v0, v1

    return v0
.end method

.method public abstract getStyle()Lcom/applovin/impl/adview/j$a;
.end method

.method public setViewScale(F)V
    .registers 2

    iput p1, p0, Lcom/applovin/impl/adview/j;->ahA:F

    return-void
.end method
