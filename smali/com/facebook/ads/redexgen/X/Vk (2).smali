###### Class com.facebook.ads.redexgen.X.C1423Vk (com.facebook.ads.redexgen.X.Vk)
.class public final Lcom/facebook/ads/redexgen/X/Vk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Gq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/BT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExtractingLoadable"
.end annotation


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/Gg;

.field public A04:Z

.field public final A05:Landroid/net/Uri;

.field public final A06:Lcom/facebook/ads/redexgen/X/Bh;

.field public final A07:Lcom/facebook/ads/redexgen/X/ES;

.field public final A08:Lcom/facebook/ads/redexgen/X/Gc;

.field public final A09:Lcom/facebook/ads/redexgen/X/HO;

.field public volatile A0A:Z

.field public final synthetic A0B:Lcom/facebook/ads/redexgen/X/BT;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "G7jWD6ulf4YNSZyKFTHtDKYEexnehBFD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "eAcypqsPfTTSG9tYkNPVa4Ur1OSgM6nM"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "x"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tNQG44GENbPBCr6MlCIr3t4n4NF0MmxZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OwErIGDXAeY1H11Nt9UmuNZTMubue4sT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "f"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "eBkibdjxFKT4WmP6H51EPZ9055c0bCkp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0Ce9TygyYiJS1KV85oyrWWiGz76nCu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vk;->A0C:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/BT;Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/Gc;Lcom/facebook/ads/redexgen/X/ES;Lcom/facebook/ads/redexgen/X/HO;)V
    .registers 8

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0B:Lcom/facebook/ads/redexgen/X/BT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A05:Landroid/net/Uri;

    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Gc;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A08:Lcom/facebook/ads/redexgen/X/Gc;

    invoke-static {p4}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ES;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A07:Lcom/facebook/ads/redexgen/X/ES;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Vk;->A09:Lcom/facebook/ads/redexgen/X/HO;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bh;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Bh;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A06:Lcom/facebook/ads/redexgen/X/Bh;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A04:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A01:J

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Vk;)J
    .registers 2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A02:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Vk;)J
    .registers 2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Vk;)J
    .registers 2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A01:J

    return-wide v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Vk;)Lcom/facebook/ads/redexgen/X/Gg;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A03:Lcom/facebook/ads/redexgen/X/Gg;

    return-object p0
.end method


# virtual methods
.method public final A04(JJ)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A06:Lcom/facebook/ads/redexgen/X/Bh;

    iput-wide p1, v0, Lcom/facebook/ads/redexgen/X/Bh;->A00:J

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Vk;->A02:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A04:Z

    return-void
.end method

.method public final A47()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0A:Z

    return-void
.end method

