###### Class com.facebook.ads.redexgen.X.C1073Hs (com.facebook.ads.redexgen.X.Hs)
.class public final Lcom/facebook/ads/redexgen/X/Hs;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Hr;
    }
.end annotation


# static fields
.field public static A07:[Ljava/lang/String;

.field public static final A08:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/facebook/ads/redexgen/X/Hr;",
            ">;"
        }
    .end annotation
.end field

.field public static final A09:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/facebook/ads/redexgen/X/Hr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public final A04:I

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Hr;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:[Lcom/facebook/ads/redexgen/X/Hr;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5DRquCQGg5fv0P6nja7IsOodPXBGhUeG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CLJKgVN4XJask5diLy7MGSBxba0Pch5a"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "wHftqcE0jDwIdOqBDBC3mNx0B5SBQznZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ol9v552kFRhJ1T6A32CtEuz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "A1CuUzQu9jwyUqSqJ17msfwDUTn6GREa"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TbNgrGyLzvQfDvkF0WCoqwQu2K"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lR0XC8VxWttqZJTwOmQs4gh4fjIE6f"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2mBuumTUpjmiSXNoBcdi8fBRoWPOanRf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Hs;->A07:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hp;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hp;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Hs;->A08:Ljava/util/Comparator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hq;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hq;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Hs;->A09:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Hs;->A04:I

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Hr;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A06:[Lcom/facebook/ads/redexgen/X/Hr;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A05:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:I

    return-void
.end method

.method private A00()V
    .registers 4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hs;->A05:Ljava/util/ArrayList;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hs;->A08:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:I

    :cond_e
    return-void
.end method

.method private A01()V
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:I

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hs;->A05:Ljava/util/ArrayList;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hs;->A09:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A00:I

    :cond_e
    return-void
.end method


# virtual methods
.method public final A02(F)F
    .registers 7

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hs;->A01()V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A03:I

    int-to-float v4, v0

    mul-float/2addr v4, p1

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_27

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Hr;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Hr;->A02:I

    add-int/2addr v3, v0

    int-to-float v0, v3

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_24

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Hr;->A00:F

    return v0

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_27
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_31
    return v0

    :cond_32
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Hs;->A05:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hs;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_57

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hs;->A07:[Ljava/lang/String;

    const-string v1, "XkLaJBoD11zWycQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Hr;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Hr;->A00:F

    goto :goto_31

    :cond_57
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A03(IF)V
    .registers 10

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hs;->A00()V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    if-lez v0, :cond_78

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hs;->A06:[Lcom/facebook/ads/redexgen/X/Hr;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    aget-object v2, v1, v0

    :goto_f
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hs;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A01:I

    iput v1, v2, Lcom/facebook/ads/redexgen/X/Hr;->A01:I

    iput p1, v2, Lcom/facebook/ads/redexgen/X/Hr;->A02:I

    iput p2, v2, Lcom/facebook/ads/redexgen/X/Hr;->A00:F

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A03:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A03:I

    :cond_25
    :goto_25
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hs;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A04:I

    if-le v1, v0, :cond_7f

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A05:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Hr;

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Hr;->A02:I

    if-gt v0, v1, :cond_6d

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Hs;->A03:I

    iget v4, v3, Lcom/facebook/ads/redexgen/X/Hr;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hs;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_50

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_50
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hs;->A07:[Ljava/lang/String;

    const-string v1, "uvvU8EqEwFGMOcNu2z1EziqDegtCkn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/facebook/ads/redexgen/X/Hs;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/4 v0, 0x5

    if-ge v2, v0, :cond_25

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hs;->A06:[Lcom/facebook/ads/redexgen/X/Hr;

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    aput-object v3, v1, v2

    goto :goto_25

    :cond_6d
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Hr;->A02:I

    sub-int/2addr v0, v1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/Hr;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A03:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hs;->A03:I

    goto :goto_25

    :cond_78
    const/4 v0, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Hr;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Hr;-><init>(Lcom/facebook/ads/redexgen/X/Hp;)V

    goto :goto_f

    :cond_7f
    return-void
.end method
