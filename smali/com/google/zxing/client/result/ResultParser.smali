###### Class com.google.zxing.client.result.ResultParser (com.google.zxing.client.result.ResultParser)
.class public abstract Lcom/google/zxing/client/result/ResultParser;
.super Ljava/lang/Object;
.source "ResultParser.java"


# static fields
.field private static final a:[Lcom/google/zxing/client/result/ResultParser;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/google/zxing/client/result/ResultParser;

    new-instance v1, Lcom/google/zxing/client/result/f;

    invoke-direct {v1}, Lcom/google/zxing/client/result/f;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/zxing/client/result/c;

    invoke-direct {v1}, Lcom/google/zxing/client/result/c;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/j;

    invoke-direct {v1}, Lcom/google/zxing/client/result/j;-><init>()V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/b;

    invoke-direct {v1}, Lcom/google/zxing/client/result/b;-><init>()V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/b0;

    invoke-direct {v1}, Lcom/google/zxing/client/result/b0;-><init>()V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/e;

    invoke-direct {v1}, Lcom/google/zxing/client/result/e;-><init>()V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/c0;

    invoke-direct {v1}, Lcom/google/zxing/client/result/c0;-><init>()V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/i;

    invoke-direct {v1}, Lcom/google/zxing/client/result/i;-><init>()V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/v;

    invoke-direct {v1}, Lcom/google/zxing/client/result/v;-><init>()V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/x;

    invoke-direct {v1}, Lcom/google/zxing/client/result/x;-><init>()V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/s;

    invoke-direct {v1}, Lcom/google/zxing/client/result/s;-><init>()V

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/u;

    invoke-direct {v1}, Lcom/google/zxing/client/result/u;-><init>()V

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/n;

    invoke-direct {v1}, Lcom/google/zxing/client/result/n;-><init>()V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/g0;

    invoke-direct {v1}, Lcom/google/zxing/client/result/g0;-><init>()V

    const/16 v3, 0xd

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/a0;

    invoke-direct {v1}, Lcom/google/zxing/client/result/a0;-><init>()V

    const/16 v3, 0xe

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/z;

    invoke-direct {v1}, Lcom/google/zxing/client/result/z;-><init>()V

    const/16 v3, 0xf

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/p;

    invoke-direct {v1}, Lcom/google/zxing/client/result/p;-><init>()V

    const/16 v3, 0x10

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/r;

    invoke-direct {v1}, Lcom/google/zxing/client/result/r;-><init>()V

    const/16 v3, 0x11

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/l;

    invoke-direct {v1}, Lcom/google/zxing/client/result/l;-><init>()V

    const/16 v3, 0x12

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/client/result/e0;

    invoke-direct {v1}, Lcom/google/zxing/client/result/e0;-><init>()V

    const/16 v3, 0x13

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->a:[Lcom/google/zxing/client/result/ResultParser;

    const-string v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->b:Ljava/util/regex/Pattern;

    const-string v0, "&"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->c:Ljava/util/regex/Pattern;

    const-string v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->d:Ljava/util/regex/Pattern;

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/client/result/ResultParser;->d:Ljava/util/regex/Pattern;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-ne v0, v1, :cond_17

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    :try_start_10
    invoke-static {p0}, Lcom/google/zxing/client/result/ResultParser;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    return-void
.end method

.method private static b(Ljava/lang/CharSequence;I)I
    .registers 5

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_3
    if-ltz p1, :cond_12

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_12

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_12
    return v0
.end method

.method protected static c(Lcom/google/zxing/d;)Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method protected static d(Ljava/lang/CharSequence;I)Z
    .registers 3

    if-eqz p0, :cond_18

    if-lez p1, :cond_18

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p1, v0, :cond_18

    sget-object p1, Lcom/google/zxing/client/result/ResultParser;->b:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method protected static e(Ljava/lang/CharSequence;II)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    if-gtz p2, :cond_6

    goto :goto_1e

    :cond_6
    add-int/2addr p2, p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v1, p2, :cond_1e

    sget-object v1, Lcom/google/zxing/client/result/ResultParser;->b:Ljava/util/regex/Pattern;

    invoke-interface {p0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    :goto_1e
    return v0
.end method

.method static f(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;
    .registers 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_58

    invoke-virtual {p1, p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_11

    goto :goto_58

    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    const/4 v5, 0x1

    move-object v5, v4

    const/4 v6, 0x1

    move v4, v3

    :goto_1a
    if-eqz v6, :cond_55

    invoke-virtual {p1, p2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gez v4, :cond_28

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_26
    const/4 v6, 0x0

    goto :goto_1a

    :cond_28
    invoke-static {p1, v4}, Lcom/google/zxing/client/result/ResultParser;->b(Ljava/lang/CharSequence;I)I

    move-result v7

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_33

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_33
    if-nez v5, :cond_3b

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    :cond_3b
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/zxing/client/result/ResultParser;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz p3, :cond_49

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    :cond_49
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_52

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_55
    move v3, v4

    move-object v4, v5

    goto :goto_8

    :cond_58
    :goto_58
    if-eqz v4, :cond_6a

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_61

    goto :goto_6a

    :cond_61
    sget-object p0, Lcom/google/zxing/client/result/ResultParser;->e:[Ljava/lang/String;

    invoke-interface {v4, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_6a
    :goto_6a
    return-object v1
.end method

.method static g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/client/result/ResultParser;->f(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_b

    :cond_8
    const/4 p1, 0x0

    aget-object p0, p0, p1

    :goto_b
    return-object p0
.end method

.method protected static h(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_b

    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    move-object p0, v0

    :goto_b
    return-object p0
.end method

.method protected static j(C)I
    .registers 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x61

    if-lt p0, v0, :cond_16

    const/16 v1, 0x66

    if-gt p0, v1, :cond_16

    :goto_12
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_16
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1f

    const/16 v1, 0x46

    if-gt p0, v1, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method static k(Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sget-object v2, Lcom/google/zxing/client/result/ResultParser;->c:Ljava/util/regex/Pattern;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_28

    aget-object v3, p0, v2

    invoke-static {v3, v1}, Lcom/google/zxing/client/result/ResultParser;->a(Ljava/lang/CharSequence;Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_28
    return-object v1
.end method

.method protected static l(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_9

    return-object p0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, -0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_1d
    if-ge v1, v2, :cond_31

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-nez v4, :cond_2a

    if-eq v6, v0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v4, 0x1

    goto :goto_2e

    :cond_2a
    :goto_2a
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static m(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseResult(Lcom/google/zxing/d;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 5

    sget-object v0, Lcom/google/zxing/client/result/ResultParser;->a:[Lcom/google/zxing/client/result/ResultParser;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Lcom/google/zxing/client/result/ResultParser;->i(Lcom/google/zxing/d;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v3

    if-eqz v3, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public abstract i(Lcom/google/zxing/d;)Lcom/google/zxing/client/result/ParsedResult;
.end method
