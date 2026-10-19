###### Class com.facebook.ads.redexgen.X.XP (com.facebook.ads.redexgen.X.XP)
.class public final Lcom/facebook/ads/redexgen/X/XP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/9i;
.implements Lcom/facebook/ads/redexgen/X/DH;
.implements Lcom/facebook/ads/redexgen/X/AR;
.implements Lcom/facebook/ads/redexgen/X/IL;
.implements Lcom/facebook/ads/redexgen/X/Em;
.implements Lcom/facebook/ads/redexgen/X/GW;
.implements Lcom/facebook/ads/redexgen/X/B8;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/A2;,
        Lcom/facebook/ads/redexgen/X/A1;,
        Lcom/facebook/ads/redexgen/X/A0;
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/9n;

.field public final A01:Lcom/facebook/ads/redexgen/X/9y;

.field public final A02:Lcom/facebook/ads/redexgen/X/A1;

.field public final A03:Lcom/facebook/ads/redexgen/X/HL;

.field public final A04:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/A4;",
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

    const-string v0, "3ui7943oJKQ0earBMheCpqpPzXrDt0u1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Y87VavrouiKi9z"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "P6cMiRGLac5hfjC0tRGIGRLUUUjxE7XX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Gp12Iojej9PCs1Iei8EmhswJ2d7MPPra"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "iPLJe15l61uvnh9YTjVALhylcUuC36cq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JkCpp1uc3ZLfv8H0X3nexU5u26UQU15j"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bG94g9DZx4SnKjROolD8g6Osz0P9GRGH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "l5hRkIxgm3MuCDpPoC4K2VrrhVSesDup"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XP;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9n;Lcom/facebook/ads/redexgen/X/HL;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XP;->A00:Lcom/facebook/ads/redexgen/X/9n;

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/HL;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A03:Lcom/facebook/ads/redexgen/X/HL;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Lcom/facebook/ads/redexgen/X/A1;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/A1;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/A1;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9y;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9y;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A01:Lcom/facebook/ads/redexgen/X/9y;

    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/A3;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/A1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/A1;->A03()Lcom/facebook/ads/redexgen/X/A2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/XP;->A05(Lcom/facebook/ads/redexgen/X/A2;)Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v0

    return-object v0
.end method

.method private A01()Lcom/facebook/ads/redexgen/X/A3;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/A1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/A1;->A04()Lcom/facebook/ads/redexgen/X/A2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/XP;->A05(Lcom/facebook/ads/redexgen/X/A2;)Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v0

    return-object v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/A3;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/A1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/A1;->A05()Lcom/facebook/ads/redexgen/X/A2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/XP;->A05(Lcom/facebook/ads/redexgen/X/A2;)Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v0

    return-object v0
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/A3;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/A1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/A1;->A06()Lcom/facebook/ads/redexgen/X/A2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/XP;->A05(Lcom/facebook/ads/redexgen/X/A2;)Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v0

    return-object v0
.end method

