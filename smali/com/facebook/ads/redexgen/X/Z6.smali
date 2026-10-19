###### Class com.facebook.ads.redexgen.X.Z6 (com.facebook.ads.redexgen.X.Z6)
.class public final Lcom/facebook/ads/redexgen/X/Z6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/3w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ED;->A0e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ED;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ED;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3x;)V
    .registers 7

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    packed-switch v0, :pswitch_data_42

    :goto_5
    :pswitch_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/ED;->A06:Lcom/facebook/ads/redexgen/X/4c;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    iget v2, p1, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    const/4 v0, 0x1

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A1S(Lcom/facebook/ads/redexgen/X/ED;III)V

    goto :goto_5

    :pswitch_15
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/ED;->A06:Lcom/facebook/ads/redexgen/X/4c;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    iget v2, p1, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3x;->A03:Ljava/lang/Object;

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A1T(Lcom/facebook/ads/redexgen/X/ED;IILjava/lang/Object;)V

    goto :goto_5

    :pswitch_25
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/ED;->A06:Lcom/facebook/ads/redexgen/X/4c;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A1R(Lcom/facebook/ads/redexgen/X/ED;II)V

    goto :goto_5

    :pswitch_33
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/ED;->A06:Lcom/facebook/ads/redexgen/X/4c;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A1Q(Lcom/facebook/ads/redexgen/X/ED;II)V

    goto :goto_5

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_33
        :pswitch_25
        :pswitch_5
        :pswitch_15
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final A5e(I)Lcom/facebook/ads/redexgen/X/4u;
    .registers 6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/ED;->A1G(IZ)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v3

    const/4 v2, 0x0

    if-nez v3, :cond_b

    return-object v2

    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ED;->A01:Lcom/facebook/ads/redexgen/X/40;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0K(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-object v2

    :cond_18
    return-object v3
.end method

.method public final A9z(IILjava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/ED;->A1g(IILjava/lang/Object;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/ED;->A0H:Z

    return-void
.end method

.method public final AAJ(II)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/ED;->A1d(II)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/ED;->A0G:Z

    return-void
.end method

.method public final AAK(II)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/ED;->A1e(II)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/ED;->A0G:Z

    return-void
.end method

.method public final AAL(II)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/ED;->A1h(IIZ)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/ED;->A0G:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4r;->A00:I

    add-int/2addr v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4r;->A00:I

    return-void
.end method

.method public final AAM(II)V
    .registers 5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/ED;->A1h(IIZ)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z6;->A00:Lcom/facebook/ads/redexgen/X/ED;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/ED;->A0G:Z

    return-void
.end method

.method public final AB4(Lcom/facebook/ads/redexgen/X/3x;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Z6;->A00(Lcom/facebook/ads/redexgen/X/3x;)V

    return-void
.end method

.method public final AB6(Lcom/facebook/ads/redexgen/X/3x;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Z6;->A00(Lcom/facebook/ads/redexgen/X/3x;)V

    return-void
.end method
