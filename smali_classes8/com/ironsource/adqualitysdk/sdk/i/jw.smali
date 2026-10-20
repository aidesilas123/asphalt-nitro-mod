###### Class com.json.adqualitysdk.sdk.i.jw (com.ironsource.adqualitysdk.sdk.i.jw)
.class public Lcom/ironsource/adqualitysdk/sdk/i/jw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/jw$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ironsource/adqualitysdk/sdk/i/jw$a;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static b:[C = null

.field private static c:C = '\u0000'

.field private static d:I = 0x0

.field private static e:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->f()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->a:Ljava/util/Map;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 13

    const-class v0, Ljava/lang/Float;

    const-class v1, Ljava/lang/Long;

    const-class v2, Ljava/lang/Integer;

    const-class v3, Ljava/lang/Short;

    const-class v4, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_26

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    const/16 v8, 0x4a

    if-nez v5, :cond_22

    const/4 v5, 0x4

    goto :goto_24

    :cond_22
    const/16 v5, 0x4a

    :goto_24
    if-eq v5, v8, :cond_1fb

    :cond_26
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3e

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 v5, v5, 0x3f

    rem-int/lit16 v8, v5, 0x80

    sput v8, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 v5, v5, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1fb

    :cond_3e
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    const/16 v8, 0x51

    if-eqz v5, :cond_4b

    const/16 v5, 0x51

    goto :goto_4c

    :cond_4b
    const/4 v5, 0x6

    :goto_4c
    if-eq v5, v8, :cond_4f

    goto :goto_55

    :cond_4f
    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1fb

    :goto_55
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_6e

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    const/16 v9, 0x48

    if-nez v8, :cond_68

    const/16 v8, 0x48

    goto :goto_6a

    :cond_68
    const/16 v8, 0xc

    :goto_6a
    if-eq v8, v9, :cond_6e

    goto/16 :goto_1fb

    :cond_6e
    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_84

    sget v8, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 v8, v8, 0x49

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_1fb

    :cond_84
    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_90

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1fb

    :cond_90
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_b1

    sget v8, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 v8, v8, 0x53

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_ab

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_1fb

    goto :goto_b1

    :cond_ab
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    :try_start_ae
    throw v6
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_af

    :catchall_af
    move-exception p0

    throw p0

    :cond_b1
    :goto_b1
    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_d0

    sget v8, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 v8, v8, 0x11

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_ca

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_1fb

    goto :goto_d0

    :cond_ca
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    :try_start_cd
    throw v6
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_ce

    :catchall_ce
    move-exception p0

    throw p0

    :cond_d0
    :goto_d0
    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_dc

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_1fb

    :cond_dc
    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    const/4 v8, 0x0

    if-eqz v5, :cond_e5

    const/4 v5, 0x1

    goto :goto_e6

    :cond_e5
    const/4 v5, 0x0

    :goto_e6
    if-eq v5, v7, :cond_e9

    goto :goto_ef

    :cond_e9
    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1fb

    :goto_ef
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_fd

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_1fb

    :cond_fd
    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_109

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_1fb

    :cond_109
    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_126

    sget v9, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 v9, v9, 0x3f

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 v9, v9, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_121

    const/4 v9, 0x1

    goto :goto_122

    :cond_121
    const/4 v9, 0x0

    :goto_122
    if-eq v9, v7, :cond_126

    goto/16 :goto_1fb

    :cond_126
    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_132

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_1fb

    :cond_132
    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_13e

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1fb

    :cond_13e
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_158

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    add-int/lit8 v5, v5, 0xb

    rem-int/lit16 v9, v5, 0x80

    sput v9, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    rem-int/lit8 v5, v5, 0x2

    const-class v5, Ljava/lang/Double;

    invoke-virtual {p1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1fb

    :cond_158
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_192

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 v5, v5, 0x35

    rem-int/lit16 v9, v5, 0x80

    sput v9, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 v5, v5, 0x2

    const/16 v9, 0x60

    if-nez v5, :cond_171

    const/16 v5, 0x54

    goto :goto_173

    :cond_171
    const/16 v5, 0x60

    :goto_173
    if-eq v5, v9, :cond_181

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/16 v5, 0x3e

    :try_start_17b
    div-int/2addr v5, v8
    :try_end_17c
    .catchall {:try_start_17b .. :try_end_17c} :catchall_17f

    if-nez v0, :cond_1fb

    goto :goto_192

    :catchall_17f
    move-exception p0

    throw p0

    :cond_181
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/16 v5, 0x13

    if-nez v0, :cond_18c

    const/16 v0, 0x13

    goto :goto_18e

    :cond_18c
    const/16 v0, 0x59

    :goto_18e
    if-eq v0, v5, :cond_192

    goto/16 :goto_1fb

    :cond_192
    :goto_192
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1aa

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_1a5

    const/16 v0, 0x15

    goto :goto_1a7

    :cond_1a5
    const/16 v0, 0x4f

    :goto_1a7
    if-eq v0, v1, :cond_1aa

    goto :goto_1fb

    :cond_1aa
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/16 v1, 0x23

    if-eqz v0, :cond_1b7

    const/16 v0, 0x3d

    goto :goto_1b9

    :cond_1b7
    const/16 v0, 0x23

    :goto_1b9
    if-eq v0, v1, :cond_1c1

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1fb

    :cond_1c1
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1cf

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1fb

    :cond_1cf
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d9

    const/4 v0, 0x1

    goto :goto_1da

    :cond_1d9
    const/4 v0, 0x0

    :goto_1da
    if-eqz v0, :cond_1e2

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1fb

    :cond_1e2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1f3

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1f3

    goto :goto_1fb

    :cond_1f3
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1fa

    return v7

    :cond_1fa
    return v8

    :cond_1fb
    :goto_1fb
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    add-int/lit8 p0, p0, 0x35

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_208

    return v7

    :cond_208
    :try_start_208
    throw v6
    :try_end_209
    .catchall {:try_start_208 .. :try_end_209} :catchall_209

    :catchall_209
    move-exception p0

    throw p0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->j(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/reflect/Method;

    move-result-object p0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0xb

    if-eqz p1, :cond_2a

    const/16 p1, 0x30

    goto :goto_2c

    :cond_2a
    const/16 p1, 0xb

    :goto_2c
    if-eq p1, p2, :cond_34

    const/16 p1, 0x4a

    :try_start_30
    div-int/2addr p1, v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_32

    return-object p0

    :catchall_32
    move-exception p0

    throw p0

    :cond_34
    return-object p0
.end method

.method private static c(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    :goto_11
    rem-int/lit8 v1, v1, 0x2

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x33

    if-eqz v1, :cond_1e

    const/16 v1, 0x33

    goto :goto_20

    :cond_1e
    const/16 v1, 0x10

    :goto_20
    if-eq v1, v2, :cond_2d

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    add-int/lit8 p0, p0, 0x19

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    rem-int/lit8 p0, p0, 0x2

    return-object v0

    :cond_2d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x29

    if-eqz v1, :cond_38

    const/16 v3, 0x13

    goto :goto_3a

    :cond_38
    const/16 v3, 0x29

    :goto_3a
    if-eq v3, v2, :cond_44

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_44
    const-class v1, Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    goto :goto_11
.end method

.method private static d(Ljava/lang/reflect/Method;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x22

    const/16 v2, 0x44

    if-eqz v0, :cond_13

    const/16 v0, 0x22

    goto :goto_15

    :cond_13
    const/16 v0, 0x44

    :goto_15
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    if-eq v0, v1, :cond_20

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e([Ljava/lang/Class;Ljava/util/List;)Z

    move-result p0

    goto :goto_28

    :cond_20
    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e([Ljava/lang/Class;Ljava/util/List;)Z

    move-result p0

    const/16 p1, 0x31

    :try_start_26
    div-int/lit8 p1, p1, 0x0
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_3f

    :goto_28
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 p1, p1, 0x43

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x5b

    if-nez p1, :cond_38

    const/16 v2, 0x5b

    :cond_38
    if-eq v2, v0, :cond_3b

    return p0

    :cond_3b
    const/4 p0, 0x0

    :try_start_3c
    throw p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p0

    throw p0

    :catchall_3f
    move-exception p0

    throw p0
.end method

.method private static e([Ljava/lang/Class;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    add-int/lit8 v1, v0, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_14
    array-length v2, p0

    const/4 v3, 0x1

    if-ge v1, v2, :cond_70

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/16 v4, 0x4f

    if-nez v2, :cond_23

    const/16 v5, 0x4f

    goto :goto_25

    :cond_23
    const/16 v5, 0x55

    :goto_25
    if-eq v5, v4, :cond_28

    goto :goto_32

    :cond_28
    const-class v4, Ljava/lang/Object;

    aget-object v5, p0, v1

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_5a

    :goto_32
    if-eqz v2, :cond_57

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    add-int/lit8 v4, v4, 0x65

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4e

    aget-object v4, p0, v1

    invoke-static {v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->a(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0x31

    :try_start_48
    div-int/2addr v4, v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_4c

    if-nez v2, :cond_57

    goto :goto_5a

    :catchall_4c
    move-exception p0

    throw p0

    :cond_4e
    aget-object v4, p0, v1

    invoke-static {v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->a(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    goto :goto_5a

    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_5a
    :goto_5a
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    add-int/lit8 p0, p0, 0x79

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_68

    const/4 p0, 0x1

    goto :goto_69

    :cond_68
    const/4 p0, 0x0

    :goto_69
    if-eq p0, v3, :cond_6c

    return v0

    :cond_6c
    const/4 p0, 0x0

    :try_start_6d
    throw p0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception p0

    throw p0

    :cond_70
    return v3
.end method

.method static f()V
    .registers 1

    const/4 v0, 0x6

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->c:C

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_e

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->b:[C

    return-void

    nop

    :array_e
    .array-data 2
        0x52s
        0x65s
        0x66s
        0x6cs
        0x63s
        0x74s
        0x69s
        0x6fs
        0x6es
        0x55s
        0x73s
        0x43s
        0x61s
        0x20s
        0x75s
        0x64s
        0x45s
        0x72s
        0x67s
        0x68s
        0x6ds
        0x4es
        0x27s
        0x2es
        0x71s
        0x79s
        0x53s
        0x54s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x5bs
        0x5cs
        0x5ds
    .end array-data
.end method

.method private static g(Ljava/lang/reflect/Constructor;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e([Ljava/lang/Class;Ljava/util/List;)Z

    move-result p0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    if-nez p1, :cond_24

    return p0

    :cond_24
    const/4 p0, 0x0

    :try_start_25
    throw p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p0

    throw p0
.end method

.method private static h(BLjava/lang/String;I)Ljava/lang/String;
    .registers 11

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_6
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->b:[C

    sget-char v2, Lcom/ironsource/adqualitysdk/sdk/i/jw;->c:C

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

.method private static i(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0xd

    if-ge v1, v0, :cond_3b

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x5a

    if-ne v4, v5, :cond_1c

    const/16 v4, 0x63

    goto :goto_1e

    :cond_1c
    const/16 v4, 0x5a

    :goto_1e
    if-eq v4, v6, :cond_38

    invoke-static {v3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->g(Ljava/lang/reflect/Constructor;Ljava/util/List;)Z

    move-result v4

    const/16 v5, 0x5f

    if-eqz v4, :cond_29

    goto :goto_2b

    :cond_29
    const/16 v2, 0x5f

    :goto_2b
    if-eq v2, v5, :cond_38

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    add-int/lit8 p0, p0, 0x4f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    rem-int/lit8 p0, p0, 0x2

    return-object v3

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_3b
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/2addr p0, v2

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 p0, p0, 0x2

    const/4 p1, 0x0

    if-eqz p0, :cond_48

    return-object p1

    :cond_48
    :try_start_48
    throw p1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception p0

    throw p0
.end method

.method private static j(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/reflect/Method;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1a

    if-eqz v0, :cond_11

    const/16 v0, 0x2f

    goto :goto_13

    :cond_11
    const/16 v0, 0x1a

    :goto_13
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x1

    goto :goto_24

    :cond_1e
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_24
    if-ge v1, v0, :cond_28

    const/4 v4, 0x0

    goto :goto_29

    :cond_28
    const/4 v4, 0x1

    :goto_29
    if-eqz v4, :cond_2d

    const/4 p0, 0x0

    return-object p0

    :cond_2d
    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    const/4 v5, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v5, 0x0

    :goto_3c
    if-eqz v5, :cond_78

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x4a

    if-ne v5, v6, :cond_4e

    const/16 v5, 0x4a

    goto :goto_50

    :cond_4e
    const/16 v5, 0x1c

    :goto_50
    if-eq v5, v7, :cond_53

    goto :goto_78

    :cond_53
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    const/16 v6, 0x49

    if-ne v5, p3, :cond_62

    const/16 v5, 0x49

    goto :goto_64

    :cond_62
    const/16 v5, 0x5f

    :goto_64
    if-eq v5, v6, :cond_67

    goto :goto_78

    :cond_67
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 v5, v5, 0x1b

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 v5, v5, 0x2

    invoke-static {v4, p2}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d(Ljava/lang/reflect/Method;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_78

    return-object v4

    :cond_78
    :goto_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_24
.end method

.method private static k(Ljava/util/List;)[Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;)[",
            "Ljava/lang/Class;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 v0, v0, 0x2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    if-eq v3, v4, :cond_1f

    return-object v0

    :cond_1f
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    add-int/lit8 v3, v3, 0x39

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v4, 0x0

    :goto_2d
    if-eqz v4, :cond_3a

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x3d

    goto :goto_12

    :cond_3a
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12
.end method

.method public static ﻐ(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)Ljava/lang/reflect/Method;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/jw$a;

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jw$a;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_86

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e([Ljava/lang/Class;Ljava/util/List;)Z

    move-result v3

    const/16 v4, 0x2d

    if-eqz v3, :cond_23

    const/16 v3, 0x20

    goto :goto_25

    :cond_23
    const/16 v3, 0x2d

    :goto_25
    const/4 v5, 0x0

    if-eq v3, v4, :cond_38

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 p0, p0, 0x79

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_35

    return-object v1

    :cond_35
    :try_start_35
    throw v5
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p0

    throw p0

    :cond_38
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    shr-int/lit8 v1, v1, 0x16

    rsub-int/lit8 v1, v1, 0x2a

    int-to-byte v1, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0xf

    const-string v4, "\u0001\u0002\u0003\u0004\u0002\u0005\u0000\u000b\u0008\t\u000b\u0003\t\u0000\u009d"

    invoke-static {v1, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x67

    int-to-byte v4, v4

    invoke-static {v2, v2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v6

    add-int/lit8 v6, v6, 0x1c

    const-string v7, "\u0011\u000c\r\u000b\u000c\u000e\u0013\u0000\u00db\u00db\u0007\t\u0013\u000c\u0000\u0010\u0001\u0016\u0003\r\u000e\u0013\u0002\u0000\u0019\r\u0010\u000e"

    invoke-static {v4, v7, v6}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    rem-int/lit8 v1, v1, 0x2

    :cond_86
    instance-of v1, p0, Ljava/lang/Class;

    const/16 v3, 0x21

    if-eqz v1, :cond_8f

    const/16 v1, 0x50

    goto :goto_91

    :cond_8f
    const/16 v1, 0x21

    :goto_91
    const/4 v4, 0x1

    if-eq v1, v3, :cond_ad

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    rem-int/lit8 v1, v1, 0x2

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0, p1, p2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->j(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_b1

    const-class p0, Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object p0

    goto :goto_b1

    :cond_ad
    invoke-static {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object p0

    :cond_b1
    :goto_b1
    if-eqz p0, :cond_b4

    const/4 v2, 0x1

    :cond_b4
    if-eqz v2, :cond_c5

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->a:Ljava/util/Map;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 p1, p1, 0x2

    :cond_c5
    return-object p0
.end method

.method public static ﻐ([Ljava/lang/reflect/Field;[Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Field;
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x44

    if-nez v0, :cond_11

    const/16 v0, 0x20

    goto :goto_13

    :cond_11
    const/16 v0, 0x44

    :goto_13
    const/4 v2, 0x0

    if-eq v0, v1, :cond_24

    array-length v0, p0

    array-length v1, p1

    shl-int v3, v0, v1

    new-array v3, v3, [Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-static {p0, v4, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_30

    :cond_24
    array-length v0, p0

    array-length v1, p1

    add-int v3, v0, v1

    new-array v3, v3, [Ljava/lang/reflect/Field;

    invoke-static {p0, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_30
    return-object v3
.end method

.method public static ﻐ([Ljava/lang/reflect/Method;[Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Method;
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x3

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    goto :goto_11

    :cond_f
    const/16 v0, 0x34

    :goto_11
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_22

    array-length v0, p0

    array-length v4, p1

    add-int v5, v0, v4

    new-array v5, v5, [Ljava/lang/reflect/Method;

    invoke-static {p0, v3, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v3, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2e

    :cond_22
    array-length v0, p0

    array-length v4, p1

    ushr-int v5, v0, v4

    new-array v5, v5, [Ljava/lang/reflect/Method;

    invoke-static {p0, v2, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v2, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2e
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/2addr p0, v1

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3a

    const/4 v3, 0x1

    :cond_3a
    if-eq v3, v2, :cond_3d

    return-object v5

    :cond_3d
    const/4 p0, 0x0

    :try_start_3e
    throw p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception p0

    throw p0
.end method

.method public static ﻛ(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->i(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method public static ｋ(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_a
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_19

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :catchall_19
    move-exception v0

    const/4 v1, 0x0

    if-eqz p1, :cond_80

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x2a

    int-to-byte p1, p1

    const-string v2, ""

    invoke-static {v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    add-int/lit8 v2, v2, 0xf

    const-string v3, "\u0001\u0002\u0003\u0004\u0002\u0005\u0000\u000b\u0008\t\u000b\u0003\t\u0000\u009d"

    invoke-static {p1, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v3

    int-to-byte v3, v3

    rsub-int/lit8 v3, v3, 0x69

    int-to-byte v3, v3

    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v4

    const/4 v5, 0x0

    const-string v6, "\t\u0005\u0010\u0006\u0007\u0010"

    const-string v7, "\u000e\u0007\u000b\u0001\u000e\u0001\u0008\r\t\u000e"

    cmpl-float v4, v4, v5

    rsub-int/lit8 v4, v4, 0x6

    invoke-static {v3, v6, v4}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result p0

    shr-int/lit8 p0, p0, 0x10

    rsub-int/lit8 p0, p0, 0x1a

    int-to-byte p0, p0

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v3

    int-to-byte v3, v3

    rsub-int/lit8 v3, v3, 0x9

    invoke-static {p0, v7, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_80
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 p0, p0, 0x7b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_8d

    goto :goto_8e

    :cond_8d
    const/4 v1, 0x1

    :goto_8e
    const/4 p0, 0x0

    if-eqz v1, :cond_92

    return-object p0

    :cond_92
    :try_start_92
    throw p0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_93

    :catchall_93
    move-exception p0

    throw p0
.end method

.method public static ｋ(Ljava/lang/Class;Ljava/util/List;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/jw;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v3, 0x63

    const/16 v4, 0x25

    if-nez v1, :cond_15

    const/16 v1, 0x63

    goto :goto_17

    :cond_15
    const/16 v1, 0x25

    :goto_17
    const/4 v5, 0x0

    if-eq v1, v3, :cond_1d

    if-eqz p0, :cond_f5

    goto :goto_21

    :cond_1d
    const/4 v1, 0x2

    :try_start_1e
    div-int/2addr v1, v5
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_f6

    if-eqz p0, :cond_f5

    :goto_21
    add-int/lit8 v2, v2, 0x6f

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v1, 0x0

    if-nez v2, :cond_f2

    const/4 v2, 0x1

    if-eqz p1, :cond_f1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_37

    goto/16 :goto_f1

    :cond_37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    const/4 v7, 0x1

    goto :goto_52

    :cond_51
    const/4 v7, 0x0

    :goto_52
    if-eqz v7, :cond_80

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    add-int/lit8 v7, v7, 0x65

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_62

    const/4 v7, 0x0

    goto :goto_63

    :cond_62
    const/4 v7, 0x1

    :goto_63
    if-ne v7, v2, :cond_7a

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    if-eqz v7, :cond_90

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_90

    goto :goto_80

    :cond_7a
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    :try_start_7d
    throw v1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7e

    :catchall_7e
    move-exception p0

    throw p0

    :cond_80
    :goto_80
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_91

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_91

    :cond_90
    return v2

    :cond_91
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 v3, v3, 0x3f

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 v3, v3, 0x2

    goto :goto_3b

    :cond_9c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    add-int/lit8 v1, v1, 0x70

    int-to-byte v1, v1

    invoke-static {v5, v5}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const-string v3, "\u0001\n\u0015\u0012\u000b\u000c\u0008\t\u000b\u0008\u000f\u000c\u0005\u0002\u0012\u0011\u000c\u001b\u000f\r\u0000\t\u0001\u001d"

    cmp-long v10, v6, v8

    add-int/lit8 v10, v10, 0x19

    invoke-static {v1, v3, v10}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c6

    const/16 p1, 0x25

    goto :goto_c7

    :cond_c6
    const/4 p1, 0x7

    :goto_c7
    if-eq p1, v4, :cond_ca

    goto :goto_f5

    :cond_ca
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    if-nez p1, :cond_d6

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    if-eqz p1, :cond_ef

    :cond_d6
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    if-eqz p1, :cond_de

    const/4 p1, 0x0

    goto :goto_df

    :cond_de
    const/4 p1, 0x1

    :goto_df
    if-eq p1, v2, :cond_f0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f0

    :cond_ef
    return v2

    :cond_f0
    return v5

    :cond_f1
    :goto_f1
    return v2

    :cond_f2
    :try_start_f2
    throw v1
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f3

    :catchall_f3
    move-exception p0

    throw p0

    :cond_f5
    :goto_f5
    return v5

    :catchall_f6
    move-exception p0

    throw p0
.end method

.method public static varargs ﾇ(Ljava/lang/Class;Ljava/util/List;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method public static ﾒ(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)Ljava/lang/reflect/Method;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    const/4 v3, 0x0

    if-ne v0, v1, :cond_43

    :try_start_14
    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->k(Ljava/util/List;)[Ljava/lang/Class;

    move-result-object p2

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-eq v0, v1, :cond_2a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_29} :catch_4b

    return-object p0

    :cond_2a
    :try_start_2a
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_31
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2a .. :try_end_31} :catch_3c

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jw;->e:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/jw;->d:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :catch_3c
    :try_start_3c
    const-class v0, Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0

    :cond_43
    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->k(Ljava/util/List;)[Ljava/lang/Class;

    instance-of p0, p0, Ljava/lang/Class;
    :try_end_48
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3c .. :try_end_48} :catch_4b

    :try_start_48
    throw v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception p0

    throw p0

    :catch_4b
    move-exception p2

    const-string v0, ""

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x2a

    int-to-byte v1, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0xf

    const-string v5, "\u0001\u0002\u0003\u0004\u0002\u0005\u0000\u000b\u0008\t\u000b\u0003\t\u0000\u009d"

    invoke-static {v1, v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, -0xffff90

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x4

    const-string v7, "\u0013\t\u0010\u0013"

    invoke-static {v5, v7, v6}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x78

    int-to-byte p1, p1

    invoke-static {v0, v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x13

    const-string v2, "\u0013\u0010\u0013\u0002\u0001\u0017\t\r\u000e\u0001\u0008\r\t\u000e\u000e\u0001\u000b\r\u0098"

    invoke-static {p1, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->h(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method