.method public final A9B()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_100

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0A:Z

    if-nez v1, :cond_100

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_9
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A06:Lcom/facebook/ads/redexgen/X/Bh;

    iget-wide v10, v1, Lcom/facebook/ads/redexgen/X/Bh;->A00:J

    new-instance v8, Lcom/facebook/ads/redexgen/X/Gg;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/Vk;->A05:Landroid/net/Uri;

    const-wide/16 v12, -0x1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0B:Lcom/facebook/ads/redexgen/X/BT;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/BT;->A08(Lcom/facebook/ads/redexgen/X/BT;)Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/Gg;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/Vk;->A03:Lcom/facebook/ads/redexgen/X/Gg;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A08:Lcom/facebook/ads/redexgen/X/Gc;

    invoke-interface {v1, v8}, Lcom/facebook/ads/redexgen/X/Gc;->ADb(Lcom/facebook/ads/redexgen/X/Gg;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A01:J

    const-wide/16 v6, -0x1

    cmp-long v5, v1, v6

    if-eqz v5, :cond_2f

    add-long/2addr v1, v10

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A01:J

    :cond_2f
    new-instance v8, Lcom/facebook/ads/redexgen/X/X4;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/Vk;->A08:Lcom/facebook/ads/redexgen/X/Gc;

    iget-wide v12, p0, Lcom/facebook/ads/redexgen/X/Vk;->A01:J

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/X4;-><init>(Lcom/facebook/ads/redexgen/X/Gc;JJ)V

    move-object v3, v8

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vk;->A07:Lcom/facebook/ads/redexgen/X/ES;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A08:Lcom/facebook/ads/redexgen/X/Gc;

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Gc;->A85()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/facebook/ads/redexgen/X/ES;->A02(Lcom/facebook/ads/redexgen/X/Bb;Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/Ba;

    move-result-object v5

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A04:Z

    if-eqz v1, :cond_51

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A02:J

    invoke-interface {v5, v10, v11, v1, v2}, Lcom/facebook/ads/redexgen/X/Ba;->AEw(JJ)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A04:Z

    :cond_51
    :goto_51
    if-nez v0, :cond_8a

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0A:Z

    if-nez v1, :cond_8a

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A09:Lcom/facebook/ads/redexgen/X/HO;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/HO;->A00()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A06:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-interface {v5, v3, v1}, Lcom/facebook/ads/redexgen/X/Ba;->AE9(Lcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/Bh;)I

    move-result v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/X4;->A7a()J

    move-result-wide v8

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0B:Lcom/facebook/ads/redexgen/X/BT;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/BT;->A03(Lcom/facebook/ads/redexgen/X/BT;)J

    move-result-wide v6

    add-long/2addr v6, v10

    cmp-long v1, v8, v6

    if-lez v1, :cond_51

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/X4;->A7a()J

    move-result-wide v10

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A09:Lcom/facebook/ads/redexgen/X/HO;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/HO;->A01()Z

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0B:Lcom/facebook/ads/redexgen/X/BT;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/BT;->A04(Lcom/facebook/ads/redexgen/X/BT;)Landroid/os/Handler;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A0B:Lcom/facebook/ads/redexgen/X/BT;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/BT;->A06(Lcom/facebook/ads/redexgen/X/BT;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_51

    :cond_8a
    if-ne v0, v4, :cond_94

    const/4 v0, 0x0
    :try_end_8d
    .catchall {:try_start_9 .. :try_end_8d} :catchall_bc

    :goto_8d
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A08:Lcom/facebook/ads/redexgen/X/Gc;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Hx;->A0W(Lcom/facebook/ads/redexgen/X/Gc;)V

    goto/16 :goto_1

    :cond_94
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Vk;->A06:Lcom/facebook/ads/redexgen/X/Bh;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vk;->A0C:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v1, 0x20

    if-eq v2, v1, :cond_fa

    sget-object v4, Lcom/facebook/ads/redexgen/X/Vk;->A0C:[Ljava/lang/String;

    const-string v2, "RP5F3MQdpmYGlMxTR22UmyqYUd"

    const/4 v1, 0x7

    aput-object v2, v4, v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/X4;->A7a()J

    move-result-wide v1

    iput-wide v1, v5, Lcom/facebook/ads/redexgen/X/Bh;->A00:J

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A06:Lcom/facebook/ads/redexgen/X/Bh;

    iget-wide v3, v1, Lcom/facebook/ads/redexgen/X/Bh;->A00:J

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vk;->A03:Lcom/facebook/ads/redexgen/X/Gg;

    iget-wide v1, v1, Lcom/facebook/ads/redexgen/X/Gg;->A01:J

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:J

    goto :goto_8d

    :catchall_bc
    move-exception v6

    sget-object v5, Lcom/facebook/ads/redexgen/X/Vk;->A0C:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v2, v5, v1

    const/4 v1, 0x0

    aget-object v5, v5, v1

    const/16 v1, 0x12

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_fa

    sget-object v5, Lcom/facebook/ads/redexgen/X/Vk;->A0C:[Ljava/lang/String;

    const-string v2, "eRCRzQ7PqS4RXHh1qWIeZ2INrCYp7IVM"

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const-string v2, "eZFPNfTqDUJk6uZFjeWmQVerr07XVEhG"

    const/4 v1, 0x6

    aput-object v2, v5, v1

    if-eq v0, v4, :cond_f4

    if-eqz v3, :cond_f4

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vk;->A06:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/X4;->A7a()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/Bh;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A06:Lcom/facebook/ads/redexgen/X/Bh;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/Bh;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A03:Lcom/facebook/ads/redexgen/X/Gg;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Gg;->A01:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vk;->A00:J

    :cond_f4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vk;->A08:Lcom/facebook/ads/redexgen/X/Gc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0W(Lcom/facebook/ads/redexgen/X/Gc;)V

    throw v6

    :cond_fa
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_100
    return-void
.end method
