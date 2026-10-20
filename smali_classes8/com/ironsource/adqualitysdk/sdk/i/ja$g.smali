###### Class com.ironsource.adqualitysdk.sdk.i.ja.g (com.ironsource.adqualitysdk.sdk.i.ja$g)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ja$g;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ja;->f(Landroid/view/ViewGroup;Landroid/view/View$OnLayoutChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Landroid/view/ViewGroup;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/hc$c;

.field private synthetic f:Landroid/view/View$OnLayoutChangeListener;

.field private synthetic g:Lcom/ironsource/adqualitysdk/sdk/i/ja;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ja;Landroid/view/ViewGroup;Lcom/ironsource/adqualitysdk/sdk/i/hc$c;Landroid/view/View$OnLayoutChangeListener;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$g;->g:Lcom/ironsource/adqualitysdk/sdk/i/ja;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$g;->d:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$g;->e:Lcom/ironsource/adqualitysdk/sdk/i/hc$c;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$g;->f:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$g;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$g;->e:Lcom/ironsource/adqualitysdk/sdk/i/hc$c;

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->h(Landroid/view/View;Lcom/ironsource/adqualitysdk/sdk/i/hc$c;)V

    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$g;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2c

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$g;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$g;->g:Lcom/ironsource/adqualitysdk/sdk/i/ja;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$g;->f:Landroid/view/View$OnLayoutChangeListener;

    invoke-static {v2, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->d(Lcom/ironsource/adqualitysdk/sdk/i/ja;Landroid/view/ViewGroup;Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_29

    :cond_24
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$g;->e:Lcom/ironsource/adqualitysdk/sdk/i/hc$c;

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->h(Landroid/view/View;Lcom/ironsource/adqualitysdk/sdk/i/hc$c;)V

    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2c
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$g;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$g;->f:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$g;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$g;->f:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
