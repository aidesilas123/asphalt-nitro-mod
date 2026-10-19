###### Class com.facebook.ads.redexgen.X.Dc (com.facebook.ads.redexgen.X.Dc)
.class public final Lcom/facebook/ads/redexgen/X/Dc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/scte35/SpliceScheduleCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:J

.field public final A04:J

.field public final A05:J

.field public final A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Db;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Z

.field public final A08:Z

.field public final A09:Z

.field public final A0A:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WSNeg6N0n7AIShfXSzX5HQmTc8kFkZEc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6rZRvoV62oNyzf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "F27AMpNiqyccCa5EB6sKY7eKfEMSqhrd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FVKbL9f5FAHwz7hiZMN0u1v1YdCbdeYK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "vVfLkZocD1NxPHhP9fXAXrt0GsgaX4xN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "cFmUa63iy9OAJJOa0jT7jB1cdvdJ4hQa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2QFrNOOxadMtahUuhILPt16xKsmCtJsL"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "J"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Dc;->A0B:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JZZZLjava/util/List;JZJIII)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZ",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Db;",
            ">;JZJIII)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Dc;->A04:J

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0A:Z

    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/Dc;->A08:Z

    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/Dc;->A09:Z

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Ljava/util/List;

    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/Dc;->A05:J

    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/Dc;->A07:Z

    iput-wide p10, p0, Lcom/facebook/ads/redexgen/X/Dc;->A03:J

    iput p12, p0, Lcom/facebook/ads/redexgen/X/Dc;->A02:I

    iput p13, p0, Lcom/facebook/ads/redexgen/X/Dc;->A00:I

    iput p14, p0, Lcom/facebook/ads/redexgen/X/Dc;->A01:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A04:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_40

    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0A:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_3e

    const/4 v0, 0x1

    :goto_1b
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A08:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_3c

    const/4 v0, 0x1

    :goto_24
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A09:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_30
    if-ge v1, v3, :cond_42

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Db;->A01(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/Db;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_3c
    const/4 v0, 0x0

    goto :goto_24

    :cond_3e
    const/4 v0, 0x0

    goto :goto_1b

    :cond_40
    const/4 v0, 0x0

    goto :goto_12

    :cond_42
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A05:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_55

    const/4 v5, 0x1

    :cond_55
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Dc;->A07:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A03:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A02:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A00:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A01:I

    return-void
.end method

.method public static A00(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/Dc;
    .registers 2

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Dc;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static synthetic A01(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/Dc;
    .registers 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Dc;->A00(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/Dc;

    move-result-object p0

    return-object p0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/Dc;
    .registers 23

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0M()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4c

    const/4 v10, 0x1

    :goto_d
    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v16, 0x0

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v10, :cond_c8

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v3

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_4a

    const/4 v11, 0x1

    :goto_31
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_48

    const/4 v12, 0x1

    :goto_36
    sget-object v1, Lcom/facebook/ads/redexgen/X/Dc;->A0B:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_4e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_48
    const/4 v12, 0x0

    goto :goto_36

    :cond_4a
    const/4 v11, 0x0

    goto :goto_31

    :cond_4c
    const/4 v10, 0x0

    goto :goto_d

    :cond_4e
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dc;->A0B:[Ljava/lang/String;

    const-string v1, "02B3CRg7kTq01s"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_82

    const/4 v7, 0x1

    :goto_5a
    if-eqz v12, :cond_60

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0M()J

    move-result-wide v14

    :cond_60
    if-nez v12, :cond_84

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v4

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_6c
    if-ge v3, v4, :cond_97

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0M()J

    move-result-wide v0

    const/4 v5, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Db;

    invoke-direct {v2, v6, v0, v1, v5}, Lcom/facebook/ads/redexgen/X/Db;-><init>(IJLcom/facebook/ads/redexgen/X/Da;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6c

    :cond_82
    const/4 v7, 0x0

    goto :goto_5a

    :cond_84
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dc;->A0B:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_d1

    :cond_97
    :goto_97
    if-eqz v7, :cond_bc

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v5, 0x80

    and-long/2addr v5, v0

    const-wide/16 v3, 0x0

    cmp-long v2, v5, v3

    if-eqz v2, :cond_ce

    const/16 v16, 0x1

    :goto_a9
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0M()J

    move-result-wide v0

    or-long/2addr v2, v0

    const-wide/16 v17, 0x3e8

    mul-long v17, v17, v2

    const-wide/16 v0, 0x5a

    div-long v17, v17, v0

    :cond_bc
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v21

    :cond_c8
    new-instance v7, Lcom/facebook/ads/redexgen/X/Dc;

    invoke-direct/range {v7 .. v21}, Lcom/facebook/ads/redexgen/X/Dc;-><init>(JZZZLjava/util/List;JZJIII)V

    return-object v7

    :cond_ce
    const/16 v16, 0x0

    goto :goto_a9

    :cond_d1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dc;->A0B:[Ljava/lang/String;

    const-string v1, "Wfp3iGqyia9VmI"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    goto :goto_97
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/Dc;
    .registers 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Dc;->A02(Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/Dc;

    move-result-object p0

    return-object p0
.end method

.method private A04(Landroid/os/Parcel;)V
    .registers 6

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A04:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A0A:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A08:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A09:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v2, :cond_31

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A06:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Db;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Db;->A03(Lcom/facebook/ads/redexgen/X/Db;Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_31
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A05:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A07:Z

    int-to-byte v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dc;->A0B:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_4c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4c
    sget-object v2, Lcom/facebook/ads/redexgen/X/Dc;->A0B:[Ljava/lang/String;

    const-string v1, "FoD8YYsiaA11j5"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A03:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A02:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A00:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dc;->A01:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Dc;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dc;->A04(Landroid/os/Parcel;)V

    return-void
.end method
