###### Class com.google.zxing.client.result.c0 (com.google.zxing.client.result.c0)
.class public final Lcom/google/zxing/client/result/c0;
.super Lcom/google/zxing/client/result/ResultParser;
.source "VEventResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static n(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/google/zxing/client/result/b0;->q(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_16

    :cond_f
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method private static o(Ljava/lang/CharSequence;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/google/zxing/client/result/b0;->r(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2a

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_2a

    :cond_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array v0, p1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_16
    if-ge v2, p1, :cond_29

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_29
    return-object v0

    :cond_2a
    :goto_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static q(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_17

    const-string v0, "mailto:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "MAILTO:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_12
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_17
    return-object p0
.end method


# virtual methods
.method public bridge synthetic i(Lcom/google/zxing/d;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/c0;->p(Lcom/google/zxing/d;)Lcom/google/zxing/client/result/g;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/google/zxing/d;)Lcom/google/zxing/client/result/g;
    .registers 18

    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ResultParser;->c(Lcom/google/zxing/d;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BEGIN:VEVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_e

    return-object v2

    :cond_e
    const-string v1, "SUMMARY"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/c0;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "DTSTART"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/c0;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1d

    return-object v2

    :cond_1d
    const-string v1, "DTEND"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/c0;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "DURATION"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/c0;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "LOCATION"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/c0;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "ORGANIZER"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/c0;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/client/result/c0;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "ATTENDEE"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/c0;->o(Ljava/lang/CharSequence;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x0

    if-eqz v10, :cond_51

    const/4 v3, 0x0

    :goto_43
    array-length v11, v10

    if-ge v3, v11, :cond_51

    aget-object v11, v10, v3

    invoke-static {v11}, Lcom/google/zxing/client/result/c0;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_51
    const-string v3, "DESCRIPTION"

    invoke-static {v3, v0}, Lcom/google/zxing/client/result/c0;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "GEO"

    invoke-static {v3, v0}, Lcom/google/zxing/client/result/c0;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    if-nez v0, :cond_63

    move-wide v14, v12

    goto :goto_7f

    :cond_63
    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_6c

    return-object v2

    :cond_6c
    :try_start_6c
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_6c .. :try_end_7e} :catch_86

    move-wide v14, v0

    :goto_7f
    :try_start_7f
    new-instance v0, Lcom/google/zxing/client/result/g;

    move-object v3, v0

    invoke-direct/range {v3 .. v15}, Lcom/google/zxing/client/result/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    :try_end_85
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7f .. :try_end_85} :catch_86

    return-object v0

    :catch_86
    return-object v2
.end method
