###### Class com.facebook.ads.redexgen.X.C06690t (com.facebook.ads.redexgen.X.0t)
.class public final Lcom/facebook/ads/redexgen/X/0t;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/0o;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/redexgen/X/0o;
    .registers 5

    sget-object v0, Lcom/facebook/ads/redexgen/X/0t;->A00:Lcom/facebook/ads/redexgen/X/0o;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    sget-object v1, Lcom/facebook/ads/redexgen/X/0s;->A00:[I

    invoke-virtual {p2}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_30

    const/4 v0, 0x0

    return-object v0

    :pswitch_12
    new-instance v0, Lcom/facebook/ads/redexgen/X/FA;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/FA;-><init>()V

    return-object v0

    :pswitch_18
    new-instance v0, Lcom/facebook/ads/redexgen/X/FD;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/FD;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    return-object v0

    :pswitch_1e
    new-instance v0, Lcom/facebook/ads/redexgen/X/ah;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/ah;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    return-object v0

    :pswitch_24
    new-instance v0, Lcom/facebook/ads/redexgen/X/aj;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/aj;-><init>()V

    return-object v0

    :pswitch_2a
    new-instance v0, Lcom/facebook/ads/redexgen/X/ak;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ak;-><init>()V

    return-object v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_24
        :pswitch_1e
        :pswitch_18
        :pswitch_12
    .end packed-switch
.end method
