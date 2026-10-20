###### Class com.json.adqualitysdk.sdk.i.fn (com.ironsource.adqualitysdk.sdk.i.fn)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/fn;
.super Lcom/ironsource/adqualitysdk/sdk/i/fr;
.source ""


# static fields
.field private static a:C = '\u0ad4'

.field private static b:C = '\ubfdf'

.field private static c:C = '\u076e'

.field private static d:C = '\u51bb'

.field private static e:I = 0x0

.field private static f:I = 0x1


# instance fields
.field private g:Lcom/ironsource/adqualitysdk/sdk/i/dx;

.field private h:Lcom/ironsource/adqualitysdk/sdk/i/dx;

.field private i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

.field private j:Lcom/ironsource/adqualitysdk/sdk/i/fr;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/fr;)V
    .registers 5

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/fr;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->g:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->h:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->j:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 13

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    array-length v1, p0

    new-array v1, v1, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    const/4 v3, 0x2

    new-array v3, v3, [C

    :goto_14
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    array-length v5, p0

    if-ge v4, v5, :cond_76

    aget-char v5, p0, v4

    aput-char v5, v3, v2

    add-int/lit8 v4, v4, 0x1

    aget-char v4, p0, v4

    const/4 v5, 0x1

    aput-char v4, v3, v5

    const v4, 0xe370

    const/4 v6, 0x0

    :goto_28
    const/16 v7, 0x10

    if-ge v6, v7, :cond_65

    aget-char v7, v3, v5

    aget-char v8, v3, v2

    add-int/2addr v8, v4

    aget-char v9, v3, v2

    shl-int/lit8 v9, v9, 0x4

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/fn;->c:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v2

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/fn;->d:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    sub-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v5

    aget-char v7, v3, v2

    aget-char v8, v3, v5

    add-int/2addr v8, v4

    aget-char v9, v3, v5

    shl-int/lit8 v9, v9, 0x4

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/fn;->a:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v5

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/fn;->b:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    sub-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    const v7, 0x9e37

    sub-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_65
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    aget-char v6, v3, v2

    aput-char v6, v1, v4

    add-int/lit8 v6, v4, 0x1

    aget-char v5, v3, v5

    aput-char v5, v1, v6

    add-int/lit8 v4, v4, 0x2

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    goto :goto_14

    :cond_76
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_b .. :try_end_7c} :catchall_7d

    return-object p0

    :catchall_7d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->e:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fn;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    if-eqz p0, :cond_2c

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object p0

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/fn;->f:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/fn;->e:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x44

    if-eqz p1, :cond_24

    const/16 p1, 0x60

    goto :goto_26

    :cond_24
    const/16 p1, 0x44

    :goto_26
    if-ne p1, p2, :cond_29

    return-object p0

    :cond_29
    :try_start_29
    throw v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    throw p0

    :cond_2c
    new-instance p0, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    invoke-direct {p0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_32
    :try_start_32
    throw v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/fn;

    const/4 v1, 0x1

    if-ne p0, p1, :cond_10

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/fn;->f:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->e:I

    rem-int/lit8 p1, p1, 0x2

    return v1

    :cond_10
    const/4 v2, 0x0

    if-eqz p1, :cond_af

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/fn;->e:I

    add-int/lit8 v3, v3, 0x47

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/fn;->f:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_35

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x5d

    :try_start_25
    div-int/2addr v4, v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_33

    const/16 v4, 0x38

    if-eq v0, v3, :cond_2d

    const/16 v0, 0xb

    goto :goto_2f

    :cond_2d
    const/16 v0, 0x38

    :goto_2f
    if-eq v0, v4, :cond_3d

    goto/16 :goto_af

    :catchall_33
    move-exception p1

    throw p1

    :cond_35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v0, v3, :cond_3d

    goto/16 :goto_af

    :cond_3d
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/fn;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->g:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/16 v3, 0x49

    if-eqz v0, :cond_48

    const/16 v4, 0x49

    goto :goto_4a

    :cond_48
    const/16 v4, 0x34

    :goto_4a
    if-eq v4, v3, :cond_51

    iget-object v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/fn;->g:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v0, :cond_5a

    goto :goto_59

    :cond_51
    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/fn;->g:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    :goto_59
    return v2

    :cond_5a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->h:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v0, :cond_71

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/fn;->e:I

    add-int/lit8 v3, v3, 0x25

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/fn;->f:I

    rem-int/lit8 v3, v3, 0x2

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/fn;->h:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    goto :goto_75

    :cond_71
    iget-object v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/fn;->h:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v0, :cond_76

    :goto_75
    return v2

    :cond_76
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v0, :cond_98

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/fn;->e:I

    add-int/lit8 v3, v3, 0x37

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/fn;->f:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8f

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/fn;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_af

    :cond_8f
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/fn;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :try_start_95
    throw p1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_96

    :catchall_96
    move-exception p1

    throw p1

    :cond_98
    iget-object v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/fn;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v0, :cond_9e

    const/4 v0, 0x0

    goto :goto_9f

    :cond_9e
    const/4 v0, 0x1

    :goto_9f
    if-eqz v0, :cond_af

    :cond_a1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->j:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/fn;->j:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    if-eqz v0, :cond_ac

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_ac
    if-nez p1, :cond_af

    return v1

    :cond_af
    :goto_af
    return v2
.end method

.method public final hashCode()I
    .registers 7

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->g:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->h:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    const/4 v4, 0x1

    goto :goto_22

    :cond_21
    const/4 v4, 0x0

    :goto_22
    if-eqz v4, :cond_3c

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/fn;->e:I

    add-int/lit8 v4, v4, 0xb

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/fn;->f:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_35

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3d

    :cond_35
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    const/4 v0, 0x0

    :try_start_39
    throw v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception v0

    throw v0

    :cond_3c
    const/4 v2, 0x0

    :goto_3d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->j:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    if-eqz v2, :cond_46

    const/4 v4, 0x1

    goto :goto_47

    :cond_46
    const/4 v4, 0x0

    :goto_47
    if-eq v4, v3, :cond_4b

    const/4 v2, 0x0

    goto :goto_59

    :cond_4b
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/fn;->e:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/fn;->f:I

    rem-int/lit8 v3, v3, 0x2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_59
    add-int/2addr v0, v2

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/fn;->e:I

    add-int/lit8 v2, v2, 0x43

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/fn;->f:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v3, 0x53

    if-nez v2, :cond_6a

    const/4 v2, 0x6

    goto :goto_6c

    :cond_6a
    const/16 v2, 0x53

    :goto_6c
    if-eq v2, v3, :cond_74

    const/16 v2, 0x30

    :try_start_70
    div-int/2addr v2, v1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_72

    return v0

    :catchall_72
    move-exception v0

    throw v0

    :cond_74
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-static {v1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4

    const-string v3, "\ucab9\u83fe\ucaeb\udce4\u7402\u2901"

    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/fn;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->g:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/16 v3, 0x58

    if-eqz v2, :cond_23

    const/16 v4, 0xb

    goto :goto_25

    :cond_23
    const/16 v4, 0x58

    :goto_25
    if-eq v4, v3, :cond_34

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/fn;->e:I

    add-int/lit8 v3, v3, 0x2f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/fn;->f:I

    rem-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_34
    invoke-static {v1}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const-string v2, "\uf377\u078c"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/fn;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->h:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/fn;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v2, :cond_64

    const/4 v3, 0x0

    goto :goto_65

    :cond_64
    const/4 v3, 0x1

    :goto_65
    if-eqz v3, :cond_68

    goto :goto_75

    :cond_68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/fn;->e:I

    add-int/lit8 v2, v2, 0x31

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/fn;->f:I

    rem-int/lit8 v2, v2, 0x2

    :goto_75
    invoke-static {v1, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    const-string v2, "\ub1e5\u0bcc"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/fn;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->j:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;
    .registers 7

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->g:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-static {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/fn;->b(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->e:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fn;->f:I

    rem-int/lit8 v0, v0, 0x2

    :goto_f
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->h:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﾇ()Z

    move-result v0

    const/16 v1, 0x2e

    if-eqz v0, :cond_20

    const/16 v0, 0x1f

    goto :goto_22

    :cond_20
    const/16 v0, 0x2e

    :goto_22
    if-eq v0, v1, :cond_5d

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->f:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fn;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->j:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/fr;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻛ()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3e

    const/4 v1, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    if-eq v1, v3, :cond_42

    goto :goto_5d

    :cond_42
    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ｋ()Z

    move-result v1

    if-eqz v1, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v2, 0x1

    :goto_4a
    if-eqz v2, :cond_52

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fn;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-static {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/fn;->b(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    goto :goto_f

    :cond_52
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/fn;->f:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/fn;->e:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0

    :cond_5d
    :goto_5d
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
