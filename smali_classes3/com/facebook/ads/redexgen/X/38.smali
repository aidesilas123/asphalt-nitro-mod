###### Class com.facebook.ads.redexgen.X.AnonymousClass38 (com.facebook.ads.redexgen.X.38)
.class public final Lcom/facebook/ads/redexgen/X/38;
.super Lcom/facebook/ads/redexgen/X/BO;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/BI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CeaInputBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/BO;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/ads/redexgen/X/38;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public A00:J


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vLCiYmslEIO8pJY4aanHdZ7QImU9IQkS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qKFqw4ir5U7ZeqBFISN4Zo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jSoy0i9dh5CIlqD3dL3njwneSWVMxCrT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "BKJrnveI01f5DMln9XIqip"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hfsDVMr2hJ3AGnbNzVU4gQALPe"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "leKVUsav6grkPqjsrOtcGAgCR95imu9O"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "O7i9KhUKrr"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "K8BeTV5Og7G1zujvrlQB8lJ7v8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/38;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BO;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Ff;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/38;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/38;)I
    .registers 12

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ap;->A04()Z

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ap;->A04()Z

    move-result v0

    const/4 v9, 0x1

    if-eq v1, v0, :cond_14

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ap;->A04()Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_11
    return v9

    :cond_12
    const/4 v9, -0x1

    goto :goto_11

    :cond_14
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/XE;->A00:J

    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/XE;->A00:J

    sub-long/2addr v1, v3

    const-wide/16 v7, 0x0

    cmp-long v0, v1, v7

    if-nez v0, :cond_4b

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/38;->A00:J

    iget-wide v4, p1, Lcom/facebook/ads/redexgen/X/38;->A00:J

    sget-object v3, Lcom/facebook/ads/redexgen/X/38;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v3, v3, v0

    const/16 v0, 0x15

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v0, 0x5a

    if-eq v3, v0, :cond_38

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_38
    sget-object v6, Lcom/facebook/ads/redexgen/X/38;->A01:[Ljava/lang/String;

    const-string v3, "YA5mbgM7zSdIgspcc6jY8TfuEeXD2Ehe"

    const/4 v0, 0x5

    aput-object v3, v6, v0

    const-string v3, "tQeim9pVy3EkTEWbzOifosISYdgikQjr"

    const/4 v0, 0x2

    aput-object v3, v6, v0

    sub-long/2addr v1, v4

    cmp-long v0, v1, v7

    if-nez v0, :cond_4b

    const/4 v0, 0x0

    return v0

    :cond_4b
    cmp-long v0, v1, v7

    if-lez v0, :cond_50

    :goto_4f
    return v9

    :cond_50
    const/4 v9, -0x1

    goto :goto_4f
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/38;J)J
    .registers 3

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/38;->A00:J

    return-wide p1
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/facebook/ads/redexgen/X/38;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/38;->A00(Lcom/facebook/ads/redexgen/X/38;)I

    move-result v0

    return v0
.end method
