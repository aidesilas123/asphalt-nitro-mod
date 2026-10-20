###### Class com.json.adqualitysdk.sdk.i.ab (com.ironsource.adqualitysdk.sdk.i.ab)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ab;
.super Lcom/ironsource/adqualitysdk/sdk/i/y;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/ab$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ironsource/adqualitysdk/sdk/i/y<",
        "Landroid/view/View;",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# static fields
.field private static n:[I = null

.field private static o:I = 0x0

.field private static p:I = 0x1


# instance fields
.field private final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/webkit/WebView;",
            "Lcom/ironsource/adqualitysdk/sdk/i/ad;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/ironsource/adqualitysdk/sdk/i/im;

.field private s:Landroid/view/View$OnLayoutChangeListener;

.field private t:Lcom/ironsource/adqualitysdk/sdk/i/jh;

.field private final u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/ironsource/adqualitysdk/sdk/i/ab;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroid/view/View$OnLayoutChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/lang/Class;

.field private x:Lcom/ironsource/adqualitysdk/sdk/i/ab$d;

.field private final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->n:[I

    return-void

    :array_a
    .array-data 4
        0x6e8c69fc
        0x4bb55e8f    # 2.3772446E7f
        -0x68c36bfc
        0x6cb24387
        0x237b8506
        -0x6b53b813
        0x5181735a
        0x7a0f8826
        0x20ffc0f8
        -0x73ab8894
        -0x34fc854c    # -8616628.0f
        0x745fb110
        0x2f35a892
        -0x41d73d60
        0x7a6e890b
        -0x7cf13fe9
        -0x102d6bc8
        -0x6ad84810
    .end array-data
.end method

.method constructor <init>(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/im;)V
    .registers 4

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/y;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->q:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->u:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->v:Ljava/util/Map;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->x:Lcom/ironsource/adqualitysdk/sdk/i/ab$d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->y:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->m(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/im;)V

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->ｋ()V

    return-void
.end method

.method static synthetic f(Lcom/ironsource/adqualitysdk/sdk/i/ab;)Lcom/ironsource/adqualitysdk/sdk/i/ab$d;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    add-int/lit8 v1, v0, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->x:Lcom/ironsource/adqualitysdk/sdk/i/ab$d;

    if-nez v1, :cond_1c

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    :try_start_1d
    throw p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p0

    throw p0
.end method

.method private static h(Landroid/view/View;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_75

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    const/4 v1, 0x1

    :goto_d
    if-eqz v1, :cond_10

    goto :goto_75

    :cond_10
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    add-int/2addr v1, v0

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_50

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0x23

    if-eqz v1, :cond_4a

    const/16 v1, 0x23

    goto :goto_4c

    :cond_4a
    const/16 v1, 0x12

    :goto_4c
    if-eq v1, v3, :cond_4f

    goto :goto_50

    :cond_4f
    return v0

    :cond_50
    :goto_50
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    add-int/lit8 v1, v1, 0x51

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_29

    :cond_5b
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    add-int/lit8 p0, p0, 0x19

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    rem-int/lit8 p0, p0, 0x2

    const/16 p1, 0x58

    if-nez p0, :cond_6c

    const/16 p0, 0x58

    goto :goto_6e

    :cond_6c
    const/16 p0, 0x46

    :goto_6e
    if-eq p0, p1, :cond_71

    return v2

    :cond_71
    const/4 p0, 0x0

    :try_start_72
    throw p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_73

    :catchall_73
    move-exception p0

    throw p0

    :cond_75
    :goto_75
    return v0
.end method

.method static synthetic i(Lcom/ironsource/adqualitysdk/sdk/i/ab;)Landroid/view/View$OnLayoutChangeListener;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    add-int/lit8 v1, v0, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/lit8 v1, v1, 0x2

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->s:Landroid/view/View$OnLayoutChangeListener;

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method private static j()Ljava/lang/String;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    add-int/lit8 v1, v0, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-eq v1, v3, :cond_14

    goto :goto_17

    :cond_14
    const/16 v1, 0x36

    :try_start_16
    div-int/2addr v1, v4
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_2b

    :goto_17
    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_22

    const/4 v0, 0x2

    goto :goto_24

    :cond_22
    const/16 v0, 0x5b

    :goto_24
    const/4 v1, 0x0

    if-eq v0, v2, :cond_28

    return-object v1

    :cond_28
    :try_start_28
    throw v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v0

    throw v0

    :catchall_2b
    move-exception v0

    throw v0
.end method

.method private static k(Landroid/app/Activity;Landroid/view/View;Ljava/lang/Class;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/lang/Class<",
            "TE;>;Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    if-eq v1, v0, :cond_1c

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/ironsource/adqualitysdk/sdk/i/ka;->ﻐ(Landroid/app/Activity;Ljava/lang/Class;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    add-int/lit8 p0, p0, 0x57

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :cond_1c
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    add-int/2addr p0, v0

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/ka;->ﻐ(Landroid/view/View;Ljava/lang/Class;ZZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private l(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x48

    if-ge v1, v2, :cond_17

    const/16 v2, 0x48

    goto :goto_19

    :cond_17
    const/16 v2, 0x22

    :goto_19
    if-eq v2, v3, :cond_1c

    return-void

    :cond_1c
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    add-int/lit8 v2, v2, 0x4b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-nez v2, :cond_2b

    const/4 v2, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    if-eq v2, v3, :cond_3c

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->x:Lcom/ironsource/adqualitysdk/sdk/i/ab$d;

    invoke-direct {p0, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->w(Landroid/view/View;Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_3c
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->x:Lcom/ironsource/adqualitysdk/sdk/i/ab$d;

    invoke-direct {p0, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->w(Landroid/view/View;Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)V

    add-int/lit8 v1, v1, 0x41

    goto :goto_c
.end method

.method private static n(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    const/4 v4, 0x0

    if-eqz v0, :cond_71

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    new-array v0, v1, [I

    fill-array-data v0, :array_78

    const-string v4, ""

    invoke-static {v4, v4, v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v4

    const/4 v5, 0x3

    rsub-int/lit8 v4, v4, 0x3

    invoke-static {v0, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v5, :cond_3f

    return-object p0

    :cond_3f
    new-array p0, v1, [I

    fill-array-data p0, :array_80

    invoke-static {v3, v3, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    sub-int/2addr v2, v1

    invoke-static {p0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o([II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5a
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    add-int/lit8 p0, p0, 0xd

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    rem-int/2addr p0, v1

    if-nez p0, :cond_67

    const/4 p0, 0x0

    goto :goto_68

    :cond_67
    const/4 p0, 0x1

    :goto_68
    if-eq p0, v2, :cond_70

    const/16 p0, 0x51

    :try_start_6c
    div-int/2addr p0, v3
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6e

    return-object v4

    :catchall_6e
    move-exception p0

    throw p0

    :cond_70
    return-object v4

    :cond_71
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :try_start_74
    throw v4
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception p0

    throw p0

    nop

    :array_78
    .array-data 4
        -0x63c677f4
        -0x18a76664
    .end array-data

    :array_80
    .array-data 4
        0x164d5b59
        0x7708e32d
    .end array-data
.end method

.method private static o([II)Ljava/lang/String;
    .registers 14

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    :try_start_4
    new-array v1, v1, [C

    array-length v2, p0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v2, v2, [C

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/ab;->n:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x0

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    :goto_16
    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    array-length v7, p0

    if-ge v6, v7, :cond_bc

    aget v7, p0, v6

    const/16 v8, 0x10

    shr-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v5

    aget v7, p0, v6

    int-to-char v7, v7

    aput-char v7, v1, v3

    add-int/lit8 v7, v6, 0x1

    aget v7, p0, v7

    shr-int/2addr v7, v8

    int-to-char v7, v7

    const/4 v9, 0x2

    aput-char v7, v1, v9

    add-int/lit8 v6, v6, 0x1

    aget v6, p0, v6

    int-to-char v6, v6

    const/4 v7, 0x3

    aput-char v6, v1, v7

    aget-char v6, v1, v5

    shl-int/2addr v6, v8

    aget-char v10, v1, v3

    add-int/2addr v6, v10

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    aget-char v6, v1, v9

    shl-int/2addr v6, v8

    aget-char v10, v1, v7

    add-int/2addr v6, v10

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ([I)V

    const/4 v6, 0x0

    :goto_4d
    if-ge v6, v8, :cond_6a

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    aget v11, v4, v6

    xor-int/2addr v10, v11

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    invoke-static {v10}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾇ(I)I

    move-result v10

    sget v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    xor-int/2addr v10, v11

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sput v11, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    :cond_6a
    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    aget v8, v4, v8

    xor-int/2addr v6, v8

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    const/16 v8, 0x11

    aget v8, v4, v8

    xor-int/2addr v6, v8

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﻛ:I

    ushr-int/lit8 v8, v6, 0x10

    int-to-char v8, v8

    aput-char v8, v1, v5

    int-to-char v6, v6

    aput-char v6, v1, v3

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ:I

    ushr-int/lit8 v8, v6, 0x10

    int-to-char v8, v8

    aput-char v8, v1, v9

    int-to-char v6, v6

    aput-char v6, v1, v7

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/b;->ｋ([I)V

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    shl-int/lit8 v8, v6, 0x1

    aget-char v10, v1, v5

    aput-char v10, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v3

    aget-char v10, v1, v3

    aput-char v10, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v9

    aget-char v9, v1, v9

    aput-char v9, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v7

    aget-char v7, v1, v7

    aput-char v7, v2, v8

    add-int/lit8 v6, v6, 0x2

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/b;->ﾒ:I

    goto/16 :goto_16

    :cond_bc
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_4 .. :try_end_c2} :catchall_c3

    return-object p0

    :catchall_c3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic p(Lcom/ironsource/adqualitysdk/sdk/i/ab;)Ljava/util/List;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    rem-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->y:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0
.end method

.method static synthetic q(Lcom/ironsource/adqualitysdk/sdk/i/ab;Ljava/util/List;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->l(Ljava/util/List;)V

    if-ne v0, v1, :cond_20

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    add-int/lit8 p0, p0, 0x21

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :cond_20
    const/4 p0, 0x0

    :try_start_21
    throw p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception p0

    throw p0
.end method

.method private r()Lcom/ironsource/adqualitysdk/sdk/i/p;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ironsource/adqualitysdk/sdk/i/p<",
            "Landroid/webkit/WebView;",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ab$c;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ab$c;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ab;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x5

    if-eqz v1, :cond_15

    const/16 v1, 0x1c

    goto :goto_16

    :cond_15
    const/4 v1, 0x5

    :goto_16
    if-ne v1, v2, :cond_19

    return-object v0

    :cond_19
    const/4 v0, 0x0

    :try_start_1a
    throw v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v0

    throw v0
.end method

.method static synthetic s(Lcom/ironsource/adqualitysdk/sdk/i/ab;)Ljava/lang/Class;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    add-int/lit8 v1, v0, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    rem-int/lit8 v1, v1, 0x2

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->w:Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-nez v0, :cond_1c

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    :try_start_1d
    throw p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p0

    throw p0
.end method

.method static synthetic t(Landroid/app/Activity;Landroid/view/View;Ljava/lang/Class;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static/range {p0 .. p6}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->k(Landroid/app/Activity;Landroid/view/View;Ljava/lang/Class;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    add-int/lit8 p0, p0, 0xd

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/lit8 p0, p0, 0x2

    const/16 p1, 0x50

    if-eqz p0, :cond_1e

    const/16 p0, 0x50

    goto :goto_20

    :cond_1e
    const/16 p0, 0x58

    :goto_20
    if-eq p0, p1, :cond_23

    return-void

    :cond_23
    const/4 p0, 0x0

    :try_start_24
    throw p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p0

    throw p0
.end method

.method private u(Landroid/view/View;)Z
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    add-int/lit8 v1, v0, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->r:Lcom/ironsource/adqualitysdk/sdk/i/im;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_2b

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_21

    const/4 p1, 0x1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    if-eqz p1, :cond_2a

    const/16 p1, 0xb

    :try_start_26
    div-int/2addr p1, v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_28

    return v2

    :catchall_28
    move-exception p1

    throw p1

    :cond_2a
    return v2

    :cond_2b
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->x:Lcom/ironsource/adqualitysdk/sdk/i/ab$d;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->a(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->h(Landroid/view/View;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->r:Lcom/ironsource/adqualitysdk/sdk/i/im;

    invoke-interface {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/im;->ﾒ(Landroid/view/View;)Z

    move-result p1

    const/16 v0, 0x48

    if-eqz p1, :cond_44

    const/16 p1, 0x2d

    goto :goto_46

    :cond_44
    const/16 p1, 0x48

    :goto_46
    if-eq p1, v0, :cond_53

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    add-int/lit8 p1, p1, 0x4d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    rem-int/lit8 p1, p1, 0x2

    return v2

    :cond_53
    return v3
.end method

.method static synthetic v(Lcom/ironsource/adqualitysdk/sdk/i/ab;)Ljava/util/Map;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    add-int/lit8 v1, v0, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->v:Ljava/util/Map;

    if-nez v1, :cond_1c

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    :try_start_1d
    throw p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p0

    throw p0
.end method

.method private w(Landroid/view/View;Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)V
    .registers 14

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->u(Landroid/view/View;)Z

    move-result v0

    const/16 v2, 0x17

    const/16 v3, 0x31

    if-eqz v0, :cond_17

    const/16 v0, 0x17

    goto :goto_19

    :cond_17
    const/16 v0, 0x31

    :goto_19
    if-eq v0, v2, :cond_1d

    goto/16 :goto_141

    :cond_1d
    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->j(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_72

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    add-int/2addr v0, v3

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    rem-int/2addr v0, v1

    const/16 v3, 0xc

    if-nez v0, :cond_33

    const/16 v0, 0xc

    goto :goto_35

    :cond_33
    const/16 v0, 0x29

    :goto_35
    if-eq v0, v3, :cond_67

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;

    if-nez v0, :cond_4f

    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->u:Ljava/util/Map;

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p2, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/y;->ｋ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4f
    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->n(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Z

    move-result p2

    if-eqz p2, :cond_66

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p2, p1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/y;->ｋ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    rem-int/2addr p1, v1

    :cond_66
    return-void

    :cond_67
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->u:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ab;

    :try_start_6f
    throw v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_70

    :catchall_70
    move-exception p1

    throw p1

    :cond_72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v4, Landroid/webkit/WebView;

    const/4 v5, 0x0

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->D(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Z

    move-result v6

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->H(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Ljava/util/List;

    move-result-object v7

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->q(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Ljava/util/List;

    move-result-object v8

    move-object v3, p1

    move-object v9, v0

    invoke-static/range {v3 .. v9}, Lcom/ironsource/adqualitysdk/sdk/i/ka;->ﻐ(Landroid/view/View;Ljava/lang/Class;ZZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    instance-of v3, p1, Landroid/webkit/WebView;

    if-eqz v3, :cond_9d

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    add-int/lit8 v3, v3, 0xb

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    rem-int/2addr v3, v1

    check-cast p1, Landroid/webkit/WebView;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a1
    :goto_a1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v3, 0xe

    if-eqz v0, :cond_ac

    const/16 v0, 0x13

    goto :goto_ae

    :cond_ac
    const/16 v0, 0xe

    :goto_ae
    if-eq v0, v3, :cond_141

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->u:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_a1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->l(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a1

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/j0;

    invoke-direct {v3}, Lcom/ironsource/adqualitysdk/sdk/i/j0;-><init>()V

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->q:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->i(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->b(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_eb

    const/4 v4, 0x0

    goto :goto_ec

    :cond_eb
    const/4 v4, 0x1

    :goto_ec
    if-eq v4, v6, :cond_f0

    move-object v6, v2

    goto :goto_111

    :cond_f0
    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->b(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Ljava/lang/String;

    move-result-object v4

    new-array v7, v1, [I

    fill-array-data v7, :array_142

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    sub-int/2addr v6, v8

    invoke-static {v7, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o([II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v6, v4

    :goto_111
    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->e(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Z

    move-result v7

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->c(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Z

    move-result v8

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->f(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Z

    move-result v9

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->d(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Z

    move-result v10

    move-object v4, v3

    invoke-virtual/range {v4 .. v10}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->s(Ljava/lang/String;Ljava/util/List;ZZZZ)V

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->r()Lcom/ironsource/adqualitysdk/sdk/i/p;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/p;)V

    invoke-virtual {v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->ﾇ(Landroid/webkit/WebView;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ad;->ﻛ(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->u:Ljava/util/Map;

    invoke-interface {v3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a1

    :cond_141
    :goto_141
    return-void

    :array_142
    .array-data 4
        -0x4563eb04
        -0x5649d473
    .end array-data
.end method

.method private ｋ()V
    .registers 3

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ab$b;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ab$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ab;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->s:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ab$e;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ab$e;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ab;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->t:Lcom/ironsource/adqualitysdk/sdk/i/jh;

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/jd;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->t:Lcom/ironsource/adqualitysdk/sdk/i/jh;

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/jh;)V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method


# virtual methods
.method final g()V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/p;)V

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/jd;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->t:Lcom/ironsource/adqualitysdk/sdk/i/jh;

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jd;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/jh;)V

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->v:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->v:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    if-eqz v1, :cond_4c

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/lit8 v1, v1, 0x2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->s:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_21

    :cond_4c
    return-void
.end method

.method final m(Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/im;)V
    .registers 4

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;

    invoke-direct {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->x:Lcom/ironsource/adqualitysdk/sdk/i/ab$d;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->r:Lcom/ironsource/adqualitysdk/sdk/i/im;

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x22

    if-eqz p1, :cond_1a

    const/16 p1, 0x51

    goto :goto_1c

    :cond_1a
    const/16 p1, 0x22

    :goto_1c
    if-ne p1, p2, :cond_1f

    return-void

    :cond_1f
    const/4 p1, 0x0

    :try_start_20
    throw p1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p1

    throw p1
.end method

.method protected final synthetic ﻐ(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x4b

    if-eqz p1, :cond_11

    const/16 p1, 0x4b

    goto :goto_13

    :cond_11
    const/16 p1, 0x5e

    :goto_13
    if-eq p1, v0, :cond_1a

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->j()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1a
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->j()Ljava/lang/String;

    const/4 p1, 0x0

    :try_start_1e
    throw p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p1

    throw p1
.end method

.method public final ﾒ(Landroid/view/View;)V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    :try_start_a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->w:Ljava/lang/Class;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_97

    const/4 v3, 0x0

    if-nez v0, :cond_34

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/2addr v1, v2

    if-eqz v1, :cond_28

    :try_start_18
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->x:Lcom/ironsource/adqualitysdk/sdk/i/ab$d;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->t(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->w:Ljava/lang/Class;

    const/16 v0, 0x5d

    div-int/2addr v0, v3

    goto :goto_34

    :cond_28
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->x:Lcom/ironsource/adqualitysdk/sdk/i/ab$d;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->t(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->w:Ljava/lang/Class;

    :cond_34
    :goto_34
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/jb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->ﻛ()Landroid/app/Activity;

    move-result-object v0
    :try_end_3c
    .catchall {:try_start_18 .. :try_end_3c} :catchall_97

    if-nez v0, :cond_50

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    rem-int/2addr p1, v2

    if-nez p1, :cond_4f

    const/16 p1, 0x1d

    :try_start_4b
    div-int/2addr p1, v3
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4d

    return-void

    :catchall_4d
    move-exception p1

    throw p1

    :cond_4f
    return-void

    :cond_50
    :try_start_50
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->x:Lcom/ironsource/adqualitysdk/sdk/i/ab$d;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->y(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v3, 0x1

    :goto_5f
    if-eq v3, v4, :cond_8e

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ka;->ﻛ(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1
    :try_end_65
    .catchall {:try_start_50 .. :try_end_65} :catchall_97

    const/16 v3, 0x5e

    if-eqz v1, :cond_6c

    const/16 v4, 0x5a

    goto :goto_6e

    :cond_6c
    const/16 v4, 0x5e

    :goto_6e
    if-eq v4, v3, :cond_8e

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/ab;->p:I

    add-int/lit8 v3, v3, 0x57

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o:I

    rem-int/2addr v3, v2

    :try_start_79
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->x:Lcom/ironsource/adqualitysdk/sdk/i/ab$d;

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->y(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    return-void

    :cond_8e
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;

    invoke-direct {v1, p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ab$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ab;Landroid/app/Activity;Landroid/view/View;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    :try_end_96
    .catchall {:try_start_79 .. :try_end_96} :catchall_97

    return-void

    :catchall_97
    move-exception p1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_fe

    const/16 v1, 0x30

    invoke-static {v1}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v1

    rsub-int/lit8 v1, v1, 0x3e

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_112

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v4, v4, 0x14

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ab;->x:Lcom/ironsource/adqualitysdk/sdk/i/ab$d;

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ab$d;->t(Lcom/ironsource/adqualitysdk/sdk/i/ab$d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v2, [I

    fill-array-data v2, :array_12a

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x3

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ab;->o([II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :array_fe
    .array-data 4
        0x26611d31
        0xdfc1ce2
        -0x5f90a888
        -0xa6d4089
        0x5e785c6f
        -0x229f89b5
        -0x77f29080
        0x614c455c
    .end array-data

    :array_112
    .array-data 4
        0x6374767
        0x5f957fd0
        -0x7e529e0f
        -0x11cd571
        -0x7254dcaa
        0x6bd6f5f
        0x24d9154b
        0x582338b5
        -0x4c3b5e6b
        0x730a25a
    .end array-data

    :array_12a
    .array-data 4
        -0x5a895a0e
        -0x56edd891
    .end array-data
.end method
