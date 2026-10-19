###### Class com.facebook.ads.redexgen.X.C1024Ft (com.facebook.ads.redexgen.X.Ft)
.class public final Lcom/facebook/ads/redexgen/X/Ft;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ft;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:J

.field public final A02:J

.field public final A03:Lcom/facebook/ads/redexgen/X/Fz;

.field public final A04:Ljava/lang/String;

.field public final A05:Ljava/lang/String;

.field public final A06:Ljava/lang/String;

.field public final A07:Z

.field public final A08:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final A09:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final A0A:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Hmn5H7dKMosREh7xDGtPQt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MVFk1kMfS5SlcrGDFoR78llsa87kBULK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "h0eABJsxuPyKyti7S1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4r"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Rhyi3ngCGHQeUf1AOTuidE5Gtet8RupN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ehbUKYCtrZOQmz5rtd9aLf3tehAVerO2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Bs"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nZrAaS4dU3xOh9dXHIvavDKiiL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ft;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ft;->A07()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/Fz;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ft;->A05:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ft;->A06:Ljava/lang/String;

    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/Ft;->A03:Lcom/facebook/ads/redexgen/X/Fz;

    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/Ft;->A0A:[Ljava/lang/String;

    if-eqz p2, :cond_2b

    const/4 v0, 0x1

    :goto_e
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A07:Z

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Ft;->A02:J

    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/Ft;->A01:J

    invoke-static {p9}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A04:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A09:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A08:Ljava/util/HashMap;

    return-void

    :cond_2b
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private final A00()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A00:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method private A01(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .registers 10

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_5
    const/16 v6, 0x20

    if-ge v2, v3, :cond_2e

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_2b

    add-int/lit8 v1, v2, 0x1

    :goto_11
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-ge v1, v0, :cond_20

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_20

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_20
    add-int/lit8 v0, v2, 0x1

    sub-int/2addr v1, v0

    if-lez v1, :cond_2b

    add-int v0, v2, v1

    invoke-virtual {p1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    sub-int/2addr v3, v1

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_2e
    if-lez v3, :cond_3d

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_3d

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v3, v3, -0x1

    :cond_3d
    const/4 v2, 0x0

    :goto_3e
    add-int/lit8 v0, v3, -0x1

    const/16 v4, 0xa

    if-ge v2, v0, :cond_5e

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_5b

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_5b

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v0, v2, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v3, v3, -0x1

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_5e
    if-lez v3, :cond_6f

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_6f

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p1, v0, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v3, v3, -0x1

    :cond_6f
    const/4 v5, 0x0

    :goto_70
    add-int/lit8 v0, v3, -0x1

    if-ge v5, v0, :cond_ab

    invoke-virtual {p1, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_a8

    add-int/lit8 v7, v5, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ft;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_94

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_94
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ft;->A0C:[Ljava/lang/String;

    const-string v1, "m4xyST6fTPwcFIAJdQ5"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p1, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_a8

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p1, v5, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v3, v3, -0x1

    :cond_a8
    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    :cond_ab
    if-lez v3, :cond_ba

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_ba

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p1, v0, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_ba
    return-object p1
.end method

.method public static A02(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method private final A03(I)Lcom/facebook/ads/redexgen/X/Ft;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A00:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ft;

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ft;
    .registers 13

    new-instance v3, Lcom/facebook/ads/redexgen/X/Ft;

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Fv;->A02(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ft;->A06(III)Ljava/lang/String;

    move-result-object p0

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/Ft;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/Fz;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static A05(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/Fz;[Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ft;
    .registers 12

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ft;

    const/4 v2, 0x0

    move-object v1, p0

    move-wide v3, p1

    move-wide p1, p3

    move-object p3, p5

    move-object p4, p6

    move-object p5, p7

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/Ft;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/Fz;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A06(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ft;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x31

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .registers 1

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ft;->A0B:[B

    return-void

    :array_a
    .array-data 1
        0x34t
        0x24t
        0x30t
        0x38t
        0x29t
        0x3ct
        0x39t
        0x3ct
        0x29t
        0x3ct
        0x5dt
    .end array-data
.end method

.method private A08(JLjava/util/Map;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Fz;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ft;->A0C(J)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A08:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A09:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A09:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v2, v1, :cond_11

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ft;->A0A(Ljava/util/Map;Landroid/text/SpannableStringBuilder;II)V

    goto :goto_11

    :cond_4d
    const/4 v2, 0x0

    goto :goto_37

    :cond_4f
    const/4 v1, 0x0

    :goto_50
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ft;->A00()I

    move-result v0

    if-ge v1, v0, :cond_60

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ft;->A03(I)Lcom/facebook/ads/redexgen/X/Ft;

    move-result-object v0

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Ft;->A08(JLjava/util/Map;Ljava/util/Map;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :cond_60
    return-void
.end method

.method private A09(JZLjava/lang/String;Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)V"
        }
    .end annotation

    move-object v7, p4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A09:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A08:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v2, 0x2

    const/16 v1, 0x8

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ft;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    :cond_1d
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ft;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    :goto_2d
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A07:Z

    move-object v8, p5

    if-eqz v0, :cond_3e

    if-eqz p3, :cond_3e

    invoke-static {v7, v8}, Lcom/facebook/ads/redexgen/X/Ft;->A02(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3d
    :goto_3d
    return-void

    :cond_3e
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ft;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    if-eqz p3, :cond_5a

    invoke-static {v7, v8}, Lcom/facebook/ads/redexgen/X/Ft;->A02(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_3d

    :cond_5a
    move-wide v4, p1

    invoke-direct {p0, v4, v5}, Lcom/facebook/ads/redexgen/X/Ft;->A0C(J)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_69
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ft;->A09:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_69

    :cond_8f
    const/16 v2, 0xa

    const/4 v1, 0x1

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ft;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v1, 0x0

    :goto_9f
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ft;->A00()I

    move-result v0

    if-ge v1, v0, :cond_b6

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ft;->A03(I)Lcom/facebook/ads/redexgen/X/Ft;

    move-result-object v3

    if-nez p3, :cond_ad

    if-eqz v2, :cond_b4

    :cond_ad
    const/4 v6, 0x1

    :goto_ae
    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Ft;->A09(JZLjava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9f

    :cond_b4
    const/4 v6, 0x0

    goto :goto_ae

    :cond_b6
    if-eqz v2, :cond_bf

    invoke-static {v7, v8}, Lcom/facebook/ads/redexgen/X/Ft;->A02(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Fv;->A04(Landroid/text/SpannableStringBuilder;)V

    :cond_bf
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ft;->A08:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c7

    :cond_ed
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Ft;->A04:Ljava/lang/String;

    goto/16 :goto_2d
.end method

.method private A0A(Ljava/util/Map;Landroid/text/SpannableStringBuilder;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Fz;",
            ">;",
            "Landroid/text/SpannableStringBuilder;",
            "II)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ft;->A03:Lcom/facebook/ads/redexgen/X/Fz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A0A:[Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Fv;->A00(Lcom/facebook/ads/redexgen/X/Fz;[Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {p2, p3, p4, v0}, Lcom/facebook/ads/redexgen/X/Fv;->A05(Landroid/text/SpannableStringBuilder;IILcom/facebook/ads/redexgen/X/Fz;)V

    :cond_d
    return-void
.end method

.method private A0B(Ljava/util/TreeSet;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    const/16 v2, 0xa

    const/4 v1, 0x1

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ft;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez p2, :cond_13

    if-eqz v5, :cond_32

    :cond_13
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Ft;->A02:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_25

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_25
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Ft;->A01:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_32

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_32
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A00:Ljava/util/List;

    if-nez v0, :cond_37

    return-void

    :cond_37
    const/4 v3, 0x0

    :goto_38
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ft;->A00:Ljava/util/List;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ft;->A0C:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_4d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4d
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ft;->A0C:[Ljava/lang/String;

    const-string v1, "6yeVGp3kLPk4WI3MPF9gLyaIhJRFIlFb"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_6f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A00:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ft;

    if-nez p2, :cond_66

    if-eqz v5, :cond_6d

    :cond_66
    const/4 v0, 0x1

    :goto_67
    invoke-direct {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Ft;->A0B(Ljava/util/TreeSet;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_6d
    const/4 v0, 0x0

    goto :goto_67

    :cond_6f
    return-void
.end method

.method private final A0C(J)Z
    .registers 10

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Ft;->A02:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-nez v0, :cond_11

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Ft;->A01:J

    cmp-long v0, v1, v5

    if-eqz v0, :cond_2f

    :cond_11
    cmp-long v0, v3, p1

    if-gtz v0, :cond_1b

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Ft;->A01:J

    cmp-long v0, v1, v5

    if-eqz v0, :cond_2f

    :cond_1b
    cmp-long v0, v3, v5

    if-nez v0, :cond_25

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Ft;->A01:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_2f

    :cond_25
    cmp-long v0, v3, p1

    if-gtz v0, :cond_31

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Ft;->A01:J

    cmp-long v0, p1, v1

    if-gez v0, :cond_31

    :cond_2f
    const/4 v0, 0x1

    :goto_30
    return v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method


# virtual methods
.method public final A0D(JLjava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Fz;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Fu;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FV;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/Ft;->A04:Ljava/lang/String;

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Ft;->A09(JZLjava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, p3

    invoke-direct {v1, v3, v4, v0, v7}, Lcom/facebook/ads/redexgen/X/Ft;->A08(JLjava/util/Map;Ljava/util/Map;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ft;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v0, 0x4c

    if-eq v2, v0, :cond_3c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3c
    sget-object v3, Lcom/facebook/ads/redexgen/X/Ft;->A0C:[Ljava/lang/String;

    const-string v2, "Y7XV0FXPovcWGO3cFNRk8a"

    const/4 v0, 0x0

    aput-object v2, v3, v0

    if-eqz v5, :cond_80

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, p4

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Fu;

    new-instance v7, Lcom/facebook/ads/redexgen/X/FV;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Ft;->A01(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    iget v10, v2, Lcom/facebook/ads/redexgen/X/Fu;->A00:F

    iget v11, v2, Lcom/facebook/ads/redexgen/X/Fu;->A05:I

    iget v12, v2, Lcom/facebook/ads/redexgen/X/Fu;->A04:I

    iget v13, v2, Lcom/facebook/ads/redexgen/X/Fu;->A01:F

    const/high16 v14, -0x80000000

    iget v15, v2, Lcom/facebook/ads/redexgen/X/Fu;->A03:F

    iget v3, v2, Lcom/facebook/ads/redexgen/X/Fu;->A06:I

    iget v2, v2, Lcom/facebook/ads/redexgen/X/Fu;->A02:F

    const/4 v9, 0x0

    move-object v0, v7

    move/from16 v16, v3

    move/from16 v17, v2

    invoke-direct/range {v7 .. v17}, Lcom/facebook/ads/redexgen/X/FV;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFIF)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_80
    return-object v4
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/Ft;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A00:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A00:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ft;->A00:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final A0F()[J
    .registers 7

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ft;->A0B(Ljava/util/TreeSet;Z)V

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v0

    new-array v5, v0, [J

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    add-int/lit8 v0, v4, 0x1

    aput-wide v1, v5, v4

    move v4, v0

    goto :goto_14

    :cond_2a
    return-object v5
.end method
