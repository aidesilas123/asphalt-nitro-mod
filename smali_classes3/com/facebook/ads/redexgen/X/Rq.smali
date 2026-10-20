###### Class com.facebook.ads.redexgen.X.C1326Rq (com.facebook.ads.redexgen.X.Rq)
.class public final Lcom/facebook/ads/redexgen/X/Rq;
.super Lcom/facebook/ads/redexgen/X/4Q;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/4Q<",
        "Lcom/facebook/ads/redexgen/X/Rj;",
        ">;"
    }
.end annotation


# static fields
.field public static A0H:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/Ls;

.field public A05:Lcom/facebook/ads/redexgen/X/Lt;

.field public A06:Ljava/lang/String;

.field public A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/PC;",
            ">;"
        }
    .end annotation
.end field

.field public A08:Z

.field public final A09:Landroid/util/SparseBooleanArray;

.field public final A0A:Lcom/facebook/ads/redexgen/X/aS;

.field public final A0B:Lcom/facebook/ads/redexgen/X/6Q;

.field public final A0C:Lcom/facebook/ads/redexgen/X/YA;

.field public final A0D:Lcom/facebook/ads/redexgen/X/If;

.field public final A0E:Lcom/facebook/ads/redexgen/X/LN;

.field public final A0F:Lcom/facebook/ads/redexgen/X/S0;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Qb;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "U2dBX20JaeRgS8KUkn4U"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4wbYdEjd6EY1wYpAHERmBQ5UbLFk3rIE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "poCzv8x7tLJqIV5ZIWq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9iyDRDGf0xWQ70I4mtfqA0IQycZfZ47C"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "v2glKkwlOEfR0MfsI3TqmdNecXONmhZ3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6XdF3RdtkhprEZiVEVCq65KOMzsBziM7"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2OiOSmaAlP7OTnmHwLOjTjXlL7jeDPuL"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nkMLdycTxYcJ5galJfvG8bjM9rVBse8i"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rq;->A0H:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Ljava/util/List;Lcom/facebook/ads/redexgen/X/aS;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/Qb;Lcom/facebook/ads/redexgen/X/LN;Lcom/facebook/ads/redexgen/X/Lt;Ljava/lang/String;IIIILcom/facebook/ads/redexgen/X/S0;Lcom/facebook/ads/redexgen/X/Ls;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/YA;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/PC;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/aS;",
            "Lcom/facebook/ads/redexgen/X/If;",
            "Lcom/facebook/ads/redexgen/X/6Q;",
            "Lcom/facebook/ads/redexgen/X/Qb;",
            "Lcom/facebook/ads/redexgen/X/LN;",
            "Lcom/facebook/ads/redexgen/X/Lt;",
            "Ljava/lang/String;",
            "IIII",
            "Lcom/facebook/ads/redexgen/X/S0;",
            "Lcom/facebook/ads/redexgen/X/Ls;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4Q;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Rq;->A09:Landroid/util/SparseBooleanArray;

    iput-object p1, v1, Lcom/facebook/ads/redexgen/X/Rq;->A0C:Lcom/facebook/ads/redexgen/X/YA;

    iput-object p4, v1, Lcom/facebook/ads/redexgen/X/Rq;->A0D:Lcom/facebook/ads/redexgen/X/If;

    iput-object p5, v1, Lcom/facebook/ads/redexgen/X/Rq;->A0B:Lcom/facebook/ads/redexgen/X/6Q;

    iput-object p6, v1, Lcom/facebook/ads/redexgen/X/Rq;->A0G:Lcom/facebook/ads/redexgen/X/Qb;

    iput-object p7, v1, Lcom/facebook/ads/redexgen/X/Rq;->A0E:Lcom/facebook/ads/redexgen/X/LN;

    iput-object p8, v1, Lcom/facebook/ads/redexgen/X/Rq;->A05:Lcom/facebook/ads/redexgen/X/Lt;

    iput-object p3, v1, Lcom/facebook/ads/redexgen/X/Rq;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    iput-object p2, v1, Lcom/facebook/ads/redexgen/X/Rq;->A07:Ljava/util/List;

    iput p10, v1, Lcom/facebook/ads/redexgen/X/Rq;->A00:I

    iput p13, v1, Lcom/facebook/ads/redexgen/X/Rq;->A03:I

    iput-object p9, v1, Lcom/facebook/ads/redexgen/X/Rq;->A06:Ljava/lang/String;

    iput p12, v1, Lcom/facebook/ads/redexgen/X/Rq;->A01:I

    iput p11, v1, Lcom/facebook/ads/redexgen/X/Rq;->A02:I

    move-object/from16 v0, p14

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Rq;->A0F:Lcom/facebook/ads/redexgen/X/S0;

    move-object/from16 v0, p15

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Rq;->A04:Lcom/facebook/ads/redexgen/X/Ls;

    return-void
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/Rj;
    .registers 15

    move-object v0, p0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Ny;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Rq;->A0C:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Rq;->A0D:Lcom/facebook/ads/redexgen/X/If;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Rq;->A05:Lcom/facebook/ads/redexgen/X/Lt;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Rq;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Rq;->A0G:Lcom/facebook/ads/redexgen/X/Qb;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Rq;->A0E:Lcom/facebook/ads/redexgen/X/LN;

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/Ny;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/aS;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Qb;Lcom/facebook/ads/redexgen/X/LN;)V

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Rq;->A04:Lcom/facebook/ads/redexgen/X/Ls;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Ny;->A0H(Lcom/facebook/ads/redexgen/X/Ls;)Lcom/facebook/ads/redexgen/X/Ny;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ny;->A0K()Lcom/facebook/ads/redexgen/X/Nz;

    move-result-object v4

    iget v3, v0, Lcom/facebook/ads/redexgen/X/Rq;->A03:I

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Rq;->A06:Ljava/lang/String;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Rq;->A0F:Lcom/facebook/ads/redexgen/X/S0;

    invoke-static {v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/OT;->A00(Lcom/facebook/ads/redexgen/X/Nz;ILjava/lang/String;Lcom/facebook/ads/redexgen/X/S0;)Lcom/facebook/ads/redexgen/X/97;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/Rj;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Rq;->A09:Landroid/util/SparseBooleanArray;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Rq;->A0G:Lcom/facebook/ads/redexgen/X/Qb;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Rq;->A00:I

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Rq;->A01:I

    iget v8, v0, Lcom/facebook/ads/redexgen/X/Rq;->A02:I

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Rq;->A07:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/Rq;->A0C:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Rq;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0x()Lcom/facebook/ads/redexgen/X/1R;

    move-result-object v11

    invoke-direct/range {v2 .. v11}, Lcom/facebook/ads/redexgen/X/Rj;-><init>(Lcom/facebook/ads/redexgen/X/97;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/Qb;IIIILcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/1R;)V

    return-object v2
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/Rj;I)V
    .registers 10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A07:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/PC;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0D:Lcom/facebook/ads/redexgen/X/If;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0B:Lcom/facebook/ads/redexgen/X/6Q;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Rq;->A0E:Lcom/facebook/ads/redexgen/X/LN;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Rq;->A06:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Rj;->A0l(Lcom/facebook/ads/redexgen/X/PC;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/LN;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A08:Z

    if-nez v0, :cond_3b

    if-nez p2, :cond_3b

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Rj;->AF7()V

    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rq;->A0H:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3c

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rq;->A0H:[Ljava/lang/String;

    const-string v1, "f5MkbcX2dFxcVTBDK6f4VKhLC7wzzoeI"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Rq;->A08:Z

    :cond_3b
    return-void

    :cond_3c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic A0C(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4u;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Rq;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/Rj;

    move-result-object v0

    return-object v0
.end method

.method public final A0D()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic A0E(Lcom/facebook/ads/redexgen/X/4u;I)V
    .registers 3

    check-cast p1, Lcom/facebook/ads/redexgen/X/Rj;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Rq;->A02(Lcom/facebook/ads/redexgen/X/Rj;I)V

    return-void
.end method
