###### Class com.json.adqualitysdk.sdk.i.js (com.ironsource.adqualitysdk.sdk.i.js)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/js;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:I = 0x37

.field private static b:J = 0x304c609132b4aea5L

.field private static c:I = 0x0

.field private static d:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-wide v1, Lcom/ironsource/adqualitysdk/sdk/i/js;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ(J[CI)[C

    move-result-object p0

    const/4 p1, 0x4

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    :goto_14
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    array-length v2, p0

    if-ge v1, v2, :cond_3a

    add-int/lit8 v1, v1, -0x4

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ｋ:I

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    aget-char v2, p0, v1

    rem-int/lit8 v3, v1, 0x4

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/f;->ｋ:I

    int-to-long v4, v4

    sget-wide v6, Lcom/ironsource/adqualitysdk/sdk/i/js;->b:J

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p0, v1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    goto :goto_14

    :cond_3a
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v1, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_43

    return-object v1

    :catchall_43
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(IZIILjava/lang/String;)Ljava/lang/String;
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

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/js;->a:I

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

.method public static ﻐ()Ljava/lang/String;
    .registers 10

    const-string v0, ""

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/js;->c:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/js;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x45

    if-nez v1, :cond_13

    const/16 v1, 0x51

    goto :goto_15

    :cond_13
    const/16 v1, 0x45

    :goto_15
    const-wide/16 v3, 0x0

    const-string v5, "\u45d7\u45a2\u85f9\uac50\u8918"

    const-string v6, "\ue7c4\ue7a7\u8fa7\u216d\u905e\ucd79\u8e69\u85a8\u5d25\ue6f0\udace\u435f\u9295\uac59\u1f6f\u0491\uc808\u51aa\u401e\ube7a\u0df1\u1720\u8acd\u73c2\u434e\udc47\ucf23\u3502\ub8ec\u81d6\u71da\ueeb6\ufdad\u4764"

    const/4 v7, 0x0

    if-eq v1, v2, :cond_40

    :try_start_1e
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v1

    shl-int v1, v7, v1

    invoke-static {v6, v1}, Lcom/ironsource/adqualitysdk/sdk/i/js;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v8, 0x1

    cmp-long v6, v1, v8

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/js;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_3b
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_5c

    :cond_40
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1

    invoke-static {v6, v1}, Lcom/ironsource/adqualitysdk/sdk/i/js;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    cmp-long v6, v1, v3

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/js;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_5b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_5b} :catch_5d

    goto :goto_3b

    :goto_5c
    return-object v0

    :catch_5d
    :try_start_5d
    const-string v1, "\u92a1\u92c2\uf0bf\u5e75\u9ecb\uc3ec\u091e\u02df\u285c\u99f4\ud45d\uc432\ue7fa\ud31d\u11eb\u83ba\ubd7e\u2ebb\u4ec4\u3915\u7895\u683b\u8403\uf481\u3629\ua35f\uc1b6\ub275\ucdaa\ufec6\u7f45\u6996\u88de\u386a\ub4d1\u270a\u4660\u7393\uf274\ue27e\u1dc6\ucd09\u2ffd\u9991\udb05\u08b3\u64aa\u571a\u969c\u43dd\ua22f\u12f6\u2c30\u9d49\udfbd\uc845\ueb5d\ud8e2\u1547\u87c2\ua6ca\u126b\u52e1\u42b6"

    invoke-static {v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/js;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "\udd53\udd32\ud3e6\ubfa1\ucfd6"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    cmp-long v5, v1, v3

    invoke-static {v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/js;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0
    :try_end_80
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5d .. :try_end_80} :catch_81

    return-object v0

    :catch_81
    invoke-static {v7, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    const-string v1, "\ub58b\ub5e5\u2c5f\u6aab\u622b"

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/js;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ﻐ(Landroid/content/Context;)Ljava/lang/String;
    .registers 14

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/js;->d:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/js;->c:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    :try_start_16
    invoke-virtual {v0, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object p0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_1c} :catch_33

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/js;->c:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/js;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2b

    const/16 v0, 0x8

    goto :goto_2d

    :cond_2b
    const/16 v0, 0x5b

    :goto_2d
    if-eq v0, v2, :cond_30

    return-object p0

    :cond_30
    :try_start_30
    throw v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    throw p0

    :catch_33
    move-exception v0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    const-string v8, "\uc110\uc151\udf3c\u71e9\u61f8\u3cc2\uc8a5\uc31f\u7bf0\ub66c\u2b70\u05ef"

    invoke-static {v8, v6}, Lcom/ironsource/adqualitysdk/sdk/i/js;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x30

    const-string v10, ""

    invoke-static {v10, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v9

    neg-int v9, v9

    const-string v11, "\ub77d\ub73e\u5c8d\uf247\u0ea3\u539c\ufadb\uf158\u0d8d\u35da\u4465\u37af\uc275\u7f27\u818b\u703b\u98e1\u829c\udefb\uca90\u5d46\uc419\u1461\u0702\u13b9\u0f69\u51d3\u41e5\ue864\u52f7\uef3b\u9a4d\uad51\u945a\u24a5\ud4d1\u63fd"

    invoke-static {v11, v9}, Lcom/ironsource/adqualitysdk/sdk/i/js;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v3}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v11

    const-string p0, "\'$\'\'\u001a\uffd5\uffe2\uffd5\uffd5\uffef"

    cmp-long v9, v11, v4

    add-int/lit16 v9, v9, 0x83

    invoke-static {v10, v10, v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v10}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0xa

    invoke-static {v9, v7, v3, v2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/js;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﺙ(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static ﻐ(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/js;->d:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/js;->c:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_14

    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    const/4 p0, 0x1

    :goto_15
    if-eq p0, v0, :cond_22

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/js;->d:I

    add-int/lit8 p0, p0, 0x6d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/js;->c:I

    rem-int/lit8 p0, p0, 0x2

    return v0

    :cond_22
    return p1
.end method

.method public static ﾇ(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 20

    move-object/from16 v1, p1

    const-string v2, "\'$\'\'\u001a\uffd5\uffe2\uffd5\uffd5\uffef"

    const-string v3, "\ub77d\ub73e\u5c8d\uf247\u0ea3\u539c\ufadb\uf158\u0d8d\u35da\u4465\u37af\uc275\u7f27\u818b\u703b\u98e1\u829c\udefb\uca90\u5d46\uc419\u1461\u0702\u13b9\u0f69\u51d3\u41e5\ue864\u52f7\uef3b\u9a4d\uad51\u945a\u24a5\ud4d1\u63fd"

    const-string v4, ""

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/js;->d:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/js;->c:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    const/4 v5, 0x1

    rsub-int/lit8 v0, v0, 0x1

    const-string v6, "\uc110\uc151\udf3c\u71e9\u61f8\u3cc2\uc8a5\uc31f\u7bf0\ub66c\u2b70\u05ef"

    invoke-static {v6, v0}, Lcom/ironsource/adqualitysdk/sdk/i/js;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    :try_start_2c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    cmp-long v0, v11, v8

    add-int/lit16 v0, v0, 0xa5

    invoke-static {v10, v10}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v11

    add-int/2addr v11, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    add-int/lit8 v12, v12, 0x2

    const-string v13, "\uffff\u0001"

    invoke-static {v0, v10, v11, v12, v13}, Lcom/ironsource/adqualitysdk/sdk/i/js;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_4e} :catch_4f

    goto :goto_64

    :catch_4f
    move-exception v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v11

    shr-int/lit8 v11, v11, 0x16

    add-int/2addr v11, v5

    const-string v12, "\u829b\u82d8\ud8d3\u7619\u8629\udb16\ue4cb\uef48\u386b\ub184\uccef\u29bf\uf793\ufb7f\u0900\u6e3b\uad07\u06d0\u5665\ud48d\u68af\u404a\u9ce9\u193e\u261b\u8b7a\ud951\u5ff5\udd85\ud6a1\u67f4\u845b\u98f8\u1042\uac2a\ucac0\u5654\u5bf8"

    invoke-static {v12, v11}, Lcom/ironsource/adqualitysdk/sdk/i/js;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_64
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    :try_start_69
    invoke-static {v10, v10}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    rsub-int v0, v0, 0x9b

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v13

    cmpl-float v13, v13, v12

    add-int/2addr v13, v5

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v14

    shr-int/lit8 v14, v14, 0x10

    add-int/lit8 v14, v14, 0x2

    const-string v15, "\u0002\uffff"

    invoke-static {v0, v10, v13, v14, v15}, Lcom/ironsource/adqualitysdk/sdk/i/js;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v7}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8f
    .catch Lorg/json/JSONException; {:try_start_69 .. :try_end_8f} :catch_90

    goto :goto_bb

    :catch_90
    move-exception v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x14

    shr-int/lit8 v14, v14, 0x6

    rsub-int/lit8 v14, v14, 0x1

    const-string v15, "\ue82a\ue869\ue7dd\u4917\ueffb\ub2c4\uaff9\ua47a\u52da\u8e8a\ua53d\u628d\u9d22\uc471\u60d2\u2509\uc7b6\u39d5\u3fac\u9fa2\u020e\u7f49\uf532\u5229\u4cab\ub426\ub0ca\u14d9\ub733\ue9a3\u0e6d\ucf7c\uf241\u2f09\uc5b2\u81ef\u3ceb\u64f5\u834b\u44d5\u676a\uda6b\u5e9a\u3f33\ua191\u1fdf\u15b8\uf1e3\uec56\u54b9\ud310\ub443\u56b5\u8a3a\uaec4\u6e85"

    invoke-static {v15, v14}, Lcom/ironsource/adqualitysdk/sdk/i/js;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﺙ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_bb
    :try_start_bb
    invoke-virtual {v11, v7, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v13, "\u491c\u496a\ud519\u7bdf\u87cf\u3166"

    const/16 v14, 0x30

    invoke-static {v4, v14, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v14

    neg-int v14, v14

    invoke-static {v13, v14}, Lcom/ironsource/adqualitysdk/sdk/i/js;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    iget v14, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v13

    shr-int/lit8 v13, v13, 0x10

    rsub-int v13, v13, 0xa9

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    shr-int/lit8 v14, v14, 0x16

    rsub-int/lit8 v14, v14, 0x1

    invoke-static {v10, v10}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v15

    cmp-long v17, v15, v8

    rsub-int/lit8 v15, v17, 0x1

    const-string v12, "\ufffc\u0004"

    invoke-static {v13, v10, v14, v15, v12}, Lcom/ironsource/adqualitysdk/sdk/i/js;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_100
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_bb .. :try_end_100} :catch_128
    .catch Lorg/json/JSONException; {:try_start_bb .. :try_end_100} :catch_101

    goto :goto_170

    :catch_101
    move-exception v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v13

    neg-int v13, v13

    const-string v14, "\u3e29\u3e6a\u7549\udb83\ub1a3\uec9c\u30e4\u3b67\u84d9\u1c1e\ufb65\ufd90\u4b21\u56e5\u3e8a\uba14\u11b5\uab49\u61ea\u00bc\ud459\uedca\uab63\ucd2a\u9abe\u26a9\ueedd\u8bda\u6171\u7b3d\u5030\u5066\u244a\ubdd8\u9bbe\u1ef3\ueaa9\uf666\udd05\udb87\ub173\u48be\u00c2\ua021\u7793\u8d56\u4be1\u6ea2\u3a4f\uc668"

    invoke-static {v14, v13}, Lcom/ironsource/adqualitysdk/sdk/i/js;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﺙ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_170

    :catch_128
    move-exception v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v13

    add-int/2addr v13, v5

    invoke-static {v3, v13}, Lcom/ironsource/adqualitysdk/sdk/i/js;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v10}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v13

    cmp-long v15, v13, v8

    rsub-int v13, v15, 0x81

    invoke-static {v10}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x8

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v15

    shr-int/lit8 v15, v15, 0x8

    add-int/lit8 v15, v15, 0xa

    invoke-static {v13, v5, v14, v15, v2}, Lcom/ironsource/adqualitysdk/sdk/i/js;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﺙ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_170
    :try_start_170
    invoke-virtual {v11, v7, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v8, v9}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v12

    rsub-int v12, v12, 0x9f

    invoke-static {v10}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x14

    shr-int/lit8 v13, v13, 0x6

    rsub-int/lit8 v13, v13, 0x1

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v14

    cmp-long v16, v14, v8

    rsub-int/lit8 v8, v16, 0x3

    const-string v9, "\ufffb\u0005"

    invoke-static {v12, v5, v13, v8, v9}, Lcom/ironsource/adqualitysdk/sdk/i/js;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_170 .. :try_end_1a1} :catch_1df
    .catch Lorg/json/JSONException; {:try_start_170 .. :try_end_1a1} :catch_1b6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/js;->c:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/js;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1ae

    const/4 v10, 0x1

    :cond_1ae
    if-eq v10, v5, :cond_1b1

    return-void

    :cond_1b1
    const/4 v0, 0x0

    :try_start_1b2
    throw v0
    :try_end_1b3
    .catchall {:try_start_1b2 .. :try_end_1b3} :catchall_1b3

    :catchall_1b3
    move-exception v0

    move-object v1, v0

    throw v1

    :catch_1b6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    sub-int/2addr v5, v2

    const-string v2, "\u170d\u174e\uc875\u66bf\u6f0c\u3233\u5a25\u51a6\uadfd\ua122\u25ca\u9751\u6205\uebd9\ue025\ud0d5\u3891\u1675\ubf45\u6a7d\ufd7d\u50ee\u75c8\ua7f4\ub38c\u9bdc\u3074\ue11b\u4813\uc607\u8ed1\u3ab5\u0d6e\u00e4\u450f\u742e\uc3c2\u4b5e\u03f7\ub109\u985c\uf5de\ude3f\ucaea\u5eb7\u3022\u9501"

    invoke-static {v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/js;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﺙ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1df
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {v3, v8}, Lcom/ironsource/adqualitysdk/sdk/i/js;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v3

    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    add-int/lit16 v3, v3, 0x82

    invoke-static {v4, v10, v10}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x8

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/lit8 v7, v7, 0xa

    invoke-static {v3, v5, v4, v7, v2}, Lcom/ironsource/adqualitysdk/sdk/i/js;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﺙ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
