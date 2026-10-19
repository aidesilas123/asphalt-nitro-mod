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

###### Class com.google.android.material.color.b.a (com.google.android.material.color.b$a)
.class Lcom/google/android/material/color/b$a;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/material/color/b$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/color/b$b;Lcom/google/android/material/color/b$b;)I
    .registers 3

    invoke-static {p1}, Lcom/google/android/material/color/b$b;->a(Lcom/google/android/material/color/b$b;)S

    move-result p1

    invoke-static {p2}, Lcom/google/android/material/color/b$b;->a(Lcom/google/android/material/color/b$b;)S

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/material/color/b$b;

    check-cast p2, Lcom/google/android/material/color/b$b;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/color/b$a;->a(Lcom/google/android/material/color/b$b;Lcom/google/android/material/color/b$b;)I

    move-result p1

    return p1
.end method

###### Class com.google.android.material.color.b.C0229b (com.google.android.material.color.b$b)
.class Lcom/google/android/material/color/b$b;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:B

.field private final b:B

.field private final c:S

.field private final d:Ljava/lang/String;

.field private final e:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/color/b$b;->d:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/material/color/b$b;->e:I

    const p2, 0xffff

    and-int/2addr p2, p1

    int-to-short p2, p2

    iput-short p2, p0, Lcom/google/android/material/color/b$b;->c:S

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    iput-byte p2, p0, Lcom/google/android/material/color/b$b;->b:B

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/material/color/b$b;->a:B

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/color/b$b;)S
    .registers 1

    iget-short p0, p0, Lcom/google/android/material/color/b$b;->c:S

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/color/b$b;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/color/b$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/color/b$b;)I
    .registers 1

    iget p0, p0, Lcom/google/android/material/color/b$b;->e:I

    return p0
.end method

.method static synthetic d(Lcom/google/android/material/color/b$b;)B
    .registers 1

    iget-byte p0, p0, Lcom/google/android/material/color/b$b;->b:B

    return p0
.end method

.method static synthetic e(Lcom/google/android/material/color/b$b;)B
    .registers 1

    iget-byte p0, p0, Lcom/google/android/material/color/b$b;->a:B

    return p0
.end method

###### Class com.google.android.material.color.b.c (com.google.android.material.color.b$c)
.class Lcom/google/android/material/color/b$c;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/color/b$e;

.field private final b:Lcom/google/android/material/color/b$d;

.field private final c:Lcom/google/android/material/color/b$h;

.field private final d:Lcom/google/android/material/color/b$h;

.field private final e:Lcom/google/android/material/color/b$k;


