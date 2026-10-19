###### Class com.facebook.ads.redexgen.X.TS (com.facebook.ads.redexgen.X.TS)
.class public final Lcom/facebook/ads/redexgen/X/TS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Lu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/MH;
    }
.end annotation


# static fields
.field public static A0D:[B


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/Pa;

.field public A02:Lcom/facebook/ads/redexgen/X/76;

.field public A03:Ljava/lang/String;

.field public final A04:Lcom/facebook/ads/redexgen/X/YA;

.field public final A05:Lcom/facebook/ads/redexgen/X/If;

.field public final A06:Lcom/facebook/ads/redexgen/X/Lt;

.field public final A07:Lcom/facebook/ads/redexgen/X/MH;

.field public final A08:Lcom/facebook/ads/redexgen/X/RX;

.field public final A09:Lcom/facebook/ads/redexgen/X/Ob;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Nn;

.field public final A0B:Lcom/facebook/ads/redexgen/X/MU;

.field public final A0C:Lcom/facebook/ads/redexgen/X/MI;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TS;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/MH;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/Lt;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/AD;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/AD;-><init>(Lcom/facebook/ads/redexgen/X/TS;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/TS;->A0C:Lcom/facebook/ads/redexgen/X/MI;

    new-instance v7, Lcom/facebook/ads/redexgen/X/A6;

    invoke-direct {v7, p0}, Lcom/facebook/ads/redexgen/X/A6;-><init>(Lcom/facebook/ads/redexgen/X/TS;)V

    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/TS;->A0B:Lcom/facebook/ads/redexgen/X/MU;

    new-instance v6, Lcom/facebook/ads/redexgen/X/9r;

    invoke-direct {v6, p0}, Lcom/facebook/ads/redexgen/X/9r;-><init>(Lcom/facebook/ads/redexgen/X/TS;)V

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/TS;->A09:Lcom/facebook/ads/redexgen/X/Ob;

    new-instance v5, Lcom/facebook/ads/redexgen/X/9l;

    invoke-direct {v5, p0}, Lcom/facebook/ads/redexgen/X/9l;-><init>(Lcom/facebook/ads/redexgen/X/TS;)V

    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/TS;->A0A:Lcom/facebook/ads/redexgen/X/Nn;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TS;->A04:Lcom/facebook/ads/redexgen/X/YA;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/TS;->A05:Lcom/facebook/ads/redexgen/X/If;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TS;->A07:Lcom/facebook/ads/redexgen/X/MH;

    new-instance v4, Lcom/facebook/ads/redexgen/X/RX;

    invoke-direct {v4, p1}, Lcom/facebook/ads/redexgen/X/RX;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/TS;->A08:Lcom/facebook/ads/redexgen/X/RX;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6r;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/6r;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0c(Lcom/facebook/ads/redexgen/X/Pk;)V

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/RX;->getEventBus()Lcom/facebook/ads/redexgen/X/8Z;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/8a;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v1, 0x1

    aput-object v7, v2, v1

    const/4 v0, 0x2

    aput-object v6, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/8Z;->A03([Lcom/facebook/ads/redexgen/X/8a;)V

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/TS;->A06:Lcom/facebook/ads/redexgen/X/Lt;

    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/RX;->setIsFullScreen(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/RX;->setVolume(F)V

    const/4 v2, -0x1

    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-interface {p4, v4, v1}, Lcom/facebook/ads/redexgen/X/Lt;->A3Q(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/Lx;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/Lx;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/MF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MF;-><init>(Lcom/facebook/ads/redexgen/X/TS;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Lx;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Lx;->getDefaultLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3Q(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/TS;)Lcom/facebook/ads/redexgen/X/Lt;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/TS;->A06:Lcom/facebook/ads/redexgen/X/Lt;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/TS;)Lcom/facebook/ads/redexgen/X/MH;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/TS;->A07:Lcom/facebook/ads/redexgen/X/MH;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/TS;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x26

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .registers 1

    const/16 v0, 0x62

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/TS;->A0D:[B

    return-void

    :array_a
    .array-data 1
        -0x31t
        -0x1dt
        -0x1et
        -0x23t
        -0x22t
        -0x26t
        -0x31t
        -0x19t
        -0x11t
        -0x8t
        -0xbt
        -0xft
        -0x6t
        0x0t
        -0x20t
        -0x5t
        -0x9t
        -0xft
        -0x6t
        -0x44t
        -0x46t
        -0x54t
        -0x6bt
        -0x58t
        -0x45t
        -0x50t
        -0x43t
        -0x54t
        -0x76t
        -0x45t
        -0x58t
        -0x77t
        -0x44t
        -0x45t
        -0x45t
        -0x4at
        -0x4bt
        -0x49t
        -0x56t
        -0x5bt
        -0x5at
        -0x50t
        -0x76t
        -0x51t
        -0x4bt
        -0x5at
        -0x4dt
        -0x4ct
        -0x4bt
        -0x56t
        -0x4bt
        -0x5et
        -0x53t
        -0x7at
        -0x49t
        -0x5at
        -0x51t
        -0x4bt
        -0x63t
        -0x70t
        -0x75t
        -0x74t
        -0x6at
        0x73t
        -0x6at
        -0x72t
        -0x72t
        -0x74t
        -0x67t
        -0x2t
        -0xft
        -0x14t
        -0x13t
        -0x9t
        -0x2bt
        -0x28t
        -0x34t
        0x18t
        0xbt
        0x6t
        0x7t
        0x11t
        -0xbt
        0x7t
        0x7t
        0xdt
        -0xat
        0xbt
        0xft
        0x7t
        -0x42t
        -0x4ft
        -0x54t
        -0x53t
        -0x49t
        -0x63t
        -0x66t
        -0x6ct
    .end array-data
.end method


# virtual methods
.method public final A04(I)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A08:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/RX;->setVideoProgressReportIntervalMs(I)V

    return-void
.end method

.method public final A05(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A08:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/RX;->setControlsAnchorView(Landroid/view/View;)V

    return-void
.end method

.method public final A9C(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/5J;)V
    .registers 14

    const/16 v2, 0x8

    const/16 v1, 0xb

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TS;->A02(III)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_e6

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A03:Ljava/lang/String;

    :goto_12
    const/16 v2, 0x13

    const/16 v1, 0x12

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TS;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A04:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v3, Lcom/facebook/ads/redexgen/X/PA;

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/PA;-><init>(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;)V

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/MG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MG;-><init>(Lcom/facebook/ads/redexgen/X/TS;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/PA;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A06:Lcom/facebook/ads/redexgen/X/Lt;

    invoke-interface {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/Lt;->A3Q(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    :cond_55
    const/16 v2, 0x4d

    const/16 v1, 0xd

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TS;->A02(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:I

    new-instance v4, Lcom/facebook/ads/redexgen/X/76;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/TS;->A04:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/TS;->A05:Lcom/facebook/ads/redexgen/X/If;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/TS;->A08:Lcom/facebook/ads/redexgen/X/RX;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/TS;->A03:Ljava/lang/String;

    const/16 v3, 0x3a

    const/16 v2, 0xb

    const/4 v0, 0x1

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/TS;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/76;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/RX;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/TS;->A02:Lcom/facebook/ads/redexgen/X/76;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1Y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e2

    new-instance v2, Lcom/facebook/ads/redexgen/X/Pa;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/TS;->A04:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/TS;->A05:Lcom/facebook/ads/redexgen/X/If;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/TS;->A08:Lcom/facebook/ads/redexgen/X/RX;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/TS;->A03:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Pa;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/RX;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/TS;->A01:Lcom/facebook/ads/redexgen/X/Pa;

    :goto_9a
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/TS;->A08:Lcom/facebook/ads/redexgen/X/RX;

    const/16 v3, 0x45

    const/16 v2, 0x8

    const/16 v0, 0x62

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/TS;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/RX;->setVideoMPD(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/TS;->A08:Lcom/facebook/ads/redexgen/X/RX;

    const/16 v3, 0x5a

    const/16 v2, 0x8

    const/16 v0, 0x22

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/TS;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/RX;->setVideoURI(Ljava/lang/String;)V

    iget v2, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:I

    if-lez v2, :cond_c9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A08:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/RX;->A0Y(I)V

    :cond_c9
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/16 v0, 0x48

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/TS;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e1

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TS;->A08:Lcom/facebook/ads/redexgen/X/RX;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pj;->A04:Lcom/facebook/ads/redexgen/X/Pj;

    const/16 v0, 0x11

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0b(Lcom/facebook/ads/redexgen/X/Pj;I)V

    :cond_e1
    return-void

    :cond_e2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A01:Lcom/facebook/ads/redexgen/X/Pa;

    goto :goto_9a

    :cond_e6
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A03:Ljava/lang/String;

    goto/16 :goto_12
.end method

.method public final ACJ(Z)V
    .registers 7

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/TS;->A06:Lcom/facebook/ads/redexgen/X/Lt;

    new-instance v3, Lcom/facebook/ads/redexgen/X/NQ;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/NQ;-><init>()V

    const/16 v2, 0x25

    const/16 v1, 0x15

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TS;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/Lt;->A40(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8Y;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A08:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->A0W()V

    return-void
.end method

.method public final ACj(Z)V
    .registers 7

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/TS;->A06:Lcom/facebook/ads/redexgen/X/Lt;

    new-instance v3, Lcom/facebook/ads/redexgen/X/N3;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/N3;-><init>()V

    const/16 v2, 0x25

    const/16 v1, 0x15

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TS;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/Lt;->A40(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8Y;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A08:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->A0j()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TS;->A08:Lcom/facebook/ads/redexgen/X/RX;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pj;->A04:Lcom/facebook/ads/redexgen/X/Pj;

    const/16 v0, 0x12

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0b(Lcom/facebook/ads/redexgen/X/Pj;I)V

    :cond_25
    return-void
.end method

.method public final AEt(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final getCurrentClientToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A03:Ljava/lang/String;

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .registers 6

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/TS;->A06:Lcom/facebook/ads/redexgen/X/Lt;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A08:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->getCurrentPositionInMillis()I

    move-result v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/M8;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/M8;-><init>(II)V

    const/16 v2, 0x25

    const/16 v1, 0x15

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TS;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/Lt;->A40(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8Y;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TS;->A02:Lcom/facebook/ads/redexgen/X/76;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A08:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->getCurrentPositionInMillis()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0d(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A01:Lcom/facebook/ads/redexgen/X/Pa;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pa;->A09()V

    :cond_2e
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TS;->A08:Lcom/facebook/ads/redexgen/X/RX;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0Z(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A08:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->A0V()V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C08809l (com.facebook.ads.redexgen.X.9l)
.class public final Lcom/facebook/ads/redexgen/X/9l;
.super Lcom/facebook/ads/redexgen/X/Nn;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/TS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/TS;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/TS;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9l;->A00:Lcom/facebook/ads/redexgen/X/TS;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nn;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/OK;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9l;->A00:Lcom/facebook/ads/redexgen/X/TS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TS;->A01(Lcom/facebook/ads/redexgen/X/TS;)Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MH;->ABN()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/OK;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9l;->A00(Lcom/facebook/ads/redexgen/X/OK;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C08869r (com.facebook.ads.redexgen.X.9r)
.class public final Lcom/facebook/ads/redexgen/X/9r;
.super Lcom/facebook/ads/redexgen/X/Ob;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/TS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/TS;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OtZHHid0c6Ryk9CDDBq47ngXcNldIUWH"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JwrlVwQ54E2WwwQvkywQUOYHwL6g1bho"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "WFiM5IPZvaQ4xMZm5xgvQ3FNROoMY2Kr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "al6ZIECO6LO12zMiuvYELaWNpYKDhozx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wYAPbQwhGVteNN6MGdL8gA6824n9AnKf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jTihIhEYsz4XSFMEjn7OlZEBUOzI3KNS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mXaQIkSzTCVxPQuz9HLogqhmhIjgMyMR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pEgzTi4rZbqmTwficQat67UuNHBZNbaD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9r;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9r;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/TS;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9r;->A00:Lcom/facebook/ads/redexgen/X/TS;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ob;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/9r;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x56

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 4

    const/16 v0, 0x15

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/9r;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1d
    sget-object v2, Lcom/facebook/ads/redexgen/X/9r;->A02:[Ljava/lang/String;

    const-string v1, "e0kN46odqljBIthjpUkTXG9hdDsWHsKW"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    fill-array-data v3, :array_2a

    sput-object v3, Lcom/facebook/ads/redexgen/X/9r;->A01:[B

    return-void

    :array_2a
    .array-data 1
        0x11t
        0x4t
        -0x1t
        0x0t
        0xat
        -0x1ct
        0x9t
        0xft
        0x0t
        0xdt
        0xet
        0xft
        0x4t
        0xft
        -0x4t
        0x7t
        -0x20t
        0x11t
        0x0t
        0x9t
        0xft
    .end array-data
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/75;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9r;->A00:Lcom/facebook/ads/redexgen/X/TS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TS;->A00(Lcom/facebook/ads/redexgen/X/TS;)Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9r;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Lcom/facebook/ads/redexgen/X/Lt;->A40(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8Y;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/75;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9r;->A02(Lcom/facebook/ads/redexgen/X/75;)V

    return-void
.end method
