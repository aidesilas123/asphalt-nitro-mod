###### Class com.google.android.material.color.b (com.google.android.material.color.b)
.class final Lcom/google/android/material/color/b;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/b$b;,
        Lcom/google/android/material/color/b$d;,
        Lcom/google/android/material/color/b$f;,
        Lcom/google/android/material/color/b$j;,
        Lcom/google/android/material/color/b$k;,
        Lcom/google/android/material/color/b$c;,
        Lcom/google/android/material/color/b$i;,
        Lcom/google/android/material/color/b$h;,
        Lcom/google/android/material/color/b$e;,
        Lcom/google/android/material/color/b$g;
    }
.end annotation


# static fields
.field private static a:B

.field private static final b:Lcom/google/android/material/color/b$d;

.field private static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/material/color/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/material/color/b$d;

    const/4 v1, 0x1

    const-string v2, "android"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/color/b$d;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/material/color/b;->b:Lcom/google/android/material/color/b$d;

    new-instance v0, Lcom/google/android/material/color/b$a;

    invoke-direct {v0}, Lcom/google/android/material/color/b$a;-><init>()V

    sput-object v0, Lcom/google/android/material/color/b;->c:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic a(C)[B
    .registers 1

    invoke-static {p0}, Lcom/google/android/material/color/b;->h(C)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic b()B
    .registers 1

    sget-byte v0, Lcom/google/android/material/color/b;->a:B

    return v0
.end method

.method static synthetic c()Ljava/util/Comparator;
    .registers 1

    sget-object v0, Lcom/google/android/material/color/b;->c:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic d(I)[B
    .registers 1

    invoke-static {p0}, Lcom/google/android/material/color/b;->j(I)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(S)[B
    .registers 1

    invoke-static {p0}, Lcom/google/android/material/color/b;->k(S)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Ljava/lang/String;)[B
    .registers 1

    invoke-static {p0}, Lcom/google/android/material/color/b;->m(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Ljava/lang/String;)[B
    .registers 1

    invoke-static {p0}, Lcom/google/android/material/color/b;->l(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static h(C)[B
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method static i(Landroid/content/Context;Ljava/util/Map;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_108

    new-instance v0, Lcom/google/android/material/color/b$d;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7f

    invoke-direct {v0, v2, v1}, Lcom/google/android/material/color/b$d;-><init>(ILjava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v4, Lcom/google/android/material/color/b$b;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/material/color/b$b;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "color"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    invoke-static {v4}, Lcom/google/android/material/color/b$b;->e(Lcom/google/android/material/color/b$b;)B

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_7e

    sget-object v3, Lcom/google/android/material/color/b;->b:Lcom/google/android/material/color/b$d;

    goto :goto_85

    :cond_7e
    invoke-static {v4}, Lcom/google/android/material/color/b$b;->e(Lcom/google/android/material/color/b$b;)B

    move-result v3

    if-ne v3, v2, :cond_9e

    move-object v3, v0

    :goto_85
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_93

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_93
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    goto :goto_23

    :cond_9e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not supported with unknown package id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/google/android/material/color/b$b;->e(Lcom/google/android/material/color/b$b;)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Non color resource found: name="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/google/android/material/color/b$b;->b(Lcom/google/android/material/color/b$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", typeId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/google/android/material/color/b$b;->d(Lcom/google/android/material/color/b$b;)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e6
    invoke-static {v3}, Lcom/google/android/material/color/b$b;->d(Lcom/google/android/material/color/b$b;)B

    move-result p0

    sput-byte p0, Lcom/google/android/material/color/b;->a:B

    if-eqz p0, :cond_100

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance p1, Lcom/google/android/material/color/b$g;

    invoke-direct {p1, v1}, Lcom/google/android/material/color/b$g;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, p0}, Lcom/google/android/material/color/b$g;->b(Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_100
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No color resources found for harmonization."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_108
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No color resources provided for harmonization."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static j(I)[B
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method

.method private static k(S)[B
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method private static l(Ljava/lang/String;)[B
    .registers 10

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    new-array v1, v0, [B

    array-length v2, p0

    int-to-short v2, v2

    invoke-static {v2}, Lcom/google/android/material/color/b;->k(S)[B

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v4, v2, v3

    aput-byte v4, v1, v3

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    aput-byte v2, v1, v4

    const/4 v2, 0x0

    :goto_1c
    array-length v5, p0

    if-ge v2, v5, :cond_36

    aget-char v5, p0, v2

    invoke-static {v5}, Lcom/google/android/material/color/b;->h(C)[B

    move-result-object v5

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v7, v6, 0x2

    aget-byte v8, v5, v3

    aput-byte v8, v1, v7

    add-int/lit8 v6, v6, 0x3

    aget-byte v5, v5, v4

    aput-byte v5, v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_36
    add-int/lit8 p0, v0, -0x2

    aput-byte v3, v1, p0

    sub-int/2addr v0, v4

    aput-byte v3, v1, v0

    return-object v1
.end method

.method private static m(Ljava/lang/String;)[B
    .registers 6

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length v0, p0

    int-to-byte v0, v0

    array-length v1, p0

    add-int/lit8 v1, v1, 0x3

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p0, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x1

    aput-byte v0, v2, p0

    aput-byte v0, v2, v3

    sub-int/2addr v1, p0

    aput-byte v3, v2, v1

    return-object v2
.end method
