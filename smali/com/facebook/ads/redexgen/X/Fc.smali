###### Class com.facebook.ads.redexgen.X.C1007Fc (com.facebook.ads.redexgen.X.Fc)
.class public final Lcom/facebook/ads/redexgen/X/Fc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CueBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Fb;
    }
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public final A05:Ljava/lang/StringBuilder;

.field public final A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Fb;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XC7eQ7mnDigGIQL7dx0KfLpc2FT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "IUrjEkKy3b2jJtDJZ33sGt"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4VXLd4NK2UMSrr9tKiehY90A"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "S2gwvpBwwRoio7AP3LwECfAaRkk6O4ZY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9TUF7Ks7YtQxur"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "s5iWH5PZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Ea283cgdBM89En3yGupwQHUZzzjf5u4Q"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Fc;->A08:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A06:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A07:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A05:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Fc;->A09(I)V

    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/Fc;->A0A(I)V

    return-void
.end method

.method private final A00()Landroid/text/SpannableString;
    .registers 16

    move-object v9, p0

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Fc;->A05:Ljava/lang/StringBuilder;

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/4 v6, -0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v14, 0x0

    const/4 v10, -0x1

    const/4 v2, 0x0

    :goto_13
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Fc;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_a0

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Fc;->A06:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/ads/redexgen/X/Fb;

    iget-boolean v11, v12, Lcom/facebook/ads/redexgen/X/Fb;->A02:Z

    iget v1, v12, Lcom/facebook/ads/redexgen/X/Fb;->A01:I

    const/16 v0, 0x8

    if-eq v1, v0, :cond_31

    const/4 v0, 0x7

    if-ne v1, v0, :cond_9e

    const/4 v14, 0x1

    :goto_2f
    if-ne v1, v0, :cond_97

    :cond_31
    :goto_31
    iget v1, v12, Lcom/facebook/ads/redexgen/X/Fb;->A00:I

    sget-object v12, Lcom/facebook/ads/redexgen/X/Fc;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v12, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v0, 0x16

    if-eq v12, v0, :cond_46

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_46
    sget-object v13, Lcom/facebook/ads/redexgen/X/Fc;->A08:[Ljava/lang/String;

    const-string v12, "A7DJ6NHY"

    const/4 v0, 0x6

    aput-object v12, v13, v0

    const-string v12, "4roHVg72rzpV8d"

    const/4 v0, 0x5

    aput-object v12, v13, v0

    add-int/lit8 v12, v2, 0x1

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Fc;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_95

    iget-object v12, v9, Lcom/facebook/ads/redexgen/X/Fc;->A06:Ljava/util/List;

    add-int/lit8 v0, v2, 0x1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fb;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Fb;->A00:I

    :goto_68
    if-ne v1, v0, :cond_6d

    :cond_6a
    :goto_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_6d
    const/4 v0, -0x1

    if-eq v6, v0, :cond_8e

    if-nez v11, :cond_8e

    invoke-static {v7, v6, v1}, Lcom/facebook/ads/redexgen/X/Fc;->A02(Landroid/text/SpannableStringBuilder;II)V

    const/4 v6, -0x1

    :cond_76
    :goto_76
    const/4 v0, -0x1

    if-eq v5, v0, :cond_87

    if-nez v14, :cond_87

    invoke-static {v7, v5, v1}, Lcom/facebook/ads/redexgen/X/Fc;->A01(Landroid/text/SpannableStringBuilder;II)V

    const/4 v5, -0x1

    :cond_7f
    :goto_7f
    if-eq v10, v3, :cond_6a

    invoke-static {v7, v4, v1, v3}, Lcom/facebook/ads/redexgen/X/Fc;->A03(Landroid/text/SpannableStringBuilder;III)V

    move v3, v10

    move v4, v1

    goto :goto_6a

    :cond_87
    const/4 v0, -0x1

    if-ne v5, v0, :cond_7f

    if-eqz v14, :cond_7f

    move v5, v1

    goto :goto_7f

    :cond_8e
    const/4 v0, -0x1

    if-ne v6, v0, :cond_76

    if-eqz v11, :cond_76

    move v6, v1

    goto :goto_76

    :cond_95
    move v0, v8

    goto :goto_68

    :cond_97
    invoke-static {}, Lcom/facebook/ads/redexgen/X/3A;->A0J()[I

    move-result-object v0

    aget v10, v0, v1

    goto :goto_31

    :cond_9e
    const/4 v14, 0x0

    goto :goto_2f

    :cond_a0
    const/4 v0, -0x1

    if-eq v6, v0, :cond_a8

    if-eq v6, v8, :cond_a8

    invoke-static {v7, v6, v8}, Lcom/facebook/ads/redexgen/X/Fc;->A02(Landroid/text/SpannableStringBuilder;II)V

    :cond_a8
    if-eq v5, v0, :cond_af

    if-eq v5, v8, :cond_af

    invoke-static {v7, v5, v8}, Lcom/facebook/ads/redexgen/X/Fc;->A01(Landroid/text/SpannableStringBuilder;II)V

    :cond_af
    if-eq v4, v8, :cond_b4

    invoke-static {v7, v4, v8, v3}, Lcom/facebook/ads/redexgen/X/Fc;->A03(Landroid/text/SpannableStringBuilder;III)V

    :cond_b4
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static A01(Landroid/text/SpannableStringBuilder;II)V
    .registers 5

    const/4 v0, 0x2

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v0, 0x21

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static A02(Landroid/text/SpannableStringBuilder;II)V
    .registers 5

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v0, 0x21

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static A03(Landroid/text/SpannableStringBuilder;III)V
    .registers 6

    const/4 v0, -0x1

    if-ne p3, v0, :cond_4

    return-void

    :cond_4
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v0, 0x21

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public final A04()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A03:I

    return v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/FV;
    .registers 18

    move-object/from16 v3, p0

    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_8
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fc;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fc;->A07:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v9, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v9, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Fc;->A00()Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fc;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_ee

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fc;->A08:[Ljava/lang/String;

    const-string v1, "XUGi3jQBIuRQftqARNMB36bn2TyuzRos"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_61

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fc;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_59

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fc;->A08:[Ljava/lang/String;

    const-string v1, "sMaadG1MTySiyP3TGzo1T4"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    :cond_59
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fc;->A08:[Ljava/lang/String;

    const-string v1, "nS4SC9sWxiUu8g9Arai4ZN"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    :cond_61
    iget v8, v3, Lcom/facebook/ads/redexgen/X/Fc;->A02:I

    iget v4, v3, Lcom/facebook/ads/redexgen/X/Fc;->A04:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fc;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_ee

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fc;->A08:[Ljava/lang/String;

    const-string v1, "yDKFp8g0FkQkvFDtr9inWFZi093Wo6Xo"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    add-int/2addr v8, v4

    rsub-int/lit8 v7, v8, 0x20

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v7, v0

    sub-int v4, v8, v7

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Fc;->A00:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v0, 0x3

    if-lt v1, v0, :cond_92

    if-gez v7, :cond_b6

    :cond_92
    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x1

    :goto_95
    iget v1, v3, Lcom/facebook/ads/redexgen/X/Fc;->A00:I

    const/4 v0, 0x1

    if-eq v1, v0, :cond_9f

    iget v1, v3, Lcom/facebook/ads/redexgen/X/Fc;->A03:I

    const/4 v0, 0x7

    if-le v1, v0, :cond_b2

    :cond_9f
    const/4 v13, 0x2

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Fc;->A03:I

    add-int/lit8 v0, v0, -0xf

    add-int/lit8 v0, v0, -0x2

    :goto_a6
    new-instance v8, Lcom/facebook/ads/redexgen/X/FV;

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    int-to-float v11, v0

    const/4 v12, 0x1

    const/16 v16, 0x1

    invoke-direct/range {v8 .. v16}, Lcom/facebook/ads/redexgen/X/FV;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-object v8

    :cond_b2
    const/4 v13, 0x0

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Fc;->A03:I

    goto :goto_a6

    :cond_b6
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Fc;->A00:I

    const v6, 0x3dcccccd    # 0.1f

    const v14, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x42000000    # 32.0f

    if-ne v0, v2, :cond_e2

    if-lez v4, :cond_e2

    rsub-int/lit8 v4, v7, 0x20

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fc;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_e8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fc;->A08:[Ljava/lang/String;

    const-string v1, "dWj1xsuyJgYxC"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    int-to-float v0, v4

    div-float/2addr v0, v5

    mul-float/2addr v14, v0

    add-float/2addr v14, v6

    const/4 v15, 0x2

    goto :goto_95

    :cond_e2
    int-to-float v0, v8

    div-float/2addr v0, v5

    mul-float/2addr v14, v0

    add-float/2addr v14, v6

    const/4 v15, 0x0

    goto :goto_95

    :cond_e8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_ee
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A06()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A05:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fc;->A05:Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_17
    if-ltz v2, :cond_2e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A06:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Fb;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Fb;->A00:I

    if-ne v0, v3, :cond_2e

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Fb;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Fb;->A00:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    :cond_2e
    return-void
.end method

.method public final A07()V
    .registers 7

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fc;->A07:Ljava/util/List;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fc;->A00()Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A05:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Fc;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A03:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_1c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fc;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_49

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fc;->A08:[Ljava/lang/String;

    const-string v1, "4Kk3waKD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "8nOP5N7C4Kf2hN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-lt v5, v3, :cond_48

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A07:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1c

    :cond_48
    return-void

    :cond_49
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A08(C)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A05:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final A09(I)V
    .registers 4

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fc;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A05:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v0, 0xf

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A03:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fc;->A02:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fc;->A04:I

    return-void
.end method

.method public final A0A(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fc;->A01:I

    return-void
.end method

.method public final A0B(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fc;->A02:I

    return-void
.end method

.method public final A0C(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fc;->A03:I

    return-void
.end method

.method public final A0D(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fc;->A04:I

    return-void
.end method

.method public final A0E(IZ)V
    .registers 6

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Fc;->A06:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A05:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fb;

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/Fb;-><init>(IZI)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final A0F()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A05:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fc;->A05:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
