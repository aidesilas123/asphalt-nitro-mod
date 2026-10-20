###### Class com.ironsource.adqualitysdk.sdk.i.ja.c (com.ironsource.adqualitysdk.sdk.i.ja$c)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ja$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/jh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ja;->ﾇ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/ja;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ja;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$c;->a:Lcom/ironsource/adqualitysdk/sdk/i/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ(Landroid/view/View;)V
    .registers 4

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/r;->ｋ()Z

    move-result v0

    if-nez v0, :cond_35

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3a

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->n(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object p1

    :cond_2b
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$c;->a:Lcom/ironsource/adqualitysdk/sdk/i/ja;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->m(Lcom/ironsource/adqualitysdk/sdk/i/ja;Landroid/view/ViewGroup;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->i(Lcom/ironsource/adqualitysdk/sdk/i/ja;Landroid/view/ViewGroup;Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_35
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$c;->a:Lcom/ironsource/adqualitysdk/sdk/i/ja;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->ﾒ()V

    :cond_3a
    return-void
.end method

.method public final ﾒ(Landroid/view/View;)V
    .registers 2

    return-void
.end method
