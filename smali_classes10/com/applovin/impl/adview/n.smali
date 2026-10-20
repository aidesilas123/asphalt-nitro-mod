###### Class com.applovin.impl.adview.n (com.applovin.impl.adview.n)
.class public Lcom/applovin/impl/adview/n;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private ahQ:Lcom/applovin/impl/adview/j;

.field private ahS:I


# direct methods
.method public constructor <init>(Lcom/applovin/impl/adview/j$a;Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    invoke-static {p1, p2}, Lcom/applovin/impl/adview/j;->a(Lcom/applovin/impl/adview/j$a;Landroid/content/Context;)Lcom/applovin/impl/adview/j;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/adview/n;->ahQ:Lcom/applovin/impl/adview/j;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/applovin/impl/adview/j$a;)V
    .registers 4

    if-eqz p1, :cond_2f

    iget-object v0, p0, Lcom/applovin/impl/adview/n;->ahQ:Lcom/applovin/impl/adview/j;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/j;->getStyle()Lcom/applovin/impl/adview/j$a;

    move-result-object v0

    if-ne p1, v0, :cond_b

    goto :goto_2f

    :cond_b
    iget-object v0, p0, Lcom/applovin/impl/adview/n;->ahQ:Lcom/applovin/impl/adview/j;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/n;->ahQ:Lcom/applovin/impl/adview/j;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/applovin/impl/adview/j;->a(Lcom/applovin/impl/adview/j$a;Landroid/content/Context;)Lcom/applovin/impl/adview/j;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/adview/n;->ahQ:Lcom/applovin/impl/adview/j;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/n;->ahQ:Lcom/applovin/impl/adview/j;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/n;->ahQ:Lcom/applovin/impl/adview/j;

    iget v0, p0, Lcom/applovin/impl/adview/n;->ahS:I

    invoke-virtual {p1, v0}, Lcom/applovin/impl/adview/j;->fZ(I)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public d(IIII)V
    .registers 6

    iput p1, p0, Lcom/applovin/impl/adview/n;->ahS:I

    add-int/2addr p2, p1

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_f

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_17

    :cond_f
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_17
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p1, p1, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p3, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p3, p0, Lcom/applovin/impl/adview/n;->ahQ:Lcom/applovin/impl/adview/j;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/applovin/impl/adview/n;->ahQ:Lcom/applovin/impl/adview/j;

    invoke-virtual {p2, p1}, Lcom/applovin/impl/adview/j;->fZ(I)V

    return-void
.end method
