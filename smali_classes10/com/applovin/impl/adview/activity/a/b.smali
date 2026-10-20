###### Class com.applovin.impl.adview.activity.a.b (com.applovin.impl.adview.activity.a.b)
.class public Lcom/applovin/impl/adview/activity/a/b;
.super Lcom/applovin/impl/adview/activity/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Lcom/applovin/impl/sdk/n;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/adview/activity/a/a;-><init>(Lcom/applovin/impl/sdk/ad/e;Landroid/app/Activity;Lcom/applovin/impl/sdk/n;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/applovin/impl/adview/n;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/applovin/impl/adview/activity/a/a;->a(Lcom/applovin/impl/adview/n;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/adview/n;Lcom/applovin/impl/adview/v;Lcom/applovin/adview/AppLovinAdView;Landroid/view/ViewGroup;)V
    .registers 6
    .param p2    # Lcom/applovin/impl/adview/v;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/a/a;->aiM:Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p1, :cond_1d

    iget-object p3, p0, Lcom/applovin/impl/adview/activity/a/a;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/ad/e;->GR()Z

    move-result p3

    if-eqz p3, :cond_11

    const/4 p3, 0x3

    goto :goto_12

    :cond_11
    const/4 p3, 0x5

    :goto_12
    or-int/lit8 p3, p3, 0x30

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/a/a;->aiL:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->GN()Lcom/applovin/impl/sdk/ad/e$c;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p1}, Lcom/applovin/impl/adview/activity/a/a;->a(Lcom/applovin/impl/sdk/ad/e$c;ILcom/applovin/impl/adview/n;)V

    :cond_1d
    if-eqz p2, :cond_26

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/a/a;->aiM:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/applovin/impl/adview/activity/a/a;->aiN:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_26
    if-eqz p4, :cond_2e

    iget-object p1, p0, Lcom/applovin/impl/adview/activity/a/a;->aiM:Landroid/view/ViewGroup;

    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_35

    :cond_2e
    iget-object p1, p0, Lcom/applovin/impl/adview/activity/a/a;->ahM:Landroid/app/Activity;

    iget-object p2, p0, Lcom/applovin/impl/adview/activity/a/a;->aiM:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    :goto_35
    return-void
.end method

.method public bridge synthetic k(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/applovin/impl/adview/activity/a/a;->k(Landroid/view/View;)V

    return-void
.end method
