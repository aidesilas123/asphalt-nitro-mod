###### Class com.facebook.ads.redexgen.X.W7 (com.facebook.ads.redexgen.X.W7)
.class public final Lcom/facebook/ads/redexgen/X/W7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Co;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/W5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PatReader"
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Hg;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/W5;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "KDcVXuz53RpoF9UEOZ96l2VZuhVX9ip0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CKRJ1Pqx0SMvAzHTc14bPVY1Im6KLWKe"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CZRg2SIX1VWZgfyXTOdEl1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FcRR7mDk42dnDG0ym1pZJ2"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QPo"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3iSkzhZlTwG2jcdx249ci8whKDsXKTKF"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "nuc6nRuUqT3GqwIih"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HhkYvD09GQfRAuSaGWngxJEfFHmtitdD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/W7;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/W5;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W7;->A01:Lcom/facebook/ads/redexgen/X/W5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hg;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hg;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W7;->A00:Lcom/facebook/ads/redexgen/X/Hg;

    return-void
.end method


# virtual methods
.method public final A4O(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 9

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v6

    const/4 v5, 0x4

    div-int/2addr v6, v5

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v6, :cond_54

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W7;->A00:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {p1, v0, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0a(Lcom/facebook/ads/redexgen/X/Hg;I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W7;->A00:Lcom/facebook/ads/redexgen/X/Hg;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W7;->A00:Lcom/facebook/ads/redexgen/X/Hg;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    const/16 v1, 0xd

    if-nez v2, :cond_33

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W7;->A00:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :goto_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_33
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W7;->A00:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W7;->A01:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A07(Lcom/facebook/ads/redexgen/X/W5;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W7;->A01:Lcom/facebook/ads/redexgen/X/W5;

    new-instance v1, Lcom/facebook/ads/redexgen/X/W6;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/W6;-><init>(Lcom/facebook/ads/redexgen/X/W5;I)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/WA;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/WA;-><init>(Lcom/facebook/ads/redexgen/X/Co;)V

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W7;->A01:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A01(Lcom/facebook/ads/redexgen/X/W5;)I

    goto :goto_30

    :cond_54
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W7;->A01:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A02(Lcom/facebook/ads/redexgen/X/W5;)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/W7;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_81

    sget-object v2, Lcom/facebook/ads/redexgen/X/W7;->A02:[Ljava/lang/String;

    const-string v1, "4awIAPS5zJKVkKN48BLjJX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "yyhTqQNSKamLuuIUjTGErW"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x2

    if-eq v3, v0, :cond_80

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W7;->A01:Lcom/facebook/ads/redexgen/X/W5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W5;->A07(Lcom/facebook/ads/redexgen/X/W5;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_80
    return-void

    :cond_81
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A8g(Lcom/facebook/ads/redexgen/X/Ht;Lcom/facebook/ads/redexgen/X/Bc;Lcom/facebook/ads/redexgen/X/Cu;)V
    .registers 4

    return-void
.end method
