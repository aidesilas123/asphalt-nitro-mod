###### Class com.facebook.ads.redexgen.X.AnonymousClass96 (com.facebook.ads.redexgen.X.96)
.class public final Lcom/facebook/ads/redexgen/X/96;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Lu;
.implements Lcom/facebook/ads/redexgen/X/SV;


# static fields
.field public static A0I:[B

.field public static A0J:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/5H;

.field public A01:Lcom/facebook/ads/redexgen/X/5J;

.field public A02:Lcom/facebook/ads/redexgen/X/Or;

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/aS;

.field public final A07:Lcom/facebook/ads/redexgen/X/YA;

.field public final A08:Lcom/facebook/ads/redexgen/X/If;

.field public final A09:Lcom/facebook/ads/redexgen/X/In;

.field public final A0A:Lcom/facebook/ads/redexgen/X/LI;

.field public final A0B:Lcom/facebook/ads/redexgen/X/LN;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Lt;

.field public final A0D:Lcom/facebook/ads/redexgen/X/MM;

.field public final A0E:Lcom/facebook/ads/redexgen/X/OZ;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Oh;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Qa;

.field public final A0H:Lcom/facebook/ads/redexgen/X/Qb;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Ky6zrcoV7NYtZpO3AnBVhERgUe61TP4A"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MIS71VG0t7feKobdqgnq1TwubiJ1N09z"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nEwmQOfqxRkjYDAAu8TY0n89Pulsb82"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nm6mhrtocmSPL4qM7u9wOkkvqXPHcra"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ADTrDSFqqVysA22fSklmKPGMwsWvvDiN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "oNlgPu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "28CTXOUAXLtNi6XFaROwO0buCKC9QIVi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/96;->A0J:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/96;->A0D()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/aS;Lcom/facebook/ads/redexgen/X/MM;I)V
    .registers 24

    move-object/from16 v1, p0

    move-object v1, v1

    move-object/from16 v4, p1

    invoke-direct {v1, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Si;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Si;-><init>(Lcom/facebook/ads/redexgen/X/96;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/96;->A00:Lcom/facebook/ads/redexgen/X/5H;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sh;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/Sh;-><init>(Lcom/facebook/ads/redexgen/X/96;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/96;->A0G:Lcom/facebook/ads/redexgen/X/Qa;

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/facebook/ads/redexgen/X/96;->A03:Z

    iput-object v4, v1, Lcom/facebook/ads/redexgen/X/96;->A07:Lcom/facebook/ads/redexgen/X/YA;

    move-object/from16 v10, p2

    iput-object v10, v1, Lcom/facebook/ads/redexgen/X/96;->A08:Lcom/facebook/ads/redexgen/X/If;

    move-object/from16 v14, p3

    iput-object v14, v1, Lcom/facebook/ads/redexgen/X/96;->A0C:Lcom/facebook/ads/redexgen/X/Lt;

    move-object/from16 v11, p4

    iput-object v11, v1, Lcom/facebook/ads/redexgen/X/96;->A06:Lcom/facebook/ads/redexgen/X/aS;

    move-object/from16 v15, p5

    iput-object v15, v1, Lcom/facebook/ads/redexgen/X/96;->A0D:Lcom/facebook/ads/redexgen/X/MM;

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/1C;->A0R()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oi;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Oh;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_e2

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/96;->A0F:Lcom/facebook/ads/redexgen/X/Oh;

    iput-boolean v5, v1, Lcom/facebook/ads/redexgen/X/96;->A04:Z

    :goto_3a
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/96;->A0F:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0K()Lcom/facebook/ads/redexgen/X/In;

    move-result-object v13

    iput-object v13, v1, Lcom/facebook/ads/redexgen/X/96;->A09:Lcom/facebook/ads/redexgen/X/In;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/96;->A0F:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0L()Lcom/facebook/ads/redexgen/X/LN;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/96;->A0B:Lcom/facebook/ads/redexgen/X/LN;

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/96;->A0F:Lcom/facebook/ads/redexgen/X/Oh;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sg;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Sg;-><init>(Lcom/facebook/ads/redexgen/X/96;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0c(Lcom/facebook/ads/redexgen/X/Og;)V

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/96;->A0F:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0O()Lcom/facebook/ads/redexgen/X/SW;

    move-result-object v2

    const/16 v0, 0x3eb

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/LV;->A0G(ILandroid/view/View;)V

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/1C;->A0e()Z

    move-result v0

    if-eqz v0, :cond_dd

    new-instance v8, Lcom/facebook/ads/redexgen/X/OZ;

    new-instance v12, Lcom/facebook/ads/redexgen/X/6Q;

    invoke-direct {v12, v4}, Lcom/facebook/ads/redexgen/X/6Q;-><init>(Lcom/facebook/ads/redexgen/X/7S;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sf;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Sf;-><init>(Lcom/facebook/ads/redexgen/X/96;)V

    move-object v9, v4

    move-object v6, v8

    const/4 v2, 0x0

    move-object/from16 v16, v0

    invoke-direct/range {v8 .. v16}, Lcom/facebook/ads/redexgen/X/OZ;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/aS;Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/In;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/MM;Lcom/facebook/ads/redexgen/X/OY;)V

    iput-object v6, v1, Lcom/facebook/ads/redexgen/X/96;->A0E:Lcom/facebook/ads/redexgen/X/OZ;

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/OZ;->A0N()V

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/96;->A0F:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0O()Lcom/facebook/ads/redexgen/X/SW;

    move-result-object v5

    new-instance v0, Lcom/facebook/ads/redexgen/X/OV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/OV;-><init>(Lcom/facebook/ads/redexgen/X/96;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/SW;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v5, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v0}, Lcom/facebook/ads/redexgen/X/96;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_95
    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/96;->getMediaView()Landroid/view/ViewGroup;

    move-result-object v6

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-instance v3, Lcom/facebook/ads/redexgen/X/Qb;

    invoke-direct {v3, v6, v0, v5, v4}, Lcom/facebook/ads/redexgen/X/Qb;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/96;->A0H:Lcom/facebook/ads/redexgen/X/Qb;

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/1C;->A0C()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Qb;->A0W(I)V

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/1C;->A0D()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Qb;->A0X(I)V

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/96;->A0F:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Oh;->A0e(Lcom/facebook/ads/redexgen/X/Qb;)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/LI;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/LI;-><init>(Landroid/view/View;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/96;->A0A:Lcom/facebook/ads/redexgen/X/LI;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LH;->A03:Lcom/facebook/ads/redexgen/X/LH;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/LI;->A05(Lcom/facebook/ads/redexgen/X/LH;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/96;->setBackgroundColor(I)V

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/IP;->A1X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_ef

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/7S;->A0A()Lcom/facebook/ads/redexgen/X/Ir;

    move-result-object v5

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Ir;->AGC(Landroid/view/View;Ljava/lang/String;ZZZ)V

    goto :goto_ef

    :cond_dd
    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/96;->A0E:Lcom/facebook/ads/redexgen/X/OZ;

    goto :goto_95

    :cond_e2
    new-instance v0, Lcom/facebook/ads/redexgen/X/Oh;

    move/from16 v5, p6

    invoke-direct {v0, v4, v11, v10, v5}, Lcom/facebook/ads/redexgen/X/Oh;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/aS;Lcom/facebook/ads/redexgen/X/If;I)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/96;->A0F:Lcom/facebook/ads/redexgen/X/Oh;

    iput-boolean v2, v1, Lcom/facebook/ads/redexgen/X/96;->A04:Z

    goto/16 :goto_3a

    :cond_ef
    :goto_ef
    :try_start_ef
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/aS;->A17()Z

    move-result v10
    :try_end_f8
    .catch Lorg/json/JSONException; {:try_start_ef .. :try_end_f8} :catch_156

    const/16 v5, 0x44

    const/16 v3, 0x12

    const/4 v0, 0x1

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/96;->A0B(III)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x24

    const/16 v3, 0x10

    const/16 v0, 0x15

    invoke-static {v6, v3, v0}, Lcom/facebook/ads/redexgen/X/96;->A0B(III)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x2

    const/16 v6, 0x34

    const/16 v3, 0x10

    const/16 v0, 0x9

    invoke-static {v6, v3, v0}, Lcom/facebook/ads/redexgen/X/96;->A0B(III)Ljava/lang/String;

    move-result-object v7

    const/16 v6, 0x1a

    const/16 v3, 0xa

    const/16 v0, 0x7a

    invoke-static {v6, v3, v0}, Lcom/facebook/ads/redexgen/X/96;->A0B(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v10, :cond_124

    const/4 v0, 0x1

    goto :goto_140

    :cond_124
    :try_start_124
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/1C;->A0N()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kd;->A05(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_150

    const/4 v0, 0x1

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v4, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/1C;->A0I()J

    move-result-wide v2

    invoke-virtual {v4, v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_150

    :goto_140
    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v4, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/1C;->A0I()J

    move-result-wide v2

    invoke-virtual {v4, v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_150
    :goto_150
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/96;->A0F:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Oh;->A0j(Lorg/json/JSONObject;)V

    goto :goto_16a
    :try_end_156
    .catch Lorg/json/JSONException; {:try_start_124 .. :try_end_156} :catch_156

    :catch_156
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/96;->A0F:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0M()Lcom/facebook/ads/redexgen/X/OU;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/7x;->A15:I

    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/96;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/OU;->A04(ILjava/lang/String;)V

    :goto_16a
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/96;)Lcom/facebook/ads/redexgen/X/aS;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/96;->A06:Lcom/facebook/ads/redexgen/X/aS;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/96;)Lcom/facebook/ads/redexgen/X/5J;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/96;->A01:Lcom/facebook/ads/redexgen/X/5J;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/96;)Lcom/facebook/ads/redexgen/X/YA;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/96;->A07:Lcom/facebook/ads/redexgen/X/YA;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/96;)Lcom/facebook/ads/redexgen/X/If;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/96;->A08:Lcom/facebook/ads/redexgen/X/If;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/96;)Lcom/facebook/ads/redexgen/X/In;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/96;->A09:Lcom/facebook/ads/redexgen/X/In;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/96;)Lcom/facebook/ads/redexgen/X/LN;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/96;->A0B:Lcom/facebook/ads/redexgen/X/LN;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/96;)Lcom/facebook/ads/redexgen/X/Lt;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/96;->A0C:Lcom/facebook/ads/redexgen/X/Lt;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/96;)Lcom/facebook/ads/redexgen/X/MM;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/96;->A0D:Lcom/facebook/ads/redexgen/X/MM;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/96;)Lcom/facebook/ads/redexgen/X/OZ;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/96;->A0E:Lcom/facebook/ads/redexgen/X/OZ;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/96;)Lcom/facebook/ads/redexgen/X/Oh;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/96;->A0F:Lcom/facebook/ads/redexgen/X/Oh;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/96;)Lcom/facebook/ads/redexgen/X/Qb;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/96;->A0H:Lcom/facebook/ads/redexgen/X/Qb;

    return-object p0
