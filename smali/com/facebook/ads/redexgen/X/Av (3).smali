###### Class com.facebook.ads.redexgen.X.C0915Av (com.facebook.ads.redexgen.X.Av)
.class public final Lcom/facebook/ads/redexgen/X/Av;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/V7;


# static fields
.field public static A0G:[B

.field public static A0H:[Ljava/lang/String;

.field public static final A0I:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final A0J:Ljava/util/regex/Pattern;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/Gg;

.field public A05:Ljava/io/InputStream;

.field public A06:Ljava/net/HttpURLConnection;

.field public A07:Z

.field public final A08:I

.field public final A09:I

.field public final A0A:Lcom/facebook/ads/redexgen/X/Gn;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Gn;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Gy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Gy<",
            "-",
            "Lcom/facebook/ads/redexgen/X/Av;",
            ">;"
        }
    .end annotation
.end field

.field public final A0D:Lcom/facebook/ads/redexgen/X/Hj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Hj<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:Ljava/lang/String;

.field public final A0F:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "75NS6XWtOFaqvUAv70pmXpUOnNLqFC62"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xNyAW7YuQe6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JhVZQGcu6MYhTGFRaY9NVeSWQV9pZEhG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Kya4laZJ5Yz4z7ubQErhqHVe"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "a5xQ9UmIIc2iWER6a0yqQZDBwnw5LxXI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JNGHth9iM2AZaEQIUYfWNR2mTS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "R"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WvGanvqVoE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Av;->A0H:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Av;->A09()V

    const/16 v2, 0x12c

    const/16 v1, 0x19

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Av;->A0J:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Av;->A0I:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Hj;Lcom/facebook/ads/redexgen/X/Gy;IIZLcom/facebook/ads/redexgen/X/Gn;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Hj<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Gy<",
            "-",
            "Lcom/facebook/ads/redexgen/X/Av;",
            ">;IIZ",
            "Lcom/facebook/ads/redexgen/X/Gn;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HI;->A02(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A0E:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Av;->A0D:Lcom/facebook/ads/redexgen/X/Hj;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Av;->A0C:Lcom/facebook/ads/redexgen/X/Gy;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gn;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Gn;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A0B:Lcom/facebook/ads/redexgen/X/Gn;

    iput p4, p0, Lcom/facebook/ads/redexgen/X/Av;->A08:I

    iput p5, p0, Lcom/facebook/ads/redexgen/X/Av;->A09:I

    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/Av;->A0F:Z

    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/Av;->A0A:Lcom/facebook/ads/redexgen/X/Gn;

    return-void
.end method

.method private A00([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A02:J

    const-wide/16 v6, -0x1

    const/4 v5, -0x1

    cmp-long v2, v0, v6

    if-eqz v2, :cond_1d

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Av;->A00:J

    sub-long/2addr v0, v2

    const-wide/16 v3, 0x0

    cmp-long v2, v0, v3

    if-nez v2, :cond_17

    return v5

    :cond_17
    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_1d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A05:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v5, :cond_32

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Av;->A02:J

    cmp-long v0, v1, v6

    if-nez v0, :cond_2c

    return v5

    :cond_2c
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_32
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Av;->A00:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Av;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A0C:Lcom/facebook/ads/redexgen/X/Gy;

    if-eqz v0, :cond_3f

    invoke-interface {v0, p0, v4}, Lcom/facebook/ads/redexgen/X/Gy;->AAm(Ljava/lang/Object;I)V

    :cond_3f
    return v4
.end method

.method private final A01()J
    .registers 6

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Av;->A02:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_9

    :goto_8
    return-wide v3

    :cond_9
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A00:J

    sub-long/2addr v3, v0

    goto :goto_8
.end method

.method public static A02(Ljava/net/HttpURLConnection;)J
    .registers 13

    const-wide/16 v1, -0x1

    const/16 v4, 0x10

    const/16 v3, 0xe

    const/16 v0, 0x4b

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v4, 0x128

    const/4 v3, 0x1

    const/16 v0, 0x32

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v7

    const/16 v4, 0x2b

    const/16 v3, 0x15

    const/16 v0, 0x43

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_50

    :try_start_29
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_50
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2e} :catch_2e

    :catch_2e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xa6

    const/16 v3, 0x1b

    const/16 v0, 0x3e

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    :goto_50
    const/16 v4, 0x1e

    const/16 v3, 0xd

    const/16 v0, 0x40

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_eb

    sget-object v0, Lcom/facebook/ads/redexgen/X/Av;->A0J:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_eb

    const/4 v0, 0x2

    :try_start_71
    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sub-long/2addr v3, v9

    const-wide/16 v9, 0x1

    add-long/2addr v3, v9

    const-wide/16 v9, 0x0

    cmp-long v0, v1, v9

    if-gez v0, :cond_8d

    goto :goto_ea

    :cond_8d
    cmp-long v0, v1, v3

    if-eqz v0, :cond_eb

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x40

    const/16 v5, 0x16

    const/4 v0, 0x5

    invoke-static {v9, v5, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v9, 0x129

    const/4 v5, 0x3

    const/16 v0, 0xc

    invoke-static {v9, v5, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_eb
    :try_end_c8
    .catch Ljava/lang/NumberFormatException; {:try_start_71 .. :try_end_c8} :catch_c8

    :catch_c8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xc1

    const/16 v3, 0x1a

    const/4 v0, 0x6

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_eb

    :goto_ea
    move-wide v1, v3

    :cond_eb
    :goto_eb
    return-wide v1
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Av;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x39

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/Gg;)Ljava/net/HttpURLConnection;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Gg;->A04:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/facebook/ads/redexgen/X/Gg;->A06:[B

    iget-wide v8, p1, Lcom/facebook/ads/redexgen/X/Gg;->A03:J

    iget-wide v10, p1, Lcom/facebook/ads/redexgen/X/Gg;->A02:J

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Gg;->A02(I)Z

    move-result v12

    move-object v0, p0

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Av;->A0F:Z

    if-nez v0, :cond_22

    const/4 v13, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/facebook/ads/redexgen/X/Av;->A05(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    :cond_22
    const/4 v1, 0x0

    :goto_23
    add-int/lit8 v4, v1, 0x1

    const/16 v0, 0x14

    if-gt v1, v0, :cond_80

    const/4 v13, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/facebook/ads/redexgen/X/Av;->A05(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Av;->A0H:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0x1a

    if-eq v2, v0, :cond_46

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_46
    sget-object v5, Lcom/facebook/ads/redexgen/X/Av;->A0H:[Ljava/lang/String;

    const-string v2, "FxIBfHo5MrM4KwNe65t8Xtniv5kx6"

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/16 v0, 0x12c

    if-eq v1, v0, :cond_67

    const/16 v0, 0x12d

    if-eq v1, v0, :cond_67

    const/16 v0, 0x12e

    if-eq v1, v0, :cond_67

    const/16 v0, 0x12f

    if-eq v1, v0, :cond_67

    if-nez v7, :cond_7f

    const/16 v0, 0x133

    if-eq v1, v0, :cond_67

    const/16 v0, 0x134

    if-ne v1, v0, :cond_7f

    :cond_67
    const/4 v7, 0x0

    const/16 v2, 0x56

    const/16 v1, 0x8

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/Av;->A06(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    move v1, v4

    goto :goto_23

    :cond_7f
    return-object v3

    :cond_80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x7d

    const/16 v1, 0x14

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/net/NoRouteToHostException;

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A05(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A08:I

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A09:I

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A0A:Lcom/facebook/ads/redexgen/X/Gn;

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Gn;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Av;->A0H:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_3f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3f
    sget-object v2, Lcom/facebook/ads/redexgen/X/Av;->A0H:[Ljava/lang/String;

    const-string v1, "kwRG9UknWr0Wgg7Rclu7tRHvEyTV8TJk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :cond_56
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A0B:Lcom/facebook/ads/redexgen/X/Gn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Gn;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    :cond_80
    const-wide/16 v1, 0x0

    const-wide/16 v5, -0x1

    cmp-long v0, p3, v1

    if-nez v0, :cond_8c

    cmp-long v0, p5, v5

    if-eqz v0, :cond_d6

    :cond_8c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x145

    const/4 v1, 0x6

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    cmp-long v0, p5, v5

    if-eqz v0, :cond_cb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-long/2addr p3, p5

    const-wide/16 v0, 0x1

    sub-long/2addr p3, v0

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_cb
    const/16 v2, 0x78

    const/4 v1, 0x5

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d6
    const/16 v2, 0x11e

    const/16 v1, 0xa

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A0E:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p7, :cond_fd

    const/4 v2, 0x1

    const/16 v1, 0xf

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x1da

    const/16 v1, 0x8

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fd
    invoke-virtual {v3, p8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p2, :cond_131

    const/4 v0, 0x1

    :goto_103
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz p2, :cond_12d

    const/16 v2, 0x74

    const/4 v1, 0x4

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    array-length v0, p2

    if-nez v0, :cond_11b

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    :goto_11a
    return-object v3

    :cond_11b
    array-length v0, p2

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_11a

    :cond_12d
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_11a

    :cond_131
    const/4 v0, 0x0

    goto :goto_103
.end method

.method public static A06(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_6a

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x1d5

    const/4 v1, 0x5

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const/16 p1, 0x1d1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Av;->A0H:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_2f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2f
    sget-object v2, Lcom/facebook/ads/redexgen/X/Av;->A0H:[Ljava/lang/String;

    const-string v1, "w50J2iwlOiToEn9H8bpLD3B1mxiX4OkW"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "U5WpLDBGoG2FZlKlieC8pMIdD1ZiOapt"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v1, 0x4

    const/16 v0, 0x68

    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_48
    return-object v3

    :cond_49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xff

    const/16 v1, 0x1f

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    const/16 v2, 0x5e

    const/16 v1, 0x16

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A07()V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A06:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_23

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_20
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_8

    :catch_8
    move-exception v4

    const/16 v2, 0x2b

    const/16 v1, 0x15

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xdb

    const/16 v1, 0x24

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A06:Ljava/net/HttpURLConnection;

    :cond_23
    return-void
.end method

.method private A08()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Av;->A01:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Av;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget-object v1, Lcom/facebook/ads/redexgen/X/Av;->A0I:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    if-nez v5, :cond_18

    const/16 v0, 0x1000

    new-array v5, v0, [B

    :cond_18
    :goto_18
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/Av;->A01:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Av;->A03:J

    cmp-long v0, v6, v2

    if-eqz v0, :cond_56

    sub-long/2addr v2, v6

    array-length v0, v5

    int-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Av;->A05:Ljava/io/InputStream;

    const/4 v0, 0x0

    invoke-virtual {v1, v5, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_50

    const/4 v0, -0x1

    if-eq v4, v0, :cond_4a

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Av;->A01:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Av;->A01:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A0C:Lcom/facebook/ads/redexgen/X/Gy;

    if-eqz v0, :cond_18

    invoke-interface {v0, p0, v4}, Lcom/facebook/ads/redexgen/X/Gy;->AAm(Ljava/lang/Object;I)V

    goto :goto_18

    :cond_4a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_50
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_56
    sget-object v0, Lcom/facebook/ads/redexgen/X/Av;->A0I:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static A09()V
    .registers 1

    const/16 v0, 0x1f6

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Av;->A0G:[B

    return-void

    :array_a
    .array-data 1
        0x3t
        0x12t
        0x30t
        0x30t
        0x36t
        0x23t
        0x27t
        0x7et
        0x16t
        0x3dt
        0x30t
        0x3ct
        0x37t
        0x3at
        0x3dt
        0x34t
        0x31t
        0x1dt
        0x1ct
        0x6t
        0x17t
        0x1ct
        0x6t
        0x5ft
        0x3et
        0x17t
        0x1ct
        0x15t
        0x6t
        0x1at
        0x3at
        0x16t
        0x17t
        0xdt
        0x1ct
        0x17t
        0xdt
        0x54t
        0x2bt
        0x18t
        0x17t
        0x1et
        0x1ct
        0x3et
        0x1ft
        0x1ct
        0x1bt
        0xft
        0x16t
        0xet
        0x32t
        0xet
        0xet
        0xat
        0x3et
        0x1bt
        0xet
        0x1bt
        0x29t
        0x15t
        0xft
        0x8t
        0x19t
        0x1ft
        0x75t
        0x52t
        0x5ft
        0x53t
        0x52t
        0x4ft
        0x55t
        0x4ft
        0x48t
        0x59t
        0x52t
        0x48t
        0x1ct
        0x54t
        0x59t
        0x5dt
        0x58t
        0x59t
        0x4et
        0x4ft
        0x1ct
        0x67t
        0x7et
        0x5dt
        0x51t
        0x53t
        0x46t
        0x5bt
        0x5dt
        0x5ct
        0x49t
        0x72t
        0x6bt
        0x6bt
        0x27t
        0x6bt
        0x68t
        0x64t
        0x66t
        0x73t
        0x6et
        0x68t
        0x69t
        0x27t
        0x75t
        0x62t
        0x63t
        0x6et
        0x75t
        0x62t
        0x64t
        0x73t
        0x1at
        0x5t
        0x19t
        0x1et
        0x6et
        0x5dt
        0x52t
        0x5bt
        0x59t
        0x4bt
        0x70t
        0x70t
        0x3ft
        0x72t
        0x7et
        0x71t
        0x66t
        0x3ft
        0x6dt
        0x7at
        0x7bt
        0x76t
        0x6dt
        0x7at
        0x7ct
        0x6bt
        0x6ct
        0x25t
        0x3ft
        0x28t
        0x13t
        0x1ct
        0x1ft
        0x11t
        0x18t
        0x5dt
        0x9t
        0x12t
        0x5dt
        0x1et
        0x12t
        0x13t
        0x13t
        0x18t
        0x1et
        0x9t
        0x5dt
        0x9t
        0x12t
        0x5dt
        0x52t
        0x69t
        0x62t
        0x7ft
        0x77t
        0x62t
        0x64t
        0x73t
        0x62t
        0x63t
        0x27t
        0x44t
        0x68t
        0x69t
        0x73t
        0x62t
        0x69t
        0x73t
        0x2at
        0x4bt
        0x62t
        0x69t
        0x60t
        0x73t
        0x6ft
        0x27t
        0x5ct
        0x6at
        0x51t
        0x5at
        0x47t
        0x4ft
        0x5at
        0x5ct
        0x4bt
        0x5at
        0x5bt
        0x1ft
        0x7ct
        0x50t
        0x51t
        0x4bt
        0x5at
        0x51t
        0x4bt
        0x12t
        0x6dt
        0x5et
        0x51t
        0x58t
        0x5at
        0x1ft
        0x64t
        0x47t
        0x7ct
        0x77t
        0x6at
        0x62t
        0x77t
        0x71t
        0x66t
        0x77t
        0x76t
        0x32t
        0x77t
        0x60t
        0x60t
        0x7dt
        0x60t
        0x32t
        0x65t
        0x7at
        0x7bt
        0x7et
        0x77t
        0x32t
        0x76t
        0x7bt
        0x61t
        0x71t
        0x7dt
        0x7ct
        0x7ct
        0x77t
        0x71t
        0x66t
        0x7bt
        0x7ct
        0x75t
        0x60t
        0x5bt
        0x46t
        0x40t
        0x45t
        0x45t
        0x5at
        0x47t
        0x41t
        0x50t
        0x51t
        0x15t
        0x45t
        0x47t
        0x5at
        0x41t
        0x5at
        0x56t
        0x5at
        0x59t
        0x15t
        0x47t
        0x50t
        0x51t
        0x5ct
        0x47t
        0x50t
        0x56t
        0x41t
        0xft
        0x15t
        0x4at
        0x6ct
        0x7at
        0x6dt
        0x32t
        0x5et
        0x78t
        0x7at
        0x71t
        0x6bt
        0x56t
        0x68t
        0x15t
        0x6et
        0x76t
        0x4at
        0x51t
        0x5ct
        0x4dt
        0x5bt
        0x8t
        0x0t
        0x74t
        0x4ct
        0x3t
        0x1t
        0x5t
        0x0t
        0x74t
        0x4ct
        0x3t
        0x1t
        0x7t
        0x0t
        0x74t
        0x4ct
        0x3t
        0x1t
        0xct
        0x73t
        0x68t
        0x65t
        0x74t
        0x62t
        0x2ct
        0x1ct
        0x10t
        0x12t
        0x51t
        0x1et
        0x11t
        0x1bt
        0xdt
        0x10t
        0x16t
        0x1bt
        0x51t
        0x10t
        0x14t
        0x17t
        0xbt
        0xbt
        0xft
        0x51t
        0x16t
        0x11t
        0xbt
        0x1at
        0xdt
        0x11t
        0x1et
        0x13t
        0x51t
        0x17t
        0xbt
        0xbt
        0xft
        0x51t
        0x37t
        0xbt
        0xbt
        0xft
        0x2bt
        0xdt
        0x1et
        0x11t
        0xct
        0xft
        0x10t
        0xdt
        0xbt
        0x5bt
        0x3ct
        0x17t
        0xat
        0x11t
        0x14t
        0x1at
        0x1bt
        0x36t
        0x11t
        0xft
        0xat
        0xbt
        0x2ct
        0xbt
        0xdt
        0x1at
        0x1et
        0x12t
        0x4dt
        0x41t
        0x43t
        0x0t
        0x4ft
        0x40t
        0x4at
        0x5ct
        0x41t
        0x47t
        0x4at
        0x0t
        0x41t
        0x45t
        0x46t
        0x5at
        0x5at
        0x5et
        0x0t
        0x47t
        0x40t
        0x5at
        0x4bt
        0x5ct
        0x40t
        0x4ft
        0x42t
        0x0t
        0x46t
        0x5at
        0x5at
        0x5et
        0x0t
        0x66t
        0x5at
        0x5at
        0x5et
        0x7at
        0x5ct
        0x4ft
        0x40t
        0x5dt
        0x5et
        0x41t
        0x5ct
        0x5at
        0xat
        0x68t
        0x47t
        0x56t
        0x4bt
        0x4at
        0x62t
        0x4bt
        0x40t
        0x49t
        0x5at
        0x46t
        0x67t
        0x40t
        0x5et
        0x5bt
        0x5at
        0x7dt
        0x5at
        0x5ct
        0x4bt
        0x4ft
        0x43t
        0x39t
        0x25t
        0x25t
        0x21t
        0x41t
        0x5dt
        0x5dt
        0x59t
        0x5at
        0x62t
        0x6ft
        0x6et
        0x65t
        0x7ft
        0x62t
        0x7ft
        0x72t
        0x7ct
        0x67t
        0x6ct
        0x71t
        0x79t
        0x6ct
        0x6at
        0x7dt
        0x6ct
        0x6dt
        0x4ct
        0x67t
        0x6dt
        0x46t
        0x6ft
        0x40t
        0x67t
        0x79t
        0x7ct
        0x7dt
    .end array-data
.end method

.method public static A0A(Ljava/net/HttpURLConnection;J)V
    .registers 8

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x13

    if-eq v1, v0, :cond_2c

    sget v4, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v3, 0x14

    sget-object v2, Lcom/facebook/ads/redexgen/X/Av;->A0H:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_26

    sget-object v2, Lcom/facebook/ads/redexgen/X/Av;->A0H:[Ljava/lang/String;

    const-string v1, "h9vUSf3vBaluOAcyH2LsyeRcof"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_2c

    return-void

    :cond_26
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2c
    :try_start_2c
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-wide/16 v1, -0x1

    cmp-long v0, p1, v1

    if-nez v0, :cond_3e

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_45

    return-void

    :cond_3e
    const-wide/16 v1, 0x800

    cmp-long v0, p1, v1

    if-gtz v0, :cond_45

    return-void

    :cond_45
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x14b

    const/16 v1, 0x41

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    const/16 v2, 0x18c

    const/16 v1, 0x45

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    :cond_6d
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const/16 v2, 0x1e2

    const/16 v1, 0x14

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_8f} :catch_8f

    :catch_8f
    :cond_8f
    return-void
.end method


# virtual methods
.method public final A85()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A06:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_5
.end method

.method public final ADb(Lcom/facebook/ads/redexgen/X/Gg;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Gm;
        }
    .end annotation

    const/16 v2, 0x91

    const/16 v1, 0x15

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Av;->A03(III)Ljava/lang/String;

    move-result-object v1

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Av;->A04:Lcom/facebook/ads/redexgen/X/Gg;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/Av;->A00:J

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/Av;->A01:J

    const/4 v3, 0x1

    :try_start_13
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Av;->A04(Lcom/facebook/ads/redexgen/X/Gg;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A06:Ljava/net/HttpURLConnection;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_f1

    :try_start_19
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v2, 0xc8

    if-lt v6, v2, :cond_25

    const/16 v0, 0x12b

    if-le v6, v0, :cond_41
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_25} :catch_d0

    :cond_25
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A06:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Av;->A07()V

    new-instance v2, Lcom/facebook/ads/redexgen/X/V8;

    invoke-direct {v2, v6, v0, p1}, Lcom/facebook/ads/redexgen/X/V8;-><init>(ILjava/util/Map;Lcom/facebook/ads/redexgen/X/Gg;)V

    const/16 v0, 0x1a0

    if-ne v6, v0, :cond_40

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gd;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Gd;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/V8;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_40
    throw v2

    :cond_41
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A06:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A0D:Lcom/facebook/ads/redexgen/X/Hj;

    if-eqz v0, :cond_51

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Hj;->A5W(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    :cond_51
    if-ne v6, v2, :cond_5b

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/Gg;->A03:J

    cmp-long v0, v1, v4

    if-eqz v0, :cond_5b

    iget-wide v4, p1, Lcom/facebook/ads/redexgen/X/Gg;->A03:J

    :cond_5b
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/Av;->A03:J

    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/Gg;->A02(I)Z

    move-result v0

    if-nez v0, :cond_81

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/Gg;->A02:J

    const-wide/16 v4, -0x1

    cmp-long v0, v1, v4

    if-eqz v0, :cond_70

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Gg;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A02:J

    goto :goto_a3

    :cond_70
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A06:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Av;->A02(Ljava/net/HttpURLConnection;)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-eqz v0, :cond_7e

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A03:J

    sub-long v4, v6, v0

    :cond_7e
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/Av;->A02:J

    goto :goto_a3

    :cond_81
    iget-wide v4, p1, Lcom/facebook/ads/redexgen/X/Gg;->A02:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/Av;->A0H:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Av;->A0H:[Ljava/lang/String;

    const-string v1, "g5QduXiMfcr3WVIXoNOmeCAyNU6k9qpH"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "C5YWXMFtOzaHxpxnw5jthW3Xp7pagYAJ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/Av;->A02:J

    :goto_a3
    :try_start_a3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A06:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A05:Ljava/io/InputStream;
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_ab} :catch_b7

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Av;->A07:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A0C:Lcom/facebook/ads/redexgen/X/Gy;

    if-eqz v0, :cond_b4

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Gy;->ADF(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/Gg;)V

    :cond_b4
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A02:J

    return-wide v0

    :catch_b7
    move-exception v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Av;->A07()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gm;

    invoke-direct {v0, v1, p1, v3}, Lcom/facebook/ads/redexgen/X/Gm;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/Gg;I)V

    throw v0

    :cond_c1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_c7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Av;->A07()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/V9;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/V9;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gg;)V

    throw v0

    :catch_d0
    move-exception v2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Av;->A07()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Gg;->A04:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gm;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/facebook/ads/redexgen/X/Gm;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/Gg;I)V

    throw v0

    :catch_f1
    move-exception v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Gg;->A04:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gm;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/facebook/ads/redexgen/X/Gm;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/Gg;I)V

    throw v0
.end method

.method public final close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Gm;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A05:Ljava/io/InputStream;

    if-eqz v0, :cond_1f

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Av;->A06:Ljava/net/HttpURLConnection;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Av;->A01()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Av;->A0A(Ljava/net/HttpURLConnection;J)V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_4c

    :try_start_f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A05:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1f
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_15
    .catchall {:try_start_f .. :try_end_15} :catchall_4c

    :catch_15
    move-exception v3

    :try_start_16
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Av;->A04:Lcom/facebook/ads/redexgen/X/Gg;

    const/4 v1, 0x3

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gm;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Gm;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/Gg;I)V

    throw v0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_4c

    :cond_1f
    :goto_1f
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Av;->A05:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Av;->A07()V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A07:Z

    if-eqz v0, :cond_45

    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Av;->A07:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Av;->A0H:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_46

    sget-object v2, Lcom/facebook/ads/redexgen/X/Av;->A0H:[Ljava/lang/String;

    const-string v1, "ZeceMaPZKUeIsAeOgTMm1DjiML2ItOMm"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A0C:Lcom/facebook/ads/redexgen/X/Gy;

    if-eqz v0, :cond_45

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Gy;->ADE(Ljava/lang/Object;)V

    :cond_45
    return-void

    :cond_46
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :catchall_4c
    move-exception v1

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Av;->A05:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Av;->A07()V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A07:Z

    if-eqz v0, :cond_5f

    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Av;->A07:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A0C:Lcom/facebook/ads/redexgen/X/Gy;

    if-eqz v0, :cond_5f

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Gy;->ADE(Ljava/lang/Object;)V

    :cond_5f
    throw v1
.end method

.method public final read([BII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Gm;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Av;->A08()V

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Av;->A00([BII)I

    move-result v0

    return v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_8

    :catch_8
    move-exception v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Av;->A04:Lcom/facebook/ads/redexgen/X/Gg;

    const/4 v1, 0x2

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gm;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Gm;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/Gg;I)V

    throw v0
.end method
