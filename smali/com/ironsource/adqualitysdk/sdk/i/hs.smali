###### Class com.json.adqualitysdk.sdk.i.hs (com.ironsource.adqualitysdk.sdk.i.hs)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/hs;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:I = 0x10

.field private static b:[C = null

.field private static c:C = '\u0005'

.field private static d:I = 0x0

.field private static e:I = 0x1


# instance fields
.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ironsource/adqualitysdk/sdk/i/hu$a;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->b:[C

    return-void

    :array_a
    .array-data 2
        0x20s
        0x74s
        0x79s
        0x70s
        0x65s
        0x66s
        0x72s
        0x6fs
        0x6ds
        0x63s
        0x6cs
        0x61s
        0x73s
        0x3as
        0x68s
        0x69s
        0x75s
        0x6es
        0x64s
        0x45s
        0x67s
        0x4fs
        0x62s
        0x6as
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v0, v0, 0x73

    const-string v1, ""

    invoke-static {v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0xb

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    const-string v4, "\uffff\u0007\u0002\u0000\u0011\uffe3\u0006\u000b\u0001\u0002\u000f\uffec"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->f:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/hp;)Lcom/ironsource/adqualitysdk/sdk/i/hp;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp;",
            ")",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_66

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    if-eq p1, v2, :cond_1e

    return-object p2

    :cond_1e
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 p1, p1, 0x2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    const-class v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const/4 v1, 0x1

    :cond_3b
    if-eq v1, v2, :cond_42

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_60

    :cond_42
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v2, v2, 0x61

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v2, v2, 0x2

    :goto_60
    invoke-static {p1, p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->q(Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hp;)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object p2

    move-object p0, v1

    goto :goto_10

    :cond_66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    const/4 p0, 0x0

    :try_start_6a
    throw p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception p0

    throw p0
.end method

.method private static b(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hu;I)Ljava/util/List;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3a

    if-nez v0, :cond_11

    const/16 v0, 0xf

    goto :goto_13

    :cond_11
    const/16 v0, 0x3a

    :goto_13
    if-ne v0, v1, :cond_2c

    invoke-virtual {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->ｋ(I)Z

    move-result v0

    invoke-virtual {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->ﻐ(I)Z

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->r(Ljava/lang/Object;ZZ)Ljava/util/List;

    move-result-object p0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :cond_2c
    invoke-virtual {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->ｋ(I)Z

    move-result v0

    invoke-virtual {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->ﻐ(I)Z

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->r(Ljava/lang/Object;ZZ)Ljava/util/List;

    const/4 p0, 0x0

    :try_start_38
    throw p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception p0

    throw p0
.end method

.method private static c(Ljava/lang/Object;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 v1, v0, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v3, 0x4e

    if-nez v1, :cond_11

    const/16 v1, 0x4e

    goto :goto_13

    :cond_11
    const/16 v1, 0x13

    :goto_13
    const/4 v4, 0x0

    if-eq v1, v3, :cond_1e

    if-eqz p0, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-eqz v1, :cond_4d

    goto :goto_23

    :cond_1e
    const/16 v1, 0x3c

    :try_start_20
    div-int/2addr v1, v4
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_56

    if-eqz p0, :cond_4d

    :goto_23
    add-int/lit8 v2, v2, 0x69

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v0, 0x55

    if-eqz v2, :cond_32

    const/16 v1, 0xc

    goto :goto_34

    :cond_32
    const/16 v1, 0x55

    :goto_34
    if-eq v1, v0, :cond_44

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->ｋ(Ljava/lang/Class;Ljava/util/List;)Z

    move-result p0

    const/16 p1, 0x33

    :try_start_40
    div-int/2addr p1, v4
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_42

    return p0

    :catchall_42
    move-exception p0

    throw p0

    :cond_44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->ｋ(Ljava/lang/Class;Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_4d
    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 v0, v0, 0x2

    return v4

    :catchall_56
    move-exception p0

    throw p0
.end method

.method private static d(Ljava/lang/Object;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hp;)Lcom/ironsource/adqualitysdk/sdk/i/hp;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp;",
            ")",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp<",
            "TT;>;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v0, v0, 0x2

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_16

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ht;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ht;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hp;)V

    return-object v0

    :cond_16
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_2c

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ht;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ht;-><init>(Ljava/util/Map;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hp;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 p0, p0, 0x15

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 p0, p0, 0x2

    return-object v0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .registers 9

    const-class v0, Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    const/16 v5, 0x33

    if-ge v4, v2, :cond_15

    const/16 v6, 0x33

    goto :goto_17

    :cond_15
    const/16 v6, 0x1e

    :goto_17
    if-eq v6, v5, :cond_2c

    new-array p0, v3, [Ljava/lang/reflect/Field;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Field;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :cond_2c
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v5, v5, 0x3

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v5, v5, 0x2

    const/16 v6, 0x8

    if-eqz v5, :cond_3d

    const/16 v5, 0x8

    goto :goto_3f

    :cond_3d
    const/16 v5, 0x3d

    :goto_3f
    if-eq v5, v6, :cond_4e

    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    goto :goto_66

    :cond_4e
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x5

    :try_start_59
    div-int/2addr v7, v3
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_6c

    const/16 v7, 0x30

    if-eqz v6, :cond_61

    const/16 v6, 0x30

    goto :goto_63

    :cond_61
    const/16 v6, 0x10

    :goto_63
    if-eq v6, v7, :cond_66

    goto :goto_69

    :cond_66
    :goto_66
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_69
    :goto_69
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :catchall_6c
    move-exception p0

    throw p0
.end method

.method private f(Lcom/ironsource/adqualitysdk/sdk/i/hp;Lcom/ironsource/adqualitysdk/sdk/i/hv;I)Lcom/ironsource/adqualitysdk/sdk/i/hp;
    .registers 11

    invoke-interface {p1}, Lcom/ironsource/adqualitysdk/sdk/i/hp;->ｋ()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ｋ()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_118

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﻏ()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto/16 :goto_118

    :cond_1b
    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hu;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->ﻛ(I)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hr;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->k(Lcom/ironsource/adqualitysdk/sdk/i/hr;Lcom/ironsource/adqualitysdk/sdk/i/hp;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﻛ()Z

    move-result p3

    if-eqz p3, :cond_3f

    invoke-virtual {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/hp;)V

    invoke-virtual {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﾇ(Ljava/lang/Object;)V

    :cond_3f
    return-object p1

    :cond_40
    instance-of v1, v0, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x1

    if-eqz v1, :cond_7f

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 v1, v1, 0x2

    move-object v1, v0

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7f

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hu;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->ﾒ(I)Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->ﾒ()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->c(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    add-int/2addr p3, v3

    invoke-direct {p0, v0, p2, p3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->h(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hv;ILcom/ironsource/adqualitysdk/sdk/i/hp;)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object v2

    goto/16 :goto_118

    :cond_7f
    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->ﾒ()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->c(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v1

    const/16 v4, 0x2a

    if-eqz v1, :cond_92

    const/16 v1, 0x19

    goto :goto_94

    :cond_92
    const/16 v1, 0x2a

    :goto_94
    const/4 v5, 0x0

    if-eq v1, v4, :cond_b1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a5

    const/4 v1, 0x1

    goto :goto_a6

    :cond_a5
    const/4 v1, 0x0

    :goto_a6
    if-eq v1, v3, :cond_af

    add-int/2addr p3, v3

    :goto_a9
    invoke-direct {p0, v0, p2, p3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->h(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hv;ILcom/ironsource/adqualitysdk/sdk/i/hp;)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object p1

    move-object v2, p1

    goto :goto_118

    :cond_af
    div-int/2addr p3, v5

    goto :goto_a9

    :cond_b1
    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->ﻛ()Z

    move-result v1

    if-eqz v1, :cond_bc

    const/4 v5, 0x1

    :cond_bc
    if-eqz v5, :cond_c7

    if-eqz v0, :cond_c7

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ｋ()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_c7
    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hu;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->b(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hu;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/hm;

    move-result-object v4

    if-eqz v1, :cond_118

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/16 v6, 0x33

    if-eqz v5, :cond_e4

    const/16 v5, 0x33

    goto :goto_e6

    :cond_e4
    const/16 v5, 0x32

    :goto_e6
    if-eq v5, v6, :cond_e9

    goto :goto_118

    :cond_e9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d(Ljava/lang/Object;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hp;)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object v2

    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/hm;->c()V

    invoke-direct {p0, v2, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->f(Lcom/ironsource/adqualitysdk/sdk/i/hp;Lcom/ironsource/adqualitysdk/sdk/i/hv;I)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object v2

    if-eqz v2, :cond_114

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v5, v5, 0xd

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v5, v5, 0x2

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﻛ()Z

    move-result v5

    if-nez v5, :cond_114

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/2addr p1, v3

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 p1, p1, 0x2

    return-object v2

    :cond_114
    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/hm;->d()V

    goto :goto_d9

    :cond_118
    :goto_118
    return-object v2
.end method

.method private g(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hm;)Lcom/ironsource/adqualitysdk/sdk/i/hp;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hm;",
            ")",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp<",
            "TT;>;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_c
    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hm;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {p1, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->a(Ljava/lang/Object;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/hp;)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object p1

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->l(Lcom/ironsource/adqualitysdk/sdk/i/hp;Lcom/ironsource/adqualitysdk/sdk/i/hm;I)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1f} :catch_32

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 p2, p2, 0x53

    rem-int/lit16 v3, p2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    if-eq v1, v2, :cond_2f

    return-object p1

    :cond_2f
    :try_start_2f
    throw v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p1

    throw p1

    :catch_32
    move-exception p1

    invoke-static {v1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string p2, "\uffff\u0007\u0002\u0000\u0011\uffe3\u0006\u000b\u0001\u0002\u000f\uffec"

    const-string v6, "\u0010\u000e\uffc1\u0011\u0002\u0015\t\uffe6\u0013\u0013\u0010\u0013\uffc1\u0008\u0006\u0015\u0015\n\u000f\u0008\uffc1\ufff0\u0003\u000b\u0006\u0004\u0015\uffe7\n\u0006\r\u0005\uffc1\u0007\u0013"

    cmp-long v7, v2, v4

    add-int/lit8 v7, v7, 0x73

    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0xc

    invoke-static {v7, v1, v2, v3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    const v2, 0x100006f

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x7

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x23

    invoke-static {v3, v1, v2, v4, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private h(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hv;ILcom/ironsource/adqualitysdk/sdk/i/hp;)Lcom/ironsource/adqualitysdk/sdk/i/hp;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hv<",
            "TT;>;I",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp;",
            ")",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp<",
            "TT;>;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    const/4 v3, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->ｋ()I

    move-result v0

    if-eq p3, v0, :cond_f4

    goto :goto_33

    :cond_1f
    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->ｋ()I

    move-result v0

    const/16 v4, 0x2b

    :try_start_29
    div-int/2addr v4, v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_ff

    const/4 v4, 0x3

    if-eq p3, v0, :cond_30

    const/16 v0, 0x25

    goto :goto_31

    :cond_30
    const/4 v0, 0x3

    :goto_31
    if-eq v0, v4, :cond_f4

    :goto_33
    if-eqz p1, :cond_f4

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ｋ()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f4

    if-lez p3, :cond_47

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_47

    goto/16 :goto_f4

    :cond_47
    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ｋ()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :try_start_4e
    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/hi;

    move-result-object v0

    if-eqz v0, :cond_65

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/hi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hi;->ﾇ(Ljava/lang/Object;)[Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_7f

    :cond_65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hu;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->ﾇ(I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->p(Ljava/lang/Class;I)[Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_75
    .catchall {:try_start_4e .. :try_end_75} :catchall_b6

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v4, v4, 0x1d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v4, v4, 0x2

    :goto_7f
    :try_start_7f
    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/hm;

    move-result-object v4

    array-length v5, v0
    :try_end_84
    .catchall {:try_start_7f .. :try_end_84} :catchall_b6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v6, v6, 0x7

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v6, v6, 0x2

    const/4 v6, 0x0

    :goto_8f
    if-ge v6, v5, :cond_f3

    :try_start_91
    aget-object v7, v0, v6

    invoke-virtual {v7, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/hm;->a(Ljava/lang/reflect/Field;)V

    invoke-static {v7, p1, p4}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->q(Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hp;)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object v8

    invoke-direct {p0, v8, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->f(Lcom/ironsource/adqualitysdk/sdk/i/hp;Lcom/ironsource/adqualitysdk/sdk/i/hv;I)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object v8

    if-eqz v8, :cond_b0

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﻛ()Z

    move-result v9

    if-nez v9, :cond_ab

    const/4 v9, 0x0

    goto :goto_ac

    :cond_ab
    const/4 v9, 0x1

    :goto_ac
    if-eqz v9, :cond_af

    goto :goto_b0

    :cond_af
    return-object v8

    :cond_b0
    :goto_b0
    invoke-virtual {v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/hm;->e(Ljava/lang/reflect/Field;)V
    :try_end_b3
    .catchall {:try_start_91 .. :try_end_b3} :catchall_b6

    add-int/lit8 v6, v6, 0x1

    goto :goto_8f

    :catchall_b6
    move-exception p1

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x73

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    shr-int/lit8 p3, p3, 0x16

    rsub-int/lit8 p3, p3, 0xb

    const p4, -0xfffff4

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sub-int/2addr p4, v0

    const-string v0, "\uffff\u0007\u0002\u0000\u0011\uffe3\u0006\u000b\u0001\u0002\u000f\uffec"

    invoke-static {p2, v2, p3, p4, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x19

    int-to-byte p3, p3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p4

    shr-int/lit8 p4, p4, 0x16

    rsub-int/lit8 p4, p4, 0x19

    const-string v0, "\u0010\t\u0007\u0008\u0005\u0001\u0018\u0000\u008d\u008d\u0010\u0012\u0000\u0005\u0016\u0017\u0018\u0003\u0006\u0004\u0014\u0013\u0000\u000e}"

    invoke-static {p3, v0, p4}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->m(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f3
    return-object v3

    :cond_f4
    :goto_f4
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 p1, p1, 0x2

    return-object v3

    :catchall_ff
    move-exception p1

    throw p1
.end method

.method private static i(IZIILjava/lang/String;)Ljava/lang/String;
    .registers 11

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_6
    check-cast p4, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﻐ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    new-array v1, p3, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    :goto_10
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    if-ge v3, p3, :cond_2f

    aget-char v3, p4, v3

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾇ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾇ:I

    add-int/2addr v4, p0

    int-to-char v4, v4

    aput-char v4, v1, v3

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    aget-char v4, v1, v3

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/hs;->a:I

    sub-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    goto :goto_10

    :cond_2f
    if-lez p2, :cond_46

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    new-array p0, p3, [C

    invoke-static {v1, v2, p0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    sub-int p4, p3, p2

    invoke-static {p0, v2, v1, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    sub-int p4, p3, p2

    invoke-static {p0, p2, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_46
    if-eqz p1, :cond_5e

    new-array p0, p3, [C

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    :goto_4c
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    if-ge p1, p3, :cond_5d

    sub-int p2, p3, p1

    add-int/lit8 p2, p2, -0x1

    aget-char p2, v1, p2

    aput-char p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    goto :goto_4c

    :cond_5d
    move-object v1, p0

    :cond_5e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_b .. :try_end_64} :catchall_65

    return-object p0

    :catchall_65
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static j(Ljava/lang/Object;)Ljava/util/List;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_18

    invoke-static {p0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->r(Ljava/lang/Object;ZZ)Ljava/util/List;

    move-result-object p0

    goto :goto_1c

    :cond_18
    invoke-static {p0, v2, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->r(Ljava/lang/Object;ZZ)Ljava/util/List;

    move-result-object p0

    :goto_1c
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x21

    if-nez v0, :cond_2d

    const/16 v0, 0xb

    goto :goto_2f

    :cond_2d
    const/16 v0, 0x21

    :goto_2f
    if-ne v0, v1, :cond_32

    return-object p0

    :cond_32
    const/4 p0, 0x0

    :try_start_33
    throw p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p0

    throw p0
.end method

.method private static k(Lcom/ironsource/adqualitysdk/sdk/i/hr;Lcom/ironsource/adqualitysdk/sdk/i/hp;)Z
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_a
    invoke-interface {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hr;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/hp;)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_19

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 p1, p1, 0x2

    return p0

    :catch_19
    const/4 p0, 0x0

    return p0
.end method

.method private l(Lcom/ironsource/adqualitysdk/sdk/i/hp;Lcom/ironsource/adqualitysdk/sdk/i/hm;I)Lcom/ironsource/adqualitysdk/sdk/i/hp;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hm;",
            "I)",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp<",
            "TT;>;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x55

    if-eqz v0, :cond_11

    const/16 v0, 0x55

    goto :goto_13

    :cond_11
    const/16 v0, 0x32

    :goto_13
    const/4 v2, 0x0

    if-eq v0, v1, :cond_d8

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hm;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_d7

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hm;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p1}, Lcom/ironsource/adqualitysdk/sdk/i/hp;->ｋ()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_93

    const/4 p1, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x73

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const-string p3, "\uffff\u0007\u0002\u0000\u0011\uffe3\u0006\u000b\u0001\u0002\u000f\uffec"

    const-string v0, ""

    const-string v3, "\uffc4\u0008\t\u001a\r\t\u0007\t\u0016\uffc4\uffd0\u0014\u0005\ufff1\uffc4\u0016\u0013\uffc4\u0012\u0013\r\u0018\u0007\t\u0010\u0010\u0013\uffe7\uffc4\u0008\t\u0018\u0007\t\u0014\u001c\uffe9"

    cmp-long v9, v5, v7

    add-int/lit8 v9, v9, 0xa

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    add-int/lit8 v5, v5, 0xc

    invoke-static {p2, p1, v9, v5, p3}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    shr-int/lit8 v5, v5, 0x6

    rsub-int/lit8 v5, v5, 0x6c

    invoke-static {p1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x14

    shr-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, 0x25

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    invoke-static {v5, v4, p1, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_93
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v5, v5, 0x45

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v5, v5, 0x2

    :cond_a1
    :goto_a1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/16 v6, 0x30

    if-eqz v5, :cond_ac

    const/16 v5, 0x30

    goto :goto_ae

    :cond_ac
    const/16 v5, 0x28

    :goto_ae
    if-eq v5, v6, :cond_c0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_bd

    return-object v2

    :cond_bd
    :try_start_bd
    throw v2
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_be

    :catchall_be
    move-exception p1

    throw p1

    :cond_c0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    :try_start_c4
    invoke-static {v1, v5, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d(Ljava/lang/Object;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hp;)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object v6

    invoke-static {v5, v0, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->a(Ljava/lang/Object;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/hp;)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object v5

    if-eqz v5, :cond_a1

    add-int/lit8 v6, p3, 0x1

    invoke-direct {p0, v5, p2, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->l(Lcom/ironsource/adqualitysdk/sdk/i/hp;Lcom/ironsource/adqualitysdk/sdk/i/hm;I)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object p1
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_d4} :catch_d5

    return-object p1

    :catch_d5
    nop

    goto :goto_a1

    :cond_d7
    return-object p1

    :cond_d8
    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hm;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    :try_start_df
    throw v2
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_e0

    :catchall_e0
    move-exception p1

    throw p1
.end method

.method private static m(BLjava/lang/String;I)Ljava/lang/String;
    .registers 11

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_6
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->b:[C

    sget-char v2, Lcom/ironsource/adqualitysdk/sdk/i/hs;->c:C

    new-array v3, p2, [C

    rem-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_1d

    add-int/lit8 p2, p2, -0x1

    aget-char v4, p1, p2

    sub-int/2addr v4, p0

    int-to-char v4, v4

    aput-char v4, v3, p2

    :cond_1d
    const/4 v4, 0x1

    if-le p2, v4, :cond_df

    const/4 v5, 0x0

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    :goto_23
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    if-ge v5, p2, :cond_df

    aget-char v5, p1, v5

    sput-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    add-int/2addr v5, v4

    aget-char v5, p1, v5

    sput-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    sget-char v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    if-ne v5, v6, :cond_4b

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    sget-char v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    sub-int/2addr v6, p0

    int-to-char v6, v6

    aput-char v6, v3, v5

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    add-int/2addr v5, v4

    sget-char v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    sub-int/2addr v6, p0

    int-to-char v6, v6

    aput-char v6, v3, v5

    goto/16 :goto_d7

    :cond_4b
    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    div-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    div-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    if-ne v5, v6, :cond_8e

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    mul-int v5, v5, v2

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v5, v6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    mul-int v6, v6, v2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v6, v7

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v1, v6

    aput-char v5, v3, v7

    goto :goto_d7

    :cond_8e
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    if-ne v5, v6, :cond_bd

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    mul-int v5, v5, v2

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v5, v6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    mul-int v6, v6, v2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v6, v7

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v1, v6

    aput-char v5, v3, v7

    goto :goto_d7

    :cond_bd
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    mul-int v5, v5, v2

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v5, v6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    mul-int v6, v6, v2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v6, v7

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v1, v6

    aput-char v5, v3, v7

    :goto_d7
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    add-int/lit8 v5, v5, 0x2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    goto/16 :goto_23

    :cond_df
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_e5
    .catchall {:try_start_b .. :try_end_e5} :catchall_e6

    return-object p0

    :catchall_e6
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private n(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    :goto_0
    if-eqz p2, :cond_92

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v0, v0, 0x2

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_25
    const/16 v4, 0x57

    if-ge v3, v1, :cond_2c

    const/16 v5, 0x57

    goto :goto_2e

    :cond_2c
    const/16 v5, 0xe

    :goto_2e
    if-eq v5, v4, :cond_35

    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    :cond_35
    aget-object v4, v0, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :try_start_3b
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_41} :catch_8f

    if-eqz v4, :cond_45

    const/4 v6, 0x0

    goto :goto_46

    :cond_45
    const/4 v6, 0x1

    :goto_46
    if-eqz v6, :cond_49

    goto :goto_8f

    :cond_49
    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 v6, v6, 0x6f

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_69

    :try_start_55
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_61} :catch_8f

    const/16 v6, 0x5b

    :try_start_63
    div-int/2addr v6, v2
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_64} :catch_8f
    .catchall {:try_start_63 .. :try_end_64} :catchall_67

    if-eqz v5, :cond_8f

    goto :goto_7c

    :catchall_67
    move-exception p1

    throw p1

    :cond_69
    :try_start_69
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_75} :catch_8f

    if-eqz v6, :cond_79

    const/4 v6, 0x0

    goto :goto_7a

    :cond_79
    const/4 v6, 0x1

    :goto_7a
    if-eq v6, v5, :cond_8f

    :goto_7c
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 p2, p1, 0x67

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 p2, p2, 0x2

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 p1, p1, 0x2

    return-object v4

    :catch_8f
    :cond_8f
    :goto_8f
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_92
    const/4 p1, 0x0

    return-object p1
.end method

.method private static o(Lcom/ironsource/adqualitysdk/sdk/i/hp;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 16

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    const-string v3, "\ufff3\r"

    const-string v4, "\uffff\u0007\u0002\u0000\u0011\uffe3\u0006\u000b\u0001\u0002\u000f\uffec"

    const-string v5, ""

    if-eq v0, v1, :cond_21

    const/16 v0, 0x4b

    :try_start_1b
    div-int/2addr v0, v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1f

    if-eqz p0, :cond_bc

    goto :goto_23

    :catchall_1f
    move-exception p0

    throw p0

    :cond_21
    if-eqz p0, :cond_bc

    :goto_23
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x73

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    add-int/lit8 v8, v8, 0xb

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v9

    const-string v11, "\u0010%\uffcf\uffdb\uffcf\u0014$\u001b"

    cmp-long v12, v9, v6

    rsub-int/lit8 v6, v12, 0xd

    invoke-static {v0, v2, v8, v6, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result p1

    shr-int/lit8 p1, p1, 0x8

    rsub-int/lit8 p1, p1, 0x3d

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    rsub-int/lit8 v6, v6, 0x1

    invoke-static {v5, v2, v2}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-static {p1, v2, v6, v5, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x14

    shr-int/lit8 p1, p1, 0x6

    rsub-int/lit8 p1, p1, 0x61

    invoke-static {v2, v2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    add-int/lit8 p2, p2, 0x4

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x8

    invoke-static {p1, v1, p2, v2, v11}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hp;->ｋ()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﺙ(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 p0, p0, 0x2

    const/16 p1, 0x48

    if-eqz p0, :cond_b3

    const/16 p0, 0x53

    goto :goto_b5

    :cond_b3
    const/16 p0, 0x48

    :goto_b5
    if-ne p0, p1, :cond_b8

    return-void

    :cond_b8
    const/4 p0, 0x0

    :try_start_b9
    throw p0
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_ba

    :catchall_ba
    move-exception p0

    throw p0

    :cond_bc
    invoke-static {v2, v2}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x73

    const/16 v0, 0x30

    invoke-static {v5, v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    invoke-static {v5, v2}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v6

    rsub-int/lit8 v6, v6, 0xc

    invoke-static {p0, v2, v0, v6, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v5, v5, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x3d

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v1

    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {p1, v2, v4, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﺙ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static p(Ljava/lang/Class;I)[Ljava/lang/reflect/Field;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    :goto_10
    const/16 v3, 0x26

    if-eqz p0, :cond_17

    const/16 v4, 0x8

    goto :goto_19

    :cond_17
    const/16 v4, 0x26

    :goto_19
    if-eq v4, v3, :cond_48

    if-eq v2, p1, :cond_48

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 v3, v3, 0x5b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_2f

    const/4 v3, 0x0

    goto :goto_30

    :cond_2f
    const/4 v3, 0x1

    :goto_30
    if-eqz v3, :cond_33

    goto :goto_3b

    :cond_33
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->ﻐ([Ljava/lang/reflect/Field;[Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Field;

    move-result-object v0

    :goto_3b
    add-int/lit8 v2, v2, 0x1

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v3, v3, 0x1d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v3, v3, 0x2

    goto :goto_10

    :cond_48
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 p0, p0, 0x15

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_55

    return-object v0

    :cond_55
    const/4 p0, 0x0

    :try_start_56
    throw p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception p0

    throw p0
.end method

.method private static q(Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hp;)Lcom/ironsource/adqualitysdk/sdk/i/hp;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp;",
            ")",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ht;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ht;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hp;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 p0, p0, 0x39

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 p0, p0, 0x2

    return-object v0
.end method

.method private static r(Ljava/lang/Object;ZZ)Ljava/util/List;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 v1, v0, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 v1, v1, 0x2

    instance-of v1, p0, Ljava/util/Collection;

    const/16 v2, 0x41

    if-eqz v1, :cond_13

    const/16 v1, 0x41

    goto :goto_15

    :cond_13
    const/16 v1, 0xb

    :goto_15
    const/4 v3, 0x0

    if-eq v1, v2, :cond_19

    goto :goto_35

    :cond_19
    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2e

    if-nez v0, :cond_27

    const/4 v0, 0x6

    goto :goto_29

    :cond_27
    const/16 v0, 0x2e

    :goto_29
    if-ne v0, v1, :cond_61

    if-eqz p1, :cond_35

    new-instance v3, Ljava/util/ArrayList;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_56

    :cond_35
    :goto_35
    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_56

    if-eqz p2, :cond_56

    new-instance v3, Ljava/util/ArrayList;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/2addr p0, v2

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 p0, p0, 0x2

    :cond_56
    :goto_56
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 p0, p0, 0x17

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 p0, p0, 0x2

    return-object v3

    :cond_61
    :try_start_61
    throw v3
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_62

    :catchall_62
    move-exception p0

    throw p0
.end method

.method public static ﻐ(Ljava/lang/Class;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hl;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hl;",
            "TT;)TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_e
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hj;

    move-result-object v3
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_4e

    move-object/from16 v4, p2

    :try_start_18
    invoke-virtual {v3, v0, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hj;->ﾇ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/hl;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_50

    const/16 v5, 0x3c

    if-eqz v3, :cond_23

    const/16 v6, 0x4e

    goto :goto_25

    :cond_23
    const/16 v6, 0x3c

    :goto_25
    if-eq v6, v5, :cond_38

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 v5, v5, 0x29

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 v5, v5, 0x2

    move-object/from16 v5, p1

    :try_start_33
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_50

    return-object v0

    :cond_38
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_46

    goto :goto_47

    :cond_46
    const/4 v2, 0x1

    :goto_47
    if-ne v2, v3, :cond_4a

    return-object p3

    :cond_4a
    :try_start_4a
    throw v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v0

    move-object v1, v0

    throw v1

    :catchall_4e
    move-object/from16 v4, p2

    :catchall_50
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v3

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const-string v8, "\uffff\u0007\u0002\u0000\u0011\uffe3\u0006\u000b\u0001\u0002\u000f\uffec"

    const-string v9, ""

    const-string v10, "\u000f\u0008\uffc1\uffe6\u0013\u0013\u0010\u0013\uffc1\u0008\u0006\u0015\u0015\n"

    const-string v11, "\u0001\u0002\u0003\u0004\u0000\u0001\u0006\u0007\u0008\t\u0096"

    const-string v12, "\u0004\u0005\u000b\u000c\u008d\u008d"

    cmpl-float v3, v3, v5

    add-int/lit8 v3, v3, 0x73

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v13

    cmp-long v5, v13, v6

    add-int/lit8 v5, v5, 0xa

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v13

    add-int/lit8 v13, v13, 0xc

    invoke-static {v3, v2, v5, v13, v8}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v8, v13, v15

    add-int/lit8 v8, v8, 0x6e

    invoke-static {v9}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x3

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v13

    shr-int/lit8 v13, v13, 0x10

    rsub-int/lit8 v13, v13, 0xe

    invoke-static {v8, v2, v9, v13, v10}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/adqualitysdk/sdk/i/hl;->ﺙ()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x76

    int-to-byte v4, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    add-int/lit8 v8, v8, 0xb

    invoke-static {v4, v11, v8}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->m(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    cmp-long v0, v8, v6

    add-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x6

    invoke-static {v0, v12, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->m(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static ﾒ(Ljava/lang/Class;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hl;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hl;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/hq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/hq;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hj;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hj;->ｋ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/hl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_51

    const/4 v4, 0x1

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :goto_20
    if-eqz v3, :cond_e0

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 v3, v3, 0x7d

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v4, 0x0

    :goto_30
    if-eqz v4, :cond_43

    :try_start_32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x5d

    div-int/2addr v3, v1

    goto :goto_16

    :cond_43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_32 .. :try_end_50} :catchall_51

    goto :goto_16

    :catchall_51
    const-string p1, ""

    invoke-static {p1, p1, v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x73

    invoke-static {v1, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0xc

    const-string v5, "\uffff\u0007\u0002\u0000\u0011\uffe3\u0006\u000b\u0001\u0002\u000f\uffec"

    invoke-static {v2, v1, v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-static {v4}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v5

    rsub-int v5, v5, 0x9f

    invoke-static {p1, v4, v1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x2

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    rsub-int/lit8 v6, v6, 0xe

    const-string v7, "\u000f\u0008\uffc1\uffe6\u0013\u0013\u0010\u0013\uffc1\u0008\u0006\u0015\u0015\n"

    invoke-static {v5, v1, v4, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hl;->ﺙ()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p1

    add-int/lit8 p1, p1, 0x76

    int-to-byte p1, p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    rsub-int/lit8 p2, p2, 0xb

    const-string v4, "\u0001\u0002\u0003\u0004\u0000\u0001\u0006\u0007\u0008\t\u0096"

    invoke-static {p1, v4, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->m(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    shr-int/lit8 p0, p0, 0x16

    add-int/lit8 p0, p0, 0x1a

    int-to-byte p0, p0

    invoke-static {v1, v1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    add-int/lit8 p1, p1, 0x6

    const-string p2, "\u0004\u0005\u000b\u000c\u008d\u008d"

    invoke-static {p0, p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->m(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e0
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 p0, p0, 0x1d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 p0, p0, 0x2

    return-object v0
.end method


# virtual methods
.method public final ﻐ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/4 v3, 0x0

    invoke-direct {p0, v3, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->n(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eq v0, v1, :cond_19

    goto :goto_1c

    :cond_19
    const/16 p2, 0x56

    :try_start_1b
    div-int/2addr p2, v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1d

    :goto_1c
    return-object p1

    :catchall_1d
    move-exception p1

    throw p1
.end method

.method public final ﻐ(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hu;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hu;",
            ")",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hv;

    invoke-direct {v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/hu;)V

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/hv;

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->h(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hv;ILcom/ironsource/adqualitysdk/sdk/i/hp;)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﱡ()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 p2, p2, 0x41

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 p2, p2, 0x2

    return-object p1
.end method

.method public final ｋ(Ljava/lang/Object;Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    if-eqz p2, :cond_56

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_f
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_56

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 v3, v3, 0x3b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_23

    const/4 v3, 0x1

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :goto_24
    if-nez v3, :cond_4c

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->ﾇ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a

    if-eqz v3, :cond_35

    const/16 v5, 0x1a

    goto :goto_37

    :cond_35
    const/16 v5, 0x21

    :goto_37
    if-eq v5, v4, :cond_3c

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_3c
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_49

    return-object v3

    :cond_49
    :try_start_49
    throw v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception p1

    throw p1

    :cond_4c
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->ﾇ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    :try_start_53
    throw v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception p1

    throw p1

    :cond_56
    return-object v0
.end method

.method public final ﾇ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-ne v0, v1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->n(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->n(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    :try_start_23
    throw p1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p1

    throw p1
.end method

.method public final ﾇ(Ljava/lang/Object;Ljava/util/List;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hs$a;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hs$a;-><init>()V

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->ｋ(Z)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->ﻐ(Z)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->ﾒ(I)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/hr;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hu;

    move-result-object p2

    new-instance p3, Lcom/ironsource/adqualitysdk/sdk/i/hv;

    invoke-direct {p3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/hu;)V

    invoke-virtual {p3}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/hv;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->h(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hv;ILcom/ironsource/adqualitysdk/sdk/i/hp;)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﻏ()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 p2, p2, 0x6d

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 p2, p2, 0x2

    return-object p1
.end method

.method public final ﾒ(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hr;Lcom/ironsource/adqualitysdk/sdk/i/hi;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hp;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hr;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hi;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->ﾒ(Z)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/hr;Lcom/ironsource/adqualitysdk/sdk/i/hi;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hu;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->ﾒ(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object p1

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 p2, p2, 0x1b

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 p2, p2, 0x2

    const/4 p3, 0x5

    if-nez p2, :cond_22

    const/16 p2, 0x21

    goto :goto_23

    :cond_22
    const/4 p2, 0x5

    :goto_23
    if-ne p2, p3, :cond_26

    return-object p1

    :cond_26
    const/4 p1, 0x0

    :try_start_27
    throw p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p1

    throw p1
.end method

.method public final ﾒ(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hp;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hu;",
            ")",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 v3, v3, 0x27

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 v3, v3, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->ｋ(Ljava/lang/Class;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v5

    iget-object v6, v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->f:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ironsource/adqualitysdk/sdk/i/hm;

    const-wide/16 v7, 0x0

    const/16 v9, 0x30

    const-string v10, ""

    const/4 v11, 0x0

    if-eqz v6, :cond_117

    sget v12, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    add-int/lit8 v12, v12, 0x59

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    rem-int/lit8 v12, v12, 0x2

    const/4 v13, 0x1

    if-eqz v12, :cond_3c

    const/4 v12, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v12, 0x0

    :goto_3d
    if-eqz v12, :cond_51

    invoke-direct {v1, v0, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->g(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hm;)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object v6

    const/16 v12, 0x3f

    :try_start_45
    div-int/2addr v12, v11
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_4e

    if-eqz v6, :cond_4a

    const/4 v12, 0x0

    goto :goto_4b

    :cond_4a
    const/4 v12, 0x1

    :goto_4b
    if-eq v12, v13, :cond_cb

    goto :goto_60

    :catchall_4e
    move-exception v0

    move-object v2, v0

    throw v2

    :cond_51
    invoke-direct {v1, v0, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->g(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hm;)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object v6

    const/16 v12, 0x2a

    if-eqz v6, :cond_5c

    const/16 v14, 0x15

    goto :goto_5e

    :cond_5c
    const/16 v14, 0x2a

    :goto_5e
    if-eq v14, v12, :cond_cb

    :goto_60
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hr;

    move-result-object v12

    invoke-static {v12, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->k(Lcom/ironsource/adqualitysdk/sdk/i/hr;Lcom/ironsource/adqualitysdk/sdk/i/hp;)Z

    move-result v12

    if-eqz v12, :cond_cb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    rsub-int/lit8 v5, v5, 0x6c

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v7

    rsub-int/lit8 v7, v7, 0xf

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    add-int/lit8 v8, v8, 0x13

    const-string v9, "\uffc4\u000c\u0018\u0005\u0014\uffc4\u0011\u0013\u0016\n\uffc4\u0008\u0012\u0019\u0013\n\uffc4\u0012\r"

    invoke-static {v5, v13, v7, v8, v9}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v11, v11}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    add-int/lit16 v3, v3, 0x80

    invoke-static {v10, v11}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-static {v11, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    const-string v7, "\u0003\ufffd"

    invoke-static {v3, v13, v4, v5, v7}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->o(Lcom/ironsource/adqualitysdk/sdk/i/hp;Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hs;->d:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hs;->e:I

    rem-int/lit8 v0, v0, 0x2

    return-object v6

    :cond_cb
    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/lit8 v6, v6, 0x73

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v12

    rsub-int/lit8 v12, v12, 0xa

    invoke-static {v11, v11}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v13

    rsub-int/lit8 v13, v13, 0xc

    const-string v14, "\uffff\u0007\u0002\u0000\u0011\uffe3\u0006\u000b\u0001\u0002\u000f\uffec"

    invoke-static {v6, v11, v12, v13, v14}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v10, v9, v11}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v13

    add-int/lit8 v13, v13, 0x52

    int-to-byte v13, v13

    invoke-static {v11, v11}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v14

    add-int/lit8 v14, v14, 0xb

    const-string v15, "\n\u0003\u0001\r\u0004\u000b\u0003\u0005\u0011\n\u00c4"

    invoke-static {v13, v15, v14}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->m(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->f:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_117
    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/hv;

    invoke-direct {v6, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hv;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/hu;)V

    const/4 v2, 0x0

    invoke-direct {v1, v0, v6, v11, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->h(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/hv;ILcom/ironsource/adqualitysdk/sdk/i/hp;)Lcom/ironsource/adqualitysdk/sdk/i/hp;

    move-result-object v12

    const-string v13, "\uffc4\r\u0012\uffc4\u0017\t\u0018\uffc4\u0013\u0006\u000e\t\u0007\u0018\u0017"

    const-string v14, "\uffe1\uffd5\"("

    if-eqz v12, :cond_1a6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x5b

    int-to-byte v7, v7

    invoke-static {v10, v9, v11}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x8

    const-string v15, "\u0006\u0008\u0011\u0012\u000f\u0003\u0010\u0012z"

    invoke-static {v7, v15, v8}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->m(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x5c

    const v4, 0x1000002

    invoke-static {v11, v11, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {v11}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3, v11, v7, v4, v14}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ｋ()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v10, v9, v11, v11}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x6b

    invoke-static {v10}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    invoke-static {v11, v11}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v7

    rsub-int/lit8 v7, v7, 0xf

    invoke-static {v3, v11, v4, v7, v13}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->o(Lcom/ironsource/adqualitysdk/sdk/i/hp;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/hs;->f:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/hm;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v12

    :cond_1a6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10, v11, v11}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v12

    rsub-int/lit8 v12, v12, 0x57

    int-to-byte v12, v12

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v15

    const-string v2, "\u0016\u000c\u0002\u0001\u0006\u0008\u0011\u0012\u000f\u0003\u0010\u0012w"

    cmp-long v17, v15, v7

    add-int/lit8 v7, v17, 0xc

    invoke-static {v12, v2, v7}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->m(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v9}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v2

    add-int/lit8 v2, v2, 0x2b

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v4, v4, 0x4

    invoke-static {v2, v11, v3, v4, v14}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/ironsource/adqualitysdk/sdk/i/hv;->ｋ()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v11}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x6b

    invoke-static {v10, v9, v11}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-static {v10, v10, v11, v11}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0xf

    invoke-static {v2, v11, v3, v4, v13}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->i(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hs;->o(Lcom/ironsource/adqualitysdk/sdk/i/hp;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.hs.a (com.ironsource.adqualitysdk.sdk.i.hs$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/hs$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/hr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/hs;->ﾇ(Ljava/lang/Object;Ljava/util/List;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/hp;)Z
    .registers 2

    invoke-interface {p1}, Lcom/ironsource/adqualitysdk/sdk/i/hp;->ｋ()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/String;

    return p1
.end method
