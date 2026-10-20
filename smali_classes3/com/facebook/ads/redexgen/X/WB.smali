###### Class com.facebook.ads.redexgen.X.WB (com.facebook.ads.redexgen.X.WB)
.class public final Lcom/facebook/ads/redexgen/X/WB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ba;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Cn;
    }
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;

.field public static final A09:Lcom/facebook/ads/redexgen/X/Bd;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/Bc;

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public final A05:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Cn;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Lcom/facebook/ads/redexgen/X/Hh;

.field public final A07:Lcom/facebook/ads/redexgen/X/Ht;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pV6afMZIVEGTOqSkK4PJAxqV3cRTXe0d"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "IAHwWl6p9dkO64XBfZ0QYdoG1FARrH3l"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8O8qDLmpQAmlCV9yXa4a4pqjSYQFT4zH"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zdF1gQZIlZar6BQddk1LhfG9pE3e2nBq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3CFwU8lFm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "v9T9Lg78nTaSAiVLG9Jw7rJGA2UCfL0z"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6lAaLpwrnWkg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Pzi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WB;->A08:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/WC;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WC;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/WB;->A09:Lcom/facebook/ads/redexgen/X/Bd;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ht;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ht;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WB;-><init>(Lcom/facebook/ads/redexgen/X/Ht;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ht;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WB;->A07:Lcom/facebook/ads/redexgen/X/Ht;

    const/16 v1, 0x1000

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A05:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final A8e(Lcom/facebook/ads/redexgen/X/Bc;)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WB;->A01:Lcom/facebook/ads/redexgen/X/Bc;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/X0;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/X0;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Bc;->AEx(Lcom/facebook/ads/redexgen/X/Bj;)V

    return-void
.end method

.method public final AE9(Lcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/Bh;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    const/4 v5, 0x0

    const/4 v0, 0x4

    const/4 v4, 0x1

    invoke-interface {p1, v1, v5, v0, v4}, Lcom/facebook/ads/redexgen/X/Bb;->ADm([BIIZ)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_f

    return v2

    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A08()I

    move-result v1

    const/16 v0, 0x1b9

    if-ne v1, v0, :cond_1f

    return v2

    :cond_1f
    const/16 v0, 0x1ba

    if-ne v1, v0, :cond_41

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    const/16 v0, 0xa

    invoke-interface {p1, v1, v5, v0}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WB;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0xe

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->AFe(I)V

    return v5

    :cond_41
    const/16 v0, 0x1bb

    const/4 v3, 0x2

    if-ne v1, v0, :cond_77

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-interface {p1, v0, v5, v3}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v0

    add-int/lit8 v3, v0, 0x6

    sget-object v1, Lcom/facebook/ads/redexgen/X/WB;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_155

    sget-object v2, Lcom/facebook/ads/redexgen/X/WB;->A08:[Ljava/lang/String;

    const-string v1, "HKquBkRqV5bg6e7zOk5qC1bF2o25gd0c"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "faW9VDigV6ilhrF8PW3drZ4wwMfODA0N"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/Bb;->AFe(I)V

    return v5

    :cond_77
    and-int/lit16 v0, v1, -0x100

    shr-int/lit8 v0, v0, 0x8

    if-eq v0, v4, :cond_81

    invoke-interface {p1, v4}, Lcom/facebook/ads/redexgen/X/Bb;->AFe(I)V

    return v5

    :cond_81
    and-int/lit16 v7, v1, 0xff

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Cn;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A02:Z

    if-nez v0, :cond_ec

    if-nez v2, :cond_bd

    const/4 v6, 0x0

    const/16 v0, 0xbd

    if-ne v7, v0, :cond_12b

    new-instance v6, Lcom/facebook/ads/redexgen/X/WQ;

    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/WQ;-><init>()V

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/WB;->A03:Z

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->A7a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A00:J

    :cond_a3
    :goto_a3
    if-eqz v6, :cond_bd

    const/16 v0, 0x100

    new-instance v1, Lcom/facebook/ads/redexgen/X/Cu;

    invoke-direct {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/Cu;-><init>(II)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A01:Lcom/facebook/ads/redexgen/X/Bc;

    invoke-interface {v6, v0, v1}, Lcom/facebook/ads/redexgen/X/Cg;->A4l(Lcom/facebook/ads/redexgen/X/Bc;Lcom/facebook/ads/redexgen/X/Cu;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A07:Lcom/facebook/ads/redexgen/X/Ht;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Cn;

    invoke-direct {v2, v6, v0}, Lcom/facebook/ads/redexgen/X/Cn;-><init>(Lcom/facebook/ads/redexgen/X/Cg;Lcom/facebook/ads/redexgen/X/Ht;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_bd
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A03:Z

    if-eqz v0, :cond_127

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A04:Z

    if-eqz v0, :cond_127

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A00:J

    const-wide/16 v6, 0x2000

    add-long/2addr v0, v6

    :goto_ca
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->A7a()J

    move-result-wide v7

    cmp-long v6, v7, v0

    if-lez v6, :cond_ec

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/WB;->A02:Z

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/WB;->A01:Lcom/facebook/ads/redexgen/X/Bc;

    sget-object v1, Lcom/facebook/ads/redexgen/X/WB;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_155

    sget-object v4, Lcom/facebook/ads/redexgen/X/WB;->A08:[Ljava/lang/String;

    const-string v1, "xdmI1xGjCkbROfx6HlMFi8Q1HtnAUXbK"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    invoke-interface {v6}, Lcom/facebook/ads/redexgen/X/Bc;->A5T()V

    :cond_ec
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-interface {p1, v0, v5, v3}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v0

    add-int/lit8 v1, v0, 0x6

    if-nez v2, :cond_106

    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/Bb;->AFe(I)V

    :goto_105
    return v5

    :cond_106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A0W(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-interface {p1, v0, v5, v1}, Lcom/facebook/ads/redexgen/X/Bb;->readFully([BII)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WB;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Cn;->A03(Lcom/facebook/ads/redexgen/X/Hh;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WB;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hh;->A05()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0X(I)V

    goto :goto_105

    :cond_127
    const-wide/32 v0, 0x100000

    goto :goto_ca

    :cond_12b
    and-int/lit16 v1, v7, 0xe0

    const/16 v0, 0xc0

    if-ne v1, v0, :cond_140

    new-instance v6, Lcom/facebook/ads/redexgen/X/WE;

    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/WE;-><init>()V

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/WB;->A03:Z

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->A7a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A00:J

    goto/16 :goto_a3

    :cond_140
    and-int/lit16 v1, v7, 0xf0

    const/16 v0, 0xe0

    if-ne v1, v0, :cond_a3

    new-instance v6, Lcom/facebook/ads/redexgen/X/WJ;

    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/WJ;-><init>()V

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/WB;->A04:Z

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->A7a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A00:J

    goto/16 :goto_a3

    :cond_155
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AEw(JJ)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A07:Lcom/facebook/ads/redexgen/X/Ht;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ht;->A08()V

    const/4 v1, 0x0

    :goto_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WB;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cn;->A02()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public final AFg(Lcom/facebook/ads/redexgen/X/Bb;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/16 v0, 0xe

    new-array v4, v0, [B

    const/4 v3, 0x0

    invoke-interface {p1, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V

    aget-byte v0, v4, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x18

    const/4 v2, 0x1

    aget-byte v0, v4, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    const/4 v9, 0x2

    aget-byte v0, v4, v9

    and-int/lit16 v0, v0, 0xff

    const/16 v5, 0x8

    shl-int/2addr v0, v5

    or-int/2addr v1, v0

    const/4 v6, 0x3

    aget-byte v0, v4, v6

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    const/16 v0, 0x1ba

    if-eq v0, v1, :cond_2a

    return v3

    :cond_2a
    const/4 v8, 0x4

    aget-byte v0, v4, v8

    and-int/lit16 v1, v0, 0xc4

    const/16 v0, 0x44

    if-eq v1, v0, :cond_34

    return v3

    :cond_34
    const/4 v0, 0x6

    aget-byte v0, v4, v0

    and-int/2addr v0, v8

    if-eq v0, v8, :cond_3b

    return v3

    :cond_3b
    aget-byte v7, v4, v5

    and-int/2addr v7, v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/WB;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_6b

    sget-object v5, Lcom/facebook/ads/redexgen/X/WB;->A08:[Ljava/lang/String;

    const-string v1, "Yb1F33WkxQfWiaSVh137"

    const/4 v0, 0x6

    aput-object v1, v5, v0

    if-eq v7, v8, :cond_55

    return v3

    :cond_55
    const/16 v7, 0x9

    sget-object v5, Lcom/facebook/ads/redexgen/X/WB;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v5, v0

    const/4 v0, 0x0

    aget-object v5, v5, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_71

    :cond_6b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_71
    sget-object v5, Lcom/facebook/ads/redexgen/X/WB;->A08:[Ljava/lang/String;

    const-string v1, "0jRSG84WTzZndWahG37MGXBabYk0DmjV"

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const-string v1, "QaZZpRdUVGXpS1N3yC2DPVE3W204sMee"

    const/4 v0, 0x3

    aput-object v1, v5, v0

    aget-byte v0, v4, v7

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_83

    return v3

    :cond_83
    const/16 v0, 0xc

    aget-byte v0, v4, v0

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_8b

    return v3

    :cond_8b
    const/16 v0, 0xd

    aget-byte v0, v4, v0

    and-int/lit8 v0, v0, 0x7

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->A3S(I)V

    invoke-interface {p1, v4, v3, v6}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V

    aget-byte v0, v4, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x10

    aget-byte v0, v4, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v1, v0

    aget-byte v0, v4, v9

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    if-ne v2, v0, :cond_ac

    const/4 v3, 0x1

    :cond_ac
    return v3
.end method
