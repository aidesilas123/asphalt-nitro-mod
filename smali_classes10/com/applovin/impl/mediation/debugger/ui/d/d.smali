###### Class com.applovin.impl.mediation.debugger.ui.d.d (com.applovin.impl.mediation.debugger.ui.d.d)
.class public abstract Lcom/applovin/impl/mediation/debugger/ui/d/d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/debugger/ui/d/d$a;
    }
.end annotation


# instance fields
.field protected E:Landroid/content/Context;

.field private asJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private asK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private asL:Lcom/applovin/impl/mediation/debugger/ui/d/d$a;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/d;->asJ:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/d;->asK:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/d/d;->E:Landroid/content/Context;

    return-void
.end method

.method private gp(I)Lcom/applovin/impl/mediation/debugger/ui/d/a;
    .registers 6

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/ui/d/d;->tM()I

    move-result v1

    if-ge v0, v1, :cond_31

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/d/d;->asK:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_16

    goto :goto_2e

    :cond_16
    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/d;->gg(I)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    if-gt p1, v3, :cond_2e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/applovin/impl/mediation/debugger/ui/d/a;

    sub-int/2addr p1, v1

    invoke-direct {v2, v0, p1}, Lcom/applovin/impl/mediation/debugger/ui/d/a;-><init>(II)V

    return-object v2

    :cond_2e
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_31
    const/4 p1, 0x0

    return-object p1
.end method

.method private q(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    sget v1, Lcom/applovin/sdk/R$color;->applovin_sdk_highlightListItemColor:I

    iget-object v2, p0, Lcom/applovin/impl/mediation/debugger/ui/d/d;->E:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/utils/g;->a(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10100a7

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v4, [I

    invoke-virtual {v1, v0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v1
.end method


# virtual methods
.method public a(Lcom/applovin/impl/mediation/debugger/ui/d/d$a;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/d/d;->asL:Lcom/applovin/impl/mediation/debugger/ui/d/d$a;

    return-void
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/d;->asJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/d/d;->go(I)Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/d/d;->go(I)Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->wS()I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/d/d;->go(I)Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v0

    if-nez p2, :cond_54

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->wT()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/applovin/impl/mediation/debugger/ui/d/b;

    invoke-direct {p3}, Lcom/applovin/impl/mediation/debugger/ui/d/b;-><init>()V

    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/applovin/impl/mediation/debugger/ui/d/b;->asq:Landroid/widget/TextView;

    const v1, 0x1020015

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/applovin/impl/mediation/debugger/ui/d/b;->asr:Landroid/widget/TextView;

    sget v1, Lcom/applovin/sdk/R$id;->imageView:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/applovin/impl/mediation/debugger/ui/d/b;->imageView:Landroid/widget/ImageView;

    sget v1, Lcom/applovin/sdk/R$id;->detailImageView:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/applovin/impl/mediation/debugger/ui/d/b;->ass:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p2}, Lcom/applovin/impl/mediation/debugger/ui/d/d;->q(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5a

    :cond_54
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/applovin/impl/mediation/debugger/ui/d/b;

    :goto_5a
    invoke-virtual {p3, p1}, Lcom/applovin/impl/mediation/debugger/ui/d/b;->fx(I)V

    invoke-virtual {p3, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/b;->a(Lcom/applovin/impl/mediation/debugger/ui/d/c;)V

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->isEnabled()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .registers 2

    invoke-static {}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method protected abstract gg(I)I
.end method

.method protected abstract gh(I)Lcom/applovin/impl/mediation/debugger/ui/d/c;
.end method

.method protected abstract gi(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end method

.method public go(I)Lcom/applovin/impl/mediation/debugger/ui/d/c;
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/d;->asJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/impl/mediation/debugger/ui/d/c;

    return-object p1
.end method

.method public isEnabled(I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/d/d;->go(I)Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->isEnabled()Z

    move-result p1

    return p1
.end method

.method public notifyDataSetChanged()V
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/d;->asJ:Ljava/util/List;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/ui/d/d;->tM()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/d/d;->asK:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/ui/d/d;->xa()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    iget-object v3, p0, Lcom/applovin/impl/mediation/debugger/ui/d/d;->asJ:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    if-ge v2, v0, :cond_4f

    invoke-virtual {p0, v2}, Lcom/applovin/impl/mediation/debugger/ui/d/d;->gg(I)I

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_4c

    :cond_2a
    iget-object v4, p0, Lcom/applovin/impl/mediation/debugger/ui/d/d;->asJ:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/applovin/impl/mediation/debugger/ui/d/d;->gh(I)Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/applovin/impl/mediation/debugger/ui/d/d;->asJ:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/applovin/impl/mediation/debugger/ui/d/d;->gi(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lcom/applovin/impl/mediation/debugger/ui/d/d;->asK:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_4f
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/d/d;->asJ:Ljava/util/List;

    new-instance v1, Lcom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/impl/mediation/debugger/ui/d/b;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/b;->wR()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/b;->il()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/d/d;->gp(I)Lcom/applovin/impl/mediation/debugger/ui/d/a;

    move-result-object p1

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/d/d;->asL:Lcom/applovin/impl/mediation/debugger/ui/d/d$a;

    if-eqz v1, :cond_1b

    if-eqz p1, :cond_1b

    invoke-interface {v1, p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/d$a;->onClick(Lcom/applovin/impl/mediation/debugger/ui/d/a;Lcom/applovin/impl/mediation/debugger/ui/d/c;)V

    :cond_1b
    return-void
.end method

.method protected abstract tM()I
.end method

.method public wZ()V
    .registers 2

    new-instance v0, Lcom/applovin/impl/mediation/debugger/ui/d/f;

    invoke-direct {v0, p0}, Lcom/applovin/impl/mediation/debugger/ui/d/f;-><init>(Lcom/applovin/impl/mediation/debugger/ui/d/d;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected xa()Lcom/applovin/impl/mediation/debugger/ui/d/c;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
