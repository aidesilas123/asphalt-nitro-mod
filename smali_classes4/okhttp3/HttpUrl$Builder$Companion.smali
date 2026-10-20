###### Class okhttp3.HttpUrl.Builder.Companion (okhttp3.HttpUrl$Builder$Companion)
.class public final Lokhttp3/HttpUrl$Builder$Companion;
.super Ljava/lang/Object;
.source "HttpUrl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J \u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J \u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u001c\u0010\u000c\u001a\u00020\u0006*\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lokhttp3/HttpUrl$Builder$Companion;",
        "",
        "()V",
        "INVALID_HOST",
        "",
        "parsePort",
        "",
        "input",
        "pos",
        "limit",
        "portColonOffset",
        "schemeDelimiterOffset",
        "slashCount",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lokhttp3/HttpUrl$Builder$Companion;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;II)I
    .registers 17

    const/4 v0, -0x1

    :try_start_1
    sget-object v1, Lokhttp3/HttpUrl;->a:Lokhttp3/HttpUrl$Companion;

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xf8

    const/4 v12, 0x0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    invoke-static/range {v1 .. v12}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_19} :catch_25

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v3, v1, :cond_22

    const/high16 v4, 0x10000

    if-ge v1, v4, :cond_22

    const/4 v2, 0x1

    :cond_22
    if-eqz v2, :cond_25

    move v0, v1

    :catch_25
    :cond_25
    return v0
.end method

.method public static final synthetic access$parsePort(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->a(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$portColonOffset(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->b(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$schemeDelimiterOffset(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->c(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$slashCount(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->d(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private final b(Ljava/lang/String;II)I
    .registers 6

    :goto_0
    if-ge p2, p3, :cond_1f

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_17

    :cond_a
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_1c

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_a

    goto :goto_1c

    :cond_17
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_1c

    return p2

    :cond_1c
    :goto_1c
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1f
    return p3
.end method

.method private final c(Ljava/lang/String;II)I
    .registers 13

    sub-int v0, p3, p2

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_7

    return v1

    :cond_7
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x61

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    const/16 v4, 0x41

    if-ltz v3, :cond_1d

    const/16 v3, 0x7a

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-lez v3, :cond_2d

    :cond_1d
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-ltz v3, :cond_7f

    const/16 v3, 0x5a

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-lez v0, :cond_2d

    goto/16 :goto_7f

    :cond_2d
    const/4 v0, 0x1

    add-int/2addr p2, v0

    :goto_2f
    if-ge p2, p3, :cond_7f

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x0

    if-gt v2, v5, :cond_40

    const/16 v7, 0x7b

    if-ge v5, v7, :cond_40

    const/4 v7, 0x1

    goto :goto_41

    :cond_40
    const/4 v7, 0x0

    :goto_41
    if-eqz v7, :cond_45

    :goto_43
    const/4 v7, 0x1

    goto :goto_4d

    :cond_45
    if-gt v4, v5, :cond_4c

    const/16 v7, 0x5b

    if-ge v5, v7, :cond_4c

    goto :goto_43

    :cond_4c
    const/4 v7, 0x0

    :goto_4d
    const/16 v8, 0x3a

    if-eqz v7, :cond_53

    :goto_51
    const/4 v7, 0x1

    goto :goto_5b

    :cond_53
    const/16 v7, 0x30

    if-gt v7, v5, :cond_5a

    if-ge v5, v8, :cond_5a

    goto :goto_51

    :cond_5a
    const/4 v7, 0x0

    :goto_5b
    if-eqz v7, :cond_5f

    :goto_5d
    const/4 v7, 0x1

    goto :goto_65

    :cond_5f
    const/16 v7, 0x2b

    if-ne v5, v7, :cond_64

    goto :goto_5d

    :cond_64
    const/4 v7, 0x0

    :goto_65
    if-eqz v7, :cond_69

    :goto_67
    const/4 v7, 0x1

    goto :goto_6f

    :cond_69
    const/16 v7, 0x2d

    if-ne v5, v7, :cond_6e

    goto :goto_67

    :cond_6e
    const/4 v7, 0x0

    :goto_6f
    if-eqz v7, :cond_73

    :goto_71
    const/4 v6, 0x1

    goto :goto_78

    :cond_73
    const/16 v7, 0x2e

    if-ne v5, v7, :cond_78

    goto :goto_71

    :cond_78
    :goto_78
    if-eqz v6, :cond_7c

    move p2, v3

    goto :goto_2f

    :cond_7c
    if-ne v5, v8, :cond_7f

    move v1, p2

    :cond_7f
    :goto_7f
    return v1
.end method

.method private final d(Ljava/lang/String;II)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge p2, p3, :cond_15

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v2, 0x5c

    if-eq p2, v2, :cond_11

    const/16 v2, 0x2f

    if-ne p2, v2, :cond_15

    :cond_11
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_1

    :cond_15
    return v0
.end method
