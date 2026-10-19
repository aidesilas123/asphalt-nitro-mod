###### Class com.facebook.ads.redexgen.X.NR (com.facebook.ads.redexgen.X.NR)
.class public abstract Lcom/facebook/ads/redexgen/X/NR;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;

.field public static final A08:Landroid/widget/LinearLayout$LayoutParams;


# instance fields
.field public final A00:I

.field public final A01:Landroid/view/View$OnClickListener;

.field public final A02:Landroid/widget/RelativeLayout;

.field public final A03:Lcom/facebook/ads/redexgen/X/YA;

.field public final A04:Lcom/facebook/ads/redexgen/X/T3;

.field public final A05:Lcom/facebook/ads/redexgen/X/Ni;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cmzsI0MqV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rmZj6bXGr2Mc3k6GGfUNTI8ab"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Oqa2BQOYUIgPEQnUKqUaSgjmS1hAy2aw"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VbR8t651F3u5xAC0yd"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KwIIB1PdAD0xOvkamO3Meu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6KEr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "QBka00Gf2XeExLF7IYa6e3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/NR;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NR;->A01()V

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/NR;->A08:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;ILcom/facebook/ads/redexgen/X/1M;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/Qb;Lcom/facebook/ads/redexgen/X/LN;Lcom/facebook/ads/redexgen/X/1R;)V
    .registers 25

    move-object v3, p0

    move-object v5, p1

    invoke-direct {p0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    iput-object v5, v3, Lcom/facebook/ads/redexgen/X/NR;->A03:Lcom/facebook/ads/redexgen/X/YA;

    move/from16 v0, p2

    iput v0, v3, Lcom/facebook/ads/redexgen/X/NR;->A00:I

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ni;

    invoke-direct {v1, v5}, Lcom/facebook/ads/redexgen/X/Ni;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/NR;->A05:Lcom/facebook/ads/redexgen/X/Ni;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0M(Landroid/view/View;I)V

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    new-instance v4, Lcom/facebook/ads/redexgen/X/T3;

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v4 .. v13}, Lcom/facebook/ads/redexgen/X/T3;-><init>(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1M;ZLcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/Qb;Lcom/facebook/ads/redexgen/X/LN;Lcom/facebook/ads/redexgen/X/1R;)V

    iput-object v4, v3, Lcom/facebook/ads/redexgen/X/NR;->A04:Lcom/facebook/ads/redexgen/X/T3;

    const/16 v0, 0x3e9

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/LV;->A0G(ILandroid/view/View;)V

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/Nt;->A03(Lcom/facebook/ads/redexgen/X/T3;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/NR;->A01:Landroid/view/View$OnClickListener;

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/NR;->A02:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/facebook/ads/redexgen/X/NR;->A08:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/NR;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x31

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

    const/16 v0, 0x9

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/NR;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_17

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_17
    sget-object v2, Lcom/facebook/ads/redexgen/X/NR;->A07:[Ljava/lang/String;

    const-string v1, "W8PIFEgMaUlhByfzvyeLgAFdtcDk8ZOz"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    fill-array-data v3, :array_24

    sput-object v3, Lcom/facebook/ads/redexgen/X/NR;->A06:[B

    return-void

    :array_24
    .array-data 1
        0x9t
        0xct
        0xct
        0xdt
        0x1ct
        0x9t
        0x11t
        0x14t
        0x1bt
    .end array-data
.end method


# virtual methods
.method public A09()V
    .registers 1

    return-void
.end method

.method public A0A()V
    .registers 1

    return-void
.end method

.method public A0B()V
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NR;->A05:Lcom/facebook/ads/redexgen/X/Ni;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A01:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ni;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public abstract A0C(I)V
.end method

.method public final getCTAButton()Lcom/facebook/ads/redexgen/X/T3;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A04:Lcom/facebook/ads/redexgen/X/T3;

    return-object v0
.end method

.method public getExpandableLayout()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIconView()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A05:Lcom/facebook/ads/redexgen/X/Ni;

    return-object v0
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/1K;Lcom/facebook/ads/redexgen/X/1N;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NV;)V
    .registers 9

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NR;->A04:Lcom/facebook/ads/redexgen/X/T3;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p2, p3, v0, p5}, Lcom/facebook/ads/redexgen/X/T3;->setCta(Lcom/facebook/ads/redexgen/X/1N;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/NV;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/NR;->A05:Lcom/facebook/ads/redexgen/X/Ni;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A03:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v1, Lcom/facebook/ads/redexgen/X/T8;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/T8;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/YA;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/NR;->A00:I

    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/T8;->A05(II)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/T8;->A07(Ljava/lang/String;)V

    return-void
.end method

.method public setTitleMaxLines(I)V
    .registers 2

    return-void
.end method
