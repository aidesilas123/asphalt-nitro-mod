###### Class com.facebook.ads.redexgen.X.Q1 (com.facebook.ads.redexgen.X.Q1)
.class public final Lcom/facebook/ads/redexgen/X/Q1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6E;->A07()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6E;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6E;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Q1;->A00:Lcom/facebook/ads/redexgen/X/6E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K0;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v3, p0

    :try_start_8
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Q1;->A00:Lcom/facebook/ads/redexgen/X/6E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6E;->A02(Lcom/facebook/ads/redexgen/X/6E;)Lcom/facebook/ads/redexgen/X/RX;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Q1;->A00:Lcom/facebook/ads/redexgen/X/6E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6E;->A01(Lcom/facebook/ads/redexgen/X/6E;)Lcom/facebook/ads/redexgen/X/In;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Q1;->A00:Lcom/facebook/ads/redexgen/X/6E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6E;->A01(Lcom/facebook/ads/redexgen/X/6E;)Lcom/facebook/ads/redexgen/X/In;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Im;->A0p:Lcom/facebook/ads/redexgen/X/Im;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/In;->A04(Lcom/facebook/ads/redexgen/X/Im;Ljava/util/Map;)V

    :cond_25
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Q1;->A00:Lcom/facebook/ads/redexgen/X/6E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6E;->A00(Lcom/facebook/ads/redexgen/X/6E;)Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A31()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Q2;->A00:[I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Q1;->A00:Lcom/facebook/ads/redexgen/X/6E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6E;->A03(Lcom/facebook/ads/redexgen/X/6E;)Lcom/facebook/ads/redexgen/X/RX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->getState()Lcom/facebook/ads/redexgen/X/QY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QY;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_68

    goto :goto_62

    :pswitch_48
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Q1;->A00:Lcom/facebook/ads/redexgen/X/6E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6E;->A05(Lcom/facebook/ads/redexgen/X/6E;)Lcom/facebook/ads/redexgen/X/RX;

    move-result-object v2

    const/4 v1, 0x1

    const/16 v0, 0x8

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0e(ZI)V

    goto :goto_62

    :pswitch_55
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Q1;->A00:Lcom/facebook/ads/redexgen/X/6E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6E;->A04(Lcom/facebook/ads/redexgen/X/6E;)Lcom/facebook/ads/redexgen/X/RX;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pj;->A04:Lcom/facebook/ads/redexgen/X/Pj;

    const/16 v0, 0xc

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0b(Lcom/facebook/ads/redexgen/X/Pj;I)V

    :goto_62
    return-void
    :try_end_63
    .catchall {:try_start_8 .. :try_end_63} :catchall_63

    :catchall_63
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_48
    .end packed-switch
.end method
