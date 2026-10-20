###### Class com.mbridge.msdk.mbsignalcommon.windvane.j (com.mbridge.msdk.mbsignalcommon.windvane.j)
.class public final Lcom/mbridge/msdk/mbsignalcommon/windvane/j;
.super Ljava/lang/Object;
.source "WindVaneUtil.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "wv_hybrid:"

    const-string v1, "mraid:"

    const-string v2, "ssp:"

    const-string v3, "mvb_hybrid:"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/j;->a:[Ljava/lang/String;

    const-string v0, "hybrid://(.+?):(.+?)/(.+?)(\\?(.*?))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/j;->b:Ljava/util/regex/Pattern;

    const-string v0, "mraid://(.+?):(.+?)/(.+?)(\\?(.*?))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/j;->c:Ljava/util/regex/Pattern;

    const-string v0, "ssp://(.+?):(.+?)/(.+?)(\\?(.*?))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/j;->d:Ljava/util/regex/Pattern;

    const-string v0, "mv://(.+?):(.+?)/(.+?)(\\?(.*?))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/j;->e:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/j;->f:Ljava/util/Map;

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->values()[Lcom/mbridge/msdk/mbsignalcommon/windvane/e;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_3b
    if-ge v2, v1, :cond_4f

    aget-object v3, v0, v2

    sget-object v4, Lcom/mbridge/msdk/mbsignalcommon/windvane/j;->f:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_4f
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 6

    sget-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/j;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method public static b(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 2

    const-string v0, "wv_hybrid:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/j;->e:Ljava/util/regex/Pattern;

    return-object p0

    :cond_b
    const-string v0, "mraid:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/j;->c:Ljava/util/regex/Pattern;

    return-object p0

    :cond_16
    const-string v0, "ssp:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/j;->d:Ljava/util/regex/Pattern;

    return-object p0

    :cond_21
    const-string v0, "mvb_hybrid:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    sget-object p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/j;->e:Ljava/util/regex/Pattern;

    return-object p0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x2

    new-array v1, v0, [C

    fill-array-data v1, :array_84

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x3e8

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v4, 0x0

    :goto_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_7d

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xff

    const/4 v7, 0x1

    if-le v5, v6, :cond_55

    const-string v6, "\\u"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    ushr-int/lit8 v6, v5, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "0"

    if-ne v8, v7, :cond_3b

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3b
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v7, :cond_51

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_51
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7a

    :cond_55
    const/4 v6, 0x0

    :goto_56
    if-ge v6, v0, :cond_74

    aget-char v8, v1, v6

    if-ne v8, v5, :cond_71

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_75

    :cond_71
    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    :cond_74
    const/4 v7, 0x0

    :goto_75
    if-nez v7, :cond_7a

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7a
    :goto_7a
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_7d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object p0

    nop

    :array_84
    .array-data 2
        0x27s
        0x5cs
    .end array-data
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/j;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_10

    const-string p0, ""

    :cond_10
    return-object p0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_23

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_23

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    return-object v1
.end method
