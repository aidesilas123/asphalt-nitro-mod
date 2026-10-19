###### Class com.facebook.ads.redexgen.X.NO (com.facebook.ads.redexgen.X.NO)
.class public final Lcom/facebook/ads/redexgen/X/NO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/NN;
    }
.end annotation


# direct methods
.method public static A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V
    .registers 5

    if-nez p1, :cond_6

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    :goto_5
    return-void

    :cond_6
    if-eqz p1, :cond_5

    new-instance v1, Lcom/facebook/ads/redexgen/X/NN;

    invoke-direct {v1, p2}, Lcom/facebook/ads/redexgen/X/NN;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/NM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/NM;-><init>(Lcom/facebook/ads/redexgen/X/NN;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_5
.end method
