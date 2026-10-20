###### Class com.facebook.ads.redexgen.X.C07232w (com.facebook.ads.redexgen.X.2w)
.class public final Lcom/facebook/ads/redexgen/X/2w;
.super Lcom/facebook/ads/redexgen/X/BP;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Fr;,
        Lcom/facebook/ads/redexgen/X/Fs;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Lcom/facebook/ads/redexgen/X/Fr;

.field public static final A04:Lcom/facebook/ads/redexgen/X/Fs;

.field public static final A05:Ljava/util/regex/Pattern;

.field public static final A06:Ljava/util/regex/Pattern;

.field public static final A07:Ljava/util/regex/Pattern;

.field public static final A08:Ljava/util/regex/Pattern;

.field public static final A09:Ljava/util/regex/Pattern;


# instance fields
.field public final A00:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ff17"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Epnx6L2Qdick8ldRQp4l7BnlSI8QmptE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ljG9OFjVBzBRhwuqGOYC4vHmUbqYdsL6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TMePV7blo4smW7duQxXAKVUeIZW7rpp7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "u0S9kmkdURLs6ByjnQg69vh6km8YA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mjiuJPwHAboaZQPmxwSh"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1oI66QXJTVRsz3UkRyBrlAv9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GPRnM1PB0ZzPL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2w;->A0A()V

    const/16 v2, 0x358

    const/16 v1, 0x55

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2w;->A06:Ljava/util/regex/Pattern;

    const/16 v2, 0x333

    const/16 v1, 0x25

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2w;->A08:Ljava/util/regex/Pattern;

    const/16 v2, 0x316

    const/16 v1, 0x1d

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2w;->A07:Ljava/util/regex/Pattern;

    const/16 v2, 0x3ba

    const/16 v1, 0x1d

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2w;->A09:Ljava/util/regex/Pattern;

    const/16 v2, 0x3ad

    const/16 v1, 0xd

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2w;->A05:Ljava/util/regex/Pattern;

    const/high16 v2, 0x41f00000    # 30.0f

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fs;

    invoke-direct {v0, v2, v1, v1}, Lcom/facebook/ads/redexgen/X/Fs;-><init>(FII)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2w;->A04:Lcom/facebook/ads/redexgen/X/Fs;

    const/16 v2, 0x20

    const/16 v1, 0xf

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fr;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Fr;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2w;->A03:Lcom/facebook/ads/redexgen/X/Fr;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/16 v2, 0x2cd

    const/16 v1, 0xb

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BP;-><init>(Ljava/lang/String;)V

    :try_start_d
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/2w;->A00:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    return-void
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_18} :catch_18

    :catch_18
    move-exception v3

    const/4 v2, 0x5

    const/16 v1, 0x2d

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A00(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Fs;)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FX;
        }
    .end annotation

    sget-object v0, Lcom/facebook/ads/redexgen/X/2w;->A06:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v9, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_72

    invoke-virtual {v8, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v3, 0xe10

    mul-long/2addr v0, v3

    long-to-double v4, v0

    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v0, 0x3c

    mul-long/2addr v2, v0

    long-to-double v0, v2

    add-double/2addr v4, v0

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v0, v2

    add-double/2addr v4, v0

    invoke-virtual {v8, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_70

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_40
    add-double/2addr v4, v0

    invoke-virtual {v8, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6e

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v1, v6

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fs;->A00:F

    div-float/2addr v1, v0

    float-to-double v0, v1

    :goto_50
    add-double/2addr v4, v0

    const/4 v0, 0x6

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_65

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v2, v0

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fs;->A01:I

    int-to-double v0, v0

    div-double/2addr v2, v0

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fs;->A00:F

    float-to-double v0, v0

    div-double/2addr v2, v0

    :cond_65
    add-double/2addr v4, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v4

    double-to-long v0, v2

    return-wide v0

    :cond_6e
    move-wide v0, v2

    goto :goto_50

    :cond_70
    move-wide v0, v2

    goto :goto_40

    :cond_72
    sget-object v0, Lcom/facebook/ads/redexgen/X/2w;->A08:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_145

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_166

    :cond_91
    const/4 v6, -0x1

    :goto_92
    packed-switch v6, :pswitch_data_180

    :goto_95
    :pswitch_95
    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v4

    double-to-long v0, v2

    return-wide v0

    :pswitch_9d
    const-wide v0, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v4, v0

    goto :goto_95

    :pswitch_a4
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    mul-double/2addr v4, v0

    goto :goto_95

    :pswitch_a8
    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v0

    goto :goto_95

    :pswitch_af
    iget v3, p1, Lcom/facebook/ads/redexgen/X/Fs;->A00:F

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_13f

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v1, "C7awbwnIxZw0XVbEiadu7f1EszJQk"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "UUwzzqvY4tAULpj2ZCY7OXZa"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    float-to-double v0, v3

    div-double/2addr v4, v0

    goto :goto_95

    :pswitch_d3
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fs;->A02:I

    int-to-double v0, v0

    div-double/2addr v4, v0

    goto :goto_95

    :sswitch_d8
    const/16 v2, 0x430

    const/4 v1, 0x1

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    const/4 v6, 0x4

    goto :goto_92

    :sswitch_e9
    const/16 v2, 0x49a

    const/4 v1, 0x1

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    const/4 v6, 0x0

    goto :goto_92

    :sswitch_fa
    const/16 v2, 0x4df

    const/4 v1, 0x1

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    const/4 v6, 0x1

    goto :goto_92

    :sswitch_10b
    const/16 v2, 0x516

    const/4 v1, 0x1

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    const/4 v6, 0x2

    goto/16 :goto_92

    :sswitch_11d
    const/16 v2, 0x55e

    const/4 v1, 0x1

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    goto/16 :goto_92

    :sswitch_12d
    const/16 v2, 0x4e8

    const/4 v1, 0x2

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    const/4 v6, 0x3

    goto/16 :goto_92

    :cond_13f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22c

    const/16 v1, 0x1b

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/FX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/FX;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_166
    .sparse-switch
        0x66 -> :sswitch_d8
        0x68 -> :sswitch_e9
        0x6d -> :sswitch_fa
        0x73 -> :sswitch_10b
        0x74 -> :sswitch_11d
        0xda6 -> :sswitch_12d
    .end sparse-switch

    :pswitch_data_180
    .packed-switch 0x0
        :pswitch_9d
        :pswitch_a4
        :pswitch_95
        :pswitch_a8
        :pswitch_af
        :pswitch_d3
    .end packed-switch
.end method

.method private A01(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/Fr;)Lcom/facebook/ads/redexgen/X/Fr;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FX;
        }
    .end annotation

    const/16 v2, 0x49f

    const/16 v1, 0x23

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x3fa

    const/16 v1, 0xe

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1b

    return-object p2

    :cond_1b
    sget-object v0, Lcom/facebook/ads/redexgen/X/2w;->A05:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const/16 v2, 0x8e

    const/16 v1, 0x24

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x2cd

    const/16 v1, 0xb

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_50

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_50
    const/4 v0, 0x1

    :try_start_51
    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-eqz v8, :cond_6c

    if-eqz v7, :cond_6c

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fr;

    invoke-direct {v0, v8, v7}, Lcom/facebook/ads/redexgen/X/Fr;-><init>(II)V

    return-object v0

    :cond_6c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1ae

    const/16 v1, 0x18

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/FX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/FX;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9d
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_9d} :catch_9d

    :catch_9d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private A02(Lorg/xmlpull/v1/XmlPullParser;)Lcom/facebook/ads/redexgen/X/Fs;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FX;
        }
    .end annotation

    const/16 v6, 0x1e

    const/16 v2, 0x456

    const/16 v1, 0x9

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x49f

    const/16 v1, 0x23

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_20
    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v2, 0x45f

    const/16 v1, 0x13

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_53

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0l(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_89

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v5, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v5, v0

    :cond_53
    sget-object v3, Lcom/facebook/ads/redexgen/X/2w;->A04:Lcom/facebook/ads/redexgen/X/Fs;

    iget v4, v3, Lcom/facebook/ads/redexgen/X/Fs;->A01:I

    const/16 v2, 0x552

    const/16 v1, 0xc

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6b

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_6b
    iget v3, v3, Lcom/facebook/ads/redexgen/X/Fs;->A02:I

    const/16 v2, 0x576

    const/16 v1, 0x8

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_81

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_81
    int-to-float v1, v6

    mul-float/2addr v1, v5

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fs;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/Fs;-><init>(FII)V

    return-object v0

    :cond_89
    const/16 v2, 0x472

    const/16 v1, 0x28

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/FX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/FX;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A03(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/Ft;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Fs;)Lcom/facebook/ads/redexgen/X/Ft;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/facebook/ads/redexgen/X/Ft;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Fu;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Fs;",
            ")",
            "Lcom/facebook/ads/redexgen/X/Ft;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FX;
        }
    .end annotation

    move-object/from16 v12, p0

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x3a

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v22

    const/16 v21, 0x0

    move-object/from16 v11, p1

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    const/4 v2, 0x0

    invoke-direct {v12, v11, v2}, Lcom/facebook/ads/redexgen/X/2w;->A06(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object v20

    const/4 v9, 0x0

    :goto_27
    if-ge v9, v10, :cond_fe

    invoke-interface {v11, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_13c

    :cond_38
    const/4 v2, -0x1

    :goto_39
    move-object/from16 v3, p4

    packed-switch v2, :pswitch_data_152

    :cond_3e
    :goto_3e
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v12, p0

    goto :goto_27

    :pswitch_43
    invoke-static {v7, v3}, Lcom/facebook/ads/redexgen/X/2w;->A00(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Fs;)J

    move-result-wide v16

    goto :goto_3e

    :pswitch_48
    invoke-static {v7, v3}, Lcom/facebook/ads/redexgen/X/2w;->A00(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Fs;)J

    move-result-wide v0

    goto :goto_3e

    :pswitch_4d
    invoke-static {v7, v3}, Lcom/facebook/ads/redexgen/X/2w;->A00(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Fs;)J

    move-result-wide v14

    goto :goto_3e

    :pswitch_52
    invoke-direct {v12, v7}, Lcom/facebook/ads/redexgen/X/2w;->A0D(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    if-lez v2, :cond_3e

    move-object/from16 v21, v3

    goto :goto_3e

    :pswitch_5c
    move-object/from16 v2, p3

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    sget-object v4, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v3, v4, v2

    const/4 v2, 0x7

    aget-object v2, v4, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v3, v2, :cond_f8

    sget-object v4, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v3, "Eb74ghscuywKtVeWCrPT"

    const/4 v2, 0x5

    aput-object v3, v4, v2

    const-string v3, "vurVSidhOtwIg"

    const/4 v2, 0x7

    aput-object v3, v4, v2

    if-eqz v5, :cond_3e

    move-object/from16 v22, v7

    goto :goto_3e

    :sswitch_85
    const/16 v6, 0x50b

    const/4 v5, 0x6

    const/16 v4, 0x58

    sget-object v3, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v3, v3, v2

    const/4 v2, 0x7

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x78

    if-eq v3, v2, :cond_f8

    sget-object v13, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v3, "jtebo7lmLiOwGkcoeI6I"

    const/4 v2, 0x5

    aput-object v3, v13, v2

    const-string v3, "LXAFSQOg38u3m"

    const/4 v2, 0x7

    aput-object v3, v13, v2

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const/4 v2, 0x4

    goto :goto_39

    :sswitch_b0
    const/16 v4, 0x422

    const/4 v3, 0x3

    const/16 v2, 0x63

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const/4 v2, 0x2

    goto/16 :goto_39

    :sswitch_c2
    const/16 v4, 0x427

    const/4 v3, 0x3

    const/16 v2, 0x4c

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const/4 v2, 0x1

    goto/16 :goto_39

    :sswitch_d4
    const/16 v4, 0x3eb

    const/4 v3, 0x5

    const/16 v2, 0x75

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const/4 v2, 0x0

    goto/16 :goto_39

    :sswitch_e6
    const/16 v4, 0x546

    const/4 v3, 0x5

    const/16 v2, 0x12

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const/4 v2, 0x3

    goto/16 :goto_39

    :cond_f8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_fe
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v4, p2

    if-eqz v4, :cond_11c

    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/Ft;->A02:J

    cmp-long v5, v2, v6

    if-eqz v5, :cond_11c

    cmp-long v2, v16, v6

    if-eqz v2, :cond_115

    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/Ft;->A02:J

    add-long v16, v16, v2

    :cond_115
    cmp-long v2, v0, v6

    if-eqz v2, :cond_11c

    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/Ft;->A02:J

    add-long/2addr v0, v2

    :cond_11c
    cmp-long v2, v0, v6

    if-nez v2, :cond_126

    cmp-long v2, v14, v6

    if-eqz v2, :cond_131

    add-long v0, v16, v14

    :cond_126
    :goto_126
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v18, v0

    invoke-static/range {v15 .. v22}, Lcom/facebook/ads/redexgen/X/Ft;->A05(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/Fz;[Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ft;

    move-result-object v0

    return-object v0

    :cond_131
    if-eqz v4, :cond_126

    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/Ft;->A01:J

    cmp-long v5, v2, v6

    if-eqz v5, :cond_126

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/Ft;->A01:J

    goto :goto_126

    :sswitch_data_13c
    .sparse-switch
        -0x37b7d90c -> :sswitch_85
        0x18601 -> :sswitch_b0
        0x188db -> :sswitch_c2
        0x59478a9 -> :sswitch_d4
        0x68b1db1 -> :sswitch_e6
    .end sparse-switch

    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_43
        :pswitch_48
        :pswitch_4d
        :pswitch_52
        :pswitch_5c
    .end packed-switch
.end method

.method private A04(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/Fr;)Lcom/facebook/ads/redexgen/X/Fu;
    .registers 22

    const/16 v2, 0x4c2

    const/4 v1, 0x2

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, p1

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/Hy;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    if-nez v11, :cond_13

    return-object v10

    :cond_13
    const/16 v2, 0x502

    const/4 v1, 0x6

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/Hy;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x2cd

    const/16 v1, 0xb

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1ab

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v1, "BVX9IxOC0W1HmSeSxl1M"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "L9bqvqqPb1db8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v5, :cond_19d

    sget-object v9, Lcom/facebook/ads/redexgen/X/2w;->A09:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_17e

    const/4 v4, 0x1

    :try_start_57
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v12, v8

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_6b} :catch_15f

    div-float/2addr v13, v8

    const/16 v7, 0x42a

    const/4 v1, 0x6

    const/16 v0, 0x6b

    invoke-static {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/Hy;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_151

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_132

    :try_start_85
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    div-float v16, v16, v8

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5
    :try_end_97
    .catch Ljava/lang/NumberFormatException; {:try_start_85 .. :try_end_97} :catch_113

    div-float/2addr v5, v8

    const/4 v15, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1ab

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v1, "RdzjINTKuygb2XRVfMf348I8lMwh8"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "OTpcuYV4nCRIsN2XcdJQrDrj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v2, 0x413

    const/16 v1, 0xc

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/Hy;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d7

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1b2

    :cond_d3
    const/4 v4, -0x1

    :goto_d4
    packed-switch v4, :pswitch_data_1bc

    :cond_d7
    :goto_d7
    move-object/from16 v0, p2

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Fr;->A01:I

    int-to-float v0, v0

    const/high16 v18, 0x3f800000    # 1.0f

    div-float v18, v18, v0

    new-instance v10, Lcom/facebook/ads/redexgen/X/Fu;

    const/4 v14, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v10 .. v18}, Lcom/facebook/ads/redexgen/X/Fu;-><init>(Ljava/lang/String;FFIIFIF)V

    return-object v10

    :pswitch_e9
    const/4 v15, 0x1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v5, v0

    add-float/2addr v13, v5

    goto :goto_d7

    :pswitch_ef
    const/4 v15, 0x2

    add-float/2addr v13, v5

    goto :goto_d7

    :sswitch_f2
    const/16 v2, 0x408

    const/4 v1, 0x6

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    const/4 v4, 0x0

    goto :goto_d4

    :sswitch_103
    const/16 v2, 0x3d7

    const/4 v1, 0x5

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    goto :goto_d4

    :catch_113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb2

    const/16 v1, 0x27

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x100

    const/16 v1, 0x29

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_151
    const/16 v2, 0x152

    const/16 v1, 0x21

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :catch_15f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd9

    const/16 v1, 0x27

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_17e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x129

    const/16 v1, 0x29

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_19d
    const/16 v2, 0x173

    const/16 v1, 0x21

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_1ab
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :sswitch_data_1b2
    .sparse-switch
        -0x514d33ab -> :sswitch_f2
        0x58705dc -> :sswitch_103
    .end sparse-switch

    :pswitch_data_1bc
    .packed-switch 0x0
        :pswitch_e9
        :pswitch_ef
    .end packed-switch
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;
    .registers 2

    if-nez p1, :cond_7

    new-instance p1, Lcom/facebook/ads/redexgen/X/Fz;

    invoke-direct {p1}, Lcom/facebook/ads/redexgen/X/Fz;-><init>()V

    :cond_7
    return-object p1
.end method

.method private A06(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;
    .registers 16

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v7, :cond_3b2

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_3b4

    :cond_1a
    const/4 v10, -0x1

    :goto_1b
    const/16 v9, 0x2cd

    const/16 v8, 0xb

    sget-object v1, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_3ac

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v1, "6RPCn5PPZXNOVK1K"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/16 v0, 0x14

    invoke-static {v9, v8, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v8

    packed-switch v10, :pswitch_data_3da

    :cond_3c
    :goto_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :pswitch_3f
    :try_start_3f
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/2w;->A05(Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/facebook/ads/redexgen/X/2w;->A0B(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Fz;)V

    goto :goto_3c
    :try_end_47
    .catch Lcom/facebook/ads/redexgen/X/FX; {:try_start_3f .. :try_end_47} :catch_47

    :catch_47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6f

    const/16 v1, 0x1f

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :pswitch_66
    const/16 v2, 0x546

    const/4 v1, 0x5

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/2w;->A05(Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Fz;->A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object p2

    goto :goto_3c

    :pswitch_82
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/2w;->A05(Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object p2

    :try_start_86
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/HN;->A03(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A0A(I)Lcom/facebook/ads/redexgen/X/Fz;

    goto :goto_3c
    :try_end_8e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_86 .. :try_end_8e} :catch_8e

    :catch_8e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x32

    const/16 v1, 0x21

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :pswitch_ad
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/2w;->A05(Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object p2

    :try_start_b1
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/HN;->A03(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A0B(I)Lcom/facebook/ads/redexgen/X/Fz;

    goto :goto_3c
    :try_end_b9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b1 .. :try_end_b9} :catch_b9

    :catch_b9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x53

    const/16 v1, 0x1c

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    :pswitch_d9
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/2w;->A05(Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_3a6

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v1, "H8hLhiq5d54a1qBuq5UsZG3FOC57WeTu"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "rkHrDxFmjDVxlAmyY15NKmfVeVuakzFj"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, v5}, Lcom/facebook/ads/redexgen/X/Fz;->A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object p2

    goto/16 :goto_3c

    :pswitch_fd
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/2w;->A05(Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object v3

    const/16 v2, 0x3f4

    const/4 v1, 0x4

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A0H(Z)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object p2

    goto/16 :goto_3c

    :pswitch_114
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/2w;->A05(Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object v3

    const/16 v2, 0x4c4

    const/4 v1, 0x6

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A0I(Z)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object p2

    goto/16 :goto_3c

    :pswitch_12b
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Hx;->A0M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_3f0

    :cond_136
    const/4 v12, -0x1

    :goto_137
    packed-switch v12, :pswitch_data_406

    goto/16 :goto_3c

    :sswitch_13c
    const/16 v5, 0x408

    const/4 v4, 0x6

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_165

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v1, "8IkO1gtPquOIMMTI4o0zmbBu59F0heCH"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/16 v0, 0x1a

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    goto :goto_137

    :cond_165
    const/16 v0, 0x1a

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    goto :goto_137

    :sswitch_172
    const/16 v2, 0x427

    const/4 v1, 0x3

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    const/4 v12, 0x3

    goto :goto_137

    :sswitch_183
    const/16 v2, 0x4d0

    const/4 v1, 0x4

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    const/4 v12, 0x0

    goto :goto_137

    :sswitch_194
    const/16 v2, 0x511

    const/4 v1, 0x5

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    const/4 v12, 0x2

    goto :goto_137

    :sswitch_1a5
    const/16 v2, 0x541

    const/4 v1, 0x5

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    const/4 v12, 0x1

    goto :goto_137

    :pswitch_1b6
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/2w;->A05(Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object v1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A0D(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object p2

    goto/16 :goto_3c

    :pswitch_1c2
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/2w;->A05(Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3ac

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v1, "IVKgZ6okjNrbAau3W10R"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "16YLUHvqIySRh"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A0D(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object p2

    goto/16 :goto_3c

    :pswitch_1ec
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/2w;->A05(Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object v1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A0D(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object p2

    goto/16 :goto_3c

    :pswitch_1f8
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/2w;->A05(Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object v1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A0D(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object p2

    goto/16 :goto_3c

    :pswitch_204
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/2w;->A05(Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object v1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A0D(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object p2

    goto/16 :goto_3c

    :pswitch_210
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Hx;->A0M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_414

    :cond_21b
    const/4 v11, -0x1

    :goto_21c
    packed-switch v11, :pswitch_data_426

    goto/16 :goto_3c

    :sswitch_221
    const/16 v2, 0x4f7

    const/16 v1, 0xb

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21b

    const/4 v11, 0x3

    goto :goto_21c

    :sswitch_233
    const/16 v2, 0x580

    const/16 v1, 0x9

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21b

    goto :goto_21c

    :sswitch_244
    const/16 v10, 0x4ea

    const/16 v9, 0xd

    const/16 v8, 0x17

    sget-object v1, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_270

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v1, "R2KyHN0FOwK5MnUo7YbTUMpQ5PoRi"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "VsEANZg47j2qMqZ7rRVzz7mw"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v10, v9, v8}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21b

    :goto_26e
    const/4 v11, 0x1

    goto :goto_21c

    :cond_270
    invoke-static {v10, v9, v8}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21b

    goto :goto_26e

    :sswitch_27b
    const/16 v2, 0x4d4

    const/16 v1, 0xb

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21b

    const/4 v11, 0x0

    goto :goto_21c

    :pswitch_28d
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/2w;->A05(Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Fz;->A0J(Z)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object p2

    goto/16 :goto_3c

    :pswitch_297
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/2w;->A05(Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Fz;->A0J(Z)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object p2

    goto/16 :goto_3c

    :pswitch_2a1
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/2w;->A05(Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Fz;->A0K(Z)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object p2

    goto/16 :goto_3c

    :pswitch_2ab
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/2w;->A05(Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Fz;->A0K(Z)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object p2

    goto/16 :goto_3c

    :sswitch_2b5
    const/16 v2, 0x443

    const/16 v1, 0x9

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_3ac

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v1, "QxuUNrowWOj1nrz0sXV08JFi2hQMydEb"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "AZnGdWrcIt83BDgiFAV9TosnkrcA9Afh"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v10, 0x6

    goto/16 :goto_1b

    :sswitch_2e2
    const/16 v9, 0x431

    const/16 v2, 0xa

    sget-object v1, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_309

    sget-object v10, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v1, "eSj"

    const/4 v0, 0x0

    aput-object v1, v10, v0

    const/16 v0, 0x52

    invoke-static {v9, v2, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :goto_306
    const/4 v10, 0x3

    goto/16 :goto_1b

    :cond_309
    sget-object v10, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v1, "qjJBWaQLGTYykdeaQVpdDbXd6or87"

    const/4 v0, 0x4

    aput-object v1, v10, v0

    const-string v1, "pJb2qQFYJcmpINAVkV969GMx"

    const/4 v0, 0x6

    aput-object v1, v10, v0

    const/16 v0, 0x2a

    invoke-static {v9, v2, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_306

    :sswitch_322
    const/16 v2, 0x55f

    const/16 v1, 0x9

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v10, 0x7

    goto/16 :goto_1b

    :sswitch_335
    const/16 v2, 0x568

    const/16 v1, 0xe

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v10, 0x8

    goto/16 :goto_1b

    :sswitch_349
    const/16 v2, 0x44c

    const/16 v1, 0xa

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v10, 0x5

    goto/16 :goto_1b

    :sswitch_35c
    const/16 v2, 0x4c2

    const/4 v1, 0x2

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v10, 0x0

    goto/16 :goto_1b

    :sswitch_36e
    const/16 v2, 0x40e

    const/4 v1, 0x5

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v10, 0x2

    goto/16 :goto_1b

    :sswitch_380
    const/16 v2, 0x43b

    const/16 v1, 0x8

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v10, 0x4

    goto/16 :goto_1b

    :sswitch_393
    const/16 v2, 0x3dc

    const/16 v1, 0xf

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v10, 0x1

    goto/16 :goto_1b

    :cond_3a6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3ac
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3b2
    return-object p2

    nop

    :sswitch_data_3b4
    .sparse-switch
        -0x5c71855e -> :sswitch_2b5
        -0x48ff636d -> :sswitch_2e2
        -0x3f826a28 -> :sswitch_322
        -0x3468fa43 -> :sswitch_335
        -0x2bc67c59 -> :sswitch_349
        0xd1b -> :sswitch_35c
        0x5a72f63 -> :sswitch_36e
        0x15caa0f0 -> :sswitch_380
        0x4cb7f6d5 -> :sswitch_393
    .end sparse-switch

    :pswitch_data_3da
    .packed-switch 0x0
        :pswitch_66
        :pswitch_82
        :pswitch_ad
        :pswitch_d9
        :pswitch_3f
        :pswitch_fd
        :pswitch_114
        :pswitch_12b
        :pswitch_210
    .end packed-switch

    :sswitch_data_3f0
    .sparse-switch
        -0x514d33ab -> :sswitch_13c
        0x188db -> :sswitch_172
        0x32a007 -> :sswitch_183
        0x677c21c -> :sswitch_194
        0x68ac462 -> :sswitch_1a5
    .end sparse-switch

    :pswitch_data_406
    .packed-switch 0x0
        :pswitch_1b6
        :pswitch_1c2
        :pswitch_1ec
        :pswitch_1f8
        :pswitch_204
    .end packed-switch

    :sswitch_data_414
    .sparse-switch
        -0x57195dd5 -> :sswitch_221
        -0x3d363934 -> :sswitch_233
        0x36723ff0 -> :sswitch_244
        0x641ec051 -> :sswitch_27b
    .end sparse-switch

    :pswitch_data_426
    .packed-switch 0x0
        :pswitch_28d
        :pswitch_297
        :pswitch_2a1
        :pswitch_2ab
    .end packed-switch
.end method

.method private final A07([BIZ)Lcom/facebook/ads/redexgen/X/VU;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FX;
        }
    .end annotation

    move-object/from16 v9, p0

    :try_start_2
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/2w;->A00:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fu;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Fu;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0
    :try_end_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_24} :catch_197
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_24} :catch_184

    :try_start_24
    new-instance v0, Ljava/io/ByteArrayInputStream;

    move-object/from16 v4, p1

    move/from16 v3, p2

    invoke-direct {v0, v4, v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-interface {v8, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v5, 0x0

    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    const/4 v15, 0x0

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    sget-object v3, Lcom/facebook/ads/redexgen/X/2w;->A04:Lcom/facebook/ads/redexgen/X/Fs;

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A03:Lcom/facebook/ads/redexgen/X/Fr;
    :try_end_3f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_24 .. :try_end_3f} :catch_199
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3f} :catch_186

    sget-object v1, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_17e

    sget-object v10, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v1, "Ton6pta07Fc5fwLRetsjRgmhhTZnbfi2"

    const/4 v0, 0x2

    aput-object v1, v10, v0

    :goto_53
    const/4 v0, 0x1

    if-eq v12, v0, :cond_17d

    :try_start_56
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/ads/redexgen/X/Ft;
    :try_end_5c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_56 .. :try_end_5c} :catch_199
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5c} :catch_186

    const/4 v14, 0x2

    sget-object v11, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v11, v0

    const/4 v0, 0x7

    aget-object v0, v11, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_177

    sget-object v11, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v1, "ndGR1PBeuf2R1G0tg1U3"

    const/4 v0, 0x5

    aput-object v1, v11, v0

    const-string v1, "UjY46IM5njUbD"

    const/4 v0, 0x7

    aput-object v1, v11, v0

    if-nez v15, :cond_152

    :try_start_7d
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13
    :try_end_81
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7d .. :try_end_81} :catch_199
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_81} :catch_186

    const/16 v11, 0x57e

    const/4 v1, 0x2

    const/16 v0, 0xe

    invoke-static {v11, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v11

    if-ne v12, v14, :cond_104

    :try_start_8c
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-direct {v9, v8}, Lcom/facebook/ads/redexgen/X/2w;->A02(Lorg/xmlpull/v1/XmlPullParser;)Lcom/facebook/ads/redexgen/X/Fs;

    move-result-object v3

    sget-object v0, Lcom/facebook/ads/redexgen/X/2w;->A03:Lcom/facebook/ads/redexgen/X/Fr;

    invoke-direct {v9, v8, v0}, Lcom/facebook/ads/redexgen/X/2w;->A01(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/Fr;)Lcom/facebook/ads/redexgen/X/Fr;

    move-result-object v2

    :cond_9c
    invoke-static {v13}, Lcom/facebook/ads/redexgen/X/2w;->A0C(Ljava/lang/String;)Z

    move-result v14
    :try_end_a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8c .. :try_end_a0} :catch_199
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_a0} :catch_186

    const/16 v11, 0x2cd

    const/16 v1, 0xb

    const/16 v0, 0x14

    invoke-static {v11, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v12

    if-nez v14, :cond_d2

    :try_start_ac
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x194

    const/16 v1, 0x1a

    const/16 v0, 0x6c

    invoke-static {v10, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_168

    :cond_d2
    const/16 v11, 0x49b

    const/4 v1, 0x4

    const/16 v0, 0x12

    invoke-static {v11, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    invoke-direct {v9, v8, v7, v6, v2}, Lcom/facebook/ads/redexgen/X/2w;->A09(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Fr;)Ljava/util/Map;

    goto/16 :goto_168
    :try_end_e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ac .. :try_end_e6} :catch_199
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_e6} :catch_186

    :cond_e6
    :try_start_e6
    invoke-direct {v9, v8, v10, v6, v3}, Lcom/facebook/ads/redexgen/X/2w;->A03(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/Ft;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Fs;)Lcom/facebook/ads/redexgen/X/Ft;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz v10, :cond_168

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/Ft;->A0E(Lcom/facebook/ads/redexgen/X/Ft;)V

    goto :goto_168
    :try_end_f3
    .catch Lcom/facebook/ads/redexgen/X/FX; {:try_start_e6 .. :try_end_f3} :catch_f3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e6 .. :try_end_f3} :catch_199
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_f3} :catch_186

    :catch_f3
    move-exception v11

    :try_start_f4
    const/16 v10, 0x2b5

    const/16 v1, 0x18

    const/16 v0, 0x22

    invoke-static {v10, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/lit8 v15, v15, 0x1

    goto :goto_168
    :try_end_104
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f4 .. :try_end_104} :catch_199
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_104} :catch_186

    :cond_104
    const/4 v13, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_171

    sget-object v14, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v1, "zXqMjfHvGsE5GqeoOMtQ"

    const/4 v0, 0x5

    aput-object v1, v14, v0

    const-string v1, "VJJEXPfiEpIWi"

    const/4 v0, 0x7

    aput-object v1, v14, v0

    if-ne v12, v13, :cond_122

    goto :goto_15d

    :cond_122
    const/4 v13, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_17e

    sget-object v10, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v1, "PPq67hrZJbAJbQ23vsd2Ce9Kh4nkKHNO"

    const/4 v0, 0x2

    aput-object v1, v10, v0

    if-ne v12, v13, :cond_168

    :try_start_139
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14e

    new-instance v5, Lcom/facebook/ads/redexgen/X/VU;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ft;

    invoke-direct {v5, v0, v7, v6}, Lcom/facebook/ads/redexgen/X/VU;-><init>(Lcom/facebook/ads/redexgen/X/Ft;Ljava/util/Map;Ljava/util/Map;)V

    :cond_14e
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_168

    :cond_152
    if-ne v12, v14, :cond_157

    add-int/lit8 v15, v15, 0x1

    goto :goto_168

    :cond_157
    const/4 v0, 0x3

    if-ne v12, v0, :cond_168

    add-int/lit8 v15, v15, -0x1

    goto :goto_168

    :goto_15d
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ft;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ft;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/Ft;->A0E(Lcom/facebook/ads/redexgen/X/Ft;)V

    :cond_168
    :goto_168
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    goto/16 :goto_53
    :try_end_171
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_139 .. :try_end_171} :catch_199
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_171} :catch_186

    :cond_171
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_177
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_17d
    return-object v5

    :cond_17e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :catch_184
    move-exception v3

    goto :goto_187

    :catch_186
    move-exception v3

    :goto_187
    const/16 v2, 0x2ef

    const/16 v1, 0x24

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_197
    move-exception v3

    goto :goto_19a

    :catch_199
    move-exception v3

    :goto_19a
    const/16 v2, 0x2d8

    const/16 v1, 0x17

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/FX;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/FX;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A08(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/2w;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x49

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A09(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Fr;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Fz;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Fu;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Fr;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Fz;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const/16 v2, 0x546

    const/4 v1, 0x5

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/Hy;->A04(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/Hy;->A00(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fz;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Fz;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A06(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object v3

    if-eqz v1, :cond_52

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/2w;->A0D(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v2, v4

    const/4 v1, 0x0

    :goto_27
    if-ge v1, v2, :cond_52

    aget-object v0, v4, v1

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fz;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A0E(Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_37
    const/16 v2, 0x50b

    const/4 v1, 0x6

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Hy;->A04(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-direct {p0, p1, p4}, Lcom/facebook/ads/redexgen/X/2w;->A04(Lorg/xmlpull/v1/XmlPullParser;Lcom/facebook/ads/redexgen/X/Fr;)Lcom/facebook/ads/redexgen/X/Fu;

    move-result-object v1

    if-eqz v1, :cond_78

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Fu;->A07:Ljava/lang/String;

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    :cond_52
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Fz;->A0M()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_88

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v1, "X"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_78

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Fz;->A0M()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_78
    :goto_78
    const/16 v2, 0x49b

    const/4 v1, 0x4

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Hy;->A03(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_88
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0A()V
    .registers 1

    const/16 v0, 0x589

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/2w;->A01:[B

    return-void

    :array_a
    .array-data 1
        0x11t
        0xft
        0x45t
        0x4ct
        0x9t
        0x14t
        0x38t
        0x22t
        0x3bt
        0x33t
        0x39t
        0x70t
        0x23t
        0x77t
        0x34t
        0x25t
        0x32t
        0x36t
        0x23t
        0x32t
        0x77t
        0xft
        0x3at
        0x3bt
        0x7t
        0x22t
        0x3bt
        0x3bt
        0x7t
        0x36t
        0x25t
        0x24t
        0x32t
        0x25t
        0x11t
        0x36t
        0x34t
        0x23t
        0x38t
        0x25t
        0x2et
        0x77t
        0x3et
        0x39t
        0x24t
        0x23t
        0x36t
        0x39t
        0x34t
        0x32t
        0x75t
        0x52t
        0x5at
        0x5ft
        0x56t
        0x57t
        0x13t
        0x43t
        0x52t
        0x41t
        0x40t
        0x5at
        0x5dt
        0x54t
        0x13t
        0x51t
        0x52t
        0x50t
        0x58t
        0x54t
        0x41t
        0x5ct
        0x46t
        0x5dt
        0x57t
        0x13t
        0x45t
        0x52t
        0x5ft
        0x46t
        0x56t
        0x9t
        0x13t
        0x74t
        0x53t
        0x5bt
        0x5et
        0x57t
        0x56t
        0x12t
        0x42t
        0x53t
        0x40t
        0x41t
        0x5bt
        0x5ct
        0x55t
        0x12t
        0x51t
        0x5dt
        0x5et
        0x5dt
        0x40t
        0x12t
        0x44t
        0x53t
        0x5et
        0x47t
        0x57t
        0x8t
        0x12t
        0x31t
        0x16t
        0x1et
        0x1bt
        0x12t
        0x13t
        0x57t
        0x7t
        0x16t
        0x5t
        0x4t
        0x1et
        0x19t
        0x10t
        0x57t
        0x11t
        0x18t
        0x19t
        0x3t
        0x24t
        0x1et
        0xdt
        0x12t
        0x57t
        0x1t
        0x16t
        0x1bt
        0x2t
        0x12t
        0x4dt
        0x57t
        0x73t
        0x5dt
        0x54t
        0x55t
        0x48t
        0x53t
        0x54t
        0x5dt
        0x1at
        0x57t
        0x5bt
        0x56t
        0x5ct
        0x55t
        0x48t
        0x57t
        0x5ft
        0x5et
        0x1at
        0x59t
        0x5ft
        0x56t
        0x56t
        0x1at
        0x48t
        0x5ft
        0x49t
        0x55t
        0x56t
        0x4ft
        0x4et
        0x53t
        0x55t
        0x54t
        0x0t
        0x1at
        0x5ft
        0x71t
        0x78t
        0x79t
        0x64t
        0x7ft
        0x78t
        0x71t
        0x36t
        0x64t
        0x73t
        0x71t
        0x7ft
        0x79t
        0x78t
        0x36t
        0x61t
        0x7ft
        0x62t
        0x7et
        0x36t
        0x7bt
        0x77t
        0x7at
        0x70t
        0x79t
        0x64t
        0x7bt
        0x73t
        0x72t
        0x36t
        0x73t
        0x6et
        0x62t
        0x73t
        0x78t
        0x62t
        0x2ct
        0x36t
        0x4ft
        0x61t
        0x68t
        0x69t
        0x74t
        0x6ft
        0x68t
        0x61t
        0x26t
        0x74t
        0x63t
        0x61t
        0x6ft
        0x69t
        0x68t
        0x26t
        0x71t
        0x6ft
        0x72t
        0x6et
        0x26t
        0x6bt
        0x67t
        0x6at
        0x60t
        0x69t
        0x74t
        0x6bt
        0x63t
        0x62t
        0x26t
        0x69t
        0x74t
        0x6ft
        0x61t
        0x6ft
        0x68t
        0x3ct
        0x26t
        0x35t
        0x1bt
        0x12t
        0x13t
        0xet
        0x15t
        0x12t
        0x1bt
        0x5ct
        0xet
        0x19t
        0x1bt
        0x15t
        0x13t
        0x12t
        0x5ct
        0xbt
        0x15t
        0x8t
        0x14t
        0x5ct
        0x9t
        0x12t
        0xft
        0x9t
        0xct
        0xct
        0x13t
        0xet
        0x8t
        0x19t
        0x18t
        0x5ct
        0x19t
        0x4t
        0x8t
        0x19t
        0x12t
        0x8t
        0x46t
        0x5ct
        0x4dt
        0x63t
        0x6at
        0x6bt
        0x76t
        0x6dt
        0x6at
        0x63t
        0x24t
        0x76t
        0x61t
        0x63t
        0x6dt
        0x6bt
        0x6at
        0x24t
        0x73t
        0x6dt
        0x70t
        0x6ct
        0x24t
        0x71t
        0x6at
        0x77t
        0x71t
        0x74t
        0x74t
        0x6bt
        0x76t
        0x70t
        0x61t
        0x60t
        0x24t
        0x6bt
        0x76t
        0x6dt
        0x63t
        0x6dt
        0x6at
        0x3et
        0x24t
        0x32t
        0x1ct
        0x15t
        0x14t
        0x9t
        0x12t
        0x15t
        0x1ct
        0x5bt
        0x9t
        0x1et
        0x1ct
        0x12t
        0x14t
        0x15t
        0x5bt
        0xct
        0x12t
        0xft
        0x13t
        0x14t
        0xet
        0xft
        0x5bt
        0x1at
        0x15t
        0x5bt
        0x1et
        0x3t
        0xft
        0x1et
        0x15t
        0xft
        0x4ct
        0x62t
        0x6bt
        0x6at
        0x77t
        0x6ct
        0x6bt
        0x62t
        0x25t
        0x77t
        0x60t
        0x62t
        0x6ct
        0x6at
        0x6bt
        0x25t
        0x72t
        0x6ct
        0x71t
        0x6dt
        0x6at
        0x70t
        0x71t
        0x25t
        0x64t
        0x6bt
        0x25t
        0x6at
        0x77t
        0x6ct
        0x62t
        0x6ct
        0x6bt
        0x6ct
        0x42t
        0x4bt
        0x4at
        0x57t
        0x4ct
        0x4bt
        0x42t
        0x5t
        0x50t
        0x4bt
        0x56t
        0x50t
        0x55t
        0x55t
        0x4at
        0x57t
        0x51t
        0x40t
        0x41t
        0x5t
        0x51t
        0x44t
        0x42t
        0x1ft
        0x5t
        0x18t
        0x3ft
        0x27t
        0x30t
        0x3dt
        0x38t
        0x35t
        0x71t
        0x32t
        0x34t
        0x3dt
        0x3dt
        0x71t
        0x23t
        0x34t
        0x22t
        0x3et
        0x3dt
        0x24t
        0x25t
        0x38t
        0x3et
        0x3ft
        0x71t
        0x4ft
        0x68t
        0x70t
        0x67t
        0x6at
        0x6ft
        0x62t
        0x26t
        0x63t
        0x7et
        0x76t
        0x74t
        0x63t
        0x75t
        0x75t
        0x6ft
        0x69t
        0x68t
        0x26t
        0x60t
        0x69t
        0x74t
        0x26t
        0x60t
        0x69t
        0x68t
        0x72t
        0x55t
        0x6ft
        0x7ct
        0x63t
        0x3ct
        0x26t
        0x21t
        0x35t
        0x12t
        0xat
        0x1dt
        0x10t
        0x15t
        0x18t
        0x5ct
        0x12t
        0x9t
        0x11t
        0x1et
        0x19t
        0xet
        0x5ct
        0x13t
        0x1at
        0x5ct
        0x19t
        0x12t
        0x8t
        0xet
        0x15t
        0x19t
        0xft
        0x5ct
        0x1at
        0x13t
        0xet
        0x5ct
        0x1at
        0x13t
        0x12t
        0x8t
        0x2ft
        0x15t
        0x6t
        0x19t
        0x46t
        0x5ct
        0x61t
        0x46t
        0x5et
        0x49t
        0x44t
        0x41t
        0x4ct
        0x8t
        0x5dt
        0x46t
        0x41t
        0x5ct
        0x8t
        0x4et
        0x47t
        0x5at
        0x8t
        0x4et
        0x47t
        0x46t
        0x5ct
        0x7bt
        0x41t
        0x52t
        0x4dt
        0x12t
        0x8t
        0xft
        0x65t
        0x49t
        0x44t
        0x4et
        0x47t
        0x5at
        0x45t
        0x4dt
        0x4ct
        0x8t
        0x5ct
        0x41t
        0x45t
        0x4dt
        0x8t
        0x4dt
        0x50t
        0x58t
        0x5at
        0x4dt
        0x5bt
        0x5bt
        0x41t
        0x47t
        0x46t
        0x12t
        0x8t
        0x5at
        0x62t
        0x7bt
        0x63t
        0x7et
        0x67t
        0x7bt
        0x72t
        0x37t
        0x61t
        0x76t
        0x7bt
        0x62t
        0x72t
        0x64t
        0x37t
        0x7et
        0x79t
        0x37t
        0x71t
        0x78t
        0x79t
        0x63t
        0x44t
        0x7et
        0x6dt
        0x72t
        0x37t
        0x76t
        0x63t
        0x63t
        0x65t
        0x7et
        0x75t
        0x62t
        0x63t
        0x72t
        0x39t
        0x37t
        0x47t
        0x7et
        0x74t
        0x7ct
        0x7et
        0x79t
        0x70t
        0x37t
        0x63t
        0x7ft
        0x72t
        0x37t
        0x64t
        0x72t
        0x74t
        0x78t
        0x79t
        0x73t
        0x37t
        0x61t
        0x76t
        0x7bt
        0x62t
        0x72t
        0x37t
        0x71t
        0x78t
        0x65t
        0x37t
        0x61t
        0x72t
        0x65t
        0x63t
        0x7et
        0x74t
        0x76t
        0x7bt
        0x37t
        0x71t
        0x78t
        0x79t
        0x63t
        0x37t
        0x64t
        0x7et
        0x6dt
        0x72t
        0x37t
        0x76t
        0x79t
        0x73t
        0x37t
        0x7et
        0x70t
        0x79t
        0x78t
        0x65t
        0x7et
        0x79t
        0x70t
        0x37t
        0x63t
        0x7ft
        0x72t
        0x37t
        0x71t
        0x7et
        0x65t
        0x64t
        0x63t
        0x39t
        0x38t
        0x1et
        0x1bt
        0x1bt
        0x19t
        0xet
        0x18t
        0x18t
        0x2t
        0x5t
        0xct
        0x4bt
        0x1bt
        0xat
        0x19t
        0x18t
        0xet
        0x19t
        0x4bt
        0xet
        0x19t
        0x19t
        0x4t
        0x19t
        0x9t
        0x29t
        0x30t
        0x31t
        0x19t
        0x38t
        0x3et
        0x32t
        0x39t
        0x38t
        0x2ft
        0x2et
        0x15t
        0x1at
        0x19t
        0x17t
        0x1et
        0x5bt
        0xft
        0x14t
        0x5bt
        0x1ft
        0x1et
        0x18t
        0x14t
        0x1ft
        0x1et
        0x5bt
        0x8t
        0x14t
        0xet
        0x9t
        0x18t
        0x1et
        0x3ct
        0x7t
        0xct
        0x11t
        0x19t
        0xct
        0xat
        0x1dt
        0xct
        0xdt
        0x49t
        0xct
        0x1bt
        0x1bt
        0x6t
        0x1bt
        0x49t
        0x1et
        0x1t
        0xct
        0x7t
        0x49t
        0x1bt
        0xct
        0x8t
        0xdt
        0x0t
        0x7t
        0xet
        0x49t
        0x0t
        0x7t
        0x19t
        0x1ct
        0x1dt
        0x47t
        0x48t
        0x67t
        0x3ft
        0x7t
        0x71t
        0x71t
        0x2t
        0x69t
        0x74t
        0x60t
        0x4t
        0x73t
        0x77t
        0x70t
        0x66t
        0x2t
        0x69t
        0x74t
        0x60t
        0x4t
        0x72t
        0x70t
        0x71t
        0x29t
        0x21t
        0x25t
        0x3ct
        0x34t
        0x25t
        0x7ct
        0x70t
        0x7dt
        0xft
        0x79t
        0xat
        0x61t
        0x7ct
        0x68t
        0xct
        0x7at
        0x79t
        0x6et
        0x6bt
        0xdt
        0x7ft
        0xat
        0x61t
        0x7ct
        0x68t
        0xct
        0x7at
        0x78t
        0x6et
        0x78t
        0x79t
        0x39t
        0x2dt
        0x3ct
        0x2dt
        0x22t
        0x2dt
        0x3ct
        0x22t
        0x2dt
        0x37t
        0x2dt
        0x25t
        0x78t
        0x75t
        0x69t
        0x1ft
        0x6ct
        0x7t
        0x1at
        0xet
        0x6at
        0x6ct
        0x7t
        0x1at
        0xet
        0x6at
        0x1ct
        0x1et
        0xdt
        0x1ft
        0x6ct
        0x7t
        0x1at
        0xet
        0x6at
        0x6ct
        0x7t
        0x1at
        0xet
        0x6at
        0x1et
        0xdt
        0x1ft
        0x6ct
        0x7t
        0x1at
        0xet
        0x6at
        0x6ct
        0x7t
        0x1at
        0xet
        0x6at
        0x1et
        0x1ft
        0x8t
        0xdt
        0x1ft
        0x6bt
        0x19t
        0x6ct
        0x7t
        0x1at
        0xet
        0x6at
        0x1ct
        0x1et
        0x4bt
        0xdt
        0x1ft
        0x6ct
        0x7t
        0x1at
        0xet
        0x6at
        0x6ct
        0x7t
        0x1at
        0xet
        0x6at
        0x1et
        0x1ft
        0x8t
        0xdt
        0x6bt
        0x19t
        0x1ft
        0x6ct
        0x7t
        0x1at
        0xet
        0x6at
        0x1ct
        0x1et
        0x1et
        0x8t
        0x1et
        0x8t
        0x13t
        0xft
        0x79t
        0xdt
        0x35t
        0x7at
        0x78t
        0x71t
        0x79t
        0xdt
        0x35t
        0x7at
        0x78t
        0x75t
        0x2et
        0x58t
        0x2ct
        0x14t
        0x5bt
        0x2ct
        0x5et
        0x4ft
        0x2ct
        0x14t
        0x5at
        0x4ft
        0x59t
        0x55t
        0x50t
        0x58t
        0x2ct
        0x14t
        0x5bt
        0x2ct
        0x5et
        0x4ft
        0x2ct
        0x14t
        0x5at
        0x4ft
        0x59t
        0x55t
        0x54t
        0x71t
        0x76t
        0x64t
        0x75t
        0x62t
        0x53t
        0x50t
        0x52t
        0x5at
        0x56t
        0x43t
        0x5et
        0x44t
        0x5ft
        0x55t
        0x72t
        0x5et
        0x5dt
        0x5et
        0x43t
        0x5et
        0x59t
        0x5bt
        0x55t
        0x52t
        0x47t
        0x4at
        0x41t
        0x5ct
        0xat
        0x7t
        0x4t
        0xct
        0x19t
        0x9t
        0x6dt
        0x6bt
        0x62t
        0x62t
        0x5ct
        0x6bt
        0x7dt
        0x61t
        0x62t
        0x7bt
        0x7at
        0x67t
        0x61t
        0x60t
        0x30t
        0x36t
        0x3dt
        0x27t
        0x36t
        0x21t
        0x23t
        0x2ft
        0x2ct
        0x2ft
        0x32t
        0x5bt
        0x56t
        0x4ct
        0x4ft
        0x53t
        0x5et
        0x46t
        0x7et
        0x53t
        0x56t
        0x58t
        0x51t
        0xet
        0x3t
        0x1ct
        0x4et
        0x5ft
        0x58t
        0x12t
        0x1at
        0x60t
        0x6bt
        0x61t
        0x47t
        0x5at
        0x56t
        0x47t
        0x4ct
        0x56t
        0x68t
        0x7dt
        0x74t
        0x75t
        0x6ft
        0x5dt
        0x7at
        0x76t
        0x72t
        0x77t
        0x62t
        0x5ft
        0x56t
        0x57t
        0x4dt
        0x6at
        0x50t
        0x43t
        0x5ct
        0x4t
        0xdt
        0xct
        0x16t
        0x31t
        0x16t
        0x1bt
        0xet
        0x7t
        0x21t
        0x28t
        0x29t
        0x33t
        0x10t
        0x22t
        0x2et
        0x20t
        0x2ft
        0x33t
        0x6ft
        0x7bt
        0x68t
        0x64t
        0x6ct
        0x5bt
        0x68t
        0x7dt
        0x6ct
        0x5bt
        0x4ft
        0x5ct
        0x50t
        0x58t
        0x6ft
        0x5ct
        0x49t
        0x58t
        0x70t
        0x48t
        0x51t
        0x49t
        0x54t
        0x4dt
        0x51t
        0x54t
        0x58t
        0x4ft
        0x2et
        0x3at
        0x29t
        0x25t
        0x2dt
        0x1at
        0x29t
        0x3ct
        0x2dt
        0x5t
        0x3dt
        0x24t
        0x3ct
        0x21t
        0x38t
        0x24t
        0x21t
        0x2dt
        0x3at
        0x68t
        0x2ct
        0x27t
        0x2dt
        0x3bt
        0x26t
        0x6ft
        0x3ct
        0x68t
        0x20t
        0x29t
        0x3et
        0x2dt
        0x68t
        0x7at
        0x68t
        0x38t
        0x29t
        0x3at
        0x3ct
        0x3bt
        0x18t
        0x33t
        0x3et
        0x3at
        0x3ft
        0x7et
        0x62t
        0x62t
        0x66t
        0x2ct
        0x39t
        0x39t
        0x61t
        0x61t
        0x61t
        0x38t
        0x61t
        0x25t
        0x38t
        0x79t
        0x64t
        0x71t
        0x39t
        0x78t
        0x65t
        0x39t
        0x62t
        0x62t
        0x7bt
        0x7at
        0x35t
        0x66t
        0x77t
        0x64t
        0x77t
        0x7bt
        0x73t
        0x62t
        0x73t
        0x64t
        0x44t
        0x49t
        0x7ft
        0x62t
        0x77t
        0x7at
        0x7ft
        0x75t
        0x74t
        0x79t
        0x61t
        0x77t
        0x6dt
        0x6ct
        0x1at
        0x13t
        0x10t
        0x2t
        0x1ct
        0x19t
        0x1et
        0x15t
        0x4t
        0x18t
        0x2t
        0x1ft
        0x5t
        0x17t
        0x18t
        0xft
        0x54t
        0x5ct
        0x4dt
        0x58t
        0x5dt
        0x58t
        0x4dt
        0x58t
        0x2at
        0x34t
        0x30t
        0x31t
        0x32t
        0x37t
        0x30t
        0x3bt
        0x2at
        0x36t
        0x2ct
        0x31t
        0x2bt
        0x39t
        0x36t
        0x5at
        0x5bt
        0x41t
        0x5at
        0x50t
        0x51t
        0x46t
        0x58t
        0x5dt
        0x5at
        0x51t
        0x7at
        0x67t
        0x7ct
        0x72t
        0x7ct
        0x7bt
        0x5ft
        0xft
        0x7t
        0x63t
        0x74t
        0x76t
        0x78t
        0x7et
        0x7ft
        0x36t
        0x2dt
        0x23t
        0x2ct
        0x30t
        0x29t
        0x4dt
        0x53t
        0x4et
        0x4at
        0x5bt
        0x4t
        0x5at
        0x5ft
        0x4at
        0x5ft
        0x63t
        0x7dt
        0x60t
        0x64t
        0x75t
        0x2at
        0x79t
        0x7dt
        0x71t
        0x77t
        0x75t
        0x36t
        0x28t
        0x35t
        0x31t
        0x20t
        0x7ft
        0x2ct
        0x2bt
        0x23t
        0x2at
        0x37t
        0x28t
        0x24t
        0x31t
        0x2ct
        0x2at
        0x2bt
        0x5at
        0x59t
        0x48t
        0x47t
        0x5et
        0x59t
        0x4ct
        0x5ft
        0x59t
        0x28t
        0x2ft
        0x22t
        0x37t
        0x3et
        0x7ct
        0x7bt
        0x76t
        0x63t
        0x66t
        0x61t
        0x68t
        0x2ft
        0x29t
        0x3et
        0x1at
        0x2et
        0x3dt
        0x31t
        0x39t
        0xet
        0x3dt
        0x28t
        0x39t
        0x3ft
        0x55t
        0x44t
        0x59t
        0x55t
        0x60t
        0x4dt
        0x48t
        0x46t
        0x4ft
        0x1bt
        0xat
        0x17t
        0x1bt
        0x2bt
        0xat
        0xct
        0x0t
        0x1dt
        0xet
        0x1bt
        0x6t
        0x0t
        0x1t
        0x30t
        0x2dt
        0x27t
        0x2ft
        0x16t
        0x25t
        0x30t
        0x21t
        0x33t
        0x33t
        0x9t
        0x12t
        0x18t
        0x19t
        0xet
        0x10t
        0x15t
        0x12t
        0x19t
    .end array-data
.end method

.method public static A0B(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Fz;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FX;
        }
    .end annotation

    const/16 v2, 0x313

    const/4 v1, 0x3

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0l(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v6

    const/4 v5, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_e4

    sget-object v3, Lcom/facebook/ads/redexgen/X/2w;->A07:Ljava/util/regex/Pattern;

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_14e

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v1, "byjPIFM18GrWKQrGQXqO"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "SWWIm7wx7bDMw"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    :goto_36
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const/4 v2, 0x2

    const/4 v1, 0x2

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v7

    if-eqz v3, :cond_129

    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_93

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v1, "0HuxTeZujmyRaSiybqeAfDBmliSYF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "KCywfQbYaMV4ekdNL2PKqpW0"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sparse-switch p0, :sswitch_data_182

    :cond_6a
    :goto_6a
    const/4 v0, -0x1

    :goto_6b
    packed-switch v0, :pswitch_data_190

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x210

    const/16 v1, 0x1c

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/FX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/FX;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_93
    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v1, "5kQ0Bru9wD96ZpUiShAzCCUsdhQs8Ki9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sparse-switch p0, :sswitch_data_19a

    goto :goto_6a

    :sswitch_9e
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const/4 v0, 0x2

    goto :goto_6b

    :sswitch_ae
    const/16 v2, 0x425

    const/4 v1, 0x2

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_123

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v1, "0KBdKNtkqi14akQWinupcYr1fi"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz p0, :cond_6a

    const/4 v0, 0x1

    goto :goto_6b

    :sswitch_d3
    const/16 v2, 0x509

    const/4 v1, 0x2

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const/4 v0, 0x0

    goto :goto_6b

    :cond_e4
    array-length v0, v6

    if-ne v0, v5, :cond_154

    sget-object v1, Lcom/facebook/ads/redexgen/X/2w;->A07:Ljava/util/regex/Pattern;

    aget-object v0, v6, v4

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    const/16 v2, 0x2cd

    const/16 v1, 0xb

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x247

    const/16 v1, 0x6e

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    :pswitch_108
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Fz;->A0C(I)Lcom/facebook/ads/redexgen/X/Fz;

    goto :goto_113

    :pswitch_10c
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/Fz;->A0C(I)Lcom/facebook/ads/redexgen/X/Fz;

    goto :goto_113

    :pswitch_110
    invoke-virtual {p1, v8}, Lcom/facebook/ads/redexgen/X/Fz;->A0C(I)Lcom/facebook/ads/redexgen/X/Fz;

    :goto_113
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A09(F)Lcom/facebook/ads/redexgen/X/Fz;

    return-void

    :cond_123
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1c6

    const/16 v1, 0x22

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/FX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/FX;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1e8

    const/16 v1, 0x28

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x4

    const/4 v1, 0x1

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/FX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/FX;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_182
    .sparse-switch
        0x25 -> :sswitch_9e
        0xca8 -> :sswitch_ae
        0xe08 -> :sswitch_d3
    .end sparse-switch

    :pswitch_data_190
    .packed-switch 0x0
        :pswitch_108
        :pswitch_10c
        :pswitch_110
    .end packed-switch

    :sswitch_data_19a
    .sparse-switch
        0x25 -> :sswitch_9e
        0xca8 -> :sswitch_ae
        0xe08 -> :sswitch_d3
    .end sparse-switch
.end method

.method public static A0C(Ljava/lang/String;)Z
    .registers 7

    const/16 v2, 0x57e

    const/4 v1, 0x2

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ff

    const/16 v2, 0x49b

    const/4 v1, 0x4

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ff

    const/16 v2, 0x3f0

    const/4 v1, 0x4

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ff

    const/16 v5, 0x41f

    const/4 v4, 0x3

    const/16 v3, 0x23

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_103

    sget-object v2, Lcom/facebook/ads/redexgen/X/2w;->A02:[Ljava/lang/String;

    const-string v1, "eh6qU7kFaGj6321g"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ff

    const/16 v2, 0x508

    const/4 v1, 0x1

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ff

    const/16 v2, 0x53d

    const/4 v1, 0x4

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ff

    const/16 v2, 0x3f8

    const/4 v1, 0x2

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ff

    const/16 v2, 0x546

    const/4 v1, 0x5

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ff

    const/16 v2, 0x54b

    const/4 v1, 0x7

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ff

    const/16 v2, 0x4ca

    const/4 v1, 0x6

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ff

    const/16 v2, 0x50b

    const/4 v1, 0x6

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ff

    const/16 v2, 0x4e0

    const/16 v1, 0x8

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ff

    const/16 v2, 0x521

    const/16 v1, 0xb

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ff

    const/16 v2, 0x517

    const/16 v1, 0xa

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ff

    const/16 v2, 0x52c

    const/16 v1, 0x11

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    :cond_ff
    const/4 v0, 0x1

    :goto_100
    return v0

    :cond_101
    const/4 v0, 0x0

    goto :goto_100

    :cond_103
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0D(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_d
    return-object v0

    :cond_e
    const/16 v2, 0x313

    const/4 v1, 0x3

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2w;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0l(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method


# virtual methods
.method public final bridge synthetic A0b([BIZ)Lcom/facebook/ads/redexgen/X/FW;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FX;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2w;->A07([BIZ)Lcom/facebook/ads/redexgen/X/VU;

    move-result-object v0

    return-object v0
.end method
