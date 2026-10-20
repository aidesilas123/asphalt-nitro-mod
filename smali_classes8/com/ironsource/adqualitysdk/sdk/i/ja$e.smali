###### Class com.ironsource.adqualitysdk.sdk.i.ja.e (com.ironsource.adqualitysdk.sdk.i.ja$e)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ja$e;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ja;->b(Landroid/view/ViewGroup;Landroid/view/View$OnLayoutChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Landroid/view/ViewGroup;

.field private synthetic e:Landroid/widget/RelativeLayout;

.field private synthetic f:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Landroid/view/View$OnLayoutChangeListener;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$e;->d:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$e;->e:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$e;->f:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$e;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$e;->e:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$e;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$e;->f:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$e;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$e;->f:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
