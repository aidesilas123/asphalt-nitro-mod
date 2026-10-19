###### Class com.facebook.ads.redexgen.X.C0962Dj (com.facebook.ads.redexgen.X.Dj)
.class public final Lcom/facebook/ads/redexgen/X/Dj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/facebook/ads/redexgen/X/Vh;
.implements Lcom/facebook/ads/redexgen/X/GQ;
.implements Lcom/facebook/ads/redexgen/X/EX;
.implements Lcom/facebook/ads/redexgen/X/9H;
.implements Lcom/facebook/ads/redexgen/X/9o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9S;,
        Lcom/facebook/ads/redexgen/X/9Q;,
        Lcom/facebook/ads/redexgen/X/9R;,
        Lcom/facebook/ads/redexgen/X/9T;
    }
.end annotation


# static fields
.field public static A0V:[B

.field public static A0W:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/9T;

.field public A05:Lcom/facebook/ads/redexgen/X/9e;

.field public A06:Lcom/facebook/ads/redexgen/X/9v;

.field public A07:Lcom/facebook/ads/redexgen/X/EY;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public A0C:[Lcom/facebook/ads/redexgen/X/XS;

.field public final A0D:J

.field public final A0E:Landroid/os/Handler;

.field public final A0F:Landroid/os/HandlerThread;

.field public final A0G:Lcom/facebook/ads/redexgen/X/XV;

.field public final A0H:Lcom/facebook/ads/redexgen/X/XT;

.field public final A0I:Lcom/facebook/ads/redexgen/X/9S;

.field public final A0J:Lcom/facebook/ads/redexgen/X/9Z;

.field public final A0K:Lcom/facebook/ads/redexgen/X/9c;

.field public final A0L:Lcom/facebook/ads/redexgen/X/9x;

.field public final A0M:Lcom/facebook/ads/redexgen/X/9y;

.field public final A0N:Lcom/facebook/ads/redexgen/X/GR;

.field public final A0O:Lcom/facebook/ads/redexgen/X/GS;

.field public final A0P:Lcom/facebook/ads/redexgen/X/HL;

.field public final A0Q:Lcom/facebook/ads/redexgen/X/HV;

.field public final A0R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/9R;",
            ">;"
        }
    .end annotation
.end field

.field public final A0S:Z

.field public final A0T:[Lcom/facebook/ads/redexgen/X/XS;

.field public final A0U:[Lcom/facebook/ads/redexgen/X/9s;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TSIQGmaqgvrUxo0yYDewkVNDuuioOpPV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LhstooR1wZsH8RVMZSyyF7FJZ5wrHutR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "WZmkRBn8iXpnqDBIN644YOqcruHieEQJ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OBm1ApV8rqkCiyt7FxArHXpNA0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "RSLtmQKc5IgtmDXEpea3qKBmF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "cT5hSyxhu4oYAFMn61C1ja3cHbuAf9wl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "QQz6Qig88n9IGtqyO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pBG4ezF2k8D44jdvacVEPM0q7VNUtk0G"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Dj;->A0K()V

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/GR;Lcom/facebook/ads/redexgen/X/GS;Lcom/facebook/ads/redexgen/X/9Z;ZIZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/HL;)V
    .registers 21

    move-object v2, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0T:[Lcom/facebook/ads/redexgen/X/XS;

    iput-object p2, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0N:Lcom/facebook/ads/redexgen/X/GR;

    move-object v9, p3

    iput-object v9, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0O:Lcom/facebook/ads/redexgen/X/GS;

    iput-object p4, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0J:Lcom/facebook/ads/redexgen/X/9Z;

    iput-boolean p5, v2, Lcom/facebook/ads/redexgen/X/Dj;->A08:Z

    move/from16 v0, p6

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A02:I

    move/from16 v0, p7

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0B:Z

    move-object/from16 v0, p8

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0E:Landroid/os/Handler;

    move-object/from16 v0, p9

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0H:Lcom/facebook/ads/redexgen/X/XT;

    move-object/from16 v3, p10

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0P:Lcom/facebook/ads/redexgen/X/HL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9c;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9c;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-interface {p4}, Lcom/facebook/ads/redexgen/X/9Z;->A60()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0D:J

    invoke-interface {p4}, Lcom/facebook/ads/redexgen/X/9Z;->AEo()Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0S:Z

    sget-object v0, Lcom/facebook/ads/redexgen/X/9v;->A03:Lcom/facebook/ads/redexgen/X/9v;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A06:Lcom/facebook/ads/redexgen/X/9v;

    new-instance v4, Lcom/facebook/ads/redexgen/X/9e;

    sget-object v5, Lcom/facebook/ads/redexgen/X/9z;->A01:Lcom/facebook/ads/redexgen/X/9z;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    sget-object v8, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    move-object v0, v4

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Lcom/facebook/ads/redexgen/X/9z;JLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GS;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/9S;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9S;-><init>(Lcom/facebook/ads/redexgen/X/9P;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0I:Lcom/facebook/ads/redexgen/X/9S;

    array-length v0, p1

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/9s;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0U:[Lcom/facebook/ads/redexgen/X/9s;

    const/4 v4, 0x0

    :goto_59
    array-length v0, p1

    if-ge v4, v0, :cond_6e

    aget-object v0, p1, v4

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/XS;->AFH(I)V

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0U:[Lcom/facebook/ads/redexgen/X/9s;

    aget-object v0, p1, v4

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/XS;->A6D()Lcom/facebook/ads/redexgen/X/9s;

    move-result-object v0

    aput-object v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    :cond_6e
    new-instance v0, Lcom/facebook/ads/redexgen/X/XV;

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/XV;-><init>(Lcom/facebook/ads/redexgen/X/9H;Lcom/facebook/ads/redexgen/X/HL;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0G:Lcom/facebook/ads/redexgen/X/XV;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0R:Ljava/util/ArrayList;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/XS;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0C:[Lcom/facebook/ads/redexgen/X/XS;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9y;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9y;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0M:Lcom/facebook/ads/redexgen/X/9y;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9x;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9x;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0L:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {p2, v2}, Lcom/facebook/ads/redexgen/X/GR;->A00(Lcom/facebook/ads/redexgen/X/GQ;)V

    const/16 v4, 0x15

    const/16 v1, 0x1d

    const/4 v0, 0x0

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A06(III)Ljava/lang/String;

    move-result-object v4

    const/16 v1, -0x10

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v4, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Lcom/facebook/ads/redexgen/X/HL;->A4Z(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/facebook/ads/redexgen/X/Us;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    return-void
.end method

.method private A00()I
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/9z;->A0E()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0B:Z

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/9z;->A05(Z)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0M:Lcom/facebook/ads/redexgen/X/9y;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A0B(ILcom/facebook/ads/redexgen/X/9y;)Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9y;->A00:I

    goto :goto_b
.end method

.method private A01(ILcom/facebook/ads/redexgen/X/9z;Lcom/facebook/ads/redexgen/X/9z;)I
    .registers 14

    move v5, p1

    const/4 v1, -0x1

    move-object v4, p2

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/9z;->A00()I

    move-result v3

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v3, :cond_1b

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1b

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0L:Lcom/facebook/ads/redexgen/X/9x;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0M:Lcom/facebook/ads/redexgen/X/9y;

    iget v8, p0, Lcom/facebook/ads/redexgen/X/Dj;->A02:I

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0B:Z

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/9z;->A03(ILcom/facebook/ads/redexgen/X/9x;Lcom/facebook/ads/redexgen/X/9y;IZ)I

    move-result v5

    if-ne v5, v0, :cond_1c

    :cond_1b
    return v1

    :cond_1c
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0L:Lcom/facebook/ads/redexgen/X/9x;

    const/4 v0, 0x1

    invoke-virtual {v4, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A0A(ILcom/facebook/ads/redexgen/X/9x;Z)Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9x;->A03:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/9z;->A04(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/EW;J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0G()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0H()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v0

    if-eq v1, v0, :cond_14

    const/4 v0, 0x1

    :goto_f
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A03(Lcom/facebook/ads/redexgen/X/EW;JZ)J

    move-result-wide v0

    return-wide v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/EW;JZ)J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0H()V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Dj;->A09:Z

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/Dj;->A0N(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0G()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v4

    move-object v3, v4

    :goto_11
    if-eqz v3, :cond_39

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/facebook/ads/redexgen/X/Dj;->A0t(Lcom/facebook/ads/redexgen/X/EW;JLcom/facebook/ads/redexgen/X/9a;)Z

    move-result v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9d

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "3g90ZjAQy8gphAPE4L2ghHg16cmQ019E"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v7, :cond_4b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/9c;->A0S(Lcom/facebook/ads/redexgen/X/9a;)Z

    :cond_39
    if-ne v4, v3, :cond_3d

    if-eqz p4, :cond_57

    :cond_3d
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0C:[Lcom/facebook/ads/redexgen/X/XS;

    array-length v2, v4

    const/4 v1, 0x0

    :goto_41
    if-ge v1, v2, :cond_52

    aget-object v0, v4, v1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0b(Lcom/facebook/ads/redexgen/X/XS;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_4b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0C()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v3

    goto :goto_11

    :cond_52
    new-array v0, v6, [Lcom/facebook/ads/redexgen/X/XS;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0C:[Lcom/facebook/ads/redexgen/X/XS;

    const/4 v4, 0x0

    :cond_57
    if-eqz v3, :cond_b9

    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Dj;->A0V(Lcom/facebook/ads/redexgen/X/9a;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "JYav744H3005gGdd3wHQ67gij"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "FVGbgJ3f5rxs8oy2Mt1O3WpPvx"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/9a;->A05:Z

    if-eqz v0, :cond_b2

    :goto_80
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/Vg;

    invoke-interface {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/Vg;->AF0(J)J

    move-result-wide p2

    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/Vg;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0D:J

    sub-long v2, p2, v0

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0S:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_a8

    :cond_9d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_a3
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/9a;->A05:Z

    if-eqz v0, :cond_b2

    goto :goto_80

    :cond_a8
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "LvYFslBjN8wEk55S4mS5Jlrj4VNptxmz"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    invoke-interface {v7, v2, v3, v6}, Lcom/facebook/ads/redexgen/X/Vg;->A55(JZ)V

    :cond_b2
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/Dj;->A0P(J)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A09()V

    goto :goto_c2

    :cond_b9
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9c;->A0O(Z)V

    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/Dj;->A0P(J)V

    :goto_c2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/HV;->AF2(I)Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_9d

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "qbdkiXSPlbFYutVyIKxCWSr3uDHCS3n2"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-wide p2
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/9T;Z)Landroid/util/Pair;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/9T;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/9T;->A02:Lcom/facebook/ads/redexgen/X/9z;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/9z;->A0E()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_e

    return-object v5

    :cond_e
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/9z;->A0E()Z

    move-result v0

    if-eqz v0, :cond_15

    move-object v6, v4

    :cond_15
    :try_start_15
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0M:Lcom/facebook/ads/redexgen/X/9y;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0L:Lcom/facebook/ads/redexgen/X/9x;

    iget v9, p1, Lcom/facebook/ads/redexgen/X/9T;->A00:I

    iget-wide v10, p1, Lcom/facebook/ads/redexgen/X/9T;->A01:J

    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/9z;->A07(Lcom/facebook/ads/redexgen/X/9y;Lcom/facebook/ads/redexgen/X/9x;IJ)Landroid/util/Pair;

    move-result-object v3

    if-ne v4, v6, :cond_24

    return-object v3
    :try_end_24
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_24} :catch_90

    :cond_24
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0L:Lcom/facebook/ads/redexgen/X/9x;

    const/4 v0, 0x1

    invoke-virtual {v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A0A(ILcom/facebook/ads/redexgen/X/9x;Z)Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9x;->A03:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/9z;->A04(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_49

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_49
    if-eqz p2, :cond_8f

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v6, v4}, Lcom/facebook/ads/redexgen/X/Dj;->A01(ILcom/facebook/ads/redexgen/X/9z;Lcom/facebook/ads/redexgen/X/9z;)I

    move-result v1

    if-eq v1, v2, :cond_8f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0L:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A09(ILcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v0

    iget v2, v0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v4, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Dj;->A05(Lcom/facebook/ads/redexgen/X/9z;IJ)Landroid/util/Pair;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_89

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "LZRu6qU1d7MAJxELkyp6D6bqJ9pCtQWv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "5OOlDtGsHYXmvjCA2lYHypc4I8JTMes9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3

    :cond_89
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8f
    return-object v5

    :catch_90
    iget v3, p1, Lcom/facebook/ads/redexgen/X/9T;->A00:I

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/9T;->A01:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Lcom/facebook/ads/redexgen/X/9z;IJ)V

    throw v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/9z;IJ)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/9z;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0M:Lcom/facebook/ads/redexgen/X/9y;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0L:Lcom/facebook/ads/redexgen/X/9x;

    move-object v0, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9z;->A07(Lcom/facebook/ads/redexgen/X/9y;Lcom/facebook/ads/redexgen/X/9x;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static A06(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dj;->A0V:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A07()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v4, p0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Dj;->A0P:Lcom/facebook/ads/redexgen/X/HL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HL;->AG7()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0I()V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0P()Z

    move-result v5

    const-wide/16 v0, 0xa

    if-nez v5, :cond_1b

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0B()V

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Dj;->A0R(JJ)V

    return-void

    :cond_1b
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0G()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v12

    const/16 v5, 0x96

    const/16 v1, 0xa

    const/16 v0, 0x14

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hu;->A02(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0J()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v0, 0x3e8

    mul-long/2addr v5, v0

    iget-object v9, v12, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/Vg;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A0A:J

    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/Dj;->A0D:J

    sub-long/2addr v0, v7

    iget-boolean v7, v4, Lcom/facebook/ads/redexgen/X/Dj;->A0S:Z

    invoke-interface {v9, v0, v1, v7}, Lcom/facebook/ads/redexgen/X/Vg;->A55(JZ)V

    const/4 v13, 0x1

    const/4 v11, 0x1

    iget-object v10, v4, Lcom/facebook/ads/redexgen/X/Dj;->A0C:[Lcom/facebook/ads/redexgen/X/XS;

    array-length v9, v10

    const/4 v8, 0x0

    :goto_4c
    if-ge v8, v9, :cond_85

    aget-object v7, v10, v8

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/Dj;->A03:J

    invoke-interface {v7, v0, v1, v5, v6}, Lcom/facebook/ads/redexgen/X/XS;->AEb(JJ)V

    const/4 v1, 0x1

    if-eqz v13, :cond_83

    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/XS;->A8q()Z

    move-result v0

    if-eqz v0, :cond_83

    const/4 v13, 0x1

    :goto_5f
    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/XS;->A90()Z

    move-result v0

    if-nez v0, :cond_71

    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/XS;->A8q()Z

    move-result v0

    if-nez v0, :cond_71

    invoke-direct {v4, v7}, Lcom/facebook/ads/redexgen/X/Dj;->A0s(Lcom/facebook/ads/redexgen/X/XS;)Z

    move-result v0

    if-eqz v0, :cond_81

    :cond_71
    const/4 v0, 0x1

    :goto_72
    if-nez v0, :cond_77

    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/XS;->AA5()V

    :cond_77
    if-eqz v11, :cond_7f

    if-eqz v0, :cond_7f

    :goto_7b
    move v11, v1

    add-int/lit8 v8, v8, 0x1

    goto :goto_4c

    :cond_7f
    const/4 v1, 0x0

    goto :goto_7b

    :cond_81
    const/4 v0, 0x0

    goto :goto_72

    :cond_83
    const/4 v13, 0x0

    goto :goto_5f

    :cond_85
    if-nez v11, :cond_8a

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0B()V

    :cond_8a
    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/9b;->A01:J

    const/4 v7, 0x4

    const/4 v10, 0x3

    const/4 v6, 0x2

    if-eqz v13, :cond_c4

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v8, v13

    if-eqz v0, :cond_a4

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A0A:J

    cmp-long v5, v8, v0

    if-gtz v5, :cond_c4

    :cond_a4
    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A05:Z

    if-eqz v0, :cond_c4

    invoke-direct {v4, v7}, Lcom/facebook/ads/redexgen/X/Dj;->A0N(I)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0H()V

    :cond_b0
    :goto_b0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    if-ne v0, v6, :cond_118

    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/Dj;->A0C:[Lcom/facebook/ads/redexgen/X/XS;

    array-length v5, v8

    const/4 v1, 0x0

    :goto_ba
    if-ge v1, v5, :cond_118

    aget-object v0, v8, v1

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/XS;->AA5()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_ba

    :cond_c4
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    if-ne v0, v6, :cond_db

    invoke-direct {v4, v11}, Lcom/facebook/ads/redexgen/X/Dj;->A0u(Z)Z

    move-result v0

    if-eqz v0, :cond_db

    invoke-direct {v4, v10}, Lcom/facebook/ads/redexgen/X/Dj;->A0N(I)V

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Dj;->A08:Z

    if-eqz v0, :cond_b0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0G()V

    goto :goto_b0

    :cond_db
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    if-ne v0, v10, :cond_b0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Dj;->A0C:[Lcom/facebook/ads/redexgen/X/XS;

    array-length v8, v0

    sget-object v5, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v5, v0

    const/4 v0, 0x3

    aget-object v0, v5, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_164

    sget-object v5, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "Eggx5Ft4Lgnx6HVrotcHBkscR"

    const/4 v0, 0x4

    aput-object v1, v5, v0

    const-string v1, "Urp4oA4mdP1paz0o5Y10JqXrCe"

    const/4 v0, 0x3

    aput-object v1, v5, v0

    if-nez v8, :cond_10b

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0q()Z

    move-result v0

    if-eqz v0, :cond_10d

    goto :goto_b0

    :cond_10b
    if-nez v11, :cond_b0

    :cond_10d
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Dj;->A08:Z

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Dj;->A09:Z

    invoke-direct {v4, v6}, Lcom/facebook/ads/redexgen/X/Dj;->A0N(I)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0H()V

    goto :goto_b0

    :cond_118
    iget-boolean v8, v4, Lcom/facebook/ads/redexgen/X/Dj;->A08:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_12f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_12f
    sget-object v5, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "rTELFOhgZqImPwKgVJI0nXuoysvpkaxO"

    const/4 v0, 0x5

    aput-object v1, v5, v0

    if-eqz v8, :cond_13e

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    if-eq v0, v10, :cond_144

    :cond_13e
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    if-ne v0, v6, :cond_14d

    :cond_144
    const-wide/16 v0, 0xa

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Dj;->A0R(JJ)V

    :goto_149
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hu;->A00()V

    return-void

    :cond_14d
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Dj;->A0C:[Lcom/facebook/ads/redexgen/X/XS;

    array-length v0, v0

    if-eqz v0, :cond_15e

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    if-eq v0, v7, :cond_15e

    const-wide/16 v0, 0x3e8

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Dj;->A0R(JJ)V

    goto :goto_149

    :cond_15e
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/HV;->AEY(I)V

    goto :goto_149

    :cond_164
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A08()V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0N(I)V

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lcom/facebook/ads/redexgen/X/Dj;->A0o(ZZZ)V

    return-void
.end method

.method private A09()V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0F()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/9a;->A06()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v1, v3

    if-nez v0, :cond_15

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0k(Z)V

    return-void

    :cond_15
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Dj;->A03:J

    invoke-virtual {v5, v3, v4}, Lcom/facebook/ads/redexgen/X/9a;->A08(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0J:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0G:Lcom/facebook/ads/redexgen/X/XV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XV;->A7Z()Lcom/facebook/ads/redexgen/X/9f;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9f;->A01:F

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9Z;->AFX(JF)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0k(Z)V

    if-eqz v0, :cond_34

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A03:J

    invoke-virtual {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/9a;->A0F(J)V

    :cond_34
    return-void
.end method

.method private A0A()V
    .registers 6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0I:Lcom/facebook/ads/redexgen/X/9S;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9S;->A06(Lcom/facebook/ads/redexgen/X/9e;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0E:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0I:Lcom/facebook/ads/redexgen/X/9S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9S;->A00(Lcom/facebook/ads/redexgen/X/9S;)I

    move-result v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0I:Lcom/facebook/ads/redexgen/X/9S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9S;->A02(Lcom/facebook/ads/redexgen/X/9S;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0I:Lcom/facebook/ads/redexgen/X/9S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9S;->A01(Lcom/facebook/ads/redexgen/X/9S;)I

    move-result v2

    :goto_20
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v3, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0I:Lcom/facebook/ads/redexgen/X/9S;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9S;->A05(Lcom/facebook/ads/redexgen/X/9e;)V

    :cond_31
    return-void

    :cond_32
    const/4 v2, -0x1

    goto :goto_20
.end method

.method private A0B()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0F()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0H()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v1

    if-eqz v5, :cond_50

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/9a;->A06:Z

    if-nez v0, :cond_50

    if-eqz v1, :cond_18

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    if-ne v0, v5, :cond_50

    :cond_18
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0C:[Lcom/facebook/ads/redexgen/X/XS;

    array-length v3, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_45

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "M2PhxJTgTMxoek0nGdRGZ8ED7"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "JhH24KrsERDOvzAX41swXn1Uhz"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v1, 0x0

    :goto_37
    if-ge v1, v3, :cond_4b

    aget-object v0, v4, v1

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/XS;->A8Q()Z

    move-result v0

    if-nez v0, :cond_42

    return-void

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_45
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4b
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/Vg;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Vg;->AA3()V

    :cond_50
    return-void
.end method

.method private A0C()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A03:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9c;->A0M(J)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0Q()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A03:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9c;->A0I(JLcom/facebook/ads/redexgen/X/9e;)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v10

    if-nez v10, :cond_21

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A07:Lcom/facebook/ads/redexgen/X/EY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/EY;->AA4()V

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/9b;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0L:Lcom/facebook/ads/redexgen/X/9x;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/9z;->A0A(ILcom/facebook/ads/redexgen/X/9x;Z)Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v0

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/9x;->A03:Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0U:[Lcom/facebook/ads/redexgen/X/9s;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0N:Lcom/facebook/ads/redexgen/X/GR;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0J:Lcom/facebook/ads/redexgen/X/9Z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9Z;->A5v()Lcom/facebook/ads/redexgen/X/VJ;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Dj;->A07:Lcom/facebook/ads/redexgen/X/EY;

    invoke-virtual/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/9c;->A0K([Lcom/facebook/ads/redexgen/X/9s;Lcom/facebook/ads/redexgen/X/GR;Lcom/facebook/ads/redexgen/X/GU;Lcom/facebook/ads/redexgen/X/EY;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/9b;)Lcom/facebook/ads/redexgen/X/Vg;

    move-result-object v2

    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/9b;->A03:J

    invoke-interface {v2, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Vg;->ADu(Lcom/facebook/ads/redexgen/X/Vh;J)V

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Dj;->A0k(Z)V

    goto :goto_20
.end method

.method private A0D()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0, v1, v1, v1}, Lcom/facebook/ads/redexgen/X/Dj;->A0o(ZZZ)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0J:Lcom/facebook/ads/redexgen/X/9Z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9Z;->ACg()V

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Dj;->A0N(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    monitor-enter p0

    :try_start_12
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0A:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private A0E()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    move-object v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0P()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dj;->A0G:Lcom/facebook/ads/redexgen/X/XV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XV;->A7Z()Lcom/facebook/ads/redexgen/X/9f;

    move-result-object v0

    iget v7, v0, Lcom/facebook/ads/redexgen/X/9f;->A01:F

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0G()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v6

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0H()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_31

    :goto_2b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_31
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "D9etX6yGBrwjRzOUEpEFU5ER5XUfrbIh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "v3YP09X53VrDeZJkDNiGeietvmwAimn0"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v4, 0x1

    :goto_3e
    if-eqz v6, :cond_44

    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/9a;->A06:Z

    if-nez v0, :cond_45

    :cond_44
    return-void

    :cond_45
    invoke-virtual {v6, v7}, Lcom/facebook/ads/redexgen/X/9a;->A0I(F)Z

    move-result v0

    if-eqz v0, :cond_12c

    const/4 v7, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_121

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "qdzsaLeT6GVLLZLLIHWPE1kBVsafqqMr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v4, :cond_133

    :goto_64
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0G()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v4

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/9c;->A0S(Lcom/facebook/ads/redexgen/X/9a;)Z

    move-result v2

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dj;->A0T:[Lcom/facebook/ads/redexgen/X/XS;

    array-length v0, v0

    new-array v5, v0, [Z

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A0A:J

    invoke-virtual {v4, v0, v1, v2, v5}, Lcom/facebook/ads/redexgen/X/9a;->A0B(JZ[Z)J

    move-result-wide v10

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/9a;->A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/GS;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0i(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GS;)V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    if-eq v0, v7, :cond_a8

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A0A:J

    cmp-long v2, v10, v0

    if-eqz v2, :cond_a8

    iget-object v8, v3, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v9, v8, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v12, v0, Lcom/facebook/ads/redexgen/X/9e;->A01:J

    invoke-virtual/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/9e;->A04(Lcom/facebook/ads/redexgen/X/EW;JJ)Lcom/facebook/ads/redexgen/X/9e;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dj;->A0I:Lcom/facebook/ads/redexgen/X/9S;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/9S;->A04(I)V

    invoke-direct {v3, v10, v11}, Lcom/facebook/ads/redexgen/X/Dj;->A0P(J)V

    :cond_a8
    const/4 v6, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_113

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "v6rigB8My08mC5ZvZtTcxONYTtnHkhiY"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "jJJ7EyTzSHhVUQBMBNjuu6IlWzfsi9o6"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dj;->A0T:[Lcom/facebook/ads/redexgen/X/XS;

    array-length v0, v0

    new-array v9, v0, [Z

    const/4 v11, 0x0

    :goto_ca
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Dj;->A0T:[Lcom/facebook/ads/redexgen/X/XS;

    array-length v0, v1

    if-ge v11, v0, :cond_156

    aget-object v10, v1, v11

    invoke-interface {v10}, Lcom/facebook/ads/redexgen/X/XS;->A7t()I

    move-result v0

    if-eqz v0, :cond_111

    const/4 v0, 0x1

    :goto_d8
    aput-boolean v0, v9, v11

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9a;->A0A:[Lcom/facebook/ads/redexgen/X/Et;

    aget-object v1, v0, v11

    if-eqz v1, :cond_e2

    add-int/lit8 v6, v6, 0x1

    :cond_e2
    aget-boolean v0, v9, v11

    if-eqz v0, :cond_ef

    invoke-interface {v10}, Lcom/facebook/ads/redexgen/X/XS;->A7w()Lcom/facebook/ads/redexgen/X/Et;

    move-result-object v0

    if-eq v1, v0, :cond_f2

    invoke-direct {v3, v10}, Lcom/facebook/ads/redexgen/X/Dj;->A0b(Lcom/facebook/ads/redexgen/X/XS;)V

    :cond_ef
    :goto_ef
    add-int/lit8 v11, v11, 0x1

    goto :goto_ca

    :cond_f2
    aget-boolean v0, v5, v11

    if-eqz v0, :cond_ef

    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/Dj;->A03:J

    sget-object v7, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v7, v7, v0

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v0, 0x77

    if-eq v7, v0, :cond_19e

    sget-object v8, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v7, "kUW5tsmcM8CZIAjkj84TOGdyZAx2gWc6"

    const/4 v0, 0x7

    aput-object v7, v8, v0

    invoke-interface {v10, v1, v2}, Lcom/facebook/ads/redexgen/X/XS;->AEn(J)V

    goto :goto_ef

    :cond_111
    const/4 v0, 0x0

    goto :goto_d8

    :cond_113
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "5RhHFxqKf8KludlSzI9zDK8m295dvAFV"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dj;->A0T:[Lcom/facebook/ads/redexgen/X/XS;

    array-length v0, v0

    new-array v9, v0, [Z

    const/4 v11, 0x0

    goto :goto_ca

    :cond_121
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "7WrBcNkU6uNk4nx5t1RXmqyIgKSjjx3l"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_133

    goto/16 :goto_64

    :cond_12c
    if-ne v6, v5, :cond_12f

    const/4 v4, 0x0

    :cond_12f
    iget-object v6, v6, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    goto/16 :goto_3e

    :cond_133
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/9c;->A0S(Lcom/facebook/ads/redexgen/X/9a;)Z

    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/9a;->A06:Z

    if-eqz v0, :cond_165

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/9b;->A03:J

    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/Dj;->A03:J

    invoke-virtual {v6, v0, v1}, Lcom/facebook/ads/redexgen/X/9a;->A08(J)J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const/4 v0, 0x0

    invoke-virtual {v6, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9a;->A0A(JZ)J

    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/9a;->A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/GS;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0i(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GS;)V

    goto :goto_165

    :cond_156
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/9a;->A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/GS;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9e;->A05(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GS;)Lcom/facebook/ads/redexgen/X/9e;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    invoke-direct {v3, v9, v6}, Lcom/facebook/ads/redexgen/X/Dj;->A0p([ZI)V

    :cond_165
    :goto_165
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    const/4 v4, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_179

    goto/16 :goto_2b

    :cond_179
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "GCKjwcvTJfMpQgG8NpKVbaI1H"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "kOcbaoLdOMGBVdRezVYeBIh2yM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v5, v4, :cond_1af

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A09()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0J()V

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_1a4

    goto/16 :goto_2b

    :cond_19e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1a4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "0v8QL5oJXgBRdj6LoWxDDzyaCLbuPlQC"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x2

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/HV;->AF2(I)Z

    :cond_1af
    return-void
.end method

.method private A0F()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_8
    if-ltz v2, :cond_2e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9R;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0r(Lcom/facebook/ads/redexgen/X/9R;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9R;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/9R;->A03:Lcom/facebook/ads/redexgen/X/9q;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9q;->A0A(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2b
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_2e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0R:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private A0G()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Dj;->A09:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0G:Lcom/facebook/ads/redexgen/X/XV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XV;->A05()V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0C:[Lcom/facebook/ads/redexgen/X/XS;

    array-length v1, v2

    :goto_b
    if-ge v3, v1, :cond_15

    aget-object v0, v2, v3

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/XS;->start()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_15
    return-void
.end method

.method private A0H()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0G:Lcom/facebook/ads/redexgen/X/XV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XV;->A06()V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0C:[Lcom/facebook/ads/redexgen/X/XS;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v2, :cond_13

    aget-object v0, v3, v1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0c(Lcom/facebook/ads/redexgen/X/XS;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method

.method private A0I()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Dj;->A07:Lcom/facebook/ads/redexgen/X/EY;

    if-nez v2, :cond_6

    return-void

    :cond_6
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A01:I

    if-lez v0, :cond_e

    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/EY;->AA4()V

    return-void

    :cond_e
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0C()V

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0F()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9a;->A0H()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_20
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/Dj;->A0k(Z)V

    :cond_23
    :goto_23
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0P()Z

    move-result v0

    if-nez v0, :cond_36

    return-void

    :cond_2c
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A08:Z

    if-nez v0, :cond_23

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A09()V

    goto :goto_23

    :cond_36
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0G()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v5

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0H()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v4

    const/4 v8, 0x0

    :goto_43
    iget-boolean v6, v1, Lcom/facebook/ads/redexgen/X/Dj;->A08:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0x11

    if-eq v2, v0, :cond_58

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_58
    sget-object v3, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v2, "7VXwhx8w334qXwwhe6EPuoxrs"

    const/4 v0, 0x4

    aput-object v2, v3, v0

    const-string v2, "i8G0S3EG91lb4Tbi5TJ2bFfoM2"

    const/4 v0, 0x3

    aput-object v2, v3, v0

    if-eqz v6, :cond_cd

    if-eq v5, v4, :cond_cd

    iget-wide v6, v1, Lcom/facebook/ads/redexgen/X/Dj;->A03:J

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/9a;->A00:J

    cmp-long v0, v6, v2

    if-ltz v0, :cond_cd

    if-eqz v8, :cond_77

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0A()V

    :cond_77
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-boolean v6, v0, Lcom/facebook/ads/redexgen/X/9b;->A06:Z

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v2, v3, v0

    const/4 v0, 0x0

    aget-object v3, v3, v0

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_c1

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v2, "JHuaS3X828K0z1yeMtavkm7JkVnfol1Z"

    const/4 v0, 0x7

    aput-object v2, v3, v0

    if-eqz v6, :cond_cb

    :goto_98
    const/4 v2, 0x0

    :goto_99
    move-object v3, v5

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0C()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v5

    invoke-direct {v1, v3}, Lcom/facebook/ads/redexgen/X/Dj;->A0V(Lcom/facebook/ads/redexgen/X/9a;)V

    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/9b;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/9b;->A03:J

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/9b;->A00:J

    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/9e;->A04(Lcom/facebook/ads/redexgen/X/EW;JJ)Lcom/facebook/ads/redexgen/X/9e;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A0I:Lcom/facebook/ads/redexgen/X/9S;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/9S;->A04(I)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0J()V

    const/4 v8, 0x1

    goto :goto_43

    :cond_c1
    sget-object v3, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v2, "wtrsjVL1JaCAi24uhunV07R35PJNTCvI"

    const/4 v0, 0x5

    aput-object v2, v3, v0

    if-eqz v6, :cond_cb

    goto :goto_98

    :cond_cb
    const/4 v2, 0x3

    goto :goto_99

    :cond_cd
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A05:Z

    if-eqz v0, :cond_f4

    const/4 v5, 0x0

    :goto_d4
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Dj;->A0T:[Lcom/facebook/ads/redexgen/X/XS;

    array-length v0, v2

    if-ge v5, v0, :cond_f3

    aget-object v3, v2, v5

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9a;->A0A:[Lcom/facebook/ads/redexgen/X/Et;

    aget-object v2, v0, v5

    if-eqz v2, :cond_f0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/XS;->A7w()Lcom/facebook/ads/redexgen/X/Et;

    move-result-object v0

    if-ne v0, v2, :cond_f0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/XS;->A8Q()Z

    move-result v0

    if-eqz v0, :cond_f0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/XS;->AFE()V

    :cond_f0
    add-int/lit8 v5, v5, 0x1

    goto :goto_d4

    :cond_f3
    return-void

    :cond_f4
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    if-eqz v0, :cond_fe

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9a;->A06:Z

    if-nez v0, :cond_ff

    :cond_fe
    return-void

    :cond_ff
    const/4 v6, 0x0

    :goto_100
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Dj;->A0T:[Lcom/facebook/ads/redexgen/X/XS;

    array-length v0, v2

    if-ge v6, v0, :cond_142

    aget-object v8, v2, v6

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9a;->A0A:[Lcom/facebook/ads/redexgen/X/Et;

    aget-object v7, v0, v6

    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/XS;->A7w()Lcom/facebook/ads/redexgen/X/Et;

    move-result-object v5

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v2, v3, v0

    const/4 v0, 0x0

    aget-object v3, v3, v0

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_138

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v2, "GzZd6F7lJVp08TeGQitpN19OrvCnG4PK"

    const/4 v0, 0x2

    aput-object v2, v3, v0

    if-ne v5, v7, :cond_134

    :goto_12c
    if-eqz v7, :cond_135

    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/XS;->A8Q()Z

    move-result v0

    if-nez v0, :cond_135

    :cond_134
    return-void

    :cond_135
    add-int/lit8 v6, v6, 0x1

    goto :goto_100

    :cond_138
    sget-object v3, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v2, "G5Kl7lcZBM87T4fNUwO1IYVdGnNcsgpo"

    const/4 v0, 0x5

    aput-object v2, v3, v0

    if-ne v5, v7, :cond_134

    goto :goto_12c

    :cond_142
    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/GS;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0D()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v6

    iget-object v5, v6, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/GS;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/Vg;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Vg;->AED()J

    move-result-wide v8

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v8, v2

    if-eqz v0, :cond_1d7

    const/4 v10, 0x1

    :goto_15c
    const/4 v4, 0x0

    :goto_15d
    iget-object v8, v1, Lcom/facebook/ads/redexgen/X/Dj;->A0T:[Lcom/facebook/ads/redexgen/X/XS;

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v2, v3, v0

    const/4 v0, 0x0

    aget-object v3, v3, v0

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_1d3

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v2, "zgqvIFw9hHXttypZtkJx3efsgqUZ32NO"

    const/4 v0, 0x5

    aput-object v2, v3, v0

    array-length v0, v8

    if-ge v4, v0, :cond_1d9

    :goto_17d
    aget-object v8, v8, v4

    invoke-virtual {v7, v4}, Lcom/facebook/ads/redexgen/X/GS;->A00(I)Z

    move-result v0

    if-nez v0, :cond_189

    :cond_185
    :goto_185
    add-int/lit8 v4, v4, 0x1

    move-object v1, p0

    goto :goto_15d

    :cond_189
    if-eqz v10, :cond_18f

    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/XS;->AFE()V

    goto :goto_185

    :cond_18f
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/XS;->A8n()Z

    move-result v0

    if-nez v0, :cond_185

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/GS;->A01:Lcom/facebook/ads/redexgen/X/GP;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/GP;->A00(I)Lcom/facebook/ads/redexgen/X/GO;

    move-result-object v9

    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/GS;->A00(I)Z

    move-result v3

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Dj;->A0U:[Lcom/facebook/ads/redexgen/X/9s;

    aget-object v0, v0, v4

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9s;->A83()I

    move-result v1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_1cd

    const/4 v2, 0x1

    :goto_1ab
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/GS;->A03:[Lcom/facebook/ads/redexgen/X/9t;

    aget-object v1, v0, v4

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/GS;->A03:[Lcom/facebook/ads/redexgen/X/9t;

    aget-object v0, v0, v4

    if-eqz v3, :cond_1cf

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/9t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cf

    if-nez v2, :cond_1cf

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/Dj;->A0v(Lcom/facebook/ads/redexgen/X/GO;)[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v3

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/9a;->A0A:[Lcom/facebook/ads/redexgen/X/Et;

    aget-object v2, v0, v4

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/9a;->A07()J

    move-result-wide v0

    invoke-interface {v8, v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/XS;->AEd([Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/redexgen/X/Et;J)V

    goto :goto_185

    :cond_1cd
    const/4 v2, 0x0

    goto :goto_1ab

    :cond_1cf
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/XS;->AFE()V

    goto :goto_185

    :cond_1d3
    array-length v0, v8

    if-ge v4, v0, :cond_1d9

    goto :goto_17d

    :cond_1d7
    const/4 v10, 0x0

    goto :goto_15c

    :cond_1d9
    return-void
.end method

.method private A0J()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0P()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0G()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v3

    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/Vg;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_24

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_24
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "e9etinPRA8BQH2CZknXr4yAbSJ3blA39"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/Vg;->AED()J

    move-result-wide v6

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v6, v1

    if-eqz v0, :cond_6b

    invoke-direct {p0, v6, v7}, Lcom/facebook/ads/redexgen/X/Dj;->A0P(J)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/9e;->A0A:J

    cmp-long v0, v6, v1

    if-eqz v0, :cond_57

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/9e;->A01:J

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/9e;->A04(Lcom/facebook/ads/redexgen/X/EW;JJ)Lcom/facebook/ads/redexgen/X/9e;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0I:Lcom/facebook/ads/redexgen/X/9S;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9S;->A04(I)V

    :cond_57
    :goto_57
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0C:[Lcom/facebook/ads/redexgen/X/XS;

    array-length v0, v0

    if-nez v0, :cond_65

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A01:J

    :goto_62
    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/9e;->A09:J

    return-void

    :cond_65
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/9a;->A0C(Z)J

    move-result-wide v0

    goto :goto_62

    :cond_6b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0G:Lcom/facebook/ads/redexgen/X/XV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XV;->A04()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A03:J

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/9a;->A08(J)J

    move-result-wide v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A0A:J

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/facebook/ads/redexgen/X/Dj;->A0Q(JJ)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iput-wide v4, v0, Lcom/facebook/ads/redexgen/X/9e;->A0A:J

    goto :goto_57
.end method

.method public static A0K()V
    .registers 4

    const/16 v0, 0xa0

    new-array v3, v0, [B

    fill-array-data v3, :array_2c

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_25

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "OuUcfGxYs8HKuxzYIQS3N8YCcqwYwO9D"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Dj;->A0V:[B

    return-void

    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_2c
    .array-data 1
        0x44t
        0x79t
        0x6et
        0x51t
        0x6dt
        0x60t
        0x78t
        0x64t
        0x73t
        0x48t
        0x6ct
        0x71t
        0x6dt
        0x48t
        0x6ft
        0x75t
        0x64t
        0x73t
        0x6ft
        0x60t
        0x6dt
        0x6ft
        0x52t
        0x45t
        0x7at
        0x46t
        0x4bt
        0x53t
        0x4ft
        0x58t
        0x63t
        0x47t
        0x5at
        0x46t
        0x63t
        0x44t
        0x5et
        0x4ft
        0x58t
        0x44t
        0x4bt
        0x46t
        0x10t
        0x62t
        0x4bt
        0x44t
        0x4et
        0x46t
        0x4ft
        0x58t
        0x42t
        0x6ct
        0x65t
        0x64t
        0x79t
        0x62t
        0x65t
        0x6ct
        0x2bt
        0x66t
        0x6et
        0x78t
        0x78t
        0x6at
        0x6ct
        0x6et
        0x78t
        0x2bt
        0x78t
        0x6et
        0x65t
        0x7ft
        0x2bt
        0x6at
        0x6dt
        0x7ft
        0x6et
        0x79t
        0x2bt
        0x79t
        0x6et
        0x67t
        0x6et
        0x6at
        0x78t
        0x6et
        0x25t
        0x45t
        0x62t
        0x78t
        0x69t
        0x7et
        0x62t
        0x6dt
        0x60t
        0x2ct
        0x7et
        0x79t
        0x62t
        0x78t
        0x65t
        0x61t
        0x69t
        0x2ct
        0x69t
        0x7et
        0x7et
        0x63t
        0x7et
        0x22t
        0x18t
        0x24t
        0x29t
        0x31t
        0x2at
        0x29t
        0x2bt
        0x23t
        0x68t
        0x2dt
        0x3at
        0x3at
        0x27t
        0x3at
        0x66t
        0x4at
        0x76t
        0x6ct
        0x6bt
        0x7at
        0x7ct
        0x39t
        0x7ct
        0x6bt
        0x6bt
        0x76t
        0x6bt
        0x37t
        0x48t
        0x6ft
        0x74t
        0x6bt
        0x3bt
        0x7dt
        0x7at
        0x72t
        0x77t
        0x7et
        0x7ft
        0x35t
        0x5at
        0x51t
        0x6dt
        0x51t
        0x53t
        0x5bt
        0x69t
        0x51t
        0x4ct
        0x55t
    .end array-data
.end method

.method private A0L(F)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0E()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v4

    :goto_6
    if-eqz v4, :cond_41

    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/GS;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_1f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1f
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "TmHCYSIZuHNmxK6kBnR58JopztOBcNrn"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_3e

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/GS;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/GS;->A01:Lcom/facebook/ads/redexgen/X/GP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GP;->A01()[Lcom/facebook/ads/redexgen/X/GO;

    move-result-object v3

    array-length v2, v3

    const/4 v1, 0x0

    :goto_32
    if-ge v1, v2, :cond_3e

    aget-object v0, v3, v1

    if-eqz v0, :cond_3b

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GO;->ACP(F)V

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_3e
    iget-object v4, v4, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    goto :goto_6

    :cond_41
    return-void
.end method

.method private A0M(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9c;->A0R(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0j(Z)V

    :cond_e
    return-void
.end method

.method private A0N(I)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    if-eq v0, p1, :cond_2a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9e;->A02(I)Lcom/facebook/ads/redexgen/X/9e;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_21

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_21
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "kM2qExU4ybhQ7HWfawBquzR2zjX0F4jA"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    :cond_2a
    return-void
.end method

.method private A0O(IZI)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0G()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v3

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0T:[Lcom/facebook/ads/redexgen/X/XS;

    aget-object v5, v0, p1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0C:[Lcom/facebook/ads/redexgen/X/XS;

    aput-object v5, v0, p3

    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/XS;->A7t()I

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/GS;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/GS;->A03:[Lcom/facebook/ads/redexgen/X/9t;

    aget-object v6, v0, p1

    sget-object v4, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v4, v0

    const/4 v0, 0x0

    aget-object v4, v4, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6f

    sget-object v4, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "NYdCxyfB4qBB5fQElsuicf6C6huVudSr"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/GS;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/GS;->A01:Lcom/facebook/ads/redexgen/X/GP;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/GP;->A00(I)Lcom/facebook/ads/redexgen/X/GO;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0v(Lcom/facebook/ads/redexgen/X/GO;)[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v7

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A08:Z

    if-eqz v0, :cond_6d

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    const/4 v0, 0x3

    if-ne v1, v0, :cond_6d

    const/4 v1, 0x1

    :goto_4e
    if-nez p2, :cond_6b

    if-eqz v1, :cond_6b

    const/4 v11, 0x1

    :goto_53
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9a;->A0A:[Lcom/facebook/ads/redexgen/X/Et;

    aget-object v8, v0, p1

    iget-wide v9, v2, Lcom/facebook/ads/redexgen/X/Dj;->A03:J

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9a;->A07()J

    move-result-wide v12

    invoke-interface/range {v5 .. v13}, Lcom/facebook/ads/redexgen/X/XS;->A5Q(Lcom/facebook/ads/redexgen/X/9t;[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/redexgen/X/Et;JZJ)V

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dj;->A0G:Lcom/facebook/ads/redexgen/X/XV;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/XV;->A09(Lcom/facebook/ads/redexgen/X/XS;)V

    if-eqz v1, :cond_6a

    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/XS;->start()V

    :cond_6a
    return-void

    :cond_6b
    const/4 v11, 0x0

    goto :goto_53

    :cond_6d
    const/4 v1, 0x0

    goto :goto_4e

    :cond_6f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0P(J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0P()Z

    move-result v0

    if-nez v0, :cond_1f

    :goto_8
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A03:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0G:Lcom/facebook/ads/redexgen/X/XV;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/XV;->A07(J)V

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0C:[Lcom/facebook/ads/redexgen/X/XS;

    array-length v4, v5

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v4, :cond_2a

    aget-object v2, v5, v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A03:J

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/XS;->AEn(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_1f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0G()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/9a;->A09(J)J

    move-result-wide p1

    goto :goto_8

    :cond_2a
    return-void
.end method

.method private A0Q(JJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EW;->A01()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/9e;->A02:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_1e

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    :cond_1e
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_13d

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "iI9novLuZIFAEfCO4qiE3Y1J9OFTcxg5"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A00:I

    const/4 v6, 0x0

    if-lez v0, :cond_8a

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0R:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9R;

    :goto_49
    if-eqz v0, :cond_8c

    iget v1, v0, Lcom/facebook/ads/redexgen/X/9R;->A00:I

    if-gt v1, v3, :cond_75

    iget v5, v0, Lcom/facebook/ads/redexgen/X/9R;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v2, v2, v1

    const/16 v1, 0x9

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x38

    if-eq v2, v1, :cond_66

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_66
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v2, "hDlIvL5rLgyE5VG4VUIth4YrdDyvlxxs"

    const/4 v1, 0x2

    aput-object v2, v4, v1

    if-ne v5, v3, :cond_8c

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/9R;->A01:J

    cmp-long v0, v1, p1

    if-lez v0, :cond_8c

    :cond_75
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A00:I

    if-lez v0, :cond_88

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0R:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9R;

    goto :goto_49

    :cond_88
    move-object v0, v6

    goto :goto_49

    :cond_8a
    move-object v0, v6

    goto :goto_49

    :cond_8c
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_cf

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0R:Ljava/util/ArrayList;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/9R;

    :goto_a0
    if-eqz v4, :cond_d1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9R;->A02:Ljava/lang/Object;

    if-eqz v0, :cond_d1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/9R;->A00:I

    if-lt v0, v3, :cond_b4

    iget v0, v4, Lcom/facebook/ads/redexgen/X/9R;->A00:I

    if-ne v0, v3, :cond_d1

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/9R;->A01:J

    cmp-long v2, v0, p1

    if-gtz v2, :cond_d1

    :cond_b4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A00:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_cd

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0R:Ljava/util/ArrayList;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/9R;

    goto :goto_a0

    :cond_cd
    move-object v4, v6

    goto :goto_a0

    :cond_cf
    move-object v4, v6

    goto :goto_a0

    :cond_d1
    :goto_d1
    if-eqz v4, :cond_13c

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9R;->A02:Ljava/lang/Object;

    if-eqz v0, :cond_13c

    iget v0, v4, Lcom/facebook/ads/redexgen/X/9R;->A00:I

    if-ne v0, v3, :cond_13c

    iget-wide v1, v4, Lcom/facebook/ads/redexgen/X/9R;->A01:J

    cmp-long v0, v1, p1

    if-lez v0, :cond_13c

    iget-wide v1, v4, Lcom/facebook/ads/redexgen/X/9R;->A01:J

    cmp-long v0, v1, p3

    if-gtz v0, :cond_13c

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9R;->A03:Lcom/facebook/ads/redexgen/X/9q;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0Z(Lcom/facebook/ads/redexgen/X/9q;)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9R;->A03:Lcom/facebook/ads/redexgen/X/9q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9q;->A0B()Z

    move-result v0

    if-nez v0, :cond_fc

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9R;->A03:Lcom/facebook/ads/redexgen/X/9q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9q;->A0D()Z

    move-result v0

    if-eqz v0, :cond_12f

    :cond_fc
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0R:Ljava/util/ArrayList;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_103
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_12d

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0R:Ljava/util/ArrayList;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Dj;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_136

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "2inRqgHKNmW90mXz8"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/9R;

    goto :goto_d1

    :cond_12d
    move-object v4, v6

    goto :goto_d1

    :cond_12f
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A00:I

    goto :goto_103

    :cond_136
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_13c
    return-void

    :cond_13d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0R(JJ)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/HV;->AEY(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    add-long/2addr p1, p3

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/ads/redexgen/X/HV;->AF3(IJ)Z

    return-void
.end method

.method private A0S(Lcom/facebook/ads/redexgen/X/9Q;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    move-object v0, p0

    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/9Q;->A01:Lcom/facebook/ads/redexgen/X/EY;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A07:Lcom/facebook/ads/redexgen/X/EY;

    if-eq v2, v1, :cond_8

    return-void

    :cond_8
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v8, v1, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/9Q;->A00:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/9Q;->A02:Ljava/lang/Object;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v1, v3}, Lcom/facebook/ads/redexgen/X/9c;->A0N(Lcom/facebook/ads/redexgen/X/9z;)V

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    invoke-virtual {v1, v3, v2}, Lcom/facebook/ads/redexgen/X/9e;->A03(Lcom/facebook/ads/redexgen/X/9z;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/9e;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0F()V

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Dj;->A01:I

    const/4 v5, 0x0

    const/4 v7, 0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-lez v6, :cond_b1

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0I:Lcom/facebook/ads/redexgen/X/9S;

    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/9S;->A03(I)V

    iput v5, v0, Lcom/facebook/ads/redexgen/X/Dj;->A01:I

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Dj;->A04:Lcom/facebook/ads/redexgen/X/9T;

    if-eqz v4, :cond_6c

    invoke-direct {v0, v4, v7}, Lcom/facebook/ads/redexgen/X/Dj;->A04(Lcom/facebook/ads/redexgen/X/9T;Z)Landroid/util/Pair;

    move-result-object v3

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A04:Lcom/facebook/ads/redexgen/X/9T;

    if-nez v3, :cond_43

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A08()V

    :cond_42
    :goto_42
    return-void

    :cond_43
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v1, v2, v6, v7}, Lcom/facebook/ads/redexgen/X/9c;->A0L(IJ)Lcom/facebook/ads/redexgen/X/EW;

    move-result-object v3

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/EW;->A01()Z

    move-result v1

    if-eqz v1, :cond_6a

    const-wide/16 v4, 0x0

    :goto_63
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/9e;->A04(Lcom/facebook/ads/redexgen/X/EW;JJ)Lcom/facebook/ads/redexgen/X/9e;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    goto :goto_42

    :cond_6a
    move-wide v4, v6

    goto :goto_63

    :cond_6c
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/9e;->A02:J

    cmp-long v4, v5, v1

    if-nez v4, :cond_42

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9z;->A0E()Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A08()V

    goto :goto_42

    :cond_7e
    iget-boolean v4, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0B:Z

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/9z;->A05(Z)I

    move-result v4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/Dj;->A05(Lcom/facebook/ads/redexgen/X/9z;IJ)Landroid/util/Pair;

    move-result-object v3

    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v1, v2, v6, v7}, Lcom/facebook/ads/redexgen/X/9c;->A0L(IJ)Lcom/facebook/ads/redexgen/X/EW;

    move-result-object v3

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/EW;->A01()Z

    move-result v1

    if-eqz v1, :cond_af

    const-wide/16 v4, 0x0

    :goto_a8
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/9e;->A04(Lcom/facebook/ads/redexgen/X/EW;JJ)Lcom/facebook/ads/redexgen/X/9e;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    goto :goto_42

    :cond_af
    move-wide v4, v6

    goto :goto_a8

    :cond_b1
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v4, v4, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget v10, v4, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v11, v4, Lcom/facebook/ads/redexgen/X/9e;->A01:J

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/9z;->A0E()Z

    move-result v4

    if-eqz v4, :cond_e0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9z;->A0E()Z

    move-result v1

    if-nez v1, :cond_dd

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v1, v10, v11, v12}, Lcom/facebook/ads/redexgen/X/9c;->A0L(IJ)Lcom/facebook/ads/redexgen/X/EW;

    move-result-object v8

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/EW;->A01()Z

    move-result v1

    if-eqz v1, :cond_de

    const-wide/16 v9, 0x0

    :goto_d7
    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/9e;->A04(Lcom/facebook/ads/redexgen/X/EW;JJ)Lcom/facebook/ads/redexgen/X/9e;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    :cond_dd
    return-void

    :cond_de
    move-wide v9, v11

    goto :goto_d7

    :cond_e0
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/9c;->A0E()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v4

    if-nez v4, :cond_11c

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0L:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v8, v10, v6, v7}, Lcom/facebook/ads/redexgen/X/9z;->A0A(ILcom/facebook/ads/redexgen/X/9x;Z)Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v6

    iget-object v6, v6, Lcom/facebook/ads/redexgen/X/9x;->A03:Ljava/lang/Object;

    :goto_f0
    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/9z;->A04(Ljava/lang/Object;)I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_1cb

    invoke-direct {v0, v10, v8, v3}, Lcom/facebook/ads/redexgen/X/Dj;->A01(ILcom/facebook/ads/redexgen/X/9z;Lcom/facebook/ads/redexgen/X/9z;)I

    move-result v10

    sget-object v6, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v6, v6, v5

    const/16 v5, 0xc

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v5, 0x4e

    if-eq v6, v5, :cond_1c5

    sget-object v8, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v6, "W6zkXP9eIZkyJx4uPbHf9NTX6"

    const/4 v5, 0x4

    aput-object v6, v8, v5

    const-string v6, "m3yrwIeXeqUIkhQgLJp1WNCsrl"

    const/4 v5, 0x3

    aput-object v6, v8, v5

    if-ne v10, v9, :cond_11f

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A08()V

    return-void

    :cond_11c
    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/9a;->A09:Ljava/lang/Object;

    goto :goto_f0

    :cond_11f
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0L:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v3, v10, v5}, Lcom/facebook/ads/redexgen/X/9z;->A09(ILcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v5

    iget v5, v5, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/facebook/ads/redexgen/X/Dj;->A05(Lcom/facebook/ads/redexgen/X/9z;IJ)Landroid/util/Pair;

    move-result-object v2

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v1, v6, v12, v13}, Lcom/facebook/ads/redexgen/X/9c;->A0L(IJ)Lcom/facebook/ads/redexgen/X/EW;

    move-result-object v9

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0L:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v3, v6, v1, v7}, Lcom/facebook/ads/redexgen/X/9z;->A0A(ILcom/facebook/ads/redexgen/X/9x;Z)Lcom/facebook/ads/redexgen/X/9x;

    if-eqz v4, :cond_194

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0L:Lcom/facebook/ads/redexgen/X/9x;

    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/9x;->A03:Ljava/lang/Object;

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/9b;->A00(I)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v1

    iput-object v1, v4, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    :goto_155
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    if-eqz v1, :cond_194

    iget-object v4, v4, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/9a;->A09:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_184

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v2, v2, v1

    const/16 v1, 0xc

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x4e

    if-eq v2, v1, :cond_18e

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v2, "ODoCru5Men7rnsumvsVlRJsOWyiHNrdt"

    const/4 v1, 0x5

    aput-object v2, v3, v1

    invoke-virtual {v8, v7, v6}, Lcom/facebook/ads/redexgen/X/9c;->A0J(Lcom/facebook/ads/redexgen/X/9b;I)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v1

    iput-object v1, v4, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    goto :goto_155

    :cond_184
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/9b;->A00(I)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v1

    iput-object v1, v4, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    goto :goto_155

    :cond_18e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_194
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/EW;->A01()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v1, 0x11

    if-eq v2, v1, :cond_1ab

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1ab
    sget-object v3, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v2, "hRbRvIJE18IQkSZp4h0fxN12mLMfZDhd"

    const/4 v1, 0x7

    aput-object v2, v3, v1

    if-eqz v4, :cond_1c3

    const-wide/16 v1, 0x0

    :goto_1b6
    invoke-direct {v0, v9, v1, v2}, Lcom/facebook/ads/redexgen/X/Dj;->A02(Lcom/facebook/ads/redexgen/X/EW;J)J

    move-result-wide v10

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    invoke-virtual/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/9e;->A04(Lcom/facebook/ads/redexgen/X/EW;JJ)Lcom/facebook/ads/redexgen/X/9e;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    return-void

    :cond_1c3
    move-wide v1, v12

    goto :goto_1b6

    :cond_1c5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1cb
    if-eq v6, v10, :cond_1d5

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    invoke-virtual {v1, v6}, Lcom/facebook/ads/redexgen/X/9e;->A01(I)Lcom/facebook/ads/redexgen/X/9e;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    :cond_1d5
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/EW;->A01()Z

    move-result v1

    if-eqz v1, :cond_202

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v1, v6, v11, v12}, Lcom/facebook/ads/redexgen/X/9c;->A0L(IJ)Lcom/facebook/ads/redexgen/X/EW;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/facebook/ads/redexgen/X/EW;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_202

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/EW;->A01()Z

    move-result v1

    if-eqz v1, :cond_200

    const-wide/16 v1, 0x0

    :goto_1f3
    invoke-direct {v0, v8, v1, v2}, Lcom/facebook/ads/redexgen/X/Dj;->A02(Lcom/facebook/ads/redexgen/X/EW;J)J

    move-result-wide v9

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/9e;->A04(Lcom/facebook/ads/redexgen/X/EW;JJ)Lcom/facebook/ads/redexgen/X/9e;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    return-void

    :cond_200
    move-wide v1, v11

    goto :goto_1f3

    :cond_202
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A03:J

    invoke-virtual {v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/9c;->A0U(Lcom/facebook/ads/redexgen/X/EW;J)Z

    move-result v1

    if-nez v1, :cond_20f

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/Dj;->A0j(Z)V

    :cond_20f
    return-void
.end method

.method private A0T(Lcom/facebook/ads/redexgen/X/9T;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Dj;->A0I:Lcom/facebook/ads/redexgen/X/9S;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/9S;->A03(I)V

    move-object/from16 v9, p1

    invoke-direct {v7, v9, v8}, Lcom/facebook/ads/redexgen/X/Dj;->A04(Lcom/facebook/ads/redexgen/X/9T;Z)Landroid/util/Pair;

    move-result-object v4

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    if-nez v4, :cond_2c

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dj;->A00()I

    move-result v0

    new-instance v14, Lcom/facebook/ads/redexgen/X/EW;

    invoke-direct {v14, v0}, Lcom/facebook/ads/redexgen/X/EW;-><init>(I)V

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x1

    :goto_2a
    const/4 v6, 0x2

    goto :goto_5e

    :cond_2c
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/9c;->A0L(IJ)Lcom/facebook/ads/redexgen/X/EW;

    move-result-object v14

    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/EW;->A01()Z

    move-result v2

    if-eqz v2, :cond_4c

    const-wide/16 v15, 0x0

    const/4 v12, 0x1

    goto :goto_2a

    :cond_4c
    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    iget-wide v2, v9, Lcom/facebook/ads/redexgen/X/9T;->A01:J

    cmp-long v4, v2, v10

    if-nez v4, :cond_5c

    const/4 v12, 0x1

    goto :goto_2a

    :cond_5c
    const/4 v12, 0x0

    goto :goto_2a

    :goto_5e
    :try_start_5e
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Dj;->A07:Lcom/facebook/ads/redexgen/X/EY;

    if-eqz v2, :cond_f0

    iget v2, v7, Lcom/facebook/ads/redexgen/X/Dj;->A01:I

    if-lez v2, :cond_68

    goto/16 :goto_f0
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_12c

    :cond_68
    cmp-long v9, v15, v10

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v3, v3, v2

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x77

    if-eq v3, v2, :cond_ea

    sget-object v4, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v3, "YfoxJXVxtggAgJ3C0qUN5WGXkfVCteCk"

    const/4 v2, 0x5

    aput-object v3, v4, v2

    if-nez v9, :cond_89

    const/4 v2, 0x4

    :try_start_82
    invoke-direct {v7, v2}, Lcom/facebook/ads/redexgen/X/Dj;->A0N(I)V

    invoke-direct {v7, v5, v8, v5}, Lcom/facebook/ads/redexgen/X/Dj;->A0o(ZZZ)V

    goto :goto_fb

    :cond_89
    move-wide v4, v15
    :try_end_8a
    .catchall {:try_start_82 .. :try_end_8a} :catchall_12e

    :try_start_8a
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    invoke-virtual {v14, v2}, Lcom/facebook/ads/redexgen/X/EW;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/9c;->A0G()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v3

    if-eqz v3, :cond_aa

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-eqz v2, :cond_aa
    :try_end_a2
    .catchall {:try_start_8a .. :try_end_a2} :catchall_12c

    :try_start_a2
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/Vg;

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Dj;->A06:Lcom/facebook/ads/redexgen/X/9v;

    invoke-interface {v3, v4, v5, v2}, Lcom/facebook/ads/redexgen/X/Vg;->A5s(JLcom/facebook/ads/redexgen/X/9v;)J

    move-result-wide v4
    :try_end_aa
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_12e

    :cond_aa
    :try_start_aa
    invoke-static {v4, v5}, Lcom/facebook/ads/redexgen/X/9E;->A01(J)J

    move-result-wide v10

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;
    :try_end_b0
    .catchall {:try_start_aa .. :try_end_b0} :catchall_12c

    :try_start_b0
    iget-wide v2, v2, Lcom/facebook/ads/redexgen/X/9e;->A0A:J

    invoke-static {v2, v3}, Lcom/facebook/ads/redexgen/X/9E;->A01(J)J

    move-result-wide v8

    cmp-long v2, v10, v8

    if-nez v2, :cond_d0

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v15, v2, Lcom/facebook/ads/redexgen/X/9e;->A0A:J
    :try_end_be
    .catchall {:try_start_b0 .. :try_end_be} :catchall_12a

    iget-object v13, v7, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    move-wide/from16 v17, v0

    invoke-virtual/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/9e;->A04(Lcom/facebook/ads/redexgen/X/EW;JJ)Lcom/facebook/ads/redexgen/X/9e;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    if-eqz v12, :cond_cf

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Dj;->A0I:Lcom/facebook/ads/redexgen/X/9S;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/9S;->A04(I)V

    :cond_cf
    return-void

    :cond_d0
    :try_start_d0
    invoke-direct {v7, v14, v4, v5}, Lcom/facebook/ads/redexgen/X/Dj;->A02(Lcom/facebook/ads/redexgen/X/EW;J)J

    move-result-wide v8

    cmp-long v2, v15, v8

    if-eqz v2, :cond_d9

    goto :goto_db

    :cond_d9
    const/4 v2, 0x0

    goto :goto_dc

    :goto_db
    const/4 v2, 0x1
    :try_end_dc
    .catchall {:try_start_d0 .. :try_end_dc} :catchall_12a

    :goto_dc
    or-int/2addr v12, v2

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v2, 0x11

    if-eq v3, v2, :cond_f3

    :cond_ea
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_f0
    :goto_f0
    :try_start_f0
    iput-object v9, v7, Lcom/facebook/ads/redexgen/X/Dj;->A04:Lcom/facebook/ads/redexgen/X/9T;

    goto :goto_fb
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_12a

    :cond_f3
    sget-object v4, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v3, "LtwUHLpv08wEzos7LWvR75PA6MqqEvuh"

    const/4 v2, 0x7

    aput-object v3, v4, v2

    move-wide v15, v8

    :goto_fb
    iget-object v13, v7, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    move-wide/from16 v17, v0

    invoke-virtual/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/9e;->A04(Lcom/facebook/ads/redexgen/X/EW;JJ)Lcom/facebook/ads/redexgen/X/9e;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    if-eqz v12, :cond_125

    iget-object v3, v7, Lcom/facebook/ads/redexgen/X/Dj;->A0I:Lcom/facebook/ads/redexgen/X/9S;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_126

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "NnvGpWmx2ly54VvtA"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/9S;->A04(I)V

    :cond_125
    :goto_125
    return-void

    :cond_126
    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/9S;->A04(I)V

    goto :goto_125

    :catchall_12a
    move-exception v2

    goto :goto_12f

    :catchall_12c
    move-exception v2

    goto :goto_12f

    :catchall_12e
    move-exception v2

    :goto_12f
    iget-object v13, v7, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    move-wide/from16 v17, v0

    invoke-virtual/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/9e;->A04(Lcom/facebook/ads/redexgen/X/EW;JJ)Lcom/facebook/ads/redexgen/X/9e;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    if-eqz v12, :cond_140

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Dj;->A0I:Lcom/facebook/ads/redexgen/X/9S;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/9S;->A04(I)V

    :cond_140
    throw v2
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/Dj;Lcom/facebook/ads/redexgen/X/9q;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dj;->A0X(Lcom/facebook/ads/redexgen/X/9q;)V

    return-void
.end method

.method private A0V(Lcom/facebook/ads/redexgen/X/9a;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0G()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v5

    if-eqz v5, :cond_a

    if-ne p1, v5, :cond_b

    :cond_a
    return-void

    :cond_b
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0T:[Lcom/facebook/ads/redexgen/X/XS;

    array-length v0, v0

    new-array v3, v0, [Z

    const/4 v6, 0x0

    :goto_12
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0T:[Lcom/facebook/ads/redexgen/X/XS;

    array-length v0, v1

    if-ge v6, v0, :cond_50

    aget-object v2, v1, v6

    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/XS;->A7t()I

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x1

    :goto_20
    aput-boolean v0, v3, v6

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/GS;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/GS;->A00(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    add-int/lit8 v4, v4, 0x1

    :cond_2c
    aget-boolean v0, v3, v6

    if-eqz v0, :cond_4b

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/GS;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/GS;->A00(I)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/XS;->A8n()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/XS;->A7w()Lcom/facebook/ads/redexgen/X/Et;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9a;->A0A:[Lcom/facebook/ads/redexgen/X/Et;

    aget-object v0, v0, v6

    if-ne v1, v0, :cond_4b

    :cond_48
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Dj;->A0b(Lcom/facebook/ads/redexgen/X/XS;)V

    :cond_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_4e
    const/4 v0, 0x0

    goto :goto_20

    :cond_50
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/9a;->A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/GS;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9e;->A05(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GS;)Lcom/facebook/ads/redexgen/X/9e;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/Dj;->A0p([ZI)V

    return-void
.end method

.method private A0W(Lcom/facebook/ads/redexgen/X/9f;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0G:Lcom/facebook/ads/redexgen/X/XV;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/XV;->AFP(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/9f;

    return-void
.end method

.method private A0X(Lcom/facebook/ads/redexgen/X/9q;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9q;->A0D()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v3, 0x1

    :try_start_8
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9q;->A04()Lcom/facebook/ads/redexgen/X/9p;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9q;->A00()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9q;->A09()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9p;->A8L(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_41

    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/9q;->A0A(Z)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3b

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "j7cBoz179DrNpy3qD7RptXNd9"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "0iwSWX3dM4PAnuiRq1LulMUFPW"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_3b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :catchall_41
    move-exception v0

    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/9q;->A0A(Z)V

    throw v0
.end method

.method private A0Y(Lcom/facebook/ads/redexgen/X/9q;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9q;->A02()J

    move-result-wide v3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_11

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dj;->A0Z(Lcom/facebook/ads/redexgen/X/9q;)V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A07:Lcom/facebook/ads/redexgen/X/EY;

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A01:I

    if-lez v0, :cond_24

    :cond_19
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0R:Ljava/util/ArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9R;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/9R;-><init>(Lcom/facebook/ads/redexgen/X/9q;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_24
    new-instance v1, Lcom/facebook/ads/redexgen/X/9R;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/9R;-><init>(Lcom/facebook/ads/redexgen/X/9q;)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Dj;->A0r(Lcom/facebook/ads/redexgen/X/9R;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0R:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_10

    :cond_3a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/9q;->A0A(Z)V

    goto :goto_10
.end method

.method private A0Z(Lcom/facebook/ads/redexgen/X/9q;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9q;->A03()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HV;->A7D()Landroid/os/Looper;

    move-result-object v0

    if-ne v1, v0, :cond_41

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dj;->A0X(Lcom/facebook/ads/redexgen/X/9q;)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_28

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_28
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "cBEQE15IFXZqMCE104UHZMDgeC8qTiqN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget v2, v3, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq v2, v0, :cond_3b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    if-ne v0, v1, :cond_4c

    :cond_3b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/HV;->AF2(I)Z

    goto :goto_4c

    :cond_41
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    const/16 v0, 0xf

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/HV;->AAH(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_4c
    :goto_4c
    return-void
.end method

.method private A0a(Lcom/facebook/ads/redexgen/X/9q;)V
    .registers 4

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9q;->A03()Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9P;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/9P;-><init>(Lcom/facebook/ads/redexgen/X/Dj;Lcom/facebook/ads/redexgen/X/9q;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private A0b(Lcom/facebook/ads/redexgen/X/XS;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0G:Lcom/facebook/ads/redexgen/X/XV;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/XV;->A08(Lcom/facebook/ads/redexgen/X/XS;)V

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dj;->A0c(Lcom/facebook/ads/redexgen/X/XS;)V

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/XS;->A53()V

    return-void
.end method

.method private A0c(Lcom/facebook/ads/redexgen/X/XS;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/XS;->A7t()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_a

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/XS;->stop()V

    :cond_a
    return-void
.end method

.method private A0d(Lcom/facebook/ads/redexgen/X/9v;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A06:Lcom/facebook/ads/redexgen/X/9v;

    return-void
.end method

.method private A0e(Lcom/facebook/ads/redexgen/X/Vg;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9c;->A0T(Lcom/facebook/ads/redexgen/X/Vg;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A03:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9c;->A0M(J)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A09()V

    return-void
.end method

.method private A0f(Lcom/facebook/ads/redexgen/X/Vg;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9c;->A0T(Lcom/facebook/ads/redexgen/X/Vg;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0F()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0G:Lcom/facebook/ads/redexgen/X/XV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XV;->A7Z()Lcom/facebook/ads/redexgen/X/9f;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9f;->A01:F

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/9a;->A0E(F)V

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/9a;->A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/GS;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0i(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GS;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0P()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0C()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A03:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Dj;->A0P(J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0V(Lcom/facebook/ads/redexgen/X/9a;)V

    :cond_3a
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A09()V

    return-void
.end method

.method private final A0g(Lcom/facebook/ads/redexgen/X/Vg;)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    const/16 v0, 0xa

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/HV;->AAH(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private A0h(Lcom/facebook/ads/redexgen/X/EY;ZZ)V
    .registers 7

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A01:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A01:I

    invoke-direct {p0, v2, p2, p3}, Lcom/facebook/ads/redexgen/X/Dj;->A0o(ZZZ)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0J:Lcom/facebook/ads/redexgen/X/9Z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9Z;->onPrepared()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A07:Lcom/facebook/ads/redexgen/X/EY;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Dj;->A0N(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0H:Lcom/facebook/ads/redexgen/X/XT;

    invoke-interface {p1, v0, v2, p0}, Lcom/facebook/ads/redexgen/X/EY;->ADx(Lcom/facebook/ads/redexgen/X/XT;ZLcom/facebook/ads/redexgen/X/EX;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/HV;->AF2(I)Z

    return-void
.end method

.method private A0i(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GS;)V
    .registers 6

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0J:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0T:[Lcom/facebook/ads/redexgen/X/XS;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/GS;->A01:Lcom/facebook/ads/redexgen/X/GP;

    invoke-interface {v2, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/9Z;->ADD([Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GP;)V

    return-void
.end method

.method private A0j(Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0G()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/9b;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/9e;->A0A:J

    const/4 v0, 0x1

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A03(Lcom/facebook/ads/redexgen/X/EW;JZ)J

    move-result-wide v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/9e;->A0A:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_2d

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v6, v2, Lcom/facebook/ads/redexgen/X/9e;->A01:J

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/9e;->A04(Lcom/facebook/ads/redexgen/X/EW;JJ)Lcom/facebook/ads/redexgen/X/9e;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    if-eqz p1, :cond_2d

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0I:Lcom/facebook/ads/redexgen/X/9S;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9S;->A04(I)V

    :cond_2d
    return-void
.end method

.method private A0k(Z)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A08:Z

    if-eq v0, p1, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9e;->A06(Z)Lcom/facebook/ads/redexgen/X/9e;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    :cond_e
    return-void
.end method

.method private A0l(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A09:Z

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A08:Z

    if-nez p1, :cond_e

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0H()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0J()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne v2, v0, :cond_1f

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0G()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/HV;->AF2(I)Z

    goto :goto_d

    :cond_1f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/HV;->AF2(I)Z

    goto :goto_d
.end method

.method private A0m(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0B:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9c;->A0V(Z)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0j(Z)V

    :cond_e
    return-void
.end method

.method private A0n(ZZ)V
    .registers 6

    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, p1}, Lcom/facebook/ads/redexgen/X/Dj;->A0o(ZZZ)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0I:Lcom/facebook/ads/redexgen/X/9S;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A01:I

    add-int/2addr v0, p2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9S;->A03(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0J:Lcom/facebook/ads/redexgen/X/9Z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9Z;->AD4()V

    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Dj;->A0N(I)V

    return-void
.end method

.method private A0o(ZZZ)V
    .registers 19

    move-object v0, p0

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    const/4 v1, 0x2

    invoke-interface {v2, v1}, Lcom/facebook/ads/redexgen/X/HV;->AEY(I)V

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/facebook/ads/redexgen/X/Dj;->A09:Z

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0G:Lcom/facebook/ads/redexgen/X/XV;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/XV;->A06()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A03:J

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0C:[Lcom/facebook/ads/redexgen/X/XS;

    array-length v8, v9

    const/4 v7, 0x0

    :goto_17
    if-ge v7, v8, :cond_3b

    aget-object v1, v9, v7

    :try_start_1b
    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Dj;->A0b(Lcom/facebook/ads/redexgen/X/XS;)V

    goto :goto_38
    :try_end_1f
    .catch Lcom/facebook/ads/redexgen/X/9K; {:try_start_1b .. :try_end_1f} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1f} :catch_21

    :catch_1f
    move-exception v6

    goto :goto_22

    :catch_21
    move-exception v6

    :goto_22
    const/4 v3, 0x0

    const/16 v2, 0x15

    const/16 v1, 0x2b

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Dj;->A06(III)Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x8a

    const/16 v2, 0xc

    const/16 v1, 0x31

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Dj;->A06(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_38
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_3b
    new-array v1, v4, [Lcom/facebook/ads/redexgen/X/XS;

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0C:[Lcom/facebook/ads/redexgen/X/XS;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/9c;->A0O(Z)V

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Dj;->A0k(Z)V

    const/4 v1, 0x0

    if-eqz p2, :cond_4e

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A04:Lcom/facebook/ads/redexgen/X/9T;

    :cond_4e
    if-eqz p3, :cond_76

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    sget-object v2, Lcom/facebook/ads/redexgen/X/9z;->A01:Lcom/facebook/ads/redexgen/X/9z;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9c;->A0N(Lcom/facebook/ads/redexgen/X/9z;)V

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/9R;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/9R;->A03:Lcom/facebook/ads/redexgen/X/9q;

    invoke-virtual {v2, v4}, Lcom/facebook/ads/redexgen/X/9q;->A0A(Z)V

    goto :goto_5d

    :cond_6f
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput v4, v0, Lcom/facebook/ads/redexgen/X/Dj;->A00:I

    :cond_76
    new-instance v3, Lcom/facebook/ads/redexgen/X/9e;

    if-eqz p3, :cond_d0

    sget-object v4, Lcom/facebook/ads/redexgen/X/9z;->A01:Lcom/facebook/ads/redexgen/X/9z;

    :goto_7c
    if-eqz p3, :cond_cb

    move-object v5, v1

    :goto_7f
    if-eqz p2, :cond_c6

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A00()I

    move-result v2

    new-instance v6, Lcom/facebook/ads/redexgen/X/EW;

    invoke-direct {v6, v2}, Lcom/facebook/ads/redexgen/X/EW;-><init>(I)V

    :goto_8a
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_c1

    move-wide v7, v9

    :goto_92
    if-eqz p2, :cond_bc

    :goto_94
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget v11, v2, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    const/4 v12, 0x0

    if-eqz p3, :cond_b7

    sget-object v13, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    :goto_9d
    if-eqz p3, :cond_b2

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/Dj;->A0O:Lcom/facebook/ads/redexgen/X/GS;

    :goto_a1
    invoke-direct/range {v3 .. v14}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Lcom/facebook/ads/redexgen/X/9z;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/EW;JJIZLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GS;)V

    iput-object v3, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    if-eqz p1, :cond_b1

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Dj;->A07:Lcom/facebook/ads/redexgen/X/EY;

    if-eqz v2, :cond_b1

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/EY;->AEV(Lcom/facebook/ads/redexgen/X/EX;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Dj;->A07:Lcom/facebook/ads/redexgen/X/EY;

    :cond_b1
    return-void

    :cond_b2
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v14, v2, Lcom/facebook/ads/redexgen/X/9e;->A06:Lcom/facebook/ads/redexgen/X/GS;

    goto :goto_a1

    :cond_b7
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/9e;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    goto :goto_9d

    :cond_bc
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v9, v2, Lcom/facebook/ads/redexgen/X/9e;->A01:J

    goto :goto_94

    :cond_c1
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v7, v2, Lcom/facebook/ads/redexgen/X/9e;->A0A:J

    goto :goto_92

    :cond_c6
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    goto :goto_8a

    :cond_cb
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/9e;->A07:Ljava/lang/Object;

    goto :goto_7f

    :cond_d0
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    goto :goto_7c
.end method

.method private A0p([ZI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    new-array v0, p2, [Lcom/facebook/ads/redexgen/X/XS;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0C:[Lcom/facebook/ads/redexgen/X/XS;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0G()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v3

    const/4 v2, 0x0

    :goto_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0T:[Lcom/facebook/ads/redexgen/X/XS;

    array-length v0, v0

    if-ge v2, v0, :cond_24

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/GS;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/GS;->A00(I)Z

    move-result v0

    if-eqz v0, :cond_21

    aget-boolean v1, p1, v2

    add-int/lit8 v0, v4, 0x1

    invoke-direct {p0, v2, v1, v4}, Lcom/facebook/ads/redexgen/X/Dj;->A0O(IZI)V

    move v4, v0

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_24
    return-void
.end method

.method private A0q()Z
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0G()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v4

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/9b;->A01:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v1

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/9e;->A0A:J

    cmp-long v0, v1, v5

    if-ltz v0, :cond_52

    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_32

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_32
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "YaIhV2LltIG4HuclCS5WOO9hjwkCXeMt"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "X0pypN8zwLPsNLuJVHuHfetSc0yM8k9B"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_54

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9a;->A06:Z

    if-nez v0, :cond_52

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A04:Lcom/facebook/ads/redexgen/X/EW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EW;->A01()Z

    move-result v0

    if-eqz v0, :cond_54

    :cond_52
    const/4 v0, 0x1

    :goto_53
    return v0

    :cond_54
    const/4 v0, 0x0

    goto :goto_53
.end method

.method private A0r(Lcom/facebook/ads/redexgen/X/9R;)Z
    .registers 11

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9R;->A02:Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_28

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9R;->A03:Lcom/facebook/ads/redexgen/X/9q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9q;->A08()Lcom/facebook/ads/redexgen/X/9z;

    move-result-object v5

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9R;->A03:Lcom/facebook/ads/redexgen/X/9q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9q;->A01()I

    move-result v3

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9R;->A03:Lcom/facebook/ads/redexgen/X/9q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9q;->A02()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/9E;->A00(J)J

    move-result-wide v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9T;

    invoke-direct {v0, v5, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/9T;-><init>(Lcom/facebook/ads/redexgen/X/9z;IJ)V

    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/Dj;->A04(Lcom/facebook/ads/redexgen/X/9T;Z)Landroid/util/Pair;

    move-result-object v3

    if-nez v3, :cond_39

    return v4

    :cond_28
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9R;->A02:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A04(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_36

    return v4

    :cond_36
    iput v1, p1, Lcom/facebook/ads/redexgen/X/9R;->A00:I

    goto :goto_7b

    :cond_39
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v8, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    sget-object v4, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v3, v4, v0

    const/4 v0, 0x0

    aget-object v4, v4, v0

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_7c

    sget-object v4, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v3, "Qe4SjxIsSBa3x6HAW"

    const/4 v0, 0x6

    aput-object v3, v4, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0L:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v7, v3, v0, v6}, Lcom/facebook/ads/redexgen/X/9z;->A0A(ILcom/facebook/ads/redexgen/X/9x;Z)Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9x;->A03:Ljava/lang/Object;

    invoke-virtual {p1, v5, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9R;->A01(IJLjava/lang/Object;)V

    :goto_7b
    return v6

    :cond_7c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0s(Lcom/facebook/ads/redexgen/X/XS;)Z
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0H()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v1

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/9a;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9a;->A06:Z

    if-eqz v0, :cond_18

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/XS;->A8Q()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private A0t(Lcom/facebook/ads/redexgen/X/EW;JLcom/facebook/ads/redexgen/X/9a;)Z
    .registers 10

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A04:Lcom/facebook/ads/redexgen/X/EW;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/EW;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-boolean v0, p4, Lcom/facebook/ads/redexgen/X/9a;->A06:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0L:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A09(ILcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9x;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0L:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/9x;->A04(J)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_34

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0L:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/9x;->A09(I)J

    move-result-wide v3

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/9b;->A02:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_36

    :cond_34
    const/4 v0, 0x1

    return v0

    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method private A0u(Z)Z
    .registers 10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0C:[Lcom/facebook/ads/redexgen/X/XS;

    array-length v0, v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0q()Z

    move-result v0

    return v0

    :cond_a
    const/4 v7, 0x0

    if-nez p1, :cond_e

    return v7

    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A05:Lcom/facebook/ads/redexgen/X/9e;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A08:Z

    const/4 v1, 0x1

    if-nez v0, :cond_16

    return v1

    :cond_16
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0K:Lcom/facebook/ads/redexgen/X/9c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9c;->A0F()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v6

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A05:Z

    xor-int/2addr v0, v1

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/9a;->A0C(Z)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-eqz v0, :cond_44

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0J:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A03:J

    invoke-virtual {v6, v0, v1}, Lcom/facebook/ads/redexgen/X/9a;->A08(J)J

    move-result-wide v0

    sub-long/2addr v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0G:Lcom/facebook/ads/redexgen/X/XV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XV;->A7Z()Lcom/facebook/ads/redexgen/X/9f;

    move-result-object v0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/9f;->A01:F

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A09:Z

    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/9Z;->AFa(JFZ)Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_44
    const/4 v7, 0x1

    :cond_45
    return v7
.end method

.method public static A0v(Lcom/facebook/ads/redexgen/X/GO;)[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .registers 6

    if-eqz p0, :cond_34

    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/GO;->length()I

    move-result v4

    :goto_6
    new-array v3, v4, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_37

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dj;->A0W:[Ljava/lang/String;

    const-string v1, "X04sVE4WijYjotgv6w3bASzS6"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "U1jCIvxI6fY8JZE6Ili1DHAvIg"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v4, :cond_36

    invoke-interface {p0, v1}, Lcom/facebook/ads/redexgen/X/GO;->A6z(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_34
    const/4 v4, 0x0

    goto :goto_6

    :cond_36
    return-object v3

    :cond_37
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0w()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized A0x()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0A:Z

    if-eqz v0, :cond_7
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_23

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    const/4 v0, 0x7

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/HV;->AF2(I)Z

    const/4 v1, 0x0

    :goto_e
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0A:Z

    if-nez v0, :cond_18
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_23

    :try_start_12
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_e
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_16} :catch_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_23

    :catch_16
    const/4 v1, 0x1

    goto :goto_e

    :cond_18
    if-eqz v1, :cond_21

    :try_start_1a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0y(Lcom/facebook/ads/redexgen/X/9z;IJ)V
    .registers 8

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    new-instance v1, Lcom/facebook/ads/redexgen/X/9T;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/9T;-><init>(Lcom/facebook/ads/redexgen/X/9z;IJ)V

    const/4 v0, 0x3

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/HV;->AAH(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final A0z(Lcom/facebook/ads/redexgen/X/EY;ZZ)V
    .registers 6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    const/4 v0, 0x0

    invoke-interface {v1, v0, p2, p3, p1}, Lcom/facebook/ads/redexgen/X/HV;->AAG(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final A10(Z)V
    .registers 5

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {v2, v0, p1, v1}, Lcom/facebook/ads/redexgen/X/HV;->AAF(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final A11(Z)V
    .registers 5

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    const/4 v1, 0x0

    const/4 v0, 0x6

    invoke-interface {v2, v0, p1, v1}, Lcom/facebook/ads/redexgen/X/HV;->AAF(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final bridge synthetic AAx(Lcom/facebook/ads/redexgen/X/Ev;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/Vg;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dj;->A0g(Lcom/facebook/ads/redexgen/X/Vg;)V

    return-void
.end method

.method public final ACO(Lcom/facebook/ads/redexgen/X/9f;)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0E:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget v0, p1, Lcom/facebook/ads/redexgen/X/9f;->A01:F

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0L(F)V

    return-void
.end method

.method public final ACW(Lcom/facebook/ads/redexgen/X/Vg;)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    const/16 v0, 0x9

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/HV;->AAH(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final ACz(Lcom/facebook/ads/redexgen/X/EY;Lcom/facebook/ads/redexgen/X/9z;Ljava/lang/Object;)V
    .registers 7

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    new-instance v1, Lcom/facebook/ads/redexgen/X/9Q;

    invoke-direct {v1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/9Q;-><init>(Lcom/facebook/ads/redexgen/X/EY;Lcom/facebook/ads/redexgen/X/9z;Ljava/lang/Object;)V

    const/16 v0, 0x8

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/HV;->AAH(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final declared-synchronized AF4(Lcom/facebook/ads/redexgen/X/9q;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0A:Z

    if-eqz v0, :cond_21

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x32

    const/16 v1, 0x25

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/9q;->A0A(Z)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_2e

    monitor-exit p0

    return-void

    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0Q:Lcom/facebook/ads/redexgen/X/HV;

    const/16 v0, 0xe

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/HV;->AAH(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2e

    monitor-exit p0

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 10

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A06(III)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    :try_start_c
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_100

    return v6

    :pswitch_12
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/ads/redexgen/X/EY;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0h(Lcom/facebook/ads/redexgen/X/EY;ZZ)V

    goto :goto_9a

    :pswitch_28
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0l(Z)V

    goto :goto_9a

    :pswitch_33
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A07()V

    goto :goto_9a

    :pswitch_37
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/9T;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0T(Lcom/facebook/ads/redexgen/X/9T;)V

    goto :goto_9a

    :pswitch_3f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/9f;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0W(Lcom/facebook/ads/redexgen/X/9f;)V

    goto :goto_9a

    :pswitch_47
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/9v;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0d(Lcom/facebook/ads/redexgen/X/9v;)V

    goto :goto_9a

    :pswitch_4f
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_55

    const/4 v0, 0x1

    goto :goto_56

    :cond_55
    const/4 v0, 0x0

    :goto_56
    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/Dj;->A0n(ZZ)V

    goto :goto_9a

    :pswitch_5a
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0D()V

    return v4

    :pswitch_5e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/9Q;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0S(Lcom/facebook/ads/redexgen/X/9Q;)V

    goto :goto_9a

    :pswitch_66
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Vg;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0f(Lcom/facebook/ads/redexgen/X/Vg;)V

    goto :goto_9a

    :pswitch_6e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Vg;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0e(Lcom/facebook/ads/redexgen/X/Vg;)V

    goto :goto_9a

    :pswitch_76
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0E()V

    goto :goto_9a

    :pswitch_7a
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0M(I)V

    goto :goto_9a

    :pswitch_80
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_86

    const/4 v0, 0x1

    goto :goto_87

    :cond_86
    const/4 v0, 0x0

    :goto_87
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0m(Z)V

    goto :goto_9a

    :pswitch_8b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/9q;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0Y(Lcom/facebook/ads/redexgen/X/9q;)V

    goto :goto_9a

    :pswitch_93
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/9q;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0a(Lcom/facebook/ads/redexgen/X/9q;)V

    :goto_9a
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0A()V

    goto :goto_ff
    :try_end_9e
    .catch Lcom/facebook/ads/redexgen/X/9K; {:try_start_c .. :try_end_9e} :catch_c0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_9e} :catch_9e
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_9e} :catch_de

    :catch_9e
    move-exception v3

    const/16 v2, 0x7d

    const/16 v1, 0xd

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v6, v6}, Lcom/facebook/ads/redexgen/X/Dj;->A0n(ZZ)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0E:Landroid/os/Handler;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9K;->A00(Ljava/io/IOException;)Lcom/facebook/ads/redexgen/X/9K;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0A()V

    goto :goto_ff

    :catch_c0
    move-exception v3

    const/16 v2, 0x6e

    const/16 v1, 0xf

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v6, v6}, Lcom/facebook/ads/redexgen/X/Dj;->A0n(ZZ)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0E:Landroid/os/Handler;

    invoke-virtual {v0, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0A()V

    goto :goto_ff

    :catch_de
    move-exception v3

    const/16 v2, 0x57

    const/16 v1, 0x17

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v6, v6}, Lcom/facebook/ads/redexgen/X/Dj;->A0n(ZZ)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dj;->A0E:Landroid/os/Handler;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9K;->A02(Ljava/lang/RuntimeException;)Lcom/facebook/ads/redexgen/X/9K;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dj;->A0A()V

    :goto_ff
    return v4

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_12
        :pswitch_28
        :pswitch_33
        :pswitch_37
        :pswitch_3f
        :pswitch_47
        :pswitch_4f
        :pswitch_5a
        :pswitch_5e
        :pswitch_66
        :pswitch_6e
        :pswitch_76
        :pswitch_7a
        :pswitch_80
        :pswitch_8b
        :pswitch_93
    .end packed-switch
.end method

###### Class com.facebook.ads.redexgen.X.C9P (com.facebook.ads.redexgen.X.9P)
.class public final Lcom/facebook/ads/redexgen/X/9P;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Dj;->A0a(Lcom/facebook/ads/redexgen/X/9q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Dj;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/9q;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9P;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dj;Lcom/facebook/ads/redexgen/X/9q;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9P;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/9P;->A01:Lcom/facebook/ads/redexgen/X/9q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/9P;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xe

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 1

    const/16 v0, 0x4c

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/9P;->A02:[B

    return-void

    :array_a
    .array-data 1
        -0x3ct
        -0x9t
        -0x12t
        -0x31t
        -0x15t
        -0x20t
        -0x8t
        -0x1ct
        -0xft
        -0x38t
        -0x14t
        -0x11t
        -0x15t
        -0x38t
        -0x13t
        -0xdt
        -0x1ct
        -0xft
        -0x13t
        -0x20t
        -0x15t
        -0x34t
        -0x1bt
        -0x24t
        -0x11t
        -0x19t
        -0x24t
        -0x26t
        -0x15t
        -0x24t
        -0x25t
        -0x69t
        -0x24t
        -0x17t
        -0x17t
        -0x1at
        -0x17t
        -0x69t
        -0x25t
        -0x24t
        -0x1dt
        -0x20t
        -0x13t
        -0x24t
        -0x17t
        -0x20t
        -0x1bt
        -0x22t
        -0x69t
        -0x1ct
        -0x24t
        -0x16t
        -0x16t
        -0x28t
        -0x22t
        -0x24t
        -0x69t
        -0x1at
        -0x1bt
        -0x69t
        -0x24t
        -0x11t
        -0x15t
        -0x24t
        -0x17t
        -0x1bt
        -0x28t
        -0x1dt
        -0x69t
        -0x15t
        -0x21t
        -0x17t
        -0x24t
        -0x28t
        -0x25t
        -0x5bt
    .end array-data
.end method


# virtual methods
.method public final run()V
    .registers 7

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K0;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v5, p0

    :try_start_8
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/9P;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9P;->A01:Lcom/facebook/ads/redexgen/X/9q;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0U(Lcom/facebook/ads/redexgen/X/Dj;Lcom/facebook/ads/redexgen/X/9q;)V

    return-void
    :try_end_10
    .catch Lcom/facebook/ads/redexgen/X/9K; {:try_start_8 .. :try_end_10} :catch_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_2d

    :catch_10
    move-exception v4

    :try_start_11
    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9P;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x15

    const/16 v1, 0x37

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9P;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
