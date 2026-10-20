###### Class com.facebook.ads.redexgen.X.G4 (com.facebook.ads.redexgen.X.G4)
.class public final Lcom/facebook/ads/redexgen/X/G4;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/webvtt/WebvttCssStyle$OptionalBoolean;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/webvtt/WebvttCssStyle$FontSizeUnit;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/webvtt/WebvttCssStyle$StyleFlags;
    }
.end annotation


# static fields
.field public static A0G:[B

.field public static A0H:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:Landroid/text/Layout$Alignment;

.field public A09:Ljava/lang/String;

.field public A0A:Ljava/lang/String;

.field public A0B:Ljava/lang/String;

.field public A0C:Ljava/lang/String;

.field public A0D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A0E:Z

.field public A0F:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "a0j0pjJovXsqGpLV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "nOyRGrgn0RrQrx8RLh1IVysMIGGZ9zSU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HhM8cHVoe7oP095HvM3MDl3FTOytY8Nt"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qV96UZYP0XVtF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KdjCZLvvBrBGDDTWJomEgtFOXhZQvXq0q"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EURW7oGImTlyr4LdZ1NjIT6oNREHOO5j"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RHBOYojiC1ffUGCaEMtUODJeCNdosg3N"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TICGsHQsoGjdDQAevjnKsbeUNwnFU3hV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/G4;->A0H:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/G4;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/G4;->A03()V

    return-void
.end method

.method public static A00(ILjava/lang/String;Ljava/lang/String;I)I
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v1, -0x1

    if-ne p0, v1, :cond_a

    :cond_9
    return p0

    :cond_a
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    add-int v1, p0, p3

    :cond_12
    return v1
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/G4;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x14

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .registers 1

    const/16 v0, 0x33

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/G4;->A0G:[B

    return-void

    :array_a
    .array-data 1
        0x75t
        -0x6ct
        -0x6at
        -0x62t
        -0x66t
        -0x5bt
        -0x5et
        -0x58t
        -0x5ft
        -0x69t
        0x53t
        -0x6at
        -0x5et
        -0x61t
        -0x5et
        -0x5bt
        0x53t
        -0x5ft
        -0x5et
        -0x59t
        0x53t
        -0x69t
        -0x68t
        -0x67t
        -0x64t
        -0x5ft
        -0x68t
        -0x69t
        0x61t
        -0x7et
        -0x55t
        -0x56t
        -0x50t
        0x5ct
        -0x61t
        -0x55t
        -0x58t
        -0x55t
        -0x52t
        0x5ct
        -0x56t
        -0x55t
        -0x50t
        0x5ct
        -0x60t
        -0x5ft
        -0x5et
        -0x5bt
        -0x56t
        -0x5ft
        -0x60t
    .end array-data
.end method

.method private final A03()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G4;->A01(III)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/G4;->A0A:Ljava/lang/String;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/G4;->A0B:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A0D:Ljava/util/List;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/G4;->A0C:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/G4;->A09:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A0F:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A0E:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A07:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A05:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A04:I

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/G4;->A08:Landroid/text/Layout$Alignment;

    return-void
.end method


# virtual methods
.method public final A04()F
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A00:F

    return v0
.end method

.method public final A05()I
    .registers 4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A0E:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A01:I

    return v0

    :cond_7
    const/4 v2, 0x0

    const/16 v1, 0x1d

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G4;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A06()I
    .registers 4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A0F:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A03:I

    return v0

    :cond_7
    const/16 v2, 0x1d

    const/16 v1, 0x16

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G4;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A07()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A04:I

    return v0
.end method

.method public final A08()I
    .registers 6

    iget v4, p0, Lcom/facebook/ads/redexgen/X/G4;->A02:I

    const/4 v1, -0x1

    if-ne v4, v1, :cond_a

    iget v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A05:I

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    const/4 v3, 0x0

    const/4 v2, 0x1

    if-ne v4, v2, :cond_16

    const/4 v1, 0x1

    :goto_f
    iget v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A05:I

    if-ne v0, v2, :cond_14

    const/4 v3, 0x2

    :cond_14
    or-int/2addr v1, v3

    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public final A09(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A0A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/G4;->A0B:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/G4;->A0H:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_44

    sget-object v2, Lcom/facebook/ads/redexgen/X/G4;->A0H:[Ljava/lang/String;

    const-string v1, "uGADXBaYz1rV8w4N"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "04kRdzF0lWsSB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A0C:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0

    :cond_44
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4a
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G4;->A0A:Ljava/lang/String;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v2, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/G4;->A00(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G4;->A0B:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v2, v1, p2, v0}, Lcom/facebook/ads/redexgen/X/G4;->A00(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G4;->A0C:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v2, v1, p4, v0}, Lcom/facebook/ads/redexgen/X/G4;->A00(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_70

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A0D:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_72

    :cond_70
    const/4 v0, 0x0

    return v0

    :cond_72
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v2, v0

    return v2
.end method

.method public final A0A()Landroid/text/Layout$Alignment;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A08:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public final A0B(I)Lcom/facebook/ads/redexgen/X/G4;
    .registers 3

    iput p1, p0, Lcom/facebook/ads/redexgen/X/G4;->A01:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A0E:Z

    return-object p0
.end method

.method public final A0C(I)Lcom/facebook/ads/redexgen/X/G4;
    .registers 3

    iput p1, p0, Lcom/facebook/ads/redexgen/X/G4;->A03:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A0F:Z

    return-object p0
.end method

.method public final A0D(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/G4;
    .registers 3

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A0M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A09:Ljava/lang/String;

    return-object p0
.end method

.method public final A0E(Z)Lcom/facebook/ads/redexgen/X/G4;
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/G4;->A02:I

    return-object p0
.end method

.method public final A0F(Z)Lcom/facebook/ads/redexgen/X/G4;
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/G4;->A05:I

    return-object p0
.end method

.method public final A0G(Z)Lcom/facebook/ads/redexgen/X/G4;
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/G4;->A07:I

    return-object p0
.end method

.method public final A0H()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A09:Ljava/lang/String;

    return-object v0
.end method

.method public final A0I(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G4;->A0A:Ljava/lang/String;

    return-void
.end method

.method public final A0J(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G4;->A0B:Ljava/lang/String;

    return-void
.end method

.method public final A0K(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G4;->A0C:Ljava/lang/String;

    return-void
.end method

.method public final A0L([Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A0D:Ljava/util/List;

    return-void
.end method

.method public final A0M()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A0E:Z

    return v0
.end method

.method public final A0N()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A0F:Z

    return v0
.end method

.method public final A0O()Z
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/G4;->A06:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final A0P()Z
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/G4;->A07:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
