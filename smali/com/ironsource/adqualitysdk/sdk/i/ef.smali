###### Class com.json.adqualitysdk.sdk.i.ef (com.ironsource.adqualitysdk.sdk.i.ef)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ef;
.super Lcom/ironsource/adqualitysdk/sdk/i/eb;
.source ""


# static fields
.field private static k:J = 0x456f8f7d86e4563dL

.field private static l:I = 0x0

.field private static m:C = '\u0000'

.field private static n:I = 0x0

.field private static o:I = 0x1


# instance fields
.field private p:Lcom/ironsource/adqualitysdk/sdk/i/dx;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V
    .registers 5

    invoke-direct {p0, p1, p2, p4}, Lcom/ironsource/adqualitysdk/sdk/i/eb;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ef;->p:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    return-void
.end method

.method private d()Lcom/ironsource/adqualitysdk/sdk/i/dx;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ef;->o:I

    add-int/lit8 v1, v0, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ef;->n:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ef;->p:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ef;->n:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x2b

    if-eqz v0, :cond_1b

    const/16 v0, 0x4a

    goto :goto_1d

    :cond_1b
    const/16 v0, 0x2b

    :goto_1d
    if-eq v0, v2, :cond_26

    const/16 v0, 0x59

    :try_start_21
    div-int/lit8 v0, v0, 0x0
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_24

    return-object v1

    :catchall_24
    move-exception v0

    throw v0

    :cond_26
    return-object v1
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;
    .registers 11

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_6
    check-cast p4, [C

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_e
    check-cast p1, [C

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_16
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻐ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1b
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    const/4 v1, 0x0

    aget-char v2, p0, v1

    xor-int/2addr p3, v2

    int-to-char p3, p3

    aput-char p3, p0, v1

    const/4 p3, 0x2

    aget-char v2, p1, p3

    int-to-char p2, p2

    add-int/2addr v2, p2

    int-to-char p2, v2

    aput-char p2, p1, p3

    array-length p2, p4

    new-array p3, p2, [C

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    :goto_3b
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    if-ge v1, p2, :cond_80

    add-int/lit8 v2, v1, 0x2

    rem-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v1, 0x3

    rem-int/lit8 v3, v3, 0x4

    rem-int/lit8 v1, v1, 0x4

    aget-char v1, p0, v1

    mul-int/lit16 v1, v1, 0x7fce

    aget-char v4, p1, v2

    add-int/2addr v1, v4

    const v4, 0xffff

    rem-int/2addr v1, v4

    int-to-char v1, v1

    sput-char v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ｋ:C

    aget-char v5, p0, v3

    mul-int/lit16 v5, v5, 0x7fce

    aget-char v2, p1, v2

    add-int/2addr v5, v2

    div-int/2addr v5, v4

    int-to-char v2, v5

    aput-char v2, p1, v3

    aput-char v1, p0, v3

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    aget-char v2, p4, v1

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/ef;->k:J

    xor-long/2addr v2, v4

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/ef;->l:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lcom/ironsource/adqualitysdk/sdk/i/ef;->m:C

    int-to-long v4, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    goto :goto_3b

    :cond_80
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_1b .. :try_end_86} :catchall_87

    return-object p0

    :catchall_87
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/16 v0, 0x10

    if-ne p0, p1, :cond_7

    const/16 v1, 0x10

    goto :goto_9

    :cond_7
    const/16 v1, 0x5b

    :goto_9
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_4d

    if-eqz p1, :cond_4c

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/ef;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_1d

    goto :goto_4c

    :cond_1d
    invoke-super {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/eb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    return v3

    :cond_24
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ef;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ef;->p:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ef;->p:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eq v1, v2, :cond_47

    if-nez p1, :cond_34

    return v2

    :cond_34
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ef;->o:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ef;->n:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_46

    const/16 p1, 0x63

    :try_start_42
    div-int/2addr p1, v3
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_44

    return v3

    :catchall_44
    move-exception p1

    throw p1

    :cond_46
    return v3

    :cond_47
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4c
    :goto_4c
    return v3

    :cond_4d
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ef;->o:I

    add-int/lit8 p1, p1, 0x43

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ef;->n:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5a

    return v3

    :cond_5a
    return v2
.end method

.method public final hashCode()I
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ef;->o:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ef;->n:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-super {p0}, Lcom/ironsource/adqualitysdk/sdk/i/eb;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2b

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ef;->p:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/4 v3, 0x1

    if-eqz v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x1

    :goto_1b
    if-eq v2, v3, :cond_38

    goto :goto_31

    :cond_1e
    invoke-super {p0}, Lcom/ironsource/adqualitysdk/sdk/i/eb;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ef;->p:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/16 v3, 0x59

    if-eqz v2, :cond_2d

    const/16 v2, 0x3a

    goto :goto_2f

    :cond_2d
    const/16 v2, 0x59

    :goto_2f
    if-eq v2, v3, :cond_38

    :goto_31
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ef;->p:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_42

    :cond_38
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ef;->n:I

    add-int/lit8 v2, v2, 0x27

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ef;->o:I

    rem-int/lit8 v2, v2, 0x2

    :goto_42
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/ironsource/adqualitysdk/sdk/i/eb;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x2beda109

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v7, "\u099c\ueda1\u8b2b\u62fd"

    const-string v8, "\u563d\u86e4\u8f7d\u456f"

    const-string v9, ""

    const-string v10, "\u2bf9\ue89b\u46ec"

    cmp-long v11, v3, v5

    add-int/2addr v11, v1

    const v1, 0xfd8b

    invoke-static {v9, v2}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-char v1, v1

    invoke-static {v7, v8, v11, v1, v10}, Lcom/ironsource/adqualitysdk/sdk/i/ef;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ef;->d()Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ef;->n:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ef;->o:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, ""

    const-string v4, "\u73b4\ue60e\ufbdc\u408f\ubc34\u54cc\u3a66\u29f9\u565c\ud0af\u062c\u6056\u73c0\u22ce\u8639\u3047\ud901\u905b\uadce\uea59\u338b\uf286\u51d8\u19b3\u2bb6\u6d52\u090f\u71e4\u6c68\u8a9e\ua451\ua462\ub64a\u156e\uc195\uf3bd\uabd2\u4556\udbc8\u17a6\uf7f9\u4ac5"

    const-string v5, "\ubf7a\ucbfc\ufec1\u435f"

    const-string v6, "\u563d\u86e4\u8f7d\u456f"

    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/eb;->ｋ()Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v7

    invoke-virtual {v7, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/ef;->d()Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v8

    invoke-virtual {v8, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object v8

    const/4 v9, 0x0

    :try_start_1f
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/eb;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/dx;

    move-result-object v10

    invoke-virtual {v10, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻐ()Ljava/lang/Object;

    move-result-object v0

    instance-of v10, v0, Lorg/json/JSONObject;

    if-eqz v10, :cond_40

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v7}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻐ()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻐ()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_192

    :cond_40
    instance-of v10, v0, Lorg/json/JSONArray;

    const/4 v11, 0x1

    if-eqz v10, :cond_47

    const/4 v10, 0x0

    goto :goto_48

    :cond_47
    const/4 v10, 0x1

    :goto_48
    const/16 v12, 0x27

    const/4 v13, 0x0

    if-eqz v10, :cond_126

    instance-of v10, v0, Ljava/util/Map;

    if-eqz v10, :cond_53

    const/4 v10, 0x0

    goto :goto_54

    :cond_53
    const/4 v10, 0x1

    :goto_54
    if-eq v10, v11, :cond_6f

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v7}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻐ()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻐ()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_63} :catch_15f

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ef;->o:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ef;->n:I

    rem-int/lit8 v0, v0, 0x2

    goto/16 :goto_192

    :cond_6f
    :try_start_6f
    instance-of v10, v0, Ljava/util/List;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_71} :catch_15f

    const/16 v14, 0x39

    if-eqz v10, :cond_78

    const/16 v10, 0x2f

    goto :goto_7a

    :cond_78
    const/16 v10, 0x39

    :goto_7a
    if-eq v10, v14, :cond_af

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/ef;->o:I

    add-int/2addr v3, v12

    rem-int/lit16 v10, v3, 0x80

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/ef;->n:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_9a

    :try_start_87
    check-cast v0, Ljava/util/List;

    invoke-virtual {v7}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﾒ()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v8}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻐ()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_192

    :cond_9a
    check-cast v0, Ljava/util/List;

    invoke-virtual {v7}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﾒ()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v8}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻐ()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_ab} :catch_15f

    :try_start_ab
    throw v13
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ac} :catch_15f
    .catchall {:try_start_ab .. :try_end_ac} :catchall_ac

    :catchall_ac
    move-exception v0

    move-object v2, v0

    throw v2

    :cond_af
    :try_start_af
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_cb

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﾒ()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v8}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻐ()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v0, v3

    goto/16 :goto_192

    :cond_cb
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v12, v11

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v11, v14, v16

    add-int/lit16 v11, v11, 0x5ffd

    int-to-char v11, v11

    invoke-static {v5, v6, v12, v11, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ef;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻐ()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\u43ec\ub9ab\u3d2a\u7e39"

    const v12, 0x2ab9ab43

    invoke-static {v3, v9}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    sub-int/2addr v12, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    add-int/lit16 v3, v3, 0x393c

    int-to-char v3, v3

    const-string v14, "\uad39\u8e52\u3fec\u9e4c\u9d5c\ud9a6\u6910\ub928\ud869\uffad\uad71\uc216\ucb9b\u61e7\u62cc\u2eeb\u50d7\u7243\uee3c\u1956\ue9c4\ubecc\u9cfc\u8647\uf492\u7bf9\u6e78\ub1c4\u4472\ua54c\u87ed\ucc83\ua00a\u29b0\u518e\u1132\u4b14\ua3b6\ua642\u8d38\uc3ee"

    invoke-static {v11, v6, v12, v3, v14}, Lcom/ironsource/adqualitysdk/sdk/i/ef;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v13}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_125} :catch_15f

    goto :goto_192

    :cond_126
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/ef;->o:I

    add-int/lit8 v3, v3, 0x11

    rem-int/lit16 v10, v3, 0x80

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/ef;->n:I

    rem-int/lit8 v3, v3, 0x2

    const/16 v10, 0x58

    if-eqz v3, :cond_136

    const/16 v12, 0x58

    :cond_136
    if-eq v12, v10, :cond_14a

    :try_start_138
    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v7}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﾒ()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v8}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻐ()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_192

    :cond_14a
    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v7}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﾒ()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v8}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻐ()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_15b} :catch_15f

    :try_start_15b
    throw v13
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_15c} :catch_15f
    .catchall {:try_start_15b .. :try_end_15c} :catchall_15c

    :catchall_15c
    move-exception v0

    move-object v2, v0

    throw v2

    :catch_15f
    move-exception v0

    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    rsub-int v9, v9, 0x5ffe

    int-to-char v9, v9

    invoke-static {v5, v6, v7, v9, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ef;->e(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻐ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_192
    return-object v8
.end method
