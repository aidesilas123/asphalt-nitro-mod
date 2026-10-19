###### Class com.facebook.ads.redexgen.X.ViewOnClickListenerC1209Nd (com.facebook.ads.redexgen.X.Nd)
.class public final Lcom/facebook/ads/redexgen/X/Nd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ng;->A03()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ng;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ng;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nd;->A00:Lcom/facebook/ads/redexgen/X/Ng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K0;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v5, p0

    :try_start_8
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Nd;->A00:Lcom/facebook/ads/redexgen/X/Ng;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ng;->A01(Lcom/facebook/ads/redexgen/X/Ng;)Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Nf;->ABz()V

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Nd;->A00:Lcom/facebook/ads/redexgen/X/Ng;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ng;->A00(Lcom/facebook/ads/redexgen/X/Ng;)Lcom/facebook/ads/redexgen/X/Ls;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Nd;->A00:Lcom/facebook/ads/redexgen/X/Ng;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ng;->A00(Lcom/facebook/ads/redexgen/X/Ng;)Lcom/facebook/ads/redexgen/X/Ls;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0L(Landroid/view/View;)V

    :cond_22
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Nd;->A00:Lcom/facebook/ads/redexgen/X/Ng;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ng;->A06(Lcom/facebook/ads/redexgen/X/Ng;)[Landroid/view/View;

    move-result-object v4

    array-length v3, v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_2b
    if-ge v1, v3, :cond_35

    aget-object v0, v4, v1

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/LV;->A0N(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_35
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Nd;->A00:Lcom/facebook/ads/redexgen/X/Ng;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0J(Landroid/view/View;)V

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Nd;->A00:Lcom/facebook/ads/redexgen/X/Ng;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ng;->A02(Lcom/facebook/ads/redexgen/X/Ng;)Lcom/facebook/ads/redexgen/X/RX;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Nd;->A00:Lcom/facebook/ads/redexgen/X/Ng;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ng;->A02(Lcom/facebook/ads/redexgen/X/Ng;)Lcom/facebook/ads/redexgen/X/RX;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/LV;->A0N(Landroid/view/View;I)V

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Nd;->A00:Lcom/facebook/ads/redexgen/X/Ng;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ng;->A02(Lcom/facebook/ads/redexgen/X/Ng;)Lcom/facebook/ads/redexgen/X/RX;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pj;->A02:Lcom/facebook/ads/redexgen/X/Pj;

    const/16 v0, 0xe

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0b(Lcom/facebook/ads/redexgen/X/Pj;I)V

    :cond_58
    return-void
    :try_end_59
    .catchall {:try_start_8 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
