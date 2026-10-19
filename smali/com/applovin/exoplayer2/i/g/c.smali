###### Class com.applovin.exoplayer2.i.g.c (com.applovin.exoplayer2.i.g.c)
.class public final Lcom/applovin/exoplayer2/i/g/c;
.super Lcom/applovin/exoplayer2/i/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/i/g/c$c;,
        Lcom/applovin/exoplayer2/i/g/c$a;,
        Lcom/applovin/exoplayer2/i/g/c$b;
    }
.end annotation


# static fields
.field private static final Si:Ljava/util/regex/Pattern;

.field private static final Sj:Ljava/util/regex/Pattern;

.field private static final Sk:Ljava/util/regex/Pattern;

.field static final Sl:Ljava/util/regex/Pattern;

.field static final Sm:Ljava/util/regex/Pattern;

.field private static final Sn:Ljava/util/regex/Pattern;

.field private static final So:Ljava/util/regex/Pattern;

.field private static final Sp:Lcom/applovin/exoplayer2/i/g/c$b;

.field private static final Sq:Lcom/applovin/exoplayer2/i/g/c$a;


# instance fields
.field private final Sr:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/i/g/c;->Si:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/i/g/c;->Sj:Ljava/util/regex/Pattern;

    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/i/g/c;->Sk:Ljava/util/regex/Pattern;

    const-string v0, "^([-+]?\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/i/g/c;->Sl:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/i/g/c;->Sm:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/i/g/c;->Sn:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+) (\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/i/g/c;->So:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/applovin/exoplayer2/i/g/c$b;

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/applovin/exoplayer2/i/g/c$b;-><init>(FII)V

    sput-object v0, Lcom/applovin/exoplayer2/i/g/c;->Sp:Lcom/applovin/exoplayer2/i/g/c$b;

    new-instance v0, Lcom/applovin/exoplayer2/i/g/c$a;

    const/16 v1, 0x20

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/applovin/exoplayer2/i/g/c$a;-><init>(II)V

    sput-object v0, Lcom/applovin/exoplayer2/i/g/c;->Sq:Lcom/applovin/exoplayer2/i/g/c$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const-string v0, "TtmlDecoder"

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/i/d;-><init>(Ljava/lang/String;)V

    :try_start_5
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/g/c;->Sr:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;Lcom/applovin/exoplayer2/i/g/c$b;)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/i/h;
        }
    .end annotation

    sget-object v0, Lcom/applovin/exoplayer2/i/g/c;->Si:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_88

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0xe10

    mul-long v7, v7, v9

    long-to-double v7, v7

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long v9, v9, v11

    long-to-double v9, v9

    add-double/2addr v7, v9

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    long-to-double v5, v5

    add-double/2addr v7, v5

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v4, 0x0

    if-eqz p0, :cond_59

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    goto :goto_5a

    :cond_59
    move-wide v9, v4

    :goto_5a
    add-double/2addr v7, v9

    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6c

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-float p0, v9

    iget v1, p1, Lcom/applovin/exoplayer2/i/g/c$b;->Su:F

    div-float/2addr p0, v1

    float-to-double v9, p0

    goto :goto_6d

    :cond_6c
    move-wide v9, v4

    :goto_6d
    add-double/2addr v7, v9

    const/4 p0, 0x6

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_83

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    iget p0, p1, Lcom/applovin/exoplayer2/i/g/c$b;->Sv:I

    int-to-double v4, p0

    div-double/2addr v0, v4

    iget p0, p1, Lcom/applovin/exoplayer2/i/g/c$b;->Su:F

    float-to-double p0, p0

    div-double v4, v0, p0

    :cond_83
    add-double/2addr v7, v4

    mul-double v7, v7, v2

    double-to-long p0, v7

    return-wide p0

    :cond_88
    sget-object v0, Lcom/applovin/exoplayer2/i/g/c;->Sj:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_10f

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_126

    :goto_b7
    const/4 v4, -0x1

    goto :goto_ed

    :sswitch_b9
    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ed

    goto :goto_b7

    :sswitch_c2
    const-string v1, "t"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cb

    goto :goto_b7

    :cond_cb
    const/4 v4, 0x3

    goto :goto_ed

    :sswitch_cd
    const-string v1, "m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d6

    goto :goto_b7

    :cond_d6
    const/4 v4, 0x2

    goto :goto_ed

    :sswitch_d8
    const-string v1, "h"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e1

    goto :goto_b7

    :cond_e1
    const/4 v4, 0x1

    goto :goto_ed

    :sswitch_e3
    const-string v1, "f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ec

    goto :goto_b7

    :cond_ec
    const/4 v4, 0x0

    :cond_ed
    :goto_ed
    packed-switch v4, :pswitch_data_13c

    goto :goto_10b

    :pswitch_f1
    const-wide p0, 0x408f400000000000L    # 1000.0

    :goto_f6
    div-double/2addr v8, p0

    goto :goto_10b

    :pswitch_f8
    iget p0, p1, Lcom/applovin/exoplayer2/i/g/c$b;->Sw:I

    int-to-double p0, p0

    goto :goto_f6

    :pswitch_fc
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    goto :goto_104

    :pswitch_ff
    const-wide p0, 0x40ac200000000000L    # 3600.0

    :goto_104
    mul-double v8, v8, p0

    goto :goto_10b

    :pswitch_107
    iget p0, p1, Lcom/applovin/exoplayer2/i/g/c$b;->Su:F

    float-to-double p0, p0

    goto :goto_f6

    :goto_10b
    mul-double v8, v8, v2

    double-to-long p0, v8

    return-wide p0

    :cond_10f
    new-instance p1, Lcom/applovin/exoplayer2/i/h;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed time expression: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/applovin/exoplayer2/i/h;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_126
    .sparse-switch
        0x66 -> :sswitch_e3
        0x68 -> :sswitch_d8
        0x6d -> :sswitch_cd
        0x74 -> :sswitch_c2
        0xda6 -> :sswitch_b9
    .end sparse-switch

    :pswitch_data_13c
    .packed-switch 0x0
        :pswitch_107
        :pswitch_ff
        :pswitch_fc
        :pswitch_f8
        :pswitch_f1
    .end packed-switch
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/applovin/exoplayer2/i/g/c$a;)Lcom/applovin/exoplayer2/i/g/c$a;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/i/h;
        }
    .end annotation

    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "cellResolution"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_b

    return-object p1

    :cond_b
    sget-object v0, Lcom/applovin/exoplayer2/i/g/c;->So:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "Ignoring malformed cell resolution: "

    const-string v3, "TtmlDecoder"

    if-nez v1, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2e
    const/4 v1, 0x1

    :try_start_2f
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v1, :cond_56

    if-eqz v0, :cond_56

    new-instance v4, Lcom/applovin/exoplayer2/i/g/c$a;

    invoke-direct {v4, v1, v0}, Lcom/applovin/exoplayer2/i/g/c$a;-><init>(II)V

    return-object v4

    :cond_56
    new-instance v4, Lcom/applovin/exoplayer2/i/h;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid cell resolution "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/applovin/exoplayer2/i/h;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_75
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_75} :catch_75

    :catch_75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/applovin/exoplayer2/i/g/d;Ljava/util/Map;Lcom/applovin/exoplayer2/i/g/c$b;)Lcom/applovin/exoplayer2/i/g/d;
    .registers 23
    .param p1    # Lcom/applovin/exoplayer2/i/g/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/applovin/exoplayer2/i/g/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/applovin/exoplayer2/i/g/e;",
            ">;",
            "Lcom/applovin/exoplayer2/i/g/c$b;",
            ")",
            "Lcom/applovin/exoplayer2/i/g/d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/i/h;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p3

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/applovin/exoplayer2/i/g/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object v5

    const-string v8, ""

    move-object v11, v3

    move-object v10, v8

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    move-object v8, v11

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_b4

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_f8

    :goto_38
    const/4 v7, -0x1

    goto :goto_7b

    :sswitch_3a
    const-string v7, "backgroundImage"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    goto :goto_38

    :cond_43
    const/4 v7, 0x5

    goto :goto_7b

    :sswitch_45
    const-string v7, "style"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    goto :goto_38

    :cond_4e
    const/4 v7, 0x4

    goto :goto_7b

    :sswitch_50
    const-string v7, "begin"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    goto :goto_38

    :cond_59
    const/4 v7, 0x3

    goto :goto_7b

    :sswitch_5b
    const-string v7, "end"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    goto :goto_38

    :cond_64
    const/4 v7, 0x2

    goto :goto_7b

    :sswitch_66
    const-string v7, "dur"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f

    goto :goto_38

    :cond_6f
    const/4 v7, 0x1

    goto :goto_7b

    :sswitch_71
    const-string v7, "region"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    goto :goto_38

    :cond_7a
    const/4 v7, 0x0

    :goto_7b
    packed-switch v7, :pswitch_data_112

    goto :goto_9a

    :pswitch_7f
    const-string v4, "#"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9a

    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_9a

    :pswitch_8d
    invoke-static {v6}, Lcom/applovin/exoplayer2/i/g/c;->ao(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    if-lez v6, :cond_9a

    move-object v8, v4

    goto :goto_9a

    :pswitch_96
    invoke-static {v6, v1}, Lcom/applovin/exoplayer2/i/g/c;->a(Ljava/lang/String;Lcom/applovin/exoplayer2/i/g/c$b;)J

    move-result-wide v12

    :cond_9a
    :goto_9a
    move-object/from16 v4, p2

    goto :goto_b0

    :pswitch_9d
    invoke-static {v6, v1}, Lcom/applovin/exoplayer2/i/g/c;->a(Ljava/lang/String;Lcom/applovin/exoplayer2/i/g/c$b;)J

    move-result-wide v14

    goto :goto_9a

    :pswitch_a2
    invoke-static {v6, v1}, Lcom/applovin/exoplayer2/i/g/c;->a(Ljava/lang/String;Lcom/applovin/exoplayer2/i/g/c$b;)J

    move-result-wide v16

    goto :goto_9a

    :pswitch_a7
    move-object/from16 v4, p2

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b0

    move-object v10, v6

    :cond_b0
    :goto_b0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_24

    :cond_b4
    if-eqz v9, :cond_cc

    iget-wide v1, v9, Lcom/applovin/exoplayer2/i/g/d;->Gi:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v1, v3

    if-eqz v6, :cond_d1

    cmp-long v6, v12, v3

    if-eqz v6, :cond_c6

    add-long/2addr v12, v1

    :cond_c6
    cmp-long v6, v14, v3

    if-eqz v6, :cond_d1

    add-long/2addr v14, v1

    goto :goto_d1

    :cond_cc
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :cond_d1
    :goto_d1
    move-wide v1, v12

    cmp-long v6, v14, v3

    if-nez v6, :cond_e9

    cmp-long v6, v16, v3

    if-eqz v6, :cond_df

    add-long v16, v1, v16

    move-wide/from16 v3, v16

    goto :goto_ea

    :cond_df
    if-eqz v9, :cond_e9

    iget-wide v6, v9, Lcom/applovin/exoplayer2/i/g/d;->Sy:J

    cmp-long v12, v6, v3

    if-eqz v12, :cond_e9

    move-wide v3, v6

    goto :goto_ea

    :cond_e9
    move-wide v3, v14

    :goto_ea
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v8

    move-object v7, v10

    move-object v8, v11

    move-object/from16 v9, p1

    invoke-static/range {v0 .. v9}, Lcom/applovin/exoplayer2/i/g/d;->a(Ljava/lang/String;JJLcom/applovin/exoplayer2/i/g/g;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/exoplayer2/i/g/d;)Lcom/applovin/exoplayer2/i/g/d;

    move-result-object v0

    return-object v0

    :sswitch_data_f8
    .sparse-switch
        -0x37b7d90c -> :sswitch_71
        0x18601 -> :sswitch_66
        0x188db -> :sswitch_5b
        0x59478a9 -> :sswitch_50
        0x68b1db1 -> :sswitch_45
        0x4d0b70cd -> :sswitch_3a
    .end sparse-switch

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_96
        :pswitch_8d
        :pswitch_7f
    .end packed-switch
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/applovin/exoplayer2/i/g/c$a;Lcom/applovin/exoplayer2/i/g/c$c;)Lcom/applovin/exoplayer2/i/g/e;
    .registers 20
    .param p2    # Lcom/applovin/exoplayer2/i/g/c$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "id"

    invoke-static {v0, v2}, Lcom/applovin/exoplayer2/l/aj;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    if-nez v4, :cond_e

    return-object v2

    :cond_e
    const-string v3, "origin"

    invoke-static {v0, v3}, Lcom/applovin/exoplayer2/l/aj;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "TtmlDecoder"

    if-eqz v3, :cond_217

    sget-object v6, Lcom/applovin/exoplayer2/i/g/c;->Sm:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    sget-object v8, Lcom/applovin/exoplayer2/i/g/c;->Sn:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    const-string v11, "Ignoring region with malformed origin: "

    const-string v12, "Ignoring region with missing tts:extent: "

    const/high16 v13, 0x42c80000    # 100.0f

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v10, :cond_69

    :try_start_32
    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    div-float/2addr v9, v13

    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_4f} :catch_56

    div-float/2addr v7, v13

    move/from16 v16, v9

    move v9, v7

    move/from16 v7, v16

    goto :goto_aa

    :catch_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_69
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_202

    if-nez v1, :cond_84

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_84
    :try_start_84
    invoke-virtual {v9, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v7, v7

    iget v10, v1, Lcom/applovin/exoplayer2/i/g/c$c;->dE:I

    int-to-float v10, v10

    div-float/2addr v7, v10

    int-to-float v9, v9

    iget v10, v1, Lcom/applovin/exoplayer2/i/g/c$c;->height:I
    :try_end_a8
    .catch Ljava/lang/NumberFormatException; {:try_start_84 .. :try_end_a8} :catch_1ef

    int-to-float v10, v10

    div-float/2addr v9, v10

    :goto_aa
    const-string v10, "extent"

    invoke-static {v0, v10}, Lcom/applovin/exoplayer2/l/aj;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1e9

    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v8, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    const-string v11, "Ignoring region with malformed extent: "

    if-eqz v10, :cond_f5

    :try_start_c2
    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v13

    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_df
    .catch Ljava/lang/NumberFormatException; {:try_start_c2 .. :try_end_df} :catch_e2

    div-float/2addr v2, v13

    move v10, v2

    goto :goto_138

    :catch_e2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_f5
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_1d4

    if-nez v1, :cond_110

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_110
    :try_start_110
    invoke-virtual {v8, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v6, v6

    iget v10, v1, Lcom/applovin/exoplayer2/i/g/c$c;->dE:I

    int-to-float v10, v10

    div-float/2addr v6, v10

    int-to-float v8, v8

    iget v1, v1, Lcom/applovin/exoplayer2/i/g/c$c;->height:I
    :try_end_134
    .catch Ljava/lang/NumberFormatException; {:try_start_110 .. :try_end_134} :catch_1c1

    int-to-float v1, v1

    div-float/2addr v8, v1

    move v1, v6

    move v10, v8

    :goto_138
    const-string v2, "displayAlign"

    invoke-static {v0, v2}, Lcom/applovin/exoplayer2/l/aj;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_165

    invoke-static {v2}, Lcom/applovin/exoplayer2/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v5, "center"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15d

    const-string v5, "after"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_159

    goto :goto_165

    :cond_159
    add-float/2addr v9, v10

    move v6, v9

    const/4 v8, 0x2

    goto :goto_167

    :cond_15d
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v10, v2

    add-float/2addr v9, v2

    move v6, v9

    const/4 v8, 0x1

    goto :goto_167

    :cond_165
    :goto_165
    move v6, v9

    const/4 v8, 0x0

    :goto_167
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v5, p1

    iget v5, v5, Lcom/applovin/exoplayer2/i/g/c$a;->St:I

    int-to-float v5, v5

    div-float v12, v2, v5

    const/high16 v2, -0x80000000

    const-string/jumbo v5, "writingMode"

    invoke-static {v0, v5}, Lcom/applovin/exoplayer2/l/aj;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b3

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_21e

    :goto_18a
    const/4 v3, -0x1

    goto :goto_1ab

    :sswitch_18c
    const-string v3, "tbrl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_195

    goto :goto_18a

    :cond_195
    const/4 v3, 0x2

    goto :goto_1ab

    :sswitch_197
    const-string v3, "tblr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a0

    goto :goto_18a

    :cond_1a0
    const/4 v3, 0x1

    goto :goto_1ab

    :sswitch_1a2
    const-string v9, "tb"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ab

    goto :goto_18a

    :cond_1ab
    :goto_1ab
    packed-switch v3, :pswitch_data_22c

    goto :goto_1b3

    :pswitch_1af
    const/4 v13, 0x1

    goto :goto_1b5

    :pswitch_1b1
    const/4 v13, 0x2

    goto :goto_1b5

    :cond_1b3
    :goto_1b3
    const/high16 v13, -0x80000000

    :goto_1b5
    new-instance v0, Lcom/applovin/exoplayer2/i/g/e;

    const/4 v2, 0x0

    const/4 v11, 0x1

    move-object v3, v0

    move v5, v7

    move v7, v2

    move v9, v1

    invoke-direct/range {v3 .. v13}, Lcom/applovin/exoplayer2/i/g/e;-><init>(Ljava/lang/String;FFIIFFIFI)V

    return-object v0

    :catch_1c1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1d4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring region with unsupported extent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1e9
    const-string v0, "Ignoring region without an extent"

    invoke-static {v5, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_1ef
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring region with unsupported origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_217
    const-string v0, "Ignoring region without an origin"

    invoke-static {v5, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    nop

    :sswitch_data_21e
    .sparse-switch
        0xe6e -> :sswitch_1a2
        0x363874 -> :sswitch_197
        0x363928 -> :sswitch_18c
    .end sparse-switch

    :pswitch_data_22c
    .packed-switch 0x0
        :pswitch_1b1
        :pswitch_1b1
        :pswitch_1af
    .end packed-switch
.end method

.method private static a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;
    .registers 1
    .param p0    # Lcom/applovin/exoplayer2/i/g/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_7

    new-instance p0, Lcom/applovin/exoplayer2/i/g/g;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/g/g;-><init>()V

    :cond_7
    return-object p0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;
    .registers 14

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_2f6

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, -0x1

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    sparse-switch v5, :sswitch_data_2f8

    :goto_20
    const/4 v4, -0x1

    goto/16 :goto_da

    :sswitch_23
    const-string v5, "multiRowAlign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    goto :goto_20

    :cond_2c
    const/16 v4, 0xe

    goto/16 :goto_da

    :sswitch_30
    const-string v5, "backgroundColor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    goto :goto_20

    :cond_39
    const/16 v4, 0xd

    goto/16 :goto_da

    :sswitch_3d
    const-string v5, "rubyPosition"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    goto :goto_20

    :cond_46
    const/16 v4, 0xc

    goto/16 :goto_da

    :sswitch_4a
    const-string v5, "textEmphasis"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    goto :goto_20

    :cond_53
    const/16 v4, 0xb

    goto/16 :goto_da

    :sswitch_57
    const-string v5, "fontSize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    goto :goto_20

    :cond_60
    const/16 v4, 0xa

    goto/16 :goto_da

    :sswitch_64
    const-string v5, "textCombine"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6d

    goto :goto_20

    :cond_6d
    const/16 v4, 0x9

    goto/16 :goto_da

    :sswitch_71
    const-string v5, "shear"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    goto :goto_20

    :cond_7a
    const/16 v4, 0x8

    goto/16 :goto_da

    :sswitch_7e
    const-string v5, "color"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_87

    goto :goto_20

    :cond_87
    const/4 v4, 0x7

    goto :goto_da

    :sswitch_89
    const-string v5, "ruby"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_92

    goto :goto_20

    :cond_92
    const/4 v4, 0x6

    goto :goto_da

    :sswitch_94
    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9d

    goto :goto_20

    :cond_9d
    const/4 v4, 0x5

    goto :goto_da

    :sswitch_9f
    const-string v5, "fontWeight"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a9

    goto/16 :goto_20

    :cond_a9
    const/4 v4, 0x4

    goto :goto_da

    :sswitch_ab
    const-string v5, "textDecoration"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b5

    goto/16 :goto_20

    :cond_b5
    const/4 v4, 0x3

    goto :goto_da

    :sswitch_b7
    const-string v5, "textAlign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c1

    goto/16 :goto_20

    :cond_c1
    const/4 v4, 0x2

    goto :goto_da

    :sswitch_c3
    const-string v5, "fontFamily"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cd

    goto/16 :goto_20

    :cond_cd
    const/4 v4, 0x1

    goto :goto_da

    :sswitch_cf
    const-string v5, "fontStyle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d9

    goto/16 :goto_20

    :cond_d9
    const/4 v4, 0x0

    :goto_da
    const-string v5, "TtmlDecoder"

    packed-switch v4, :pswitch_data_336

    goto/16 :goto_2f2

    :pswitch_e1
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    invoke-static {v3}, Lcom/applovin/exoplayer2/i/g/c;->ap(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/applovin/exoplayer2/i/g/g;->d(Landroid/text/Layout$Alignment;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    goto/16 :goto_2f2

    :pswitch_ef
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    :try_start_f3
    invoke-static {v3}, Lcom/applovin/exoplayer2/l/f;->aS(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/applovin/exoplayer2/i/g/g;->eE(I)Lcom/applovin/exoplayer2/i/g/g;
    :try_end_fa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f3 .. :try_end_fa} :catch_fc

    goto/16 :goto_2f2

    :catch_fc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing background value: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f2

    :pswitch_112
    invoke-static {v3}, Lcom/applovin/exoplayer2/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const-string v4, "before"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_135

    const-string v4, "after"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12b

    goto/16 :goto_2f2

    :cond_12b
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    invoke-virtual {p1, v10}, Lcom/applovin/exoplayer2/i/g/g;->eG(I)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    goto/16 :goto_2f2

    :cond_135
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    invoke-virtual {p1, v11}, Lcom/applovin/exoplayer2/i/g/g;->eG(I)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    goto/16 :goto_2f2

    :pswitch_13f
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    invoke-static {v3}, Lcom/applovin/exoplayer2/i/g/b;->an(Ljava/lang/String;)Lcom/applovin/exoplayer2/i/g/b;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/applovin/exoplayer2/i/g/g;->a(Lcom/applovin/exoplayer2/i/g/b;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    goto/16 :goto_2f2

    :pswitch_14d
    :try_start_14d
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Ljava/lang/String;Lcom/applovin/exoplayer2/i/g/g;)V
    :try_end_154
    .catch Lcom/applovin/exoplayer2/i/h; {:try_start_14d .. :try_end_154} :catch_156

    goto/16 :goto_2f2

    :catch_156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing fontSize value: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f2

    :pswitch_16c
    invoke-static {v3}, Lcom/applovin/exoplayer2/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const-string v4, "all"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18f

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_185

    goto/16 :goto_2f2

    :cond_185
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/i/g/g;->W(Z)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    goto/16 :goto_2f2

    :cond_18f
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    invoke-virtual {p1, v11}, Lcom/applovin/exoplayer2/i/g/g;->W(Z)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    goto/16 :goto_2f2

    :pswitch_199
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    invoke-static {v3}, Lcom/applovin/exoplayer2/i/g/c;->ar(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/applovin/exoplayer2/i/g/g;->s(F)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    goto/16 :goto_2f2

    :pswitch_1a7
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    :try_start_1ab
    invoke-static {v3}, Lcom/applovin/exoplayer2/l/f;->aS(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/applovin/exoplayer2/i/g/g;->eD(I)Lcom/applovin/exoplayer2/i/g/g;
    :try_end_1b2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ab .. :try_end_1b2} :catch_1b4

    goto/16 :goto_2f2

    :catch_1b4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing color value: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f2

    :pswitch_1ca
    invoke-static {v3}, Lcom/applovin/exoplayer2/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_358

    :goto_1d8
    const/4 v6, -0x1

    goto :goto_219

    :sswitch_1da
    const-string v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_219

    goto :goto_1d8

    :sswitch_1e3
    const-string v4, "base"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ec

    goto :goto_1d8

    :cond_1ec
    const/4 v6, 0x4

    goto :goto_219

    :sswitch_1ee
    const-string v4, "textContainer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f7

    goto :goto_1d8

    :cond_1f7
    const/4 v6, 0x3

    goto :goto_219

    :sswitch_1f9
    const-string v4, "delimiter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_202

    goto :goto_1d8

    :cond_202
    const/4 v6, 0x2

    goto :goto_219

    :sswitch_204
    const-string v4, "container"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20d

    goto :goto_1d8

    :cond_20d
    const/4 v6, 0x1

    goto :goto_219

    :sswitch_20f
    const-string v4, "baseContainer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_218

    goto :goto_1d8

    :cond_218
    const/4 v6, 0x0

    :cond_219
    :goto_219
    packed-switch v6, :pswitch_data_372

    goto/16 :goto_2f2

    :pswitch_21e
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/applovin/exoplayer2/i/g/g;->eF(I)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    goto/16 :goto_2f2

    :pswitch_228
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/applovin/exoplayer2/i/g/g;->eF(I)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    goto/16 :goto_2f2

    :pswitch_232
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    invoke-virtual {p1, v11}, Lcom/applovin/exoplayer2/i/g/g;->eF(I)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    goto/16 :goto_2f2

    :pswitch_23c
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    invoke-virtual {p1, v10}, Lcom/applovin/exoplayer2/i/g/g;->eF(I)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    goto/16 :goto_2f2

    :pswitch_246
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "style"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f2

    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/applovin/exoplayer2/i/g/g;->av(Ljava/lang/String;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    goto/16 :goto_2f2

    :pswitch_25c
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    const-string v4, "bold"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/applovin/exoplayer2/i/g/g;->U(Z)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    goto/16 :goto_2f2

    :pswitch_26c
    invoke-static {v3}, Lcom/applovin/exoplayer2/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_382

    goto :goto_2a6

    :sswitch_27b
    const-string v4, "linethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_284

    goto :goto_2a6

    :cond_284
    const/4 v8, 0x3

    goto :goto_2a6

    :sswitch_286
    const-string v4, "nolinethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28f

    goto :goto_2a6

    :cond_28f
    const/4 v8, 0x2

    goto :goto_2a6

    :sswitch_291
    const-string v4, "underline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29a

    goto :goto_2a6

    :cond_29a
    const/4 v8, 0x1

    goto :goto_2a6

    :sswitch_29c
    const-string v4, "nounderline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a5

    goto :goto_2a6

    :cond_2a5
    const/4 v8, 0x0

    :goto_2a6
    packed-switch v8, :pswitch_data_394

    goto :goto_2f2

    :pswitch_2aa
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    invoke-virtual {p1, v11}, Lcom/applovin/exoplayer2/i/g/g;->S(Z)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    goto :goto_2f2

    :pswitch_2b3
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/i/g/g;->S(Z)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    goto :goto_2f2

    :pswitch_2bc
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    invoke-virtual {p1, v11}, Lcom/applovin/exoplayer2/i/g/g;->T(Z)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    goto :goto_2f2

    :pswitch_2c5
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/i/g/g;->T(Z)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    goto :goto_2f2

    :pswitch_2ce
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    invoke-static {v3}, Lcom/applovin/exoplayer2/i/g/c;->ap(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/applovin/exoplayer2/i/g/g;->c(Landroid/text/Layout$Alignment;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    goto :goto_2f2

    :pswitch_2db
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/applovin/exoplayer2/i/g/g;->au(Ljava/lang/String;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    goto :goto_2f2

    :pswitch_2e4
    invoke-static {p1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    const-string v4, "italic"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/applovin/exoplayer2/i/g/g;->V(Z)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object p1

    :cond_2f2
    :goto_2f2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_2f6
    return-object p1

    nop

    :sswitch_data_2f8
    .sparse-switch
        -0x5c71855e -> :sswitch_cf
        -0x48ff636d -> :sswitch_c3
        -0x3f826a28 -> :sswitch_b7
        -0x3468fa43 -> :sswitch_ab
        -0x2bc67c59 -> :sswitch_9f
        0xd1b -> :sswitch_94
        0x3595da -> :sswitch_89
        0x5a72f63 -> :sswitch_7e
        0x6855ce1 -> :sswitch_71
        0x6909352 -> :sswitch_64
        0x15caa0f0 -> :sswitch_57
        0x36e741c9 -> :sswitch_4a
        0x42841923 -> :sswitch_3d
        0x4cb7f6d5 -> :sswitch_30
        0x6899f5a4 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_336
    .packed-switch 0x0
        :pswitch_2e4
        :pswitch_2db
        :pswitch_2ce
        :pswitch_26c
        :pswitch_25c
        :pswitch_246
        :pswitch_1ca
        :pswitch_1a7
        :pswitch_199
        :pswitch_16c
        :pswitch_14d
        :pswitch_13f
        :pswitch_112
        :pswitch_ef
        :pswitch_e1
    .end packed-switch

    :sswitch_data_358
    .sparse-switch
        -0x24de7f50 -> :sswitch_20f
        -0x187eb37f -> :sswitch_204
        -0xeee99f9 -> :sswitch_1f9
        -0x81c562c -> :sswitch_1ee
        0x2e06d1 -> :sswitch_1e3
        0x36452d -> :sswitch_1da
    .end sparse-switch

    :pswitch_data_372
    .packed-switch 0x0
        :pswitch_23c
        :pswitch_232
        :pswitch_228
        :pswitch_21e
        :pswitch_23c
        :pswitch_21e
    .end packed-switch

    :sswitch_data_382
    .sparse-switch
        -0x57195dd5 -> :sswitch_29c
        -0x3d363934 -> :sswitch_291
        0x36723ff0 -> :sswitch_286
        0x641ec051 -> :sswitch_27b
    .end sparse-switch

    :pswitch_data_394
    .packed-switch 0x0
        :pswitch_2c5
        :pswitch_2bc
        :pswitch_2b3
        :pswitch_2aa
    .end packed-switch
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lcom/applovin/exoplayer2/i/g/c$a;Lcom/applovin/exoplayer2/i/g/c$c;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .registers 11
    .param p3    # Lcom/applovin/exoplayer2/i/g/c$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/applovin/exoplayer2/i/g/g;",
            ">;",
            "Lcom/applovin/exoplayer2/i/g/c$a;",
            "Lcom/applovin/exoplayer2/i/g/c$c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/applovin/exoplayer2/i/g/e;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/applovin/exoplayer2/i/g/g;",
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
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "style"

    invoke-static {p0, v0}, Lcom/applovin/exoplayer2/l/aj;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-static {p0, v0}, Lcom/applovin/exoplayer2/l/aj;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/applovin/exoplayer2/i/g/g;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/i/g/g;-><init>()V

    invoke-static {p0, v1}, Lcom/applovin/exoplayer2/i/g/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    move-result-object v1

    if-eqz v0, :cond_30

    invoke-static {v0}, Lcom/applovin/exoplayer2/i/g/c;->ao(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v2, :cond_30

    aget-object v4, v0, v3

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/applovin/exoplayer2/i/g/g;

    invoke-virtual {v1, v4}, Lcom/applovin/exoplayer2/i/g/g;->b(Lcom/applovin/exoplayer2/i/g/g;)Lcom/applovin/exoplayer2/i/g/g;

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_30
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/i/g/g;->mQ()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    :cond_3a
    const-string v0, "region"

    invoke-static {p0, v0}, Lcom/applovin/exoplayer2/l/aj;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-static {p0, p2, p3}, Lcom/applovin/exoplayer2/i/g/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/applovin/exoplayer2/i/g/c$a;Lcom/applovin/exoplayer2/i/g/c$c;)Lcom/applovin/exoplayer2/i/g/e;

    move-result-object v0

    if-eqz v0, :cond_59

    iget-object v1, v0, Lcom/applovin/exoplayer2/i/g/e;->do:Ljava/lang/String;

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    :cond_4e
    const-string v0, "metadata"

    invoke-static {p0, v0}, Lcom/applovin/exoplayer2/l/aj;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-static {p0, p5}, Lcom/applovin/exoplayer2/i/g/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    :cond_59
    :goto_59
    const-string v0, "head"

    invoke-static {p0, v0}, Lcom/applovin/exoplayer2/l/aj;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1
.end method

.method private static a(Ljava/lang/String;Lcom/applovin/exoplayer2/i/g/g;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/i/h;
        }
    .end annotation

    const-string v0, "\\s+"

    invoke-static {p0, v0}, Lcom/applovin/exoplayer2/l/ai;->l(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_12

    sget-object v0, Lcom/applovin/exoplayer2/i/g/c;->Sk:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_24

    :cond_12
    array-length v1, v0

    if-ne v1, v2, :cond_b7

    sget-object v1, Lcom/applovin/exoplayer2/i/g/c;->Sk:Ljava/util/regex/Pattern;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "TtmlDecoder"

    const-string v4, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    invoke-static {v1, v4}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v4, "\'."

    if-eqz v1, :cond_9d

    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_d4

    goto :goto_63

    :sswitch_43
    const-string v6, "px"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4c

    goto :goto_63

    :cond_4c
    const/4 v5, 0x2

    goto :goto_63

    :sswitch_4e
    const-string v6, "em"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_57

    goto :goto_63

    :cond_57
    const/4 v5, 0x1

    goto :goto_63

    :sswitch_59
    const-string v6, "%"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_62

    goto :goto_63

    :cond_62
    const/4 v5, 0x0

    :goto_63
    packed-switch v5, :pswitch_data_e2

    new-instance p0, Lcom/applovin/exoplayer2/i/h;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid unit for fontSize: \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/i/h;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_80
    invoke-virtual {p1, v3}, Lcom/applovin/exoplayer2/i/g/g;->eH(I)Lcom/applovin/exoplayer2/i/g/g;

    goto :goto_8b

    :pswitch_84
    invoke-virtual {p1, v2}, Lcom/applovin/exoplayer2/i/g/g;->eH(I)Lcom/applovin/exoplayer2/i/g/g;

    goto :goto_8b

    :pswitch_88
    invoke-virtual {p1, p0}, Lcom/applovin/exoplayer2/i/g/g;->eH(I)Lcom/applovin/exoplayer2/i/g/g;

    :goto_8b
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/applovin/exoplayer2/i/g/g;->t(F)Lcom/applovin/exoplayer2/i/g/g;

    return-void

    :cond_9d
    new-instance p1, Lcom/applovin/exoplayer2/i/h;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid expression for fontSize: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/applovin/exoplayer2/i/h;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b7
    new-instance p0, Lcom/applovin/exoplayer2/i/h;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid number of entries for fontSize: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/i/h;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_d4
    .sparse-switch
        0x25 -> :sswitch_59
        0xca8 -> :sswitch_4e
        0xe08 -> :sswitch_43
    .end sparse-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_88
        :pswitch_84
        :pswitch_80
    .end packed-switch
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "image"

    invoke-static {p0, v0}, Lcom/applovin/exoplayer2/l/aj;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/applovin/exoplayer2/l/aj;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    const-string v0, "metadata"

    invoke-static {p0, v0}, Lcom/applovin/exoplayer2/l/aj;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method private static ao(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    goto :goto_14

    :cond_e
    const-string v0, "\\s+"

    invoke-static {p0, v0}, Lcom/applovin/exoplayer2/l/ai;->l(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_14
    return-object p0
.end method

.method private static ap(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/applovin/exoplayer2/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_54

    goto :goto_46

    :sswitch_10
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_46

    :cond_19
    const/4 v1, 0x4

    goto :goto_46

    :sswitch_1b
    const-string v0, "right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_46

    :cond_24
    const/4 v1, 0x3

    goto :goto_46

    :sswitch_26
    const-string v0, "left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_46

    :cond_2f
    const/4 v1, 0x2

    goto :goto_46

    :sswitch_31
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto :goto_46

    :cond_3a
    const/4 v1, 0x1

    goto :goto_46

    :sswitch_3c
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_45

    goto :goto_46

    :cond_45
    const/4 v1, 0x0

    :goto_46
    packed-switch v1, :pswitch_data_6a

    const/4 p0, 0x0

    return-object p0

    :pswitch_4b
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0

    :pswitch_4e
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    :pswitch_51
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0

    :sswitch_data_54
    .sparse-switch
        -0x514d33ab -> :sswitch_3c
        0x188db -> :sswitch_31
        0x32a007 -> :sswitch_26
        0x677c21c -> :sswitch_1b
        0x68ac462 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_4e
        :pswitch_4b
    .end packed-switch
.end method

.method private static aq(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "head"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "body"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "div"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "span"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "style"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "styling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "layout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "region"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "metadata"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "information"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_79

    goto :goto_7b

    :cond_79
    const/4 p0, 0x0

    goto :goto_7c

    :cond_7b
    :goto_7b
    const/4 p0, 0x1

    :goto_7c
    return p0
.end method

.method private static ar(Ljava/lang/String;)F
    .registers 6

    sget-object v0, Lcom/applovin/exoplayer2/i/g/c;->Sl:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const-string v3, "TtmlDecoder"

    if-nez v1, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value for shear: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_26
    const/4 v1, 0x1

    :try_start_27
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, -0x3d380000    # -100.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_41} :catch_42

    return p0

    :catch_42
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse shear: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v0}, Lcom/applovin/exoplayer2/l/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method private static d(Lorg/xmlpull/v1/XmlPullParser;)Lcom/applovin/exoplayer2/i/g/c$b;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/i/h;
        }
    .end annotation

    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "frameRate"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_11

    :cond_f
    const/16 v1, 0x1e

    :goto_11
    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "frameRateMultiplier"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_40

    const-string v2, " "

    invoke-static {v3, v2}, Lcom/applovin/exoplayer2/l/ai;->l(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_38

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v3, v2

    goto :goto_40

    :cond_38
    new-instance p0, Lcom/applovin/exoplayer2/i/h;

    const-string v0, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/i/h;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    :goto_40
    sget-object v3, Lcom/applovin/exoplayer2/i/g/c;->Sp:Lcom/applovin/exoplayer2/i/g/c$b;

    iget v4, v3, Lcom/applovin/exoplayer2/i/g/c$b;->Sv:I

    const-string v5, "subFrameRate"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_50

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_50
    iget v3, v3, Lcom/applovin/exoplayer2/i/g/c$b;->Sw:I

    const-string v5, "tickRate"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5e

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_5e
    new-instance p0, Lcom/applovin/exoplayer2/i/g/c$b;

    int-to-float v0, v1

    mul-float v0, v0, v2

    invoke-direct {p0, v0, v4, v3}, Lcom/applovin/exoplayer2/i/g/c$b;-><init>(FII)V

    return-object p0
.end method

.method private static e(Lorg/xmlpull/v1/XmlPullParser;)Lcom/applovin/exoplayer2/i/g/c$c;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "extent"

    invoke-static {p0, v0}, Lcom/applovin/exoplayer2/l/aj;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return-object v0

    :cond_a
    sget-object v1, Lcom/applovin/exoplayer2/i/g/c;->Sn:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string v3, "TtmlDecoder"

    if-nez v2, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring non-pixel tts extent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2d
    const/4 v2, 0x1

    :try_start_2e
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v4, Lcom/applovin/exoplayer2/i/g/c$c;

    invoke-direct {v4, v2, v1}, Lcom/applovin/exoplayer2/i/g/c$c;-><init>(II)V
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_50} :catch_51

    return-object v4

    :catch_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring malformed tts extent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected c([BIZ)Lcom/applovin/exoplayer2/i/f;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/i/h;
        }
    .end annotation

    const-string v0, ""

    move-object/from16 v1, p0

    :try_start_4
    iget-object v2, v1, Lcom/applovin/exoplayer2/i/g/c;->Sr:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Lcom/applovin/exoplayer2/i/g/e;

    invoke-direct {v3, v0}, Lcom/applovin/exoplayer2/i/g/e;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct {v0, v4, v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v12, Ljava/util/ArrayDeque;

    invoke-direct {v12}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    sget-object v5, Lcom/applovin/exoplayer2/i/g/c;->Sp:Lcom/applovin/exoplayer2/i/g/c$b;

    sget-object v6, Lcom/applovin/exoplayer2/i/g/c;->Sq:Lcom/applovin/exoplayer2/i/g/c$a;

    move-object v14, v4

    const/4 v13, 0x0

    :goto_3e
    const/4 v3, 0x1

    if-eq v0, v3, :cond_10a

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/i/g/d;

    const/4 v8, 0x2

    if-nez v13, :cond_f7

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15
    :try_end_4e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4e} :catch_11e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4e} :catch_115

    const-string v7, "tt"

    if-ne v0, v8, :cond_c0

    :try_start_52
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/g/c;->d(Lorg/xmlpull/v1/XmlPullParser;)Lcom/applovin/exoplayer2/i/g/c$b;

    move-result-object v5

    sget-object v0, Lcom/applovin/exoplayer2/i/g/c;->Sq:Lcom/applovin/exoplayer2/i/g/c$a;

    invoke-static {v2, v0}, Lcom/applovin/exoplayer2/i/g/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/applovin/exoplayer2/i/g/c$a;)Lcom/applovin/exoplayer2/i/g/c$a;

    move-result-object v6

    invoke-static {v2}, Lcom/applovin/exoplayer2/i/g/c;->e(Lorg/xmlpull/v1/XmlPullParser;)Lcom/applovin/exoplayer2/i/g/c$c;

    move-result-object v4

    :cond_66
    move-object/from16 v16, v4

    move-object v8, v5

    move-object/from16 v17, v6

    invoke-static {v15}, Lcom/applovin/exoplayer2/i/g/c;->aq(Ljava/lang/String;)Z

    move-result v0
    :try_end_6f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_6f} :catch_11e
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_6f} :catch_115

    const-string v4, "TtmlDecoder"

    if-nez v0, :cond_8f

    :try_start_73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring unsupported tag: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/applovin/exoplayer2/l/q;->g(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    move-object v5, v8

    goto :goto_b2

    :cond_8f
    const-string v0, "head"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    move-object v3, v2

    move-object v4, v9

    move-object/from16 v5, v17

    move-object/from16 v6, v16

    move-object v7, v10

    move-object v15, v8

    move-object v8, v11

    invoke-static/range {v3 .. v8}, Lcom/applovin/exoplayer2/i/g/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lcom/applovin/exoplayer2/i/g/c$a;Lcom/applovin/exoplayer2/i/g/c$c;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_a3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_73 .. :try_end_a3} :catch_11e
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_a3} :catch_115

    goto :goto_b1

    :cond_a4
    move-object v15, v8

    :try_start_a5
    invoke-static {v2, v3, v10, v15}, Lcom/applovin/exoplayer2/i/g/c;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/applovin/exoplayer2/i/g/d;Ljava/util/Map;Lcom/applovin/exoplayer2/i/g/c$b;)Lcom/applovin/exoplayer2/i/g/d;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz v3, :cond_b1

    invoke-virtual {v3, v0}, Lcom/applovin/exoplayer2/i/g/d;->a(Lcom/applovin/exoplayer2/i/g/d;)V
    :try_end_b1
    .catch Lcom/applovin/exoplayer2/i/h; {:try_start_a5 .. :try_end_b1} :catch_b7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a5 .. :try_end_b1} :catch_11e
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_b1} :catch_115

    :cond_b1
    :goto_b1
    move-object v5, v15

    :goto_b2
    move-object/from16 v4, v16

    move-object/from16 v6, v17

    goto :goto_101

    :catch_b7
    move-exception v0

    :try_start_b8
    const-string v3, "Suppressing parser error"

    invoke-static {v4, v3, v0}, Lcom/applovin/exoplayer2/l/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_b1

    :cond_c0
    const/4 v8, 0x4

    if-ne v0, v8, :cond_d5

    invoke-static {v3}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/i/g/d;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/applovin/exoplayer2/i/g/d;->as(Ljava/lang/String;)Lcom/applovin/exoplayer2/i/g/d;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/i/g/d;->a(Lcom/applovin/exoplayer2/i/g/d;)V

    goto :goto_101

    :cond_d5
    const/4 v3, 0x3

    if-ne v0, v3, :cond_101

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    new-instance v14, Lcom/applovin/exoplayer2/i/g/h;

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/i/g/d;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/i/g/d;

    invoke-direct {v14, v0, v9, v10, v11}, Lcom/applovin/exoplayer2/i/g/h;-><init>(Lcom/applovin/exoplayer2/i/g/d;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    :cond_f3
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_101

    :cond_f7
    if-ne v0, v8, :cond_fc

    add-int/lit8 v13, v13, 0x1

    goto :goto_101

    :cond_fc
    const/4 v3, 0x3

    if-ne v0, v3, :cond_101

    add-int/lit8 v13, v13, -0x1

    :cond_101
    :goto_101
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    goto/16 :goto_3e

    :cond_10a
    if-eqz v14, :cond_10d

    return-object v14

    :cond_10d
    new-instance v0, Lcom/applovin/exoplayer2/i/h;

    const-string v2, "No TTML subtitles found"

    invoke-direct {v0, v2}, Lcom/applovin/exoplayer2/i/h;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_115
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b8 .. :try_end_115} :catch_11e
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_115} :catch_115

    :catch_115
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected error when reading input."

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_11e
    move-exception v0

    new-instance v2, Lcom/applovin/exoplayer2/i/h;

    const-string v3, "Unable to decode source"

    invoke-direct {v2, v3, v0}, Lcom/applovin/exoplayer2/i/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

###### Class com.applovin.exoplayer2.i.g.c.a (com.applovin.exoplayer2.i.g.c$a)
.class final Lcom/applovin/exoplayer2/i/g/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/i/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final Ss:I

.field final St:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/i/g/c$a;->Ss:I

    iput p2, p0, Lcom/applovin/exoplayer2/i/g/c$a;->St:I

    return-void
.end method

###### Class com.applovin.exoplayer2.i.g.c.b (com.applovin.exoplayer2.i.g.c$b)
.class final Lcom/applovin/exoplayer2/i/g/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/i/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field final Su:F

.field final Sv:I

.field final Sw:I


# direct methods
.method constructor <init>(FII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/i/g/c$b;->Su:F

    iput p2, p0, Lcom/applovin/exoplayer2/i/g/c$b;->Sv:I

    iput p3, p0, Lcom/applovin/exoplayer2/i/g/c$b;->Sw:I

    return-void
.end method

###### Class com.applovin.exoplayer2.i.g.c.C0047c (com.applovin.exoplayer2.i.g.c$c)
.class final Lcom/applovin/exoplayer2/i/g/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/i/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field final dE:I

.field final height:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/i/g/c$c;->dE:I

    iput p2, p0, Lcom/applovin/exoplayer2/i/g/c$c;->height:I

    return-void
.end method