# direct methods
.method constructor <init>(Lcom/google/android/material/color/b$d;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/color/b$d;",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/b$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/color/b$c;->b:Lcom/google/android/material/color/b$d;

    new-instance p1, Lcom/google/android/material/color/b$h;

    const-string v0, "?1"

    const-string v1, "?2"

    const-string v2, "?3"

    const-string v3, "?4"

    const-string v4, "?5"

    const-string v5, "color"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/google/android/material/color/b$h;-><init>(Z[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/material/color/b$c;->c:Lcom/google/android/material/color/b$h;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    :goto_23
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_38

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/b$b;

    invoke-static {v0}, Lcom/google/android/material/color/b$b;->b(Lcom/google/android/material/color/b$b;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_38
    new-instance v0, Lcom/google/android/material/color/b$h;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/color/b$h;-><init>(Z[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/material/color/b$c;->d:Lcom/google/android/material/color/b$h;

    new-instance p1, Lcom/google/android/material/color/b$k;

    invoke-direct {p1, p2}, Lcom/google/android/material/color/b$k;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/google/android/material/color/b$c;->e:Lcom/google/android/material/color/b$k;

    new-instance p1, Lcom/google/android/material/color/b$e;

    const/16 p2, 0x200

    const/16 v0, 0x120

    invoke-virtual {p0}, Lcom/google/android/material/color/b$c;->a()I

    move-result v1

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/material/color/b$e;-><init>(SSI)V

    iput-object p1, p0, Lcom/google/android/material/color/b$c;->a:Lcom/google/android/material/color/b$e;

    return-void
.end method


# virtual methods
.method a()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/color/b$c;->c:Lcom/google/android/material/color/b$h;

    invoke-virtual {v0}, Lcom/google/android/material/color/b$h;->a()I

    move-result v0

    add-int/lit16 v0, v0, 0x120

    iget-object v1, p0, Lcom/google/android/material/color/b$c;->d:Lcom/google/android/material/color/b$h;

    invoke-virtual {v1}, Lcom/google/android/material/color/b$h;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/color/b$c;->e:Lcom/google/android/material/color/b$k;

    invoke-virtual {v1}, Lcom/google/android/material/color/b$k;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method b(Ljava/io/ByteArrayOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/color/b$c;->a:Lcom/google/android/material/color/b$e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/b$e;->a(Ljava/io/ByteArrayOutputStream;)V

    iget-object v0, p0, Lcom/google/android/material/color/b$c;->b:Lcom/google/android/material/color/b$d;

    invoke-static {v0}, Lcom/google/android/material/color/b$d;->a(Lcom/google/android/material/color/b$d;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/google/android/material/color/b$c;->b:Lcom/google/android/material/color/b$d;

    invoke-static {v0}, Lcom/google/android/material/color/b$d;->b(Lcom/google/android/material/color/b$d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1e
    const/16 v3, 0x80

    if-ge v2, v3, :cond_39

    array-length v3, v0

    if-ge v2, v3, :cond_2f

    aget-char v3, v0, v2

    invoke-static {v3}, Lcom/google/android/material/color/b;->a(C)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_36

    :cond_2f
    invoke-static {v1}, Lcom/google/android/material/color/b;->a(C)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_39
    const/16 v0, 0x120

    invoke-static {v0}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {v1}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v2, p0, Lcom/google/android/material/color/b$c;->c:Lcom/google/android/material/color/b$h;

    invoke-virtual {v2}, Lcom/google/android/material/color/b$h;->a()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v2}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {v1}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {v1}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/google/android/material/color/b$c;->c:Lcom/google/android/material/color/b$h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/b$h;->c(Ljava/io/ByteArrayOutputStream;)V

    iget-object v0, p0, Lcom/google/android/material/color/b$c;->d:Lcom/google/android/material/color/b$h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/b$h;->c(Ljava/io/ByteArrayOutputStream;)V

    iget-object v0, p0, Lcom/google/android/material/color/b$c;->e:Lcom/google/android/material/color/b$k;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/b$k;->c(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method

###### Class com.google.android.material.color.b.d (com.google.android.material.color.b$d)
.class Lcom/google/android/material/color/b$d;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/color/b$d;->a:I

    iput-object p2, p0, Lcom/google/android/material/color/b$d;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/color/b$d;)I
    .registers 1

    iget p0, p0, Lcom/google/android/material/color/b$d;->a:I

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/color/b$d;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/color/b$d;->b:Ljava/lang/String;

    return-object p0
.end method

###### Class com.google.android.material.color.b.e (com.google.android.material.color.b$e)
.class Lcom/google/android/material/color/b$e;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:S

.field private final b:S

.field private final c:I


# direct methods
.method constructor <init>(SSI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/google/android/material/color/b$e;->a:S

    iput-short p2, p0, Lcom/google/android/material/color/b$e;->b:S

    iput p3, p0, Lcom/google/android/material/color/b$e;->c:I

    return-void
.end method


# virtual methods
.method a(Ljava/io/ByteArrayOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lcom/google/android/material/color/b$e;->a:S

    invoke-static {v0}, Lcom/google/android/material/color/b;->e(S)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-short v0, p0, Lcom/google/android/material/color/b$e;->b:S

    invoke-static {v0}, Lcom/google/android/material/color/b;->e(S)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v0, p0, Lcom/google/android/material/color/b$e;->c:I

    invoke-static {v0}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

###### Class com.google.android.material.color.b.f (com.google.android.material.color.b$f)
.class Lcom/google/android/material/color/b$f;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/color/b$f;->a:I

    iput p2, p0, Lcom/google/android/material/color/b$f;->b:I

    return-void
.end method


# virtual methods
.method a(Ljava/io/ByteArrayOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/material/color/b;->e(S)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/material/color/b;->e(S)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v2, p0, Lcom/google/android/material/color/b$f;->a:I

    invoke-static {v2}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {v0}, Lcom/google/android/material/color/b;->e(S)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v0, v1, [B

    fill-array-data v0, :array_34

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v0, p0, Lcom/google/android/material/color/b$f;->b:I

    invoke-static {v0}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void

    nop

    :array_34
    .array-data 1
        0x0t
        0x1ct
    .end array-data
.end method

###### Class com.google.android.material.color.b.g (com.google.android.material.color.b$g)
.class Lcom/google/android/material/color/b$g;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/color/b$e;

.field private final b:I

.field private final c:Lcom/google/android/material/color/b$h;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/color/b$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/android/material/color/b$d;",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/b$b;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/b$g;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/color/b$g;->b:I

    new-instance v0, Lcom/google/android/material/color/b$h;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/material/color/b$h;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/material/color/b$g;->c:Lcom/google/android/material/color/b$h;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {}, Lcom/google/android/material/color/b;->c()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/google/android/material/color/b$g;->d:Ljava/util/List;

    new-instance v3, Lcom/google/android/material/color/b$c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/b$d;

    invoke-direct {v3, v0, v1}, Lcom/google/android/material/color/b$c;-><init>(Lcom/google/android/material/color/b$d;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_4c
    new-instance p1, Lcom/google/android/material/color/b$e;

    const/4 v0, 0x2

    const/16 v1, 0xc

    invoke-direct {p0}, Lcom/google/android/material/color/b$g;->a()I

    move-result v2

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/material/color/b$e;-><init>(SSI)V

    iput-object p1, p0, Lcom/google/android/material/color/b$g;->a:Lcom/google/android/material/color/b$e;

    return-void
.end method

.method private a()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/material/color/b$g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/b$c;

    invoke-virtual {v2}, Lcom/google/android/material/color/b$c;->a()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_7

    :cond_19
    iget-object v0, p0, Lcom/google/android/material/color/b$g;->c:Lcom/google/android/material/color/b$h;

    invoke-virtual {v0}, Lcom/google/android/material/color/b$h;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method b(Ljava/io/ByteArrayOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/color/b$g;->a:Lcom/google/android/material/color/b$e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/b$e;->a(Ljava/io/ByteArrayOutputStream;)V

    iget v0, p0, Lcom/google/android/material/color/b$g;->b:I

    invoke-static {v0}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/google/android/material/color/b$g;->c:Lcom/google/android/material/color/b$h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/b$h;->c(Ljava/io/ByteArrayOutputStream;)V

    iget-object v0, p0, Lcom/google/android/material/color/b$g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/color/b$c;

    invoke-virtual {v1, p1}, Lcom/google/android/material/color/b$c;->b(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_19

    :cond_29
    return-void
.end method

###### Class com.google.android.material.color.b.h (com.google.android.material.color.b$h)
.class Lcom/google/android/material/color/b$h;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/color/b$e;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/b$i;",
            ">;>;"
        }
    .end annotation
.end field

.field private final j:Z

.field private final k:I

.field private final l:I


# direct methods
.method varargs constructor <init>(Z[Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/b$h;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/b$h;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/b$h;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/b$h;->i:Ljava/util/List;

    iput-boolean p1, p0, Lcom/google/android/material/color/b$h;->j:Z

    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_25
    if-ge v1, p1, :cond_4c

    aget-object v3, p2, v1

    invoke-direct {p0, v3}, Lcom/google/android/material/color/b$h;->b(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/material/color/b$h;->f:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, [B

    array-length v5, v5

    add-int/2addr v2, v5

    iget-object v5, p0, Lcom/google/android/material/color/b$h;->h:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/google/android/material/color/b$h;->i:Ljava/util/List;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_4c
    iget-object p1, p0, Lcom/google/android/material/color/b$h;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_63
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/color/b$i;

    iget-object v6, p0, Lcom/google/android/material/color/b$h;->f:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lcom/google/android/material/color/b$i;->a(Lcom/google/android/material/color/b$i;)[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v2, v6

    iget-object v6, p0, Lcom/google/android/material/color/b$h;->h:Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/material/color/b$i;->a(Lcom/google/android/material/color/b$i;)[B

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :cond_88
    iget-object v4, p0, Lcom/google/android/material/color/b$h;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xc

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v1, v3

    goto :goto_53

    :cond_9b
    rem-int/lit8 p1, v2, 0x4

    if-nez p1, :cond_a1

    const/4 p1, 0x0

    goto :goto_a3

    :cond_a1
    rsub-int/lit8 p1, p1, 0x4

    :goto_a3
    iput p1, p0, Lcom/google/android/material/color/b$h;->k:I

    iget-object v3, p0, Lcom/google/android/material/color/b$h;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/google/android/material/color/b$h;->b:I

    iget-object v4, p0, Lcom/google/android/material/color/b$h;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    array-length v5, p2

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/material/color/b$h;->c:I

    iget-object v4, p0, Lcom/google/android/material/color/b$h;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    array-length p2, p2

    sub-int/2addr v4, p2

    const/4 p2, 0x1

    if-lez v4, :cond_c4

    const/4 v4, 0x1

    goto :goto_c5

    :cond_c4
    const/4 v4, 0x0

    :goto_c5
    if-nez v4, :cond_d1

    iget-object v5, p0, Lcom/google/android/material/color/b$h;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/google/android/material/color/b$h;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    :cond_d1
    mul-int/lit8 v3, v3, 0x4

    const/16 v5, 0x1c

    add-int/2addr v3, v5

    iget-object v6, p0, Lcom/google/android/material/color/b$h;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v3, v6

    iput v3, p0, Lcom/google/android/material/color/b$h;->d:I

    add-int/2addr v2, p1

    if-eqz v4, :cond_e7

    add-int p1, v3, v2

    goto :goto_e8

    :cond_e7
    const/4 p1, 0x0

    :goto_e8
    iput p1, p0, Lcom/google/android/material/color/b$h;->e:I

    add-int/2addr v3, v2

    if-eqz v4, :cond_ee

    move v0, v1

    :cond_ee
    add-int/2addr v3, v0

    iput v3, p0, Lcom/google/android/material/color/b$h;->l:I

    new-instance p1, Lcom/google/android/material/color/b$e;

    invoke-direct {p1, p2, v5, v3}, Lcom/google/android/material/color/b$e;-><init>(SSI)V

    iput-object p1, p0, Lcom/google/android/material/color/b$h;->a:Lcom/google/android/material/color/b$e;

    return-void
.end method

.method varargs constructor <init>([Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/color/b$h;-><init>(Z[Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "[B",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/b$i;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroid/util/Pair;

    iget-boolean v1, p0, Lcom/google/android/material/color/b$h;->j:Z

    if-eqz v1, :cond_b

    invoke-static {p1}, Lcom/google/android/material/color/b;->f(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_f

    :cond_b
    invoke-static {p1}, Lcom/google/android/material/color/b;->g(Ljava/lang/String;)[B

    move-result-object p1

    :goto_f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/google/android/material/color/b$h;->l:I

    return v0
.end method

.method c(Ljava/io/ByteArrayOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/color/b$h;->a:Lcom/google/android/material/color/b$e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/b$e;->a(Ljava/io/ByteArrayOutputStream;)V

    iget v0, p0, Lcom/google/android/material/color/b$h;->b:I

    invoke-static {v0}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v0, p0, Lcom/google/android/material/color/b$h;->c:I

    invoke-static {v0}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-boolean v0, p0, Lcom/google/android/material/color/b$h;->j:Z

    if-eqz v0, :cond_1e

    const/16 v0, 0x100

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    invoke-static {v0}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v0, p0, Lcom/google/android/material/color/b$h;->d:I

    invoke-static {v0}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v0, p0, Lcom/google/android/material/color/b$h;->e:I

    invoke-static {v0}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/google/android/material/color/b$h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_3e

    :cond_56
    iget-object v0, p0, Lcom/google/android/material/color/b$h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_5c

    :cond_74
    iget-object v0, p0, Lcom/google/android/material/color/b$h;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_7a

    :cond_8a
    iget v0, p0, Lcom/google/android/material/color/b$h;->k:I

    if-lez v0, :cond_93

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_93
    iget-object v0, p0, Lcom/google/android/material/color/b$h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_99
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/b$i;

    invoke-virtual {v2, p1}, Lcom/google/android/material/color/b$i;->b(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_a9

    :cond_b9
    const/4 v1, -0x1

    invoke-static {v1}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_99

    :cond_c2
    return-void
.end method

###### Class com.google.android.material.color.b.i (com.google.android.material.color.b$i)
.class Lcom/google/android/material/color/b$i;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/color/b$i;)[B
    .registers 1

    iget-object p0, p0, Lcom/google/android/material/color/b$i;->a:[B

    return-object p0
.end method


# virtual methods
.method b(Ljava/io/ByteArrayOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/material/color/b$i;->b:I

    invoke-static {v0}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v0, p0, Lcom/google/android/material/color/b$i;->c:I

    invoke-static {v0}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v0, p0, Lcom/google/android/material/color/b$i;->d:I

    invoke-static {v0}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

###### Class com.google.android.material.color.b.j (com.google.android.material.color.b$j)
.class Lcom/google/android/material/color/b$j;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/color/b$e;

.field private final b:I

.field private final c:[B

.field private final d:[I

.field private final e:[Lcom/google/android/material/color/b$f;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Set;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/b$b;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Short;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/android/material/color/b$j;->c:[B

    iput p3, p0, Lcom/google/android/material/color/b$j;->b:I

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/material/color/b$f;

    iput-object v0, p0, Lcom/google/android/material/color/b$j;->e:[Lcom/google/android/material/color/b$f;

    const/4 v0, 0x0

    :goto_17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/color/b$b;

    iget-object v3, p0, Lcom/google/android/material/color/b$j;->e:[Lcom/google/android/material/color/b$f;

    new-instance v4, Lcom/google/android/material/color/b$f;

    invoke-static {v1}, Lcom/google/android/material/color/b$b;->c(Lcom/google/android/material/color/b$b;)I

    move-result v1

    invoke-direct {v4, v0, v1}, Lcom/google/android/material/color/b$f;-><init>(II)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_33
    new-array p1, p3, [I

    iput-object p1, p0, Lcom/google/android/material/color/b$j;->d:[I

    const/4 p1, 0x0

    :goto_38
    if-ge v2, p3, :cond_54

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/google/android/material/color/b$j;->d:[I

    aput p1, v0, v2

    add-int/lit8 p1, p1, 0x10

    goto :goto_50

    :cond_4b
    iget-object v0, p0, Lcom/google/android/material/color/b$j;->d:[I

    const/4 v1, -0x1

    aput v1, v0, v2

    :goto_50
    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    goto :goto_38

    :cond_54
    new-instance p1, Lcom/google/android/material/color/b$e;

    const/16 p2, 0x201

    const/16 p3, 0x54

    invoke-virtual {p0}, Lcom/google/android/material/color/b$j;->a()I

    move-result v0

    invoke-direct {p1, p2, p3, v0}, Lcom/google/android/material/color/b$e;-><init>(SSI)V

    iput-object p1, p0, Lcom/google/android/material/color/b$j;->a:Lcom/google/android/material/color/b$e;

    return-void
.end method

.method private b()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/material/color/b$j;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x54

    return v0
.end method

.method private c()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/color/b$j;->d:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method a()I
    .registers 3

    invoke-direct {p0}, Lcom/google/android/material/color/b$j;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/color/b$j;->e:[Lcom/google/android/material/color/b$f;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    return v0
.end method

.method d(Ljava/io/ByteArrayOutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/color/b$j;->a:Lcom/google/android/material/color/b$e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/b$e;->a(Ljava/io/ByteArrayOutputStream;)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-static {}, Lcom/google/android/material/color/b;->b()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v0, p0, Lcom/google/android/material/color/b$j;->b:I

    invoke-static {v0}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-direct {p0}, Lcom/google/android/material/color/b$j;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/google/android/material/color/b$j;->c:[B

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/google/android/material/color/b$j;->d:[I

    array-length v1, v0

    const/4 v3, 0x0

    :goto_38
    if-ge v3, v1, :cond_46

    aget v4, v0, v3

    invoke-static {v4}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_46
    iget-object v0, p0, Lcom/google/android/material/color/b$j;->e:[Lcom/google/android/material/color/b$f;

    array-length v1, v0

    :goto_49
    if-ge v2, v1, :cond_53

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/material/color/b$f;->a(Ljava/io/ByteArrayOutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_53
    return-void
.end method

###### Class com.google.android.material.color.b.k (com.google.android.material.color.b$k)
.class Lcom/google/android/material/color/b$k;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/color/b$e;

.field private final b:I

.field private final c:[I

.field private final d:Lcom/google/android/material/color/b$j;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/b$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/b$b;

    invoke-static {v0}, Lcom/google/android/material/color/b$b;->a(Lcom/google/android/material/color/b$b;)S

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/color/b$k;->b:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/b$b;

    invoke-static {v2}, Lcom/google/android/material/color/b$b;->a(Lcom/google/android/material/color/b$b;)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_38
    iget v1, p0, Lcom/google/android/material/color/b$k;->b:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/android/material/color/b$k;->c:[I

    const/4 v1, 0x0

    :goto_3f
    iget v2, p0, Lcom/google/android/material/color/b$k;->b:I

    if-ge v1, v2, :cond_57

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/google/android/material/color/b$k;->c:[I

    const/high16 v3, 0x40000000    # 2.0f

    aput v3, v2, v1

    :cond_53
    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_3f

    :cond_57
    new-instance v1, Lcom/google/android/material/color/b$e;

    const/16 v2, 0x202

    const/16 v3, 0x10

    invoke-direct {p0}, Lcom/google/android/material/color/b$k;->a()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/color/b$e;-><init>(SSI)V

    iput-object v1, p0, Lcom/google/android/material/color/b$k;->a:Lcom/google/android/material/color/b$e;

    new-instance v1, Lcom/google/android/material/color/b$j;

    iget v2, p0, Lcom/google/android/material/color/b$k;->b:I

    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/material/color/b$j;-><init>(Ljava/util/List;Ljava/util/Set;I)V

    iput-object v1, p0, Lcom/google/android/material/color/b$k;->d:Lcom/google/android/material/color/b$j;

    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/google/android/material/color/b$k;->b:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x10

    return v0
.end method


# virtual methods
.method b()I
    .registers 3

    invoke-direct {p0}, Lcom/google/android/material/color/b$k;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/color/b$k;->d:Lcom/google/android/material/color/b$j;

    invoke-virtual {v1}, Lcom/google/android/material/color/b$j;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method c(Ljava/io/ByteArrayOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/color/b$k;->a:Lcom/google/android/material/color/b$e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/b$e;->a(Ljava/io/ByteArrayOutputStream;)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-static {}, Lcom/google/android/material/color/b;->b()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v0, p0, Lcom/google/android/material/color/b$k;->b:I

    invoke-static {v0}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/google/android/material/color/b$k;->c:[I

    array-length v1, v0

    :goto_27
    if-ge v2, v1, :cond_35

    aget v3, v0, v2

    invoke-static {v3}, Lcom/google/android/material/color/b;->d(I)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_35
    iget-object v0, p0, Lcom/google/android/material/color/b$k;->d:Lcom/google/android/material/color/b$j;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/b$j;->d(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
