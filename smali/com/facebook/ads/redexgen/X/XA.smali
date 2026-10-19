###### Class com.facebook.ads.redexgen.X.XA (com.facebook.ads.redexgen.X.XA)
.class public final Lcom/facebook/ads/redexgen/X/XA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BK;
.implements Lcom/facebook/ads/redexgen/X/B1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSessionManager$MediaDrmEventListener;,
        Lcom/facebook/ads/redexgen/X/BA;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSessionManager$Mode;,
        Lcom/facebook/ads/redexgen/X/BB;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DefaultDrmSessionManager$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/ads/redexgen/X/BL;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/BK<",
        "TT;>;",
        "Lcom/facebook/ads/redexgen/X/B1<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Landroid/os/Looper;

.field public A02:[B

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/B7;

.field public final A05:Lcom/facebook/ads/redexgen/X/BR;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BR<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final A06:Lcom/facebook/ads/redexgen/X/BV;

.field public final A07:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/XB<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final A09:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/XB<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final A0A:Ljava/util/UUID;

.field public final A0B:Z

.field public volatile A0C:Lcom/facebook/ads/redexgen/X/BA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/XA<",
            "TT;>.MediaDrmHandler;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ANYLgz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "oJggquXjFajkvVakw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NhfBTMehdsUwmjJG25"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "fCdIhqwNOTcaInr5tUyGNlroBtV"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OEWoY1V4f4faBwRg332bHxVOSHWwx21M"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QEXYlj0kmMt4ztT6jdLWJjem"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2UI8DlmhQXrJ84vyuAUmahlNAt"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mJ2nqf9sK7no"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XA;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XA;->A03()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;Ljava/util/UUID;Z)Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;
    .registers 11

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;->A01:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_8
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;->A01:I

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-ge v2, v0, :cond_37

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;->A02(Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/facebook/ads/redexgen/X/9E;->A01:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/facebook/ads/redexgen/X/9E;->A02:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;->A02(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_28
    const/4 v6, 0x1

    :cond_29
    if-eqz v6, :cond_34

    iget-object v0, v1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;->A04:[B

    if-nez v0, :cond_31

    if-eqz p2, :cond_34

    :cond_31
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_37
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x0

    return-object v0

    :cond_3f
    sget-object v0, Lcom/facebook/ads/redexgen/X/9E;->A05:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    const/4 v4, 0x0

    :goto_48
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_75

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;->A01()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, v3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;->A04:[B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CJ;->A00([B)I

    move-result v2

    :goto_60
    sget v0, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_69

    if-nez v2, :cond_69

    return-object v3

    :cond_69
    sget v0, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    if-lt v0, v1, :cond_70

    if-ne v2, v5, :cond_70

    return-object v3

    :cond_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    :cond_73
    const/4 v2, -0x1

    goto :goto_60

    :cond_75
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/XA;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_9
    array-length v0, p0

    if-ge p1, v0, :cond_36

    aget-byte v3, p0, p1

    xor-int/2addr v3, p2

    sget-object v2, Lcom/facebook/ads/redexgen/X/XA;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_30

    sget-object v2, Lcom/facebook/ads/redexgen/X/XA;->A0E:[Ljava/lang/String;

    const-string v1, "NBGjCtubpQRAXyW4McbyIV8QsblEY4y1"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    xor-int/lit8 v0, v3, 0x69

    int-to-byte v0, v0

    aput-byte v0, p0, p1

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

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/XA;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/XA;->A09:Ljava/util/List;

    return-object p0
.end method

.method public static A03()V
    .registers 1

    const/16 v0, 0x6c

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/XA;->A0D:[B

    return-void

    :array_a
    .array-data 1
        0x69t
        0x48t
        0x4bt
        0x4ct
        0x58t
        0x41t
        0x59t
        0x69t
        0x5ft
        0x40t
        0x7et
        0x48t
        0x5et
        0x5et
        0x44t
        0x42t
        0x43t
        0x60t
        0x4at
        0x5ft
        0x35t
        0x3t
        0x1ct
        0x38t
        0x1ft
        0x18t
        0x5t
        0x35t
        0x10t
        0x5t
        0x10t
        0x51t
        0x1et
        0x1ft
        0x1dt
        0x8t
        0x51t
        0x12t
        0x1et
        0x1ft
        0x5t
        0x10t
        0x18t
        0x1ft
        0x2t
        0x51t
        0x12t
        0x1et
        0x1ct
        0x1ct
        0x1et
        0x1ft
        0x51t
        0x21t
        0x22t
        0x22t
        0x39t
        0x51t
        0x22t
        0x12t
        0x19t
        0x14t
        0x1ct
        0x14t
        0x35t
        0x10t
        0x5t
        0x10t
        0x5ft
        0x51t
        0x30t
        0x2t
        0x2t
        0x4t
        0x1ct
        0x18t
        0x1ft
        0x16t
        0x51t
        0x2t
        0x4t
        0x1t
        0x1t
        0x1et
        0x3t
        0x5t
        0x51t
        0x17t
        0x1et
        0x3t
        0x4bt
        0x51t
        0x1ft
        0x1et
        0x1ft
        0x4dt
        0x77t
        0x76t
        0x77t
        0x67t
        0x30t
        0x36t
        0x3dt
        0x30t
        0x62t
        0x64t
        0x6ft
        0x72t
    .end array-data
.end method


# virtual methods
.method public final A04(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/B8;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A04:Lcom/facebook/ads/redexgen/X/B7;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/B7;->A03(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/B8;)V

    return-void
.end method

.method public final A2X(Landroid/os/Looper;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/redexgen/X/BJ;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;",
            ")",
            "Lcom/facebook/ads/redexgen/X/BJ<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/XA;->A01:Landroid/os/Looper;

    const/4 v1, 0x0

    move-object/from16 v14, p1

    if-eqz v0, :cond_b

    if-ne v0, v14, :cond_4b

    :cond_b
    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/XA;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    iput-object v14, v3, Lcom/facebook/ads/redexgen/X/XA;->A01:Landroid/os/Looper;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/XA;->A0C:Lcom/facebook/ads/redexgen/X/BA;

    if-nez v0, :cond_24

    new-instance v0, Lcom/facebook/ads/redexgen/X/BA;

    invoke-direct {v0, v3, v14}, Lcom/facebook/ads/redexgen/X/BA;-><init>(Lcom/facebook/ads/redexgen/X/XA;Landroid/os/Looper;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/XA;->A0C:Lcom/facebook/ads/redexgen/X/BA;

    :cond_24
    const/4 v9, 0x0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/XA;->A02:[B

    const/4 v5, 0x0

    if-nez v0, :cond_4d

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/XA;->A0A:Ljava/util/UUID;

    move-object/from16 v2, p2

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/XA;->A00(Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;Ljava/util/UUID;Z)Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

    move-result-object v9

    if-nez v9, :cond_4d

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/XA;->A0A:Ljava/util/UUID;

    new-instance v2, Lcom/facebook/ads/redexgen/X/BB;

    invoke-direct {v2, v0, v5}, Lcom/facebook/ads/redexgen/X/BB;-><init>(Ljava/util/UUID;Lcom/facebook/ads/redexgen/X/B9;)V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/XA;->A04:Lcom/facebook/ads/redexgen/X/B7;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/B7;->A04(Ljava/lang/Exception;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/BH;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/BH;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/X9;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/X9;-><init>(Lcom/facebook/ads/redexgen/X/BH;)V

    return-object v0

    :cond_4b
    const/4 v0, 0x0

    goto :goto_c

    :cond_4d
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/XA;->A0B:Z

    if-nez v0, :cond_86

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/XA;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7d

    :goto_59
    if-nez v5, :cond_79

    new-instance v5, Lcom/facebook/ads/redexgen/X/XB;

    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/XA;->A0A:Ljava/util/UUID;

    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/XA;->A05:Lcom/facebook/ads/redexgen/X/BR;

    iget v10, v3, Lcom/facebook/ads/redexgen/X/XA;->A00:I

    iget-object v11, v3, Lcom/facebook/ads/redexgen/X/XA;->A02:[B

    iget-object v12, v3, Lcom/facebook/ads/redexgen/X/XA;->A07:Ljava/util/HashMap;

    iget-object v13, v3, Lcom/facebook/ads/redexgen/X/XA;->A06:Lcom/facebook/ads/redexgen/X/BV;

    iget-object v15, v3, Lcom/facebook/ads/redexgen/X/XA;->A04:Lcom/facebook/ads/redexgen/X/B7;

    iget v0, v3, Lcom/facebook/ads/redexgen/X/XA;->A03:I

    move-object/from16 v8, p0

    move/from16 v16, v0

    invoke-direct/range {v5 .. v16}, Lcom/facebook/ads/redexgen/X/XB;-><init>(Ljava/util/UUID;Lcom/facebook/ads/redexgen/X/BR;Lcom/facebook/ads/redexgen/X/B1;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;I[BLjava/util/HashMap;Lcom/facebook/ads/redexgen/X/BV;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/B7;I)V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/XA;->A09:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_79
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/XB;->A0G()V

    return-object v5

    :cond_7d
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/XA;->A09:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/XB;

    goto :goto_59

    :cond_86
    const/4 v4, 0x0

    if-eqz v9, :cond_8b

    iget-object v5, v9, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;->A04:[B

    :cond_8b
    sget-object v1, Lcom/facebook/ads/redexgen/X/XA;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_ba

    sget-object v2, Lcom/facebook/ads/redexgen/X/XA;->A0E:[Ljava/lang/String;

    const-string v1, "zebyso9QALf6mFi2tznux8P"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/XA;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/XB;

    invoke-virtual {v1, v5}, Lcom/facebook/ads/redexgen/X/XB;->A0M([B)Z

    move-result v0

    if-eqz v0, :cond_a4

    move-object v5, v1

    goto :goto_59

    :cond_b8
    move-object v5, v4

    goto :goto_59

    :cond_ba
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A46(Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Z
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A02:[B

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    return v3

    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A0A:Ljava/util/UUID;

    invoke-static {p1, v0, v3}, Lcom/facebook/ads/redexgen/X/XA;->A00(Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;Ljava/util/UUID;Z)Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

    move-result-object v0

    const/4 v4, 0x0

    if-nez v0, :cond_60

    iget v5, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/XA;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_cc

    sget-object v2, Lcom/facebook/ads/redexgen/X/XA;->A0E:[Ljava/lang/String;

    const-string v1, "Gq1nb8ZpgvmUzJpUyLgmbdlX"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "zEBygY"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne v5, v3, :cond_cb

    invoke-virtual {p1, v4}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/9E;->A02:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;->A02(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_cb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14

    const/16 v1, 0x48

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A0A:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    iget-object v5, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;->A02:Ljava/lang/String;

    if-eqz v5, :cond_73

    const/16 v2, 0x64

    const/4 v1, 0x4

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    :cond_73
    return v3

    :cond_74
    const/16 v2, 0x5c

    const/4 v1, 0x4

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ba

    const/16 v2, 0x60

    const/4 v1, 0x4

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XA;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ba

    const/16 v2, 0x68

    const/4 v1, 0x4

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XA;->A01(III)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/XA;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c3

    sget-object v2, Lcom/facebook/ads/redexgen/X/XA;->A0E:[Ljava/lang/String;

    const-string v1, "bzvSTEO2NGjBPpa5noKORqr6ZpHh1m8T"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    :cond_ba
    :goto_ba
    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x19

    if-lt v1, v0, :cond_c1

    :goto_c0
    return v3

    :cond_c1
    const/4 v3, 0x0

    goto :goto_c0

    :cond_c3
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    goto :goto_ba

    :cond_ca
    return v3

    :cond_cb
    return v4

    :cond_cc
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ACb()V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/XA;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2f

    sget-object v2, Lcom/facebook/ads/redexgen/X/XA;->A0E:[Ljava/lang/String;

    const-string v1, "E3b0MKGlV7Qlh8NFsi3ziriRt4u9XqXm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/XB;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/XB;->A0H()V

    goto :goto_6

    :cond_2f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_35
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final ACc(Ljava/lang/Exception;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/XB;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/XB;->A0K(Ljava/lang/Exception;)V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final AE4(Lcom/facebook/ads/redexgen/X/XB;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XB<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A08:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_11

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/XB;->A0I()V

    :cond_11
    return-void
.end method

.method public final AEU(Lcom/facebook/ads/redexgen/X/BJ;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/BJ<",
            "TT;>;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/X9;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    check-cast p1, Lcom/facebook/ads/redexgen/X/XB;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/XB;->A0L()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A09:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_47

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XA;->A08:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_47

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/XA;->A08:Ljava/util/List;

    sget-object v1, Lcom/facebook/ads/redexgen/X/XA;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_4d

    sget-object v2, Lcom/facebook/ads/redexgen/X/XA;->A0E:[Ljava/lang/String;

    const-string v1, "8HEKS9j6P5APhESSR"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "SFo7ZRHt72jFDiQQTk8v57UjUPr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/XB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XB;->A0I()V

    :cond_47
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XA;->A08:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4c
    return-void

    :cond_4d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