.method private final A04(ILcom/facebook/ads/redexgen/X/EW;)Lcom/facebook/ads/redexgen/X/A3;
    .registers 18

    move-object v1, p0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/XP;->A00:Lcom/facebook/ads/redexgen/X/9n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/XP;->A03:Lcom/facebook/ads/redexgen/X/HL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HL;->A5O()J

    move-result-wide v4

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/XP;->A00:Lcom/facebook/ads/redexgen/X/9n;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9n;->A6Z()Lcom/facebook/ads/redexgen/X/9z;

    move-result-object v6

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/XP;->A00:Lcom/facebook/ads/redexgen/X/9n;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9n;->A6a()I

    move-result v0

    move/from16 v7, p1

    move-object/from16 v8, p2

    if-ne v7, v0, :cond_63

    if-eqz v8, :cond_5c

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/EW;->A01()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/XP;->A00:Lcom/facebook/ads/redexgen/X/9n;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9n;->A6U()I

    move-result v2

    iget v0, v8, Lcom/facebook/ads/redexgen/X/EW;->A00:I

    if-ne v2, v0, :cond_59

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/XP;->A00:Lcom/facebook/ads/redexgen/X/9n;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9n;->A6V()I

    move-result v2

    iget v0, v8, Lcom/facebook/ads/redexgen/X/EW;->A01:I

    if-ne v2, v0, :cond_59

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/XP;->A00:Lcom/facebook/ads/redexgen/X/9n;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9n;->A6X()J

    move-result-wide v9

    :goto_40
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/XP;->A00:Lcom/facebook/ads/redexgen/X/9n;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9n;->A67()J

    move-result-wide v13

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/XP;->A00:Lcom/facebook/ads/redexgen/X/9n;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9n;->A6S()J

    move-result-wide v2

    sub-long/2addr v13, v2

    new-instance v3, Lcom/facebook/ads/redexgen/X/A3;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/XP;->A00:Lcom/facebook/ads/redexgen/X/9n;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9n;->A6X()J

    move-result-wide v11

    invoke-direct/range {v3 .. v14}, Lcom/facebook/ads/redexgen/X/A3;-><init>(JLcom/facebook/ads/redexgen/X/9z;ILcom/facebook/ads/redexgen/X/EW;JJJ)V

    return-object v3

    :cond_59
    const-wide/16 v9, 0x0

    goto :goto_40

    :cond_5c
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/XP;->A00:Lcom/facebook/ads/redexgen/X/9n;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9n;->A6S()J

    move-result-wide v9

    goto :goto_40

    :cond_63
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/9z;->A01()I

    move-result v0

    if-ge v7, v0, :cond_71

    if-eqz v8, :cond_74

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/EW;->A01()Z

    move-result v0

    if-eqz v0, :cond_74

    :cond_71
    const-wide/16 v9, 0x0

    goto :goto_40

    :cond_74
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/XP;->A01:Lcom/facebook/ads/redexgen/X/9y;

    invoke-virtual {v6, v7, v0}, Lcom/facebook/ads/redexgen/X/9z;->A0B(ILcom/facebook/ads/redexgen/X/9y;)Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9y;->A00()J

    move-result-wide v9

    goto :goto_40
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/A2;)Lcom/facebook/ads/redexgen/X/A3;
    .registers 6

    if-nez p1, :cond_3f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A00:Lcom/facebook/ads/redexgen/X/9n;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/XP;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_22

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_22
    sget-object v2, Lcom/facebook/ads/redexgen/X/XP;->A05:[Ljava/lang/String;

    const-string v1, "It2FvVQ6GuD0QkNXfVFrE8OCooaDSMpJ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "a2HOGJm5UwCLA4g7R7QNf278R1ClTDAB"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/9n;

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/9n;->A6a()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/A1;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/A1;->A07(I)Lcom/facebook/ads/redexgen/X/EW;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A04(ILcom/facebook/ads/redexgen/X/EW;)Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v0

    return-object v0

    :cond_3f
    iget v1, p1, Lcom/facebook/ads/redexgen/X/A2;->A00:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/A2;->A01:Lcom/facebook/ads/redexgen/X/EW;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A04(ILcom/facebook/ads/redexgen/X/EW;)Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A06()V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/A1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/A1;->A0F()Z

    move-result v0

    if-nez v0, :cond_48

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A02()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/A1;

    sget-object v1, Lcom/facebook/ads/redexgen/X/XP;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_42

    sget-object v2, Lcom/facebook/ads/redexgen/X/XP;->A05:[Ljava/lang/String;

    const-string v1, "qsPEDs7YPcMFbl4XVvGjNAFSUVJ30e5d"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "wNEtz3pAWSMGqURdz3XYnwNQJEjBbTAW"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/A1;->A09()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/A4;->onSeekStarted(Lcom/facebook/ads/redexgen/X/A3;)V

    goto :goto_32

    :cond_42
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_48
    return-void
.end method

.method public final A07()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/A1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/A1;->A01(Lcom/facebook/ads/redexgen/X/A1;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A2;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/A2;->A00:I

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/A2;->A01:Lcom/facebook/ads/redexgen/X/EW;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->AC5(ILcom/facebook/ads/redexgen/X/EW;)V

    goto :goto_f

    :cond_23
    return-void
.end method

.method public final AAZ(Ljava/lang/String;JJ)V
    .registers 14

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A03()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/A4;

    const/4 v4, 0x1

    move-object v5, p1

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/A4;->onDecoderInitialized(Lcom/facebook/ads/redexgen/X/A3;ILjava/lang/String;J)V

    goto :goto_a

    :cond_1d
    return-void
.end method

.method public final AAa(Lcom/facebook/ads/redexgen/X/Au;)V
    .registers 6

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A00()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/A4;

    const/4 v0, 0x1

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/A4;->onDecoderDisabled(Lcom/facebook/ads/redexgen/X/A3;ILcom/facebook/ads/redexgen/X/Au;)V

    goto :goto_a

    :cond_1b
    return-void
.end method

.method public final AAb(Lcom/facebook/ads/redexgen/X/Au;)V
    .registers 6

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A02()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/A4;

    const/4 v0, 0x1

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/A4;->onDecoderEnabled(Lcom/facebook/ads/redexgen/X/A3;ILcom/facebook/ads/redexgen/X/Au;)V

    goto :goto_a

    :cond_1b
    return-void
.end method

.method public final AAc(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V
    .registers 6

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A03()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/A4;

    const/4 v0, 0x1

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/A4;->onDecoderInputFormatChanged(Lcom/facebook/ads/redexgen/X/A3;ILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    goto :goto_a

    :cond_1b
    return-void
.end method

.method public final AAd(I)V
    .registers 5

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A03()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/A4;->onAudioSessionId(Lcom/facebook/ads/redexgen/X/A3;I)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final AAe(IJJ)V
    .registers 15

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A03()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/A4;

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-interface/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/A4;->onAudioUnderrun(Lcom/facebook/ads/redexgen/X/A3;IJJ)V

    goto :goto_a

    :cond_1d
    return-void
.end method

.method public final AAh(IJJ)V
    .registers 8

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A01()Lcom/facebook/ads/redexgen/X/A3;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_9

    :cond_13
    return-void
.end method

.method public final AB8(ILcom/facebook/ads/redexgen/X/EW;Lcom/facebook/ads/redexgen/X/El;)V
    .registers 10

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/XP;->A04(ILcom/facebook/ads/redexgen/X/EW;)Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/XP;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_31

    sget-object v2, Lcom/facebook/ads/redexgen/X/XP;->A05:[Ljava/lang/String;

    const-string v1, "A4QXCUmAUOBVX64TvaZ46B5z8oAUnNZh"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v0, v5, p3}, Lcom/facebook/ads/redexgen/X/A4;->onDownstreamFormatChanged(Lcom/facebook/ads/redexgen/X/A3;Lcom/facebook/ads/redexgen/X/El;)V

    goto :goto_a

    :cond_30
    return-void

    :cond_31
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AB9()V
    .registers 4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A03()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/A4;->onDrmKeysLoaded(Lcom/facebook/ads/redexgen/X/A3;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final ABA()V
    .registers 7

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A03()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/XP;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_36

    sget-object v2, Lcom/facebook/ads/redexgen/X/XP;->A05:[Ljava/lang/String;

    const-string v1, "H8nHlV26gM4XBGJAm7WOVvtwu96ZUK2X"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "PAYN32B5Yp2dRtm6BiBsWpdjvopWw5ut"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/A4;->onDrmKeysRemoved(Lcom/facebook/ads/redexgen/X/A3;)V

    goto :goto_a

    :cond_35
    return-void

    :cond_36
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ABB()V
    .registers 4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A03()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/A4;->onDrmKeysRestored(Lcom/facebook/ads/redexgen/X/A3;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final ABC(Ljava/lang/Exception;)V
    .registers 5

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A03()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/A4;->onDrmSessionManagerError(Lcom/facebook/ads/redexgen/X/A3;Ljava/lang/Exception;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final ABD(IJ)V
    .registers 7

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A00()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v0, v2, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/A4;->onDroppedVideoFrames(Lcom/facebook/ads/redexgen/X/A3;IJ)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final ABo(ILcom/facebook/ads/redexgen/X/EW;Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/El;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/XP;->A04(ILcom/facebook/ads/redexgen/X/EW;)Lcom/facebook/ads/redexgen/X/A3;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_9

    :cond_13
    return-void
.end method

.method public final ABq(ILcom/facebook/ads/redexgen/X/EW;Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/El;)V
    .registers 10

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/XP;->A04(ILcom/facebook/ads/redexgen/X/EW;)Lcom/facebook/ads/redexgen/X/A3;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/XP;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_2f

    sget-object v2, Lcom/facebook/ads/redexgen/X/XP;->A05:[Ljava/lang/String;

    const-string v1, "U0y5Da5mII5YR5LLA1Yw3vUoz2XQzjRa"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "AsACfu1w80VTJMOzwO3g8Y2nz7gc0iIE"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_2e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_9

    :cond_2e
    return-void

    :cond_2f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ABt(ILcom/facebook/ads/redexgen/X/EW;Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/El;Ljava/io/IOException;Z)V
    .registers 15

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/XP;->A04(ILcom/facebook/ads/redexgen/X/EW;)Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/A4;

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/A4;->onLoadError(Lcom/facebook/ads/redexgen/X/A3;Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/El;Ljava/io/IOException;Z)V

    goto :goto_a

    :cond_1e
    return-void
.end method

.method public final ABv(ILcom/facebook/ads/redexgen/X/EW;Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/El;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/XP;->A04(ILcom/facebook/ads/redexgen/X/EW;)Lcom/facebook/ads/redexgen/X/A3;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_9

    :cond_13
    return-void
.end method

.method public final ABx(Z)V
    .registers 5

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A02()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/A4;->onLoadingChanged(Lcom/facebook/ads/redexgen/X/A3;Z)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final AC4(ILcom/facebook/ads/redexgen/X/EW;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/A1;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/A1;->A0B(ILcom/facebook/ads/redexgen/X/EW;)V

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/XP;->A04(ILcom/facebook/ads/redexgen/X/EW;)Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/A4;->onMediaPeriodCreated(Lcom/facebook/ads/redexgen/X/A3;)V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public final AC5(ILcom/facebook/ads/redexgen/X/EW;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/A1;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/A1;->A0C(ILcom/facebook/ads/redexgen/X/EW;)V

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/XP;->A04(ILcom/facebook/ads/redexgen/X/EW;)Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/A4;->onMediaPeriodReleased(Lcom/facebook/ads/redexgen/X/A3;)V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public final AC8(Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)V
    .registers 5

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A02()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/A4;->onMetadata(Lcom/facebook/ads/redexgen/X/A3;Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final ACO(Lcom/facebook/ads/redexgen/X/9f;)V
    .registers 8

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A02()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/XP;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_35

    sget-object v2, Lcom/facebook/ads/redexgen/X/XP;->A05:[Ljava/lang/String;

    const-string v1, "tyr0dpEvlbVKV2bQNXg9NMaK2xy6BoSW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "0QT1knH3BDrt7WSXrhNoOdrd2qYVbD8e"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v3, v4, p1}, Lcom/facebook/ads/redexgen/X/A4;->onPlaybackParametersChanged(Lcom/facebook/ads/redexgen/X/A3;Lcom/facebook/ads/redexgen/X/9f;)V

    goto :goto_a

    :cond_35
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3b
    return-void
.end method

.method public final ACQ(Lcom/facebook/ads/redexgen/X/9K;)V
    .registers 5

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A02()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/A4;->onPlayerError(Lcom/facebook/ads/redexgen/X/A3;Lcom/facebook/ads/redexgen/X/9K;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final ACS(ZI)V
    .registers 9

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A02()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/XP;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_28

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_28
    sget-object v2, Lcom/facebook/ads/redexgen/X/XP;->A05:[Ljava/lang/String;

    const-string v1, "LXJ0q"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_6d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/XP;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5b

    sget-object v2, Lcom/facebook/ads/redexgen/X/XP;->A05:[Ljava/lang/String;

    const-string v1, "X7wD26nry5cKRUDoaHEW6GIg2BkBQsxF"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "mBKm4QAdZAalWFRu5fZgU4pH2nbenvRU"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v3, v4, p1, p2}, Lcom/facebook/ads/redexgen/X/A4;->onPlayerStateChanged(Lcom/facebook/ads/redexgen/X/A3;ZI)V

    goto :goto_a

    :cond_5b
    sget-object v2, Lcom/facebook/ads/redexgen/X/XP;->A05:[Ljava/lang/String;

    const-string v1, "Z6EwV7KsnuzYN7ajnraaFM2k28xO4kcl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "L2gfOX15V0Xhx6fkmzEhPGDX2RpQhPed"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v3, v4, p1, p2}, Lcom/facebook/ads/redexgen/X/A4;->onPlayerStateChanged(Lcom/facebook/ads/redexgen/X/A3;ZI)V

    goto :goto_a

    :cond_6d
    return-void
.end method

.method public final ACU(I)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/A1;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/A1;->A0A(I)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A02()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/A4;->onPositionDiscontinuity(Lcom/facebook/ads/redexgen/X/A3;I)V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public final ACe(ILcom/facebook/ads/redexgen/X/EW;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/A1;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/A1;->A0D(ILcom/facebook/ads/redexgen/X/EW;)V

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/XP;->A04(ILcom/facebook/ads/redexgen/X/EW;)Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/A4;->onReadingStarted(Lcom/facebook/ads/redexgen/X/A3;)V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public final ACi(Landroid/view/Surface;)V
    .registers 5

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A03()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/A4;->onRenderedFirstFrame(Lcom/facebook/ads/redexgen/X/A3;Landroid/view/Surface;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final ACt()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/A1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/A1;->A0F()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/A1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/A1;->A08()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A02()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/A4;->onSeekProcessed(Lcom/facebook/ads/redexgen/X/A3;)V

    goto :goto_17

    :cond_27
    return-void
.end method

.method public final AD9(Lcom/facebook/ads/redexgen/X/9z;Ljava/lang/Object;I)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A02:Lcom/facebook/ads/redexgen/X/A1;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/A1;->A0E(Lcom/facebook/ads/redexgen/X/9z;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A02()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v0, v2, p3}, Lcom/facebook/ads/redexgen/X/A4;->onTimelineChanged(Lcom/facebook/ads/redexgen/X/A3;I)V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public final ADC(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GP;)V
    .registers 6

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A02()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-interface {v0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/A4;->onTracksChanged(Lcom/facebook/ads/redexgen/X/A3;Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GP;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final ADK(Ljava/lang/String;JJ)V
    .registers 14

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A03()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/A4;

    const/4 v4, 0x2

    move-object v5, p1

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/A4;->onDecoderInitialized(Lcom/facebook/ads/redexgen/X/A3;ILjava/lang/String;J)V

    goto :goto_a

    :cond_1d
    return-void
.end method

.method public final ADL(Lcom/facebook/ads/redexgen/X/Au;)V
    .registers 6

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A00()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/A4;

    const/4 v0, 0x2

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/A4;->onDecoderDisabled(Lcom/facebook/ads/redexgen/X/A3;ILcom/facebook/ads/redexgen/X/Au;)V

    goto :goto_a

    :cond_1b
    return-void
.end method

.method public final ADM(Lcom/facebook/ads/redexgen/X/Au;)V
    .registers 6

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A02()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/A4;

    const/4 v0, 0x2

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/A4;->onDecoderEnabled(Lcom/facebook/ads/redexgen/X/A3;ILcom/facebook/ads/redexgen/X/Au;)V

    goto :goto_a

    :cond_1b
    return-void
.end method

.method public final ADQ(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V
    .registers 6

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A03()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/A4;

    const/4 v0, 0x2

    invoke-interface {v1, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/A4;->onDecoderInputFormatChanged(Lcom/facebook/ads/redexgen/X/A3;ILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    goto :goto_a

    :cond_1b
    return-void
.end method

.method public final ADV(IIIF)V
    .registers 13

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XP;->A03()Lcom/facebook/ads/redexgen/X/A3;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XP;->A04:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/A4;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/A4;->onVideoSizeChanged(Lcom/facebook/ads/redexgen/X/A3;IIIF)V

    goto :goto_a

    :cond_1e
    return-void
.end method
