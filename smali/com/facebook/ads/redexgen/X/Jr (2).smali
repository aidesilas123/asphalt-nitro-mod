###### Class com.facebook.ads.redexgen.X.C1122Jr (com.facebook.ads.redexgen.X.Jr)
.class public final Lcom/facebook/ads/redexgen/X/Jr;
.super Landroid/widget/ImageView;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Pk;


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/RX;

.field public final A01:Landroid/graphics/Paint;

.field public final A02:Lcom/facebook/ads/redexgen/X/YA;

.field public final A03:Lcom/facebook/ads/redexgen/X/In;

.field public final A04:Lcom/facebook/ads/redexgen/X/KK;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CZ6R6baQKTb1E5sAmpDqVkfMXF7zVnG4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "nQZGX73N3q5NRRZlZyP90gUTrDeeLYBu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "LfCM6PYFJNbwOvLH4thVDQon3h1Zk2zk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bpUakkTElIOqaP65ISNG9oh"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gJtMODfbj2e7z8MJG7ZRKfD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "8rYwk9o7IGDDsMQbyUTj4ra1LUt9E6qX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "3WiLQHXTUUJ8WctEatoRQ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Xo7nIXQ5hsw2R0tzDjIU8fyfjH4jtFIR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Jr;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jr;->A06()V

    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jr;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/In;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/6k;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6k;-><init>(Lcom/facebook/ads/redexgen/X/Jr;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A04:Lcom/facebook/ads/redexgen/X/KK;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Jr;->A03:Lcom/facebook/ads/redexgen/X/In;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A02:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A01:Landroid/graphics/Paint;

    const/high16 v0, -0x67000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jr;->setColorFilter(I)V

    sget v0, Lcom/facebook/ads/redexgen/X/Jr;->A07:I

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Jr;->setPadding(IIII)V

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jr;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jr;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jr;->A05()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Py;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Py;-><init>(Lcom/facebook/ads/redexgen/X/Jr;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jr;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/YA;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A02:Lcom/facebook/ads/redexgen/X/YA;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/In;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A03:Lcom/facebook/ads/redexgen/X/In;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/RX;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A00:Lcom/facebook/ads/redexgen/X/RX;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jr;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x13

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .registers 2

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ld;->A0W:Lcom/facebook/ads/redexgen/X/Ld;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Le;->A01(Lcom/facebook/ads/redexgen/X/Ld;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jr;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private A05()V
    .registers 2

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ld;->A0X:Lcom/facebook/ads/redexgen/X/Ld;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Le;->A01(Lcom/facebook/ads/redexgen/X/Ld;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jr;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static A06()V
    .registers 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jr;->A05:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x65t
        0x5dt
        0x5ct
        0x4dt
        0x8t
        0x69t
        0x4ct
    .end array-data
.end method

.method private A07()Z
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A00:Lcom/facebook/ads/redexgen/X/RX;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->getVolume()F

    move-result v4

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jr;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_31

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jr;->A06:[Ljava/lang/String;

    const-string v1, "7LwdJMyLjSlNEKSwxkcw7Q3"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "d5nTRpYYugpReKnwSxkEX"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    cmpl-float v0, v4, v3

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e

    :cond_31
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Jr;)Z
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jr;->A07()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A09()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A00:Lcom/facebook/ads/redexgen/X/RX;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jr;->A07()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jr;->A04()V

    :goto_e
    return-void

    :cond_f
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jr;->A05()V

    goto :goto_e
.end method

.method public final A9D(Lcom/facebook/ads/redexgen/X/RX;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jr;->A00:Lcom/facebook/ads/redexgen/X/RX;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RX;->getEventBus()Lcom/facebook/ads/redexgen/X/8Z;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A04:Lcom/facebook/ads/redexgen/X/KK;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8Z;->A05(Lcom/facebook/ads/redexgen/X/8a;)Z

    :cond_d
    return-void
.end method

.method public final AG0(Lcom/facebook/ads/redexgen/X/RX;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A00:Lcom/facebook/ads/redexgen/X/RX;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->getEventBus()Lcom/facebook/ads/redexgen/X/8Z;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A04:Lcom/facebook/ads/redexgen/X/KK;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8Z;->A06(Lcom/facebook/ads/redexgen/X/8a;)Z

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A00:Lcom/facebook/ads/redexgen/X/RX;

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jr;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jr;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v1

    int-to-float v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jr;->A01:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C08096k (com.facebook.ads.redexgen.X.6k)
.class public final Lcom/facebook/ads/redexgen/X/6k;
.super Lcom/facebook/ads/redexgen/X/KK;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Jr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Jr;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jr;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6k;->A00:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KK;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Kl;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6k;->A00:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jr;->A09()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/Kl;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6k;->A00(Lcom/facebook/ads/redexgen/X/Kl;)V

    return-void
.end method
