###### Class com.facebook.ads.redexgen.X.C0963Dk (com.facebook.ads.redexgen.X.Dk)
.class public final Lcom/facebook/ads/redexgen/X/Dk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/XT;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9O;
    }
.end annotation


# static fields
.field public static A0M:[B

.field public static A0N:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/9K;

.field public A06:Lcom/facebook/ads/redexgen/X/9e;

.field public A07:Lcom/facebook/ads/redexgen/X/9f;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Landroid/os/Handler;

.field public final A0D:Landroid/os/Handler;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Dj;

.field public final A0F:Lcom/facebook/ads/redexgen/X/9x;

.field public final A0G:Lcom/facebook/ads/redexgen/X/9y;

.field public final A0H:Lcom/facebook/ads/redexgen/X/GR;

.field public final A0I:Lcom/facebook/ads/redexgen/X/GS;

.field public final A0J:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/9O;",
            ">;"
        }
    .end annotation
.end field

.field public final A0K:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/9i;",
            ">;"
        }
    .end annotation
.end field

.field public final A0L:[Lcom/facebook/ads/redexgen/X/XS;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "m3Tqgcaf5Zwh2KVI4lshI8Y9OWjAyKiW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "grdEJ2UvF2rVdGgR2IFX1R9SZI3Oow9U"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "adSXB2DteQqbyu8FZt3lmhGSn0N0giaq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NRdDTd6ed3Jg0yXdfuAl28VADrUF9IBW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "O75rLRuL5gqpexSF7Nk4cqg8fxEEp65Y"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "atjqzip57QIi0KmRPtssGorCsXfOnHh4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4ftStqMBHRnBf64I9Tdbb6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "F7xqVaNkoKYb3tQw5W1HE7EtQtFRVx9Y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Dk;->A0N:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Dk;->A03()V

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/GR;Lcom/facebook/ads/redexgen/X/9Z;Lcom/facebook/ads/redexgen/X/HL;)V
    .registers 24

    move-object/from16 v1, p0

    move-object v2, v1

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x21

    const/4 v3, 0x5

    const/16 v0, 0x34

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Dk;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/16 v0, 0x53

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Dk;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v4, 0xf

    const/16 v3, 0x12

    const/16 v0, 0x29

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Dk;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v4, 0x2f

    const/4 v3, 0x3

    const/16 v0, 0x38

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Dk;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hx;->A04:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v4, 0x2e

    const/4 v3, 0x1

    const/16 v0, 0x3c

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Dk;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x2

    const/16 v3, 0xd

    const/16 v0, 0x58

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Dk;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p1

    array-length v0, v5

    const/4 v3, 0x0

    if-lez v0, :cond_101

    const/4 v0, 0x1

    :goto_75
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/XS;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0L:[Lcom/facebook/ads/redexgen/X/XS;

    move-object/from16 v6, p2

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GR;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0H:Lcom/facebook/ads/redexgen/X/GR;

    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0A:Z

    iput v3, v2, Lcom/facebook/ads/redexgen/X/Dk;->A03:I

    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0B:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    array-length v0, v5

    new-array v4, v0, [Lcom/facebook/ads/redexgen/X/9t;

    array-length v0, v5

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/GO;

    const/4 v0, 0x0

    new-instance v7, Lcom/facebook/ads/redexgen/X/GS;

    invoke-direct {v7, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/GS;-><init>([Lcom/facebook/ads/redexgen/X/9t;[Lcom/facebook/ads/redexgen/X/GO;Ljava/lang/Object;)V

    iput-object v7, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0I:Lcom/facebook/ads/redexgen/X/GS;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9y;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9y;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0G:Lcom/facebook/ads/redexgen/X/9y;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9x;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9x;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0F:Lcom/facebook/ads/redexgen/X/9x;

    sget-object v0, Lcom/facebook/ads/redexgen/X/9f;->A04:Lcom/facebook/ads/redexgen/X/9f;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A07:Lcom/facebook/ads/redexgen/X/9f;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_fc

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_c1
    new-instance v12, Lcom/facebook/ads/redexgen/X/9N;

    invoke-direct {v12, v1, v0}, Lcom/facebook/ads/redexgen/X/9N;-><init>(Lcom/facebook/ads/redexgen/X/Dk;Landroid/os/Looper;)V

    iput-object v12, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0C:Landroid/os/Handler;

    new-instance v13, Lcom/facebook/ads/redexgen/X/9e;

    sget-object v14, Lcom/facebook/ads/redexgen/X/9z;->A01:Lcom/facebook/ads/redexgen/X/9z;

    const-wide/16 v15, 0x0

    sget-object v17, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Lcom/facebook/ads/redexgen/X/9z;JLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GS;)V

    iput-object v13, v2, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0J:Ljava/util/ArrayDeque;

    new-instance v4, Lcom/facebook/ads/redexgen/X/Dj;

    iget-boolean v9, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0A:Z

    iget v10, v2, Lcom/facebook/ads/redexgen/X/Dk;->A03:I

    iget-boolean v11, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0B:Z

    move-object v13, v1

    move-object/from16 v8, p3

    move-object/from16 v14, p4

    invoke-direct/range {v4 .. v14}, Lcom/facebook/ads/redexgen/X/Dj;-><init>([Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/GR;Lcom/facebook/ads/redexgen/X/GS;Lcom/facebook/ads/redexgen/X/9Z;ZIZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/HL;)V

    iput-object v4, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0E:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Dj;->A0w()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0D:Landroid/os/Handler;

    return-void

    :cond_fc
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_c1

    :cond_101
    const/4 v0, 0x0

    goto/16 :goto_75
.end method

.method private A00(J)J
    .registers 8

    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/9E;->A01(J)J

    move-result-wide v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EW;->A01()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0F:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A09(ILcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9x;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0F:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9x;->A08()J

    move-result-wide v0

    add-long/2addr v3, v0

    :cond_24
    return-wide v3
.end method

.method private A01(ZZI)Lcom/facebook/ads/redexgen/X/9e;
    .registers 20

    move-object/from16 v2, p0

    if-eqz p1, :cond_60

    const/4 v0, 0x0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A01:I

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A00:I

    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A04:J

    :goto_d
    new-instance v4, Lcom/facebook/ads/redexgen/X/9e;

    if-eqz p2, :cond_5b

    sget-object v5, Lcom/facebook/ads/redexgen/X/9z;->A01:Lcom/facebook/ads/redexgen/X/9z;

    :goto_13
    sget-object v1, Lcom/facebook/ads/redexgen/X/Dk;->A0N:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_73

    sget-object v3, Lcom/facebook/ads/redexgen/X/Dk;->A0N:[Ljava/lang/String;

    const-string v1, "HCeOoliCNtIhqJVVEoV7ODJTUFyfMCgc"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const-string v1, "jOBrxCepwz9IOjYxDZZOtd2HpuVunHZu"

    const/4 v0, 0x3

    aput-object v1, v3, v0

    if-eqz p2, :cond_56

    const/4 v6, 0x0

    :goto_31
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/9e;->A02:J

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/9e;->A01:J

    const/4 v13, 0x0

    if-eqz p2, :cond_51

    sget-object v14, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    :goto_42
    if-eqz p2, :cond_4c

    iget-object v15, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0I:Lcom/facebook/ads/redexgen/X/GS;

    :goto_46
    move/from16 v12, p3

    invoke-direct/range {v4 .. v15}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Lcom/facebook/ads/redexgen/X/9z;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/EW;JJIZLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GS;)V

    return-object v4

    :cond_4c
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/9e;->A06:Lcom/facebook/ads/redexgen/X/GS;

    goto :goto_46

    :cond_51
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/9e;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    goto :goto_42

    :cond_56
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/9e;->A07:Ljava/lang/Object;

    goto :goto_31

    :cond_5b
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    goto :goto_13

    :cond_60
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dk;->A6a()I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A01:I

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dk;->A07()I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A00:I

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dk;->A6X()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A04:J

    goto :goto_d

    :cond_73
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dk;->A0M:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_9
    array-length v0, p0

    if-ge p1, v0, :cond_36

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dk;->A0N:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_30

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dk;->A0N:[Ljava/lang/String;

    const-string v1, "Q2Fud838jOFv6puDYoQ5JAWfmkdvAH2h"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Px66e0ytNEnQno4fNGUkfPLcZSToOlLf"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_30
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_36
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .registers 1

    const/16 v0, 0x59

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Dk;->A0M:[B

    return-void

    :array_a
    .array-data 1
        0x79t
        -0x4ct
        -0x5dt
        -0x2at
        -0x33t
        -0x52t
        -0x36t
        -0x41t
        -0x29t
        -0x3dt
        -0x30t
        -0x59t
        -0x35t
        -0x32t
        -0x36t
        0x74t
        -0x59t
        -0x62t
        0x7ft
        -0x65t
        -0x70t
        -0x58t
        -0x6ct
        -0x5ft
        0x7bt
        -0x68t
        -0x6ft
        0x5et
        0x61t
        0x5dt
        0x67t
        0x5dt
        0x63t
        -0x7dt
        -0x58t
        -0x5dt
        -0x52t
        0x5at
        -0x6bt
        -0x58t
        -0x51t
        -0x58t
        -0x5ct
        -0x4at
        -0x58t
        0x63t
        -0x61t
        -0x65t
        0x5et
        -0x67t
        -0xet
        -0x1ct
        -0x1ct
        -0x16t
        -0x2dt
        -0x12t
        -0x61t
        -0x18t
        -0x1at
        -0x13t
        -0x12t
        -0xft
        -0x1ct
        -0x1dt
        -0x61t
        -0x1ft
        -0x1ct
        -0x1et
        -0x20t
        -0xct
        -0xet
        -0x1ct
        -0x61t
        -0x20t
        -0x13t
        -0x61t
        -0x20t
        -0x1dt
        -0x61t
        -0x18t
        -0xet
        -0x61t
        -0x11t
        -0x15t
        -0x20t
        -0x8t
        -0x18t
        -0x13t
        -0x1at
    .end array-data
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/9e;IZI)V
    .registers 18

    move-object v2, p0

    move-object v7, p1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A02:I

    sub-int/2addr v0, p2

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A02:I

    if-nez v0, :cond_52

    iget-wide v5, v7, Lcom/facebook/ads/redexgen/X/9e;->A02:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v3

    if-nez v0, :cond_1f

    iget-object v8, v7, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    const-wide/16 v9, 0x0

    iget-wide v11, v7, Lcom/facebook/ads/redexgen/X/9e;->A01:J

    move-object v7, v7

    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/9e;->A04(Lcom/facebook/ads/redexgen/X/EW;JJ)Lcom/facebook/ads/redexgen/X/9e;

    move-result-object v7

    :cond_1f
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9z;->A0E()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2e

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A08:Z

    if-eqz v0, :cond_3e

    :cond_2e
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9z;->A0E()Z

    move-result v0

    if-eqz v0, :cond_3e

    iput v3, v2, Lcom/facebook/ads/redexgen/X/Dk;->A00:I

    iput v3, v2, Lcom/facebook/ads/redexgen/X/Dk;->A01:I

    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A04:J

    :cond_3e
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A08:Z

    if-eqz v0, :cond_53

    const/4 v10, 0x0

    :goto_43
    iget-boolean v11, v2, Lcom/facebook/ads/redexgen/X/Dk;->A09:Z

    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/Dk;->A08:Z

    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/Dk;->A09:Z

    const/4 v12, 0x0

    move-object v6, v2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/Dk;->A05(Lcom/facebook/ads/redexgen/X/9e;ZIIZZ)V

    :cond_52
    return-void

    :cond_53
    const/4 v10, 0x2

    goto :goto_43
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/9e;ZIIZZ)V
    .registers 21

    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0J:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/facebook/ads/redexgen/X/9O;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0H:Lcom/facebook/ads/redexgen/X/GR;

    iget-boolean v12, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0A:Z

    move-object v4, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v13, p6

    invoke-direct/range {v3 .. v13}, Lcom/facebook/ads/redexgen/X/9O;-><init>(Lcom/facebook/ads/redexgen/X/9e;Lcom/facebook/ads/redexgen/X/9e;Ljava/util/Set;Lcom/facebook/ads/redexgen/X/GR;ZIIZZZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iput-object v4, v2, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    if-eqz v1, :cond_2b

    return-void

    :cond_2b
    :goto_2b
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9O;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9O;->A00()V

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Dk;->A0J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_2b

    :cond_44
    return-void
.end method

.method private A06()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9z;->A0E()Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A02:I

    if-lez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public final A07()I
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dk;->A06()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A00:I

    return v0

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    return v0
.end method

.method public final A08(I)V
    .registers 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Dk;->A09(IJ)V

    return-void
.end method

.method public final A09(IJ)V
    .registers 16

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    move v9, p1

    if-ltz v9, :cond_10b

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/9z;->A0E()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/9z;->A01()I

    move-result v0

    if-ge v9, v0, :cond_10b

    :cond_13
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Dk;->A09:Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A02:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A02:I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dk;->A0B()Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dk;->A0N:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_39

    :cond_33
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_39
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dk;->A0N:[Ljava/lang/String;

    const-string v1, "5JrPhprFhX8le0yHjhtYDABd6qn7MJv2"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "AcgEDj7anvk4CRi6YuD76A9KphiljDlH"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v4, 0x0

    if-eqz v5, :cond_6b

    const/4 v2, 0x2

    const/16 v1, 0xd

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dk;->A02(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x32

    const/16 v1, 0x27

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dk;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0C:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    const/4 v0, -0x1

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_6b
    iput v9, p0, Lcom/facebook/ads/redexgen/X/Dk;->A01:I

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/9z;->A0E()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_a3

    cmp-long v0, p2, v1

    if-nez v0, :cond_a1

    const-wide/16 v0, 0x0

    :goto_7e
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A04:J

    iput v4, p0, Lcom/facebook/ads/redexgen/X/Dk;->A00:I

    :goto_82
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0E:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {p2, p3}, Lcom/facebook/ads/redexgen/X/9E;->A00(J)J

    move-result-wide v0

    invoke-virtual {v2, v6, v9, v0, v1}, Lcom/facebook/ads/redexgen/X/Dj;->A0y(Lcom/facebook/ads/redexgen/X/9z;IJ)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_91
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_104

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9i;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/9i;->ACU(I)V

    goto :goto_91

    :cond_a1
    move-wide v0, p2

    goto :goto_7e

    :cond_a3
    cmp-long v0, p2, v1

    if-nez v0, :cond_e5

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0G:Lcom/facebook/ads/redexgen/X/9y;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dk;->A0N:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_33

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dk;->A0N:[Ljava/lang/String;

    const-string v1, "nEFnc7B5wfhj7ivnhhzsBLpbkebEETny"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v6, v9, v4}, Lcom/facebook/ads/redexgen/X/9z;->A0B(ILcom/facebook/ads/redexgen/X/9y;)Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9y;->A01()J

    move-result-wide v10

    :goto_cc
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0G:Lcom/facebook/ads/redexgen/X/9y;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0F:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/9z;->A07(Lcom/facebook/ads/redexgen/X/9y;Lcom/facebook/ads/redexgen/X/9x;IJ)Landroid/util/Pair;

    move-result-object v2

    invoke-static {v10, v11}, Lcom/facebook/ads/redexgen/X/9E;->A01(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A04:J

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A00:I

    goto :goto_82

    :cond_e5
    invoke-static {p2, p3}, Lcom/facebook/ads/redexgen/X/9E;->A00(J)J

    move-result-wide v10

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dk;->A0N:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_105

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dk;->A0N:[Ljava/lang/String;

    const-string v1, "wxFThwrlUUeaJzWEA8zt6g3O6WvT4NEY"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Cn8KVFPYAIX7JaaKfRlHGvTkFrF10J5Z"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    goto :goto_cc

    :cond_104
    return-void

    :cond_105
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_10b
    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v6, v9, p2, p3}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Lcom/facebook/ads/redexgen/X/9z;IJ)V

    throw v0
.end method

.method public final A0A(Landroid/os/Message;)V
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_b
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/ads/redexgen/X/9f;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A07:Lcom/facebook/ads/redexgen/X/9f;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/9f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Dk;->A07:Lcom/facebook/ads/redexgen/X/9f;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9i;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/9i;->ACO(Lcom/facebook/ads/redexgen/X/9f;)V

    goto :goto_1f

    :pswitch_2f
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/facebook/ads/redexgen/X/9K;

    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/Dk;->A05:Lcom/facebook/ads/redexgen/X/9K;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dk;->A0N:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_99

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dk;->A0N:[Ljava/lang/String;

    const-string v1, "4yvjfA5Kw"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_56
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dk;->A0N:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_93

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dk;->A0N:[Ljava/lang/String;

    const-string v1, "M6bFWga7XOh4Nv4psw4qaL9KmcGoAikz"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "g5TiVjLanBSgFn2xszzFJfFzrFRrWctq"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_90

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9i;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/9i;->ACQ(Lcom/facebook/ads/redexgen/X/9K;)V

    goto :goto_56

    :pswitch_7f
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/ads/redexgen/X/9e;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_91

    const/4 v1, 0x1

    :goto_8b
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dk;->A04(Lcom/facebook/ads/redexgen/X/9e;IZI)V

    :cond_90
    return-void

    :cond_91
    const/4 v1, 0x0

    goto :goto_8b

    :cond_93
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_99
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_b
        :pswitch_2f
    .end packed-switch
.end method

.method public final A0B()Z
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dk;->A06()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EW;->A01()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final A3M(Lcom/facebook/ads/redexgen/X/9i;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final A4b(Lcom/facebook/ads/redexgen/X/9p;)Lcom/facebook/ads/redexgen/X/9q;
    .registers 9

    new-instance v1, Lcom/facebook/ads/redexgen/X/9q;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0E:Lcom/facebook/ads/redexgen/X/Dj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dk;->A6a()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0D:Landroid/os/Handler;

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/9q;-><init>(Lcom/facebook/ads/redexgen/X/9o;Lcom/facebook/ads/redexgen/X/9p;Lcom/facebook/ads/redexgen/X/9z;ILandroid/os/Handler;)V

    return-object v1
.end method

.method public final A66()I
    .registers 10

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dk;->A67()J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dk;->A6j()J

    move-result-wide v5

    const/4 v4, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v7, v1

    if-eqz v0, :cond_16

    cmp-long v0, v5, v1

    if-nez v0, :cond_17

    :cond_16
    :goto_16
    return v4

    :cond_17
    const-wide/16 v1, 0x0

    const/16 v3, 0x64

    cmp-long v0, v5, v1

    if-nez v0, :cond_22

    const/16 v4, 0x64

    goto :goto_16

    :cond_22
    const-wide/16 v1, 0x64

    mul-long/2addr v1, v7

    div-long/2addr v1, v5

    long-to-int v0, v1

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Hx;->A06(III)I

    move-result v4

    goto :goto_16
.end method

.method public final A67()J
    .registers 3

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dk;->A06()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A04:J

    return-wide v0

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A09:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Dk;->A00(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A6S()J
    .registers 5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dk;->A0B()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0F:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A09(ILcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9x;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0F:Lcom/facebook/ads/redexgen/X/9x;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dk;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_3b

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dk;->A0N:[Ljava/lang/String;

    const-string v1, "eLr0wKhVkEyrTiyBT4e5CdZ3SmFaaZ0Y"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9x;->A08()J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A01:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/9E;->A01(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2

    :cond_3b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_41
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dk;->A6X()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A6U()I
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dk;->A0B()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/EW;->A00:I

    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public final A6V()I
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dk;->A0B()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/EW;->A01:I

    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public final A6X()J
    .registers 3

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dk;->A06()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A04:J

    return-wide v0

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A0A:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Dk;->A00(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A6Z()Lcom/facebook/ads/redexgen/X/9z;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    return-object v0
.end method

.method public final A6a()I
    .registers 5

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dk;->A06()Z

    move-result v0

    if-eqz v0, :cond_25

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Dk;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dk;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_1f

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dk;->A0N:[Ljava/lang/String;

    const-string v1, "IPV6VHeKuNfhgMSHvhaXB"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    :cond_1f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_25
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0F:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A09(ILcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9x;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9x;->A00:I

    return v0
.end method

.method public final A6j()J
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/9z;->A0E()Z

    move-result v0

    if-eqz v0, :cond_10

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_10
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dk;->A0B()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget v1, v3, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0F:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A09(ILcom/facebook/ads/redexgen/X/9x;)Lcom/facebook/ads/redexgen/X/9x;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0F:Lcom/facebook/ads/redexgen/X/9x;

    iget v1, v3, Lcom/facebook/ads/redexgen/X/EW;->A00:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/EW;->A01:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9x;->A0A(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/9E;->A01(J)J

    move-result-wide v0

    return-wide v0

    :cond_30
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dk;->A6a()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0G:Lcom/facebook/ads/redexgen/X/9y;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9z;->A0B(ILcom/facebook/ads/redexgen/X/9y;)Lcom/facebook/ads/redexgen/X/9y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9y;->A02()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7Y()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0A:Z

    return v0
.end method

.method public final ADv(Lcom/facebook/ads/redexgen/X/EY;ZZ)V
    .registers 12

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A05:Lcom/facebook/ads/redexgen/X/9K;

    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/Dk;->A01(ZZI)Lcom/facebook/ads/redexgen/X/9e;

    move-result-object v2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Dk;->A08:Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A02:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0E:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Dj;->A0z(Lcom/facebook/ads/redexgen/X/EY;ZZ)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Dk;->A05(Lcom/facebook/ads/redexgen/X/9e;ZIIZZ)V

    return-void
.end method

.method public final AEO()V
    .registers 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x26

    const/16 v1, 0x8

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dk;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dk;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xf

    const/16 v1, 0x12

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dk;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x2f

    const/4 v1, 0x3

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dk;->A02(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hx;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9U;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x2e

    const/4 v1, 0x1

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dk;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    const/16 v1, 0xd

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dk;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0E:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A0x()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0C:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final AEy(J)V
    .registers 4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dk;->A6a()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Dk;->A09(IJ)V

    return-void
.end method

.method public final AEz()V
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dk;->A6a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Dk;->A08(I)V

    return-void
.end method

.method public final AFO(Z)V
    .registers 9

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0A:Z

    if-eq v0, p1, :cond_16

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0A:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0E:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Dj;->A10(Z)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dk;->A06:Lcom/facebook/ads/redexgen/X/9e;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Dk;->A05(Lcom/facebook/ads/redexgen/X/9e;ZIIZZ)V

    :cond_16
    return-void
.end method

.method public final AFp(Z)V
    .registers 10

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A05:Lcom/facebook/ads/redexgen/X/9K;

    :cond_5
    const/4 v1, 0x1

    invoke-direct {p0, p1, p1, v1}, Lcom/facebook/ads/redexgen/X/Dk;->A01(ZZI)Lcom/facebook/ads/redexgen/X/9e;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A02:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A0E:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Dj;->A11(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Dk;->A05(Lcom/facebook/ads/redexgen/X/9e;ZIIZZ)V

    return-void
.end method
