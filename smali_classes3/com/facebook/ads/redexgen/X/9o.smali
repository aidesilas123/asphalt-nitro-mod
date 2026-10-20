###### Class com.facebook.ads.redexgen.X.C9O (com.facebook.ads.redexgen.X.9O)
.class public final Lcom/facebook/ads/redexgen/X/9O;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Dk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfoUpdate"
.end annotation


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/9e;

.field public final A03:Lcom/facebook/ads/redexgen/X/GR;

.field public final A04:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/9i;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Z

.field public final A06:Z

.field public final A07:Z

.field public final A08:Z

.field public final A09:Z

.field public final A0A:Z

.field public final A0B:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ngVoBp5pr"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xJziJS8oS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0Acs5KUpAntiIN9SBf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RdvtHMhhQhD1iGhGKfpT4jwIcRZugl7b"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SwdEOGzegqYmuuXtqS3DnPJA1PQs60Y1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mjJqNiV5uYYXT5JIaz2mCpImvyi2YwVT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "z"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dC4jFhBSvokHiCeDasSLAsgetwgdiZCj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9O;->A0C:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9e;Lcom/facebook/ads/redexgen/X/9e;Ljava/util/Set;Lcom/facebook/ads/redexgen/X/GR;ZIIZZZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/9e;",
            "Lcom/facebook/ads/redexgen/X/9e;",
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/9i;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/GR;",
            "ZIIZZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9O;->A02:Lcom/facebook/ads/redexgen/X/9e;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9O;->A04:Ljava/util/Set;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/9O;->A03:Lcom/facebook/ads/redexgen/X/GR;

    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/9O;->A08:Z

    iput p6, p0, Lcom/facebook/ads/redexgen/X/9O;->A00:I

    iput p7, p0, Lcom/facebook/ads/redexgen/X/9O;->A01:I

    iput-boolean p8, p0, Lcom/facebook/ads/redexgen/X/9O;->A09:Z

    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/9O;->A06:Z

    const/4 v2, 0x0

    if-nez p10, :cond_1c

    iget v1, p2, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    if-eq v1, v0, :cond_45

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A07:Z

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    if-ne v1, v0, :cond_2b

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/9e;->A07:Ljava/lang/Object;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9e;->A07:Ljava/lang/Object;

    if-eq v1, v0, :cond_43

    :cond_2b
    const/4 v0, 0x1

    :goto_2c
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A0A:Z

    iget-boolean v1, p2, Lcom/facebook/ads/redexgen/X/9e;->A08:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/9e;->A08:Z

    if-eq v1, v0, :cond_41

    const/4 v0, 0x1

    :goto_35
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A05:Z

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/9e;->A06:Lcom/facebook/ads/redexgen/X/GS;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9e;->A06:Lcom/facebook/ads/redexgen/X/GS;

    if-eq v1, v0, :cond_3e

    const/4 v2, 0x1

    :cond_3e
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/9O;->A0B:Z

    return-void

    :cond_41
    const/4 v0, 0x0

    goto :goto_35

    :cond_43
    const/4 v0, 0x0

    goto :goto_2c

    :cond_45
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public final A00()V
    .registers 7

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A0A:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A01:I

    if-nez v0, :cond_28

    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A04:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/9i;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A02:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A02:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/9e;->A07:Ljava/lang/Object;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A01:I

    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9i;->AD9(Lcom/facebook/ads/redexgen/X/9z;Ljava/lang/Object;I)V

    goto :goto_e

    :cond_28
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A08:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A04:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/9i;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A00:I

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/9i;->ACU(I)V

    goto :goto_32

    :cond_44
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/9O;->A0B:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/9O;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_92

    sget-object v2, Lcom/facebook/ads/redexgen/X/9O;->A0C:[Ljava/lang/String;

    const-string v1, "kVA7KUftqEYsKKgit7KobnVmlfmelHtP"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_b0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9O;->A03:Lcom/facebook/ads/redexgen/X/GR;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A02:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A06:Lcom/facebook/ads/redexgen/X/GS;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/GS;->A02:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GR;->A0U(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A04:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_72
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/9i;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9O;->A02:Lcom/facebook/ads/redexgen/X/9e;

    sget-object v2, Lcom/facebook/ads/redexgen/X/9O;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_98

    :cond_92
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_98
    sget-object v2, Lcom/facebook/ads/redexgen/X/9O;->A0C:[Ljava/lang/String;

    const-string v1, "m"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "KqMQ2zUn9wEBuYOIrT"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/9e;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A02:Lcom/facebook/ads/redexgen/X/9e;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A06:Lcom/facebook/ads/redexgen/X/GS;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/GS;->A01:Lcom/facebook/ads/redexgen/X/GP;

    invoke-interface {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/9i;->ADC(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GP;)V

    goto :goto_72

    :cond_b0
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/9O;->A05:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/9O;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_16d

    sget-object v2, Lcom/facebook/ads/redexgen/X/9O;->A0C:[Ljava/lang/String;

    const-string v1, "SUKzwd9m16qKT5RYTkUj9PT0NEqmu9kE"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_10d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A04:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_cf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/9O;->A0C:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_fe

    sget-object v2, Lcom/facebook/ads/redexgen/X/9O;->A0C:[Ljava/lang/String;

    const-string v1, "7SswXZjoc"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "LaiVjvUVk"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_10d

    :goto_f0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/9i;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A02:Lcom/facebook/ads/redexgen/X/9e;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A08:Z

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/9i;->ABx(Z)V

    goto :goto_cf

    :cond_fe
    sget-object v2, Lcom/facebook/ads/redexgen/X/9O;->A0C:[Ljava/lang/String;

    const-string v1, "I"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "zdEQR0QEwobMnnP3YQ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_10d

    goto :goto_f0

    :cond_10d
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A07:Z

    if-eqz v0, :cond_152

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9O;->A04:Ljava/util/Set;

    sget-object v2, Lcom/facebook/ads/redexgen/X/9O;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_146

    sget-object v2, Lcom/facebook/ads/redexgen/X/9O;->A0C:[Ljava/lang/String;

    const-string v1, "xdr5mmXrWjbqVTrxDMPiLI1UYtBVMgU7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_130
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_152

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/9O;->A06:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A02:Lcom/facebook/ads/redexgen/X/9e;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9i;->ACS(ZI)V

    goto :goto_130

    :cond_146
    sget-object v2, Lcom/facebook/ads/redexgen/X/9O;->A0C:[Ljava/lang/String;

    const-string v1, "vgNSEPQsIWHaSH2OFiWclNn1gpDCsXwE"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    goto :goto_130

    :cond_152
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A09:Z

    if-eqz v0, :cond_16c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9O;->A04:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9i;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9i;->ACt()V

    goto :goto_15c

    :cond_16c
    return-void

    :cond_16d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
