###### Class com.facebook.ads.redexgen.X.C06730x (com.facebook.ads.redexgen.X.0x)
.class public final Lcom/facebook/ads/redexgen/X/0x;
.super Lcom/facebook/ads/redexgen/X/1i;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/P9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Lz;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/Lz;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/Ab;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "T7MK6mm4Fzbg8PTMnM4kcHpb21LLpIaw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "PTQtUxKdjysMmbj8hCZsGKEwd1IRWqqZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Zw8mt4VncD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "79VYCrnrWW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2MnAMBnkkiKtyd2cP7mHhabJycDYuMiE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jaMauIT7sdi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "OgIH7ZaBRtH9hoDgrnw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xZmsCngT77DU5lblEiekqTVKPqNdsast"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0x;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0x;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1i;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A02:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A00:I

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A05:Z

    new-instance v2, Lcom/facebook/ads/redexgen/X/P6;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/P6;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/P5;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/P5;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ab;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/Ab;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/P6;Lcom/facebook/ads/redexgen/X/P5;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A06:Lcom/facebook/ads/redexgen/X/Ab;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0x;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1i;-><init>(Lcom/facebook/ads/redexgen/X/YA;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A02:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A00:I

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A05:Z

    new-instance v2, Lcom/facebook/ads/redexgen/X/P6;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/P6;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/P5;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/P5;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ab;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/Ab;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/P6;Lcom/facebook/ads/redexgen/X/P5;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A06:Lcom/facebook/ads/redexgen/X/Ab;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0x;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/1i;-><init>(Lcom/facebook/ads/redexgen/X/YA;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A02:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A00:I

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A05:Z

    new-instance v2, Lcom/facebook/ads/redexgen/X/P6;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/P6;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/P5;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/P5;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ab;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/Ab;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/P6;Lcom/facebook/ads/redexgen/X/P5;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A06:Lcom/facebook/ads/redexgen/X/Ab;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0x;->A02()V

    return-void
.end method

.method private A00(I)I
    .registers 9

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A00:I

    mul-int/lit8 v6, v0, 0x2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0x;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0x;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v5, v0

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getAdapter()Lcom/facebook/ads/redexgen/X/4Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Q;->A0D()I

    move-result v4

    const/4 v3, 0x0

    const v0, 0x7fffffff

    :goto_1a
    if-le v0, p1, :cond_2e

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v4, :cond_21

    return p1

    :cond_21
    mul-int v0, v3, v6

    sub-int v0, v5, v0

    int-to-float v2, v0

    int-to-float v1, v3

    const v0, 0x3eaa7efa    # 0.333f

    add-float/2addr v1, v0

    div-float/2addr v2, v1

    float-to-int v0, v2

    goto :goto_1a

    :cond_2e
    return v0
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/0x;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A06:Lcom/facebook/ads/redexgen/X/Ab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/ZC;->A2E(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A06:Lcom/facebook/ads/redexgen/X/Ab;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/1i;->setLayoutManager(Lcom/facebook/ads/redexgen/X/4c;)V

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/0x;->setSaveEnabled(Z)V

    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/1i;->setSnapDelegate(Lcom/facebook/ads/redexgen/X/P9;)V

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    return-void
.end method

.method public static A03()V
    .registers 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/0x;->A07:[B

    return-void

    :array_a
    .array-data 1
        -0x6t
        -0x7t
        -0x25t
        -0x14t
        -0xet
        -0x10t
        -0x32t
        -0xdt
        -0x14t
        -0x7t
        -0xet
        -0x10t
        -0x11t
    .end array-data
.end method

.method private A04(II)V
    .registers 6

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A03:I

    if-ne p1, v0, :cond_9

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A02:I

    if-ne p2, v0, :cond_9

    return-void

    :cond_9
    iput p1, p0, Lcom/facebook/ads/redexgen/X/0x;->A03:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/0x;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_37

    sget-object v2, Lcom/facebook/ads/redexgen/X/0x;->A08:[Ljava/lang/String;

    const-string v1, "hNBaptvkpj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput p2, p0, Lcom/facebook/ads/redexgen/X/0x;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A04:Lcom/facebook/ads/redexgen/X/Lz;

    if-eqz v0, :cond_36

    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0x;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    return-void

    :cond_37
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A23(IZ)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1i;->A23(IZ)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/0x;->A04(II)V

    return-void
.end method

.method public final A7b(I)I
    .registers 5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1i;->A06:I

    if-gt v2, v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iget v1, p0, Lcom/facebook/ads/redexgen/X/0x;->A01:I

    const/4 v0, 0x1

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    div-int/2addr v2, v1

    add-int/2addr v0, v2

    goto :goto_f
.end method

.method public getChildSpacing()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A00:I

    return v0
.end method

.method public final onMeasure(II)V
    .registers 7

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ED;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0x;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0x;->getPaddingBottom()I

    move-result v0

    add-int/2addr v3, v0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A05:Z

    if-eqz v0, :cond_58

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    float-to-int v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0x;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A0E(Landroid/content/Context;)I

    move-result v0

    mul-int/2addr v1, v0

    add-int/2addr v1, v3

    :goto_1d
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_66

    :goto_24
    sub-int/2addr v1, v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A05:Z

    if-eqz v0, :cond_45

    sget v0, Lcom/facebook/ads/redexgen/X/Lv;->A09:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2f
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0x;->getMeasuredWidth()I

    move-result v1

    add-int v0, v2, v3

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/0x;->setMeasuredDimension(II)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A05:Z

    if-nez v0, :cond_44

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A00:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/0x;->setChildWidth(I)V

    :cond_44
    return-void

    :cond_45
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/0x;->A00(I)I

    move-result v2

    goto :goto_2f

    :sswitch_4a
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_24

    :sswitch_53
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_24

    :cond_58
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0x;->getMeasuredWidth()I

    move-result v0

    int-to-float v1, v0

    const v0, 0x3ff47ae1    # 1.91f

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_1d

    :sswitch_data_66
    .sparse-switch
        -0x80000000 -> :sswitch_4a
        0x40000000 -> :sswitch_53
    .end sparse-switch
.end method

.method public setAdapter(Lcom/facebook/ads/redexgen/X/4Q;)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0x;->A06:Lcom/facebook/ads/redexgen/X/Ab;

    if-nez p1, :cond_c

    const/4 v0, -0x1

    :goto_5
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ab;->A2L(I)V

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/ED;->setAdapter(Lcom/facebook/ads/redexgen/X/4Q;)V

    return-void

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public setChildSpacing(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/0x;->A00:I

    return-void
.end method

.method public setChildWidth(I)V
    .registers 8

    iput p1, p0, Lcom/facebook/ads/redexgen/X/0x;->A01:I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0x;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0x;->getPaddingLeft()I

    move-result v0

    sub-int v2, v5, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0x;->getPaddingRight()I

    move-result v0

    sub-int/2addr v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0x;->A06:Lcom/facebook/ads/redexgen/X/Ab;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A01:I

    sub-int/2addr v2, v0

    div-int/lit8 v0, v2, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ab;->A2M(I)V

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/0x;->A06:Lcom/facebook/ads/redexgen/X/Ab;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/0x;->A01:I

    int-to-double v2, v0

    int-to-double v0, v5

    div-double/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/Ab;->A2K(D)V

    return-void
.end method

.method public setCurrentPosition(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/0x;->A23(IZ)V

    return-void
.end method

.method public setOnPageChangedListener(Lcom/facebook/ads/redexgen/X/Lz;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/0x;->A04:Lcom/facebook/ads/redexgen/X/Lz;

    return-void
.end method

.method public setShowTextInCarousel(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/0x;->A05:Z

    return-void
.end method