.end method

.method public static A0B(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/96;->A0I:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x29

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0C()V
    .registers 5

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/96;->A07:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A06:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0E()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A06:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0z()Lcom/facebook/ads/redexgen/X/1X;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/P1;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/P1;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/1K;Lcom/facebook/ads/redexgen/X/1X;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A06:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0u()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A01()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/P1;->A08(Lcom/facebook/ads/redexgen/X/1M;)Lcom/facebook/ads/redexgen/X/P1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P1;->A0B()Lcom/facebook/ads/redexgen/X/P3;

    move-result-object v2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/96;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sd;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sd;-><init>(Lcom/facebook/ads/redexgen/X/96;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/P3;->A04(Lcom/facebook/ads/redexgen/X/P2;)V

    return-void
.end method

.method public static A0D()V
    .registers 1

    const/16 v0, 0x6b

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/96;->A0I:[B

    return-void

    :array_a
    .array-data 1
        -0x58t
        -0x2bt
        -0x2bt
        -0x2et
        -0x2bt
        -0x7dt
        -0x3at
        -0x2bt
        -0x38t
        -0x3ct
        -0x29t
        -0x34t
        -0x2ft
        -0x36t
        -0x7dt
        -0x3at
        -0x2et
        -0x2ft
        -0x37t
        -0x34t
        -0x36t
        -0x7dt
        -0x53t
        -0x4at
        -0x4et
        -0x4ft
        0x6t
        0xbt
        0x4t
        0xct
        0x11t
        0x8t
        0x7t
        0x2t
        0x4t
        0x7t
        -0x5ft
        -0x5at
        -0x61t
        -0x59t
        -0x54t
        -0x5dt
        -0x5et
        -0x63t
        -0x61t
        -0x5et
        -0x63t
        -0x59t
        -0x54t
        -0x5et
        -0x5dt
        -0x4at
        -0x6bt
        -0x66t
        -0x6dt
        -0x65t
        -0x60t
        -0x69t
        -0x6at
        -0x6ft
        -0x6dt
        -0x6at
        -0x6ft
        -0x5at
        -0x5ft
        -0x5at
        -0x6dt
        -0x62t
        -0x73t
        -0x6et
        -0x75t
        -0x6dt
        -0x68t
        -0x71t
        -0x72t
        -0x77t
        -0x62t
        -0x6dt
        -0x69t
        -0x71t
        -0x77t
        -0x63t
        -0x66t
        -0x71t
        -0x68t
        -0x62t
        -0x5at
        -0x51t
        -0x54t
        -0x5at
        -0x52t
        -0x5et
        -0x4at
        -0x4et
        -0x48t
        -0x4bt
        -0x5at
        -0x58t
        0x19t
        0x17t
        0x9t
        0x16t
        0x7t
        0x10t
        0xdt
        0x7t
        0xft
    .end array-data
.end method

.method private final A0E()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0F:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Oh;->A0d(Lcom/facebook/ads/redexgen/X/SV;)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/96;->A04:Z

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A07:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A5C()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0F:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0X()V

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0F:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0O()Lcom/facebook/ads/redexgen/X/SW;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/96;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/96;->A0C:Lcom/facebook/ads/redexgen/X/Lt;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3Q(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_45

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A06:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0f()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/96;->A0A:Lcom/facebook/ads/redexgen/X/LI;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LH;->A04:Lcom/facebook/ads/redexgen/X/LH;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LI;->A05(Lcom/facebook/ads/redexgen/X/LH;)V

    :cond_45
    return-void

    :cond_46
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A07:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A5D()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0F:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0k()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/96;->AFn()V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/96;->A07:Lcom/facebook/ads/redexgen/X/YA;

    sget-object v1, Lcom/facebook/ads/redexgen/X/96;->A0J:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_6e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6e
    sget-object v2, Lcom/facebook/ads/redexgen/X/96;->A0J:[Ljava/lang/String;

    const-string v1, "8j5uXfZ95rl8UwGJAIvPTgfy7qu4v9pG"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/IP;->A1X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A07:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A0A()Lcom/facebook/ads/redexgen/X/Ir;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ir;->AB1()V

    goto :goto_17
.end method

.method private A0F(Ljava/lang/String;)V
    .registers 15

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v5, Lcom/facebook/ads/redexgen/X/NW;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/96;->A07:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0D:Lcom/facebook/ads/redexgen/X/MM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MM;->A6M()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/96;->A0H:Lcom/facebook/ads/redexgen/X/Qb;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/96;->A0B:Lcom/facebook/ads/redexgen/X/LN;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/96;->A08:Lcom/facebook/ads/redexgen/X/If;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A06:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0x()Lcom/facebook/ads/redexgen/X/1R;

    move-result-object v11

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/96;->A0C:Lcom/facebook/ads/redexgen/X/Lt;

    invoke-direct/range {v5 .. v12}, Lcom/facebook/ads/redexgen/X/NW;-><init>(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Qb;Lcom/facebook/ads/redexgen/X/LN;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/1R;Lcom/facebook/ads/redexgen/X/Lt;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x56

    const/16 v1, 0xc

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/96;->A0B(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x62

    const/16 v1, 0x9

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/96;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A06:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, p1, v4}, Lcom/facebook/ads/redexgen/X/NW;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private getMediaView()Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0E:Lcom/facebook/ads/redexgen/X/OZ;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0F:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0O()Lcom/facebook/ads/redexgen/X/SW;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public final A8I()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A06:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0F()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1N;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/96;->A0F(Ljava/lang/String;)V

    return-void
.end method

.method public final A8J(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/96;->A0F(Ljava/lang/String;)V

    return-void
.end method

.method public final A8N()V
    .registers 6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/96;->A0C:Lcom/facebook/ads/redexgen/X/Lt;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0D:Lcom/facebook/ads/redexgen/X/MM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MM;->A5o()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3z(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/96;->A07:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/96;->A0D:Lcom/facebook/ads/redexgen/X/MM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A06:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0S()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/96;->A0C:Lcom/facebook/ads/redexgen/X/Lt;

    new-instance v0, Lcom/facebook/ads/redexgen/X/PU;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/PU;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/MM;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lt;)V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PU;->A05()V

    return-void
.end method

.method public final A96()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Se;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Se;-><init>(Lcom/facebook/ads/redexgen/X/96;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final A9C(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/5J;)V
    .registers 5

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oh;->A0B()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A00:Lcom/facebook/ads/redexgen/X/5H;

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/5J;->A0N(Lcom/facebook/ads/redexgen/X/5H;)V

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/96;->A01:Lcom/facebook/ads/redexgen/X/5J;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/96;->A0E()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A06:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0P()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/96;->A0C()V

    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0F:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0W()V

    goto :goto_20
.end method

.method public final ABR()V
    .registers 1

    return-void
.end method

.method public final ABV()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0E:Lcom/facebook/ads/redexgen/X/OZ;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OZ;->A0P()V

    :cond_7
    return-void
.end method

.method public final AC9(Z)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0E:Lcom/facebook/ads/redexgen/X/OZ;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OZ;->A0R(Z)V

    :cond_7
    return-void
.end method

.method public final ACJ(Z)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0E:Lcom/facebook/ads/redexgen/X/OZ;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OZ;->A0S(Z)V

    :cond_7
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0F:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0Q()V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0F:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0T()V

    goto :goto_e
.end method

.method public final ACj(Z)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0E:Lcom/facebook/ads/redexgen/X/OZ;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OZ;->A0T(Z)V

    :cond_7
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/96;->A03:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/96;->A0J:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_31

    sget-object v2, Lcom/facebook/ads/redexgen/X/96;->A0J:[Ljava/lang/String;

    const-string v1, "5WCDyt3aDRAQqvSthuq2O6x8YHnGvtvN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_23

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/96;->A03:Z

    return-void

    :cond_23
    if-eqz p1, :cond_2b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0F:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0P()V

    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0F:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0Y()V

    goto :goto_2a

    :cond_31
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ACx()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0E:Lcom/facebook/ads/redexgen/X/OZ;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OZ;->A0Q()V

    :cond_7
    return-void
.end method

.method public final ADS(Z)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0E:Lcom/facebook/ads/redexgen/X/OZ;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OZ;->A0U(Z)V

    :cond_7
    return-void
.end method

.method public final ADU(Z)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0E:Lcom/facebook/ads/redexgen/X/OZ;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OZ;->A0V(Z)V

    :cond_7
    return-void
.end method

.method public final ADh(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A06:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/aS;->A12(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v3, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/KZ;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/96;->A07:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kc;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A06:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A0L(Lcom/facebook/ads/redexgen/X/KZ;Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;Ljava/lang/String;)Z

    return-void
.end method

.method public final AEt(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final AFn()V
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/96;->A05:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0H:Lcom/facebook/ads/redexgen/X/Qb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qb;->A0U()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/96;->A05:Z

    :cond_c
    return-void
.end method

.method public final close()V
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/96;->A01:Lcom/facebook/ads/redexgen/X/5J;

    if-nez v1, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->finish(I)V

    return-void
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A06:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A07:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A07:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A0A()Lcom/facebook/ads/redexgen/X/Ir;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/96;->getMediaView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ir;->AFz(Landroid/view/View;)V

    :cond_15
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0E:Lcom/facebook/ads/redexgen/X/OZ;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OZ;->A0O()V

    :cond_1c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0A:Lcom/facebook/ads/redexgen/X/LI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LI;->A03()V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/96;->A08:Lcom/facebook/ads/redexgen/X/If;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A06:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/NL;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NL;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0B:Lcom/facebook/ads/redexgen/X/LN;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NL;->A02(Lcom/facebook/ads/redexgen/X/LN;)Lcom/facebook/ads/redexgen/X/NL;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A0H:Lcom/facebook/ads/redexgen/X/Qb;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NL;->A03(Lcom/facebook/ads/redexgen/X/Qb;)Lcom/facebook/ads/redexgen/X/NL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NL;->A05()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/If;->A9J(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A00:Lcom/facebook/ads/redexgen/X/5H;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A02:Lcom/facebook/ads/redexgen/X/Or;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A01:Lcom/facebook/ads/redexgen/X/5J;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/96;->A06:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0R()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oi;->A04(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oh;->A0B()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/96;->requestDisallowInterceptTouchEvent(Z)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Lt;)V
    .registers 2

    return-void
.end method

.method public setRtfActionsJavascriptListener(Lcom/facebook/ads/redexgen/X/Or;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/96;->A02:Lcom/facebook/ads/redexgen/X/Or;

    return-void
.end method
