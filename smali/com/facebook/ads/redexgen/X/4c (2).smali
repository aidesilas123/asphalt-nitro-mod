###### Class com.facebook.ads.redexgen.X.AbstractC07544c (com.facebook.ads.redexgen.X.4c)
.class public abstract Lcom/facebook/ads/redexgen/X/4c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ED;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$LayoutManager$Properties;,
        Lcom/facebook/ads/redexgen/X/4a;
    }
.end annotation


# static fields
.field public static A0I:[B

.field public static A0J:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/40;

.field public A02:Lcom/facebook/ads/redexgen/X/4p;

.field public A03:Lcom/facebook/ads/redexgen/X/ED;

.field public A04:Lcom/facebook/ads/redexgen/X/4z;

.field public A05:Lcom/facebook/ads/redexgen/X/4z;

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:Z

.field public A0F:Z

.field public final A0G:Lcom/facebook/ads/redexgen/X/4x;

.field public final A0H:Lcom/facebook/ads/redexgen/X/4x;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NGwI4w5wjKKwr8vIXUEBgcadgt82Mvhc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UEWVJJvMFTFlt7hH7ERCIJOXwkHPD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VrTEPZjwbsMyuvHOm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2WwBzOWctlsBfaK16SO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SN9IkStz5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kDHla2kaeJhueA2usdy0jZceB2KGO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Oz8ehwpCKAgd43CqPtwSSE9zN5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pRsAYaXPUkY6EiG3qKZOmbtQ8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4c;->A08()V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/facebook/ads/redexgen/X/Z4;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/Z4;-><init>(Lcom/facebook/ads/redexgen/X/4c;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/4c;->A0G:Lcom/facebook/ads/redexgen/X/4x;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Z3;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/Z3;-><init>(Lcom/facebook/ads/redexgen/X/4c;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/4c;->A0H:Lcom/facebook/ads/redexgen/X/4x;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4z;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/4z;-><init>(Lcom/facebook/ads/redexgen/X/4x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A04:Lcom/facebook/ads/redexgen/X/4z;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4z;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4z;-><init>(Lcom/facebook/ads/redexgen/X/4x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A05:Lcom/facebook/ads/redexgen/X/4z;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A09:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A07:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A06:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A0F:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A0E:Z

    return-void
.end method

.method public static A00(III)I
    .registers 4

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    sparse-switch v0, :sswitch_data_1a

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :sswitch_10
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :sswitch_19
    return p0

    :sswitch_data_1a
    .sparse-switch
        -0x80000000 -> :sswitch_10
        0x40000000 -> :sswitch_19
    .end sparse-switch
.end method

.method public static A01(IIIIZ)I
    .registers 9

    const/4 v0, 0x0

    sub-int/2addr p0, p2

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x2

    const/4 v0, -0x1

    if-eqz p4, :cond_31

    if-ltz p3, :cond_4c

    move v3, p3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_27

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_27
    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const-string v1, "ru0BYCJI67FO4KgBABZqajada"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_51

    :cond_31
    if-ltz p3, :cond_37

    move v3, p3

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_51

    :cond_37
    if-ne p3, v0, :cond_3c

    move v3, p0

    move v2, p1

    goto :goto_51

    :cond_3c
    if-ne p3, v1, :cond_51

    move v3, p0

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_47

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_4a

    :cond_47
    const/high16 v2, -0x80000000

    goto :goto_51

    :cond_4a
    const/4 v2, 0x0

    goto :goto_51

    :cond_4c
    if-ne p3, v0, :cond_72

    sparse-switch p1, :sswitch_data_78

    :cond_51
    :goto_51
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    :sswitch_56
    move v3, p0

    move v2, p1

    goto :goto_51

    :sswitch_59
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_70

    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const-string v1, "Nw"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v2, 0x0

    goto :goto_51

    :cond_70
    const/4 v2, 0x0

    goto :goto_51

    :cond_72
    if-ne p3, v1, :cond_51

    const/4 v3, 0x0

    const/4 v2, 0x0

    goto :goto_51

    nop

    :sswitch_data_78
    .sparse-switch
        -0x80000000 -> :sswitch_56
        0x0 -> :sswitch_59
        0x40000000 -> :sswitch_56
    .end sparse-switch
.end method

.method private final A02(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4d;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4d;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method private final A03(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4d;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4d;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method private final A04(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4d;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4d;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method private final A05(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4d;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4d;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method private final A06(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public static A07(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/4c;->A0I:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .registers 4

    const/16 v0, 0x114

    new-array v3, v0, [B

    fill-array-data v3, :array_2a

    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_23

    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const-string v1, "kyP20liVKsmkdJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/4c;->A0I:[B

    return-void

    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_2a
    .array-data 1
        -0x2t
        0x21t
        0x21t
        0x22t
        0x21t
        -0x23t
        0x13t
        0x26t
        0x22t
        0x34t
        -0x23t
        0x25t
        0x1et
        0x30t
        -0x23t
        0xft
        0x22t
        0x20t
        0x36t
        0x20t
        0x29t
        0x22t
        0x2ft
        0x13t
        0x26t
        0x22t
        0x34t
        -0x23t
        0x1et
        0x30t
        -0x23t
        0x2dt
        0x1et
        0x2ft
        0x22t
        0x2bt
        0x31t
        -0x23t
        0x1ft
        0x32t
        0x31t
        -0x23t
        0x33t
        0x26t
        0x22t
        0x34t
        -0x23t
        0x26t
        0x30t
        -0x23t
        0x2bt
        0x2ct
        0x31t
        -0x23t
        0x1et
        -0x23t
        0x2ft
        0x22t
        0x1et
        0x29t
        -0x23t
        0x20t
        0x25t
        0x26t
        0x29t
        0x21t
        -0x15t
        -0x23t
        0x12t
        0x2bt
        0x23t
        0x26t
        0x29t
        0x31t
        0x22t
        0x2ft
        0x22t
        0x21t
        -0x23t
        0x26t
        0x2bt
        0x21t
        0x22t
        0x35t
        -0x9t
        -0x23t
        -0x5t
        0x8t
        0x8t
        0x9t
        0xet
        -0x46t
        0x7t
        0x9t
        0x10t
        -0x1t
        -0x46t
        -0x5t
        -0x46t
        -0x3t
        0x2t
        0x3t
        0x6t
        -0x2t
        -0x46t
        0x0t
        0xct
        0x9t
        0x7t
        -0x46t
        0x8t
        0x9t
        0x8t
        -0x39t
        -0x1t
        0x12t
        0x3t
        0xdt
        0xet
        0x3t
        0x8t
        0x1t
        -0x46t
        0x3t
        0x8t
        -0x2t
        -0x1t
        0x12t
        -0x2ct
        -0x50t
        -0x3dt
        -0x3ft
        -0x29t
        -0x3ft
        -0x36t
        -0x3dt
        -0x30t
        -0x4ct
        -0x39t
        -0x3dt
        -0x2bt
        0x9t
        0x1ft
        0x25t
        -0x30t
        0x1dt
        0x25t
        0x23t
        0x24t
        -0x30t
        0x1ft
        0x26t
        0x15t
        0x22t
        0x22t
        0x19t
        0x14t
        0x15t
        -0x30t
        0x1ft
        0x1et
        -0x4t
        0x11t
        0x29t
        0x1ft
        0x25t
        0x24t
        -0xdt
        0x18t
        0x19t
        0x1ct
        0x14t
        0x22t
        0x15t
        0x1et
        -0x28t
        0x2t
        0x15t
        0x13t
        0x29t
        0x13t
        0x1ct
        0x15t
        0x22t
        -0x30t
        0x22t
        0x15t
        0x13t
        0x29t
        0x13t
        0x1ct
        0x15t
        0x22t
        -0x24t
        -0x30t
        0x3t
        0x24t
        0x11t
        0x24t
        0x15t
        -0x30t
        0x23t
        0x24t
        0x11t
        0x24t
        0x15t
        -0x27t
        -0x30t
        -0x4et
        -0x38t
        -0x32t
        0x79t
        -0x3at
        -0x32t
        -0x34t
        -0x33t
        0x79t
        -0x38t
        -0x31t
        -0x42t
        -0x35t
        -0x35t
        -0x3et
        -0x43t
        -0x42t
        0x79t
        -0x34t
        -0x3at
        -0x38t
        -0x38t
        -0x33t
        -0x3ft
        -0x54t
        -0x44t
        -0x35t
        -0x38t
        -0x3bt
        -0x3bt
        -0x53t
        -0x38t
        -0x57t
        -0x38t
        -0x34t
        -0x3et
        -0x33t
        -0x3et
        -0x38t
        -0x39t
        0x79t
        -0x33t
        -0x38t
        0x79t
        -0x34t
        -0x32t
        -0x37t
        -0x37t
        -0x38t
        -0x35t
        -0x33t
        0x79t
        -0x34t
        -0x3at
        -0x38t
        -0x38t
        -0x33t
        -0x3ft
        0x79t
        -0x34t
        -0x44t
        -0x35t
        -0x38t
        -0x3bt
        -0x3bt
        -0x3et
        -0x39t
        -0x40t
    .end array-data
.end method

.method private final A09(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0C(ILandroid/view/View;)V

    return-void
.end method

.method private final A0A(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A01:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/40;->A0D(I)V

    :cond_b
    return-void
.end method

.method private final A0B(II)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A09(I)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/4c;->A0E(Landroid/view/View;I)V

    return-void

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x55

    const/16 v1, 0x2c

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0C(ILandroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A01:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/40;->A0C(I)V

    return-void
.end method

.method private final A0D(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A01:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/40;->A0F(Landroid/view/View;)V

    return-void
.end method

.method private final A0E(Landroid/view/View;I)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4d;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0F(Landroid/view/View;ILcom/facebook/ads/redexgen/X/4d;)V

    return-void
.end method

.method private final A0F(Landroid/view/View;ILcom/facebook/ads/redexgen/X/4d;)V
    .registers 9

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ED;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4u;->A0c()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0t:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/52;->A09(Lcom/facebook/ads/redexgen/X/4u;)V

    :goto_11
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4c;->A01:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4u;->A0c()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/40;->A0H(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/ED;->A0t:Lcom/facebook/ads/redexgen/X/52;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_37

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_37
    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const-string v1, "mtQ3Ck4zhf6OC1ISSa3eadAcnNcPftbe"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/52;->A0A(Lcom/facebook/ads/redexgen/X/4u;)V

    goto :goto_11
.end method

.method private A0G(Landroid/view/View;IZ)V
    .registers 12

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ED;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v2

    if-nez p3, :cond_c

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4u;->A0c()Z

    move-result v0

    if-eqz v0, :cond_a2

    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0t:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/52;->A09(Lcom/facebook/ads/redexgen/X/4u;)V

    :goto_13
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/4d;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4u;->A0i()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_26

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4u;->A0d()Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_26
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4u;->A0d()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4u;->A0S()V

    :goto_2f
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4c;->A01:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0, v4}, Lcom/facebook/ads/redexgen/X/40;->A0H(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    :cond_38
    :goto_38
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/4d;->A02:Z

    if-eqz v0, :cond_43

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iput-boolean v4, v5, Lcom/facebook/ads/redexgen/X/4d;->A02:Z

    :cond_43
    return-void

    :cond_44
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4u;->A0O()V

    goto :goto_2f

    :cond_48
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    sget-object v3, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v3, v0

    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_66

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_66
    sget-object v3, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const-string v1, "5ABI9jSeQ"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    if-ne v7, v6, :cond_8a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A01:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/40;->A07(Landroid/view/View;)I

    move-result v3

    const/4 v1, -0x1

    if-ne p2, v1, :cond_7e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A01:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/40;->A05()I

    move-result p2

    :cond_7e
    if-eq v3, v1, :cond_ab

    if-eq v3, p2, :cond_38

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A06:Lcom/facebook/ads/redexgen/X/4c;

    invoke-direct {v0, v3, p2}, Lcom/facebook/ads/redexgen/X/4c;->A0B(II)V

    goto :goto_38

    :cond_8a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A01:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {v0, p1, p2, v4}, Lcom/facebook/ads/redexgen/X/40;->A0I(Landroid/view/View;IZ)V

    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/facebook/ads/redexgen/X/4d;->A01:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A02:Lcom/facebook/ads/redexgen/X/4p;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4p;->A0F()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A02:Lcom/facebook/ads/redexgen/X/4p;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4p;->A0C(Landroid/view/View;)V

    goto :goto_38

    :cond_a2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0t:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/52;->A0A(Lcom/facebook/ads/redexgen/X/4u;)V

    goto/16 :goto_13

    :cond_ab
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x55

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ED;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final A0H(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/ED;->A0o(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4p;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A0M(Lcom/facebook/ads/redexgen/X/4p;)V

    return-void
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/4k;ILandroid/view/View;)V
    .registers 6

    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/ED;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0h()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0b()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0c()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Q;->A0A()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/4c;->A0A(I)V

    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/4k;->A0b(Lcom/facebook/ads/redexgen/X/4u;)V

    :goto_27
    return-void

    :cond_28
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/4c;->A09(I)V

    invoke-virtual {p1, p3}, Lcom/facebook/ads/redexgen/X/4k;->A0W(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0t:Lcom/facebook/ads/redexgen/X/52;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/52;->A0C(Lcom/facebook/ads/redexgen/X/4u;)V

    goto :goto_27
.end method

.method private final A0K(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 9

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    if-eqz v4, :cond_6

    if-nez p3, :cond_7

    :cond_6
    return-void

    :cond_7
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_71

    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const-string v1, "A1LbQwkKC8kdEmdjm"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "mpAFCzQjd"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/ED;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/ED;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/ED;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/ED;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_6f

    :cond_3f
    :goto_3f
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_68

    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const-string v1, "LKoEdNrfwYhRE769hHSL4lsoF7TmWWKx"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    if-eqz v0, :cond_67

    :goto_5c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Q;->A0D()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_67
    return-void

    :cond_68
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    if-eqz v0, :cond_67

    goto :goto_5c

    :cond_6f
    const/4 v3, 0x0

    goto :goto_3f

    :cond_71
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0L(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/3g;)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/ED;->canScrollVertically(I)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/ED;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_12
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/3g;->A0N(I)V

    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/3g;->A0R(Z)V

    :cond_1a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/ED;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/ED;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_2a
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/3g;->A0N(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_47

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_47
    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const-string v1, "WKK7ZU1nOyoZ4isR3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "S1xUaVTVF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/3g;->A0R(Z)V

    :cond_56
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4c;->A0r(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)I

    move-result v3

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4c;->A0q(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)I

    move-result v2

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4c;->A0P(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)Z

    move-result v1

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4c;->A06(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)I

    move-result v0

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3d;->A00(IIZI)Lcom/facebook/ads/redexgen/X/3d;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/3g;->A0P(Ljava/lang/Object;)V

    return-void
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/4p;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A02:Lcom/facebook/ads/redexgen/X/4p;

    if-ne v0, p1, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A02:Lcom/facebook/ads/redexgen/X/4p;

    :cond_7
    return-void
.end method

.method private final A0N()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A02:Lcom/facebook/ads/redexgen/X/4p;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4p;->A0F()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static A0O(III)Z
    .registers 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/4 v1, 0x0

    if-lez p2, :cond_e

    if-eq p0, p2, :cond_e

    return v1

    :cond_e
    const/4 v0, 0x1

    sparse-switch v3, :sswitch_data_1c

    return v1

    :sswitch_13
    if-lt v2, p0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1

    :sswitch_17
    return v0

    :sswitch_18
    if-ne v2, p0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1

    :sswitch_data_1c
    .sparse-switch
        -0x80000000 -> :sswitch_13
        0x0 -> :sswitch_17
        0x40000000 -> :sswitch_18
    .end sparse-switch
.end method

.method private final A0P(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method private final A0Q(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;ILandroid/os/Bundle;)Z
    .registers 12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    const/4 v3, 0x0

    if-nez v0, :cond_6

    return v3

    :cond_6
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    sparse-switch p3, :sswitch_data_8a

    :cond_c
    :goto_c
    if-nez v4, :cond_6a

    if-nez v6, :cond_6a

    return v3

    :sswitch_11
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/ED;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0X()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0g()I

    move-result v0

    sub-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0d()I

    move-result v0

    sub-int/2addr v4, v0

    :cond_25
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/ED;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0h()I

    move-result v6

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0e()I

    move-result v0

    sub-int/2addr v6, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0f()I

    move-result v0

    sub-int/2addr v6, v0

    goto :goto_c

    :sswitch_3c
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/ED;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0X()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0g()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0d()I

    move-result v0

    sub-int/2addr v1, v0

    neg-int v4, v1

    :cond_52
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/ED;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0h()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0e()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0f()I

    move-result v0

    sub-int/2addr v1, v0

    neg-int v6, v1

    goto :goto_c

    :cond_6a
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_84

    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const-string v1, "6TTpYbQ6a4"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, v6, v4}, Lcom/facebook/ads/redexgen/X/ED;->scrollBy(II)V

    return v5

    :cond_84
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_data_8a
    .sparse-switch
        0x1000 -> :sswitch_11
        0x2000 -> :sswitch_3c
    .end sparse-switch
.end method

.method private final A0R(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 7

    const/4 v0, 0x0

    return v0
.end method

.method private A0S(Lcom/facebook/ads/redexgen/X/ED;II)Z
    .registers 12

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ED;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    const/4 v6, 0x0

    if-nez v7, :cond_8

    return v6

    :cond_8
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0e()I

    move-result v5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0g()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0h()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0f()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0X()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0d()I

    move-result v0

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ED;->A0p:Landroid/graphics/Rect;

    invoke-direct {p0, v7, v1}, Lcom/facebook/ads/redexgen/X/4c;->A0H(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v0, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    if-ge v0, v3, :cond_3d

    iget v0, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p2

    if-le v0, v5, :cond_3d

    iget v0, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p3

    if-ge v0, v2, :cond_3d

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p3

    if-gt v0, v4, :cond_3e

    :cond_3d
    return v6

    :cond_3e
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_54

    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const-string v1, "D1nd79aIos3YYe4Hq7EzCaafqnQh2NEe"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_54
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0T(Lcom/facebook/ads/redexgen/X/ED;Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0N()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ED;->A1v()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private A0U(Landroid/view/View;Landroid/graphics/Rect;)[I
    .registers 17

    const/4 v0, 0x2

    new-array v4, v0, [I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0e()I

    move-result v13

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0g()I

    move-result v12

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0h()I

    move-result v11

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0f()I

    move-result v0

    sub-int/2addr v11, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0X()I

    move-result v10

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0d()I

    move-result v0

    sub-int/2addr v10, v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v9

    move-object/from16 v1, p2

    iget v0, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int/2addr v9, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v8

    iget v0, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr v8, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v7, v9

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v8

    sub-int v0, v9, v13

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int v0, v8, v12

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v0, v7, v11

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v2, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0a()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_8d

    if-eqz v3, :cond_87

    :goto_62
    if-eqz v5, :cond_81

    :goto_64
    const/4 v0, 0x0

    aput v3, v4, v0

    const/4 v0, 0x1

    aput v5, v4, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_97

    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const-string v1, "97vXAXgJ0WxvI5IvBZpOR2Ky1DZNuVnu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v4

    :cond_81
    sub-int/2addr v8, v12

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_64

    :cond_87
    sub-int/2addr v7, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_62

    :cond_8d
    if-eqz v6, :cond_91

    move v3, v6

    goto :goto_62

    :cond_91
    sub-int/2addr v9, v13

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_62

    :cond_97
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0V()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public final A0W()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A01:Lcom/facebook/ads/redexgen/X/40;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/40;->A05()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final A0X()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A0A:I

    return v0
.end method

.method public final A0Y()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A0B:I

    return v0
.end method

.method public final A0Z()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->getAdapter()Lcom/facebook/ads/redexgen/X/4Q;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Q;->A0D()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e

    :cond_11
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final A0a()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3H;->A01(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final A0b()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3H;->A02(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final A0c()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3H;->A03(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final A0d()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->getPaddingBottom()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final A0e()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->getPaddingLeft()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final A0f()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->getPaddingRight()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final A0g()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->getPaddingTop()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final A0h()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A0C:I

    return v0
.end method

.method public final A0i()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A0D:I

    return v0
.end method

.method public final A0j(Landroid/view/View;)I
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A02(Landroid/view/View;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0k(Landroid/view/View;)I
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A03(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0l(Landroid/view/View;)I
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4d;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4d;->A03:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v0, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0m(Landroid/view/View;)I
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4d;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4d;->A03:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v0, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget v0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0n(Landroid/view/View;)I
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A04(Landroid/view/View;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0o(Landroid/view/View;)I
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A05(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0p(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4d;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4d;->A00()I

    move-result v0

    return v0
.end method

.method public A0q(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    if-nez v0, :cond_a

    :cond_9
    return v1

    :cond_a
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A24()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Q;->A0D()I

    move-result v1

    :cond_18
    return v1
.end method

.method public A0r(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    if-nez v0, :cond_a

    :cond_9
    return v1

    :cond_a
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A25()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Q;->A0D()I

    move-result v1

    :cond_18
    return v1
.end method

.method public final A0s()Landroid/view/View;
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    const/4 v5, 0x0

    if-nez v0, :cond_6

    return-object v5

    :cond_6
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_22

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_22
    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const-string v1, "iiKud1wfkCloFGZ1U"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_4c

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4c;->A01:Lcom/facebook/ads/redexgen/X/40;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4d

    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const-string v1, "7ET4ZuKdeEmot2qkcvXky1gJdqYIXUUX"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/40;->A0K(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5b

    :cond_4c
    :goto_4c
    return-object v5

    :cond_4d
    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const-string v1, "xPYIlKgRfeB9qWlMIQGlIgoODb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/40;->A0K(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5b

    goto :goto_4c

    :cond_5b
    return-object v3
.end method

.method public final A0t(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A01:Lcom/facebook/ads/redexgen/X/40;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/40;->A09(I)Landroid/view/View;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final A0u(Landroid/view/View;I)Landroid/view/View;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public A0v(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/ads/redexgen/X/4d;
    .registers 4

    new-instance v0, Lcom/facebook/ads/redexgen/X/4d;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public A0w(Landroid/view/ViewGroup$LayoutParams;)Lcom/facebook/ads/redexgen/X/4d;
    .registers 3

    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/4d;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/facebook/ads/redexgen/X/4d;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4d;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/4d;-><init>(Lcom/facebook/ads/redexgen/X/4d;)V

    return-object v0

    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4d;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/4d;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_18
    new-instance v0, Lcom/facebook/ads/redexgen/X/4d;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/4d;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final A0x()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A02:Lcom/facebook/ads/redexgen/X/4p;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4p;->A09()V

    :cond_7
    return-void
.end method

.method public final A0y()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->requestLayout()V

    :cond_7
    return-void
.end method

.method public final A0z(I)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ED;->A1U(I)V

    :cond_7
    return-void
.end method

.method public final A10(I)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ED;->A1V(I)V

    :cond_7
    return-void
.end method

.method public final A11(II)V
    .registers 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A0C:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A0D:I

    const/4 v1, 0x0

    if-nez v0, :cond_15

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/ED;->A1B:Z

    if-nez v0, :cond_15

    iput v1, p0, Lcom/facebook/ads/redexgen/X/4c;->A0C:I

    :cond_15
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A0A:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A0B:I

    if-nez v0, :cond_29

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/ED;->A1B:Z

    if-nez v0, :cond_29

    iput v1, p0, Lcom/facebook/ads/redexgen/X/4c;->A0A:I

    :cond_29
    return-void
.end method

.method public final A12(II)V
    .registers 12

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v8

    if-nez v8, :cond_c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/ED;->A1b(II)V

    return-void

    :cond_c
    const v6, 0x7fffffff

    const v5, 0x7fffffff

    const/high16 v4, -0x80000000

    const/high16 v3, -0x80000000

    const/4 v7, 0x0

    :goto_17
    if-ge v7, v8, :cond_3f

    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ED;->A0p:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Lcom/facebook/ads/redexgen/X/4c;->A0H(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v0, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v6, :cond_2a

    iget v6, v1, Landroid/graphics/Rect;->left:I

    :cond_2a
    iget v0, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v4, :cond_30

    iget v4, v1, Landroid/graphics/Rect;->right:I

    :cond_30
    iget v0, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v5, :cond_36

    iget v5, v1, Landroid/graphics/Rect;->top:I

    :cond_36
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v3, :cond_3c

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    :cond_3c
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_3f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0p:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v5, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6c

    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const-string v1, "hT857kPIBtMq0qM94"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "qfhhOTku3"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0p:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4c;->A15(Landroid/graphics/Rect;II)V

    return-void

    :cond_6c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A13(II)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/ED;->A0v(Lcom/facebook/ads/redexgen/X/ED;II)V

    return-void
.end method

.method public final A14(ILcom/facebook/ads/redexgen/X/4k;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A0A(I)V

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/4k;->A0X(Landroid/view/View;)V

    return-void
.end method

.method public A15(Landroid/graphics/Rect;II)V
    .registers 7

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0e()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0f()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0g()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0d()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0c()I

    move-result v0

    invoke-static {p2, v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A00(III)I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0b()I

    move-result v0

    invoke-static {p3, v2, v0}, Lcom/facebook/ads/redexgen/X/4c;->A00(III)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A13(II)V

    return-void
.end method

.method public final A16(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A18(Landroid/view/View;I)V

    return-void
.end method

.method public final A17(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A19(Landroid/view/View;I)V

    return-void
.end method

.method public final A18(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0G(Landroid/view/View;IZ)V

    return-void
.end method

.method public final A19(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0G(Landroid/view/View;IZ)V

    return-void
.end method

.method public final A1A(Landroid/view/View;II)V
    .registers 11

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/4d;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ED;->A1D(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr p2, v1

    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    add-int/2addr p3, v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0h()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0i()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0e()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0f()I

    move-result v0

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/4d;->leftMargin:I

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/4d;->rightMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, p2

    iget v1, v6, Lcom/facebook/ads/redexgen/X/4d;->width:I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A24()Z

    move-result v0

    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A01(IIIIZ)I

    move-result v5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0X()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0Y()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0g()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0d()I

    move-result v0

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/4d;->topMargin:I

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/4d;->bottomMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, p3

    iget v1, v6, Lcom/facebook/ads/redexgen/X/4d;->height:I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A25()Z

    move-result v0

    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A01(IIIIZ)I

    move-result v1

    invoke-virtual {p0, p1, v5, v1, v6}, Lcom/facebook/ads/redexgen/X/4c;->A1a(Landroid/view/View;IILcom/facebook/ads/redexgen/X/4d;)Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    :cond_65
    return-void
.end method

.method public final A1B(Landroid/view/View;IIII)V
    .registers 11

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/4d;

    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/4d;->A03:Landroid/graphics/Rect;

    iget v2, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4d;->leftMargin:I

    add-int/2addr v2, v0

    iget v1, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4d;->topMargin:I

    add-int/2addr v1, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4d;->rightMargin:I

    sub-int/2addr p4, v0

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4d;->bottomMargin:I

    sub-int/2addr p5, v0

    invoke-virtual {p1, v2, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public final A1C(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3g;)V
    .registers 6

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ED;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4u;->A0c()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4c;->A01:Lcom/facebook/ads/redexgen/X/40;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A0K(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ED;->A0r:Lcom/facebook/ads/redexgen/X/4k;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4c;->A1K(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Landroid/view/View;Lcom/facebook/ads/redexgen/X/3g;)V

    :cond_21
    return-void
.end method

.method public final A1D(Landroid/view/View;Lcom/facebook/ads/redexgen/X/4k;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A0D(Landroid/view/View;)V

    invoke-virtual {p2, p1}, Lcom/facebook/ads/redexgen/X/4k;->A0X(Landroid/view/View;)V

    return-void
.end method

.method public final A1E(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .registers 11

    if-eqz p2, :cond_65

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4d;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/4d;->A03:Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/Rect;->left:I

    neg-int v4, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    neg-int v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v0, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    invoke-virtual {p3, v4, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_21
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    if-eqz v0, :cond_8a

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/ED;->A0q:Landroid/graphics/RectF;

    invoke-virtual {v6, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, v6, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v5, v0

    iget v0, v6, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v4, v0

    iget v3, v6, Landroid/graphics/RectF;->right:F

    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_72

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_65
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_21

    :cond_72
    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const-string v1, "WbBFuKAltYM"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    float-to-double v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    invoke-virtual {p3, v5, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_8a
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final A1F(Lcom/facebook/ads/redexgen/X/3g;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ED;->A0r:Lcom/facebook/ads/redexgen/X/4k;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    invoke-direct {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A0L(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/3g;)V

    return-void
.end method

.method public final A1G(Lcom/facebook/ads/redexgen/X/4k;)V
    .registers 8

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4k;->A0E()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    :goto_6
    if-ltz v4, :cond_3d

    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/4k;->A0F(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/ED;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4u;->A0h()Z

    move-result v0

    if-eqz v0, :cond_19

    :goto_16
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_19
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/4u;->A0Z(Z)V

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4u;->A0e()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/ED;->removeDetachedView(Landroid/view/View;Z)V

    :cond_28
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A05:Lcom/facebook/ads/redexgen/X/4Y;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A05:Lcom/facebook/ads/redexgen/X/4Y;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4Y;->A0K(Lcom/facebook/ads/redexgen/X/4u;)V

    :cond_35
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4u;->A0Z(Z)V

    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4k;->A0V(Landroid/view/View;)V

    goto :goto_16

    :cond_3d
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4k;->A0L()V

    if-lez v5, :cond_47

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->invalidate()V

    :cond_47
    return-void
.end method

.method public final A1H(Lcom/facebook/ads/redexgen/X/4k;)V
    .registers 4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_6
    if-ltz v1, :cond_12

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0J(Lcom/facebook/ads/redexgen/X/4k;ILandroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method public final A1I(Lcom/facebook/ads/redexgen/X/4k;)V
    .registers 4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_6
    if-ltz v1, :cond_1c

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ED;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0h()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/4c;->A14(ILcom/facebook/ads/redexgen/X/4k;)V

    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public A1J(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;II)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/ED;->A1b(II)V

    return-void
.end method

.method public A1K(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Landroid/view/View;Lcom/facebook/ads/redexgen/X/3g;)V
    .registers 14

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A25()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/4c;->A0p(Landroid/view/View;)I

    move-result v3

    :goto_a
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A24()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/4c;->A0p(Landroid/view/View;)I

    move-result v5

    :goto_14
    const/4 v4, 0x1

    const/4 v6, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_32

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2e
    const/4 v5, 0x0

    goto :goto_14

    :cond_30
    const/4 v3, 0x0

    goto :goto_a

    :cond_32
    sget-object v2, Lcom/facebook/ads/redexgen/X/4c;->A0J:[Ljava/lang/String;

    const-string v1, "h476R5jl"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/3e;->A00(IIIIZZ)Lcom/facebook/ads/redexgen/X/3e;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/facebook/ads/redexgen/X/3g;->A0Q(Ljava/lang/Object;)V

    return-void
.end method

.method public final A1L(Lcom/facebook/ads/redexgen/X/4p;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A02:Lcom/facebook/ads/redexgen/X/4p;

    if-eqz v0, :cond_11

    if-eq p1, v0, :cond_11

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4p;->A0F()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A02:Lcom/facebook/ads/redexgen/X/4p;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4p;->A09()V

    :cond_11
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4c;->A02:Lcom/facebook/ads/redexgen/X/4p;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {p1, v0, p0}, Lcom/facebook/ads/redexgen/X/4p;->A0D(Lcom/facebook/ads/redexgen/X/ED;Lcom/facebook/ads/redexgen/X/4c;)V

    return-void
.end method

.method public A1M(Lcom/facebook/ads/redexgen/X/ED;)V
    .registers 2

    return-void
.end method

.method public final A1N(Lcom/facebook/ads/redexgen/X/ED;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A07:Z

    return-void
.end method

.method public final A1O(Lcom/facebook/ads/redexgen/X/ED;)V
    .registers 5

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ED;->getWidth()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ED;->getHeight()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A11(II)V

    return-void
.end method

.method public final A1P(Lcom/facebook/ads/redexgen/X/ED;)V
    .registers 3

    if-nez p1, :cond_13

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A01:Lcom/facebook/ads/redexgen/X/40;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A0C:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A0A:I

    :goto_c
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A0D:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A0B:I

    return-void

    :cond_13
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/ED;->A01:Lcom/facebook/ads/redexgen/X/40;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A01:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ED;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A0C:I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ED;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A0A:I

    goto :goto_c
.end method

.method public A1Q(Lcom/facebook/ads/redexgen/X/ED;II)V
    .registers 4

    return-void
.end method

.method public A1R(Lcom/facebook/ads/redexgen/X/ED;II)V
    .registers 4

    return-void
.end method

.method public A1S(Lcom/facebook/ads/redexgen/X/ED;III)V
    .registers 5

    return-void
.end method

.method public A1T(Lcom/facebook/ads/redexgen/X/ED;IILjava/lang/Object;)V
    .registers 5

    return-void
.end method

.method public final A1U(Lcom/facebook/ads/redexgen/X/ED;Lcom/facebook/ads/redexgen/X/4k;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A07:Z

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4c;->A20(Lcom/facebook/ads/redexgen/X/ED;Lcom/facebook/ads/redexgen/X/4k;)V

    return-void
.end method

.method public final A1V(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/4c;->A06:Z

    return-void
.end method

.method public final A1W()Z
    .registers 5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v3

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_1c

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v0, :cond_19

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v0, :cond_19

    const/4 v0, 0x1

    return v0

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public final A1X()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0B:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final A1Y()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A0E:Z

    return v0
.end method

.method public final A1Z(ILandroid/os/Bundle;)Z
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ED;->A0r:Lcom/facebook/ads/redexgen/X/4k;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4c;->A0Q(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final A1a(Landroid/view/View;IILcom/facebook/ads/redexgen/X/4d;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A0F:Z

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v0, p4, Lcom/facebook/ads/redexgen/X/4d;->width:I

    invoke-static {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0O(III)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, p4, Lcom/facebook/ads/redexgen/X/4d;->height:I

    invoke-static {v1, p3, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0O(III)Z

    move-result v0

    if-nez v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public final A1b(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ED;->A0r:Lcom/facebook/ads/redexgen/X/4k;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/4c;->A0R(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public A1c(Lcom/facebook/ads/redexgen/X/4d;)Z
    .registers 3

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final A1d(Lcom/facebook/ads/redexgen/X/ED;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/4c;->A1e(Lcom/facebook/ads/redexgen/X/ED;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result v0

    return v0
.end method

.method public final A1e(Lcom/facebook/ads/redexgen/X/ED;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .registers 11

    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/4c;->A0U(Landroid/view/View;Landroid/graphics/Rect;)[I

    move-result-object v0

    const/4 v4, 0x0

    aget v3, v0, v4

    const/4 v2, 0x1

    aget v1, v0, v2

    if-eqz p5, :cond_12

    invoke-direct {p0, p1, v3, v1}, Lcom/facebook/ads/redexgen/X/4c;->A0S(Lcom/facebook/ads/redexgen/X/ED;II)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_12
    if-nez v3, :cond_16

    if-eqz v1, :cond_20

    :cond_16
    if-eqz p4, :cond_1c

    invoke-virtual {p1, v3, v1}, Lcom/facebook/ads/redexgen/X/ED;->scrollBy(II)V

    :goto_1b
    return v2

    :cond_1c
    invoke-virtual {p1, v3, v1}, Lcom/facebook/ads/redexgen/X/ED;->A1f(II)V

    goto :goto_1b

    :cond_20
    return v4
.end method

.method public final A1f(Lcom/facebook/ads/redexgen/X/ED;Lcom/facebook/ads/redexgen/X/4r;Landroid/view/View;Landroid/view/View;)Z
    .registers 6

    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/ads/redexgen/X/4c;->A0T(Lcom/facebook/ads/redexgen/X/ED;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final A1g(Lcom/facebook/ads/redexgen/X/ED;Ljava/util/ArrayList;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/ED;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public A1h(ILcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public A1i(ILcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public A1j(Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public A1k(Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public A1l(Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public A1m(Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public A1n(Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public A1o(Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public A1p()Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public A1q(I)Landroid/view/View;
    .registers 7

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v4

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v4, :cond_31

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/ED;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v1

    if-nez v1, :cond_14

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0I()I

    move-result v0

    if-ne v0, p1, :cond_11

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0h()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4r;->A07()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0c()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_30
    return-object v2

    :cond_31
    const/4 v0, 0x0

    return-object v0
.end method

.method public A1r(Landroid/view/View;ILcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)Landroid/view/View;
    .registers 6

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract A1s()Lcom/facebook/ads/redexgen/X/4d;
.end method

.method public A1t(I)V
    .registers 2

    return-void
.end method

.method public A1u(IILcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4a;)V
    .registers 5

    return-void
.end method

.method public A1v(ILcom/facebook/ads/redexgen/X/4a;)V
    .registers 3

    return-void
.end method

.method public A1w(Landroid/os/Parcelable;)V
    .registers 2

    return-void
.end method

.method public A1x(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ED;->A0r:Lcom/facebook/ads/redexgen/X/4k;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    invoke-direct {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A0K(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public A1y(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)V
    .registers 7

    const/16 v2, 0x81

    const/16 v1, 0xc

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8d

    const/16 v1, 0x43

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public A1z(Lcom/facebook/ads/redexgen/X/4r;)V
    .registers 2

    return-void
.end method

.method public A20(Lcom/facebook/ads/redexgen/X/ED;Lcom/facebook/ads/redexgen/X/4k;)V
    .registers 3

    return-void
.end method

.method public A21(Lcom/facebook/ads/redexgen/X/ED;Lcom/facebook/ads/redexgen/X/4r;I)V
    .registers 8

    const/16 v2, 0x81

    const/16 v1, 0xc

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xd0

    const/16 v1, 0x44

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4c;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public A22(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A03:Lcom/facebook/ads/redexgen/X/ED;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ED;->A1q(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public A23()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public A24()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public A25()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public A26()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
