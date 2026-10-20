###### Class com.json.adqualitysdk.sdk.i.fl (com.ironsource.adqualitysdk.sdk.i.fl)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/fl;
.super Lcom/ironsource/adqualitysdk/sdk/i/fr;
.source ""


# static fields
.field private static a:J = 0x17230d83315630a8L

.field private static b:I = 0x0

.field private static c:I = 0x1


# instance fields
.field private d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

.field private e:Lcom/ironsource/adqualitysdk/sdk/i/fr;

.field private f:Lcom/ironsource/adqualitysdk/sdk/i/fr;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/fr;Lcom/ironsource/adqualitysdk/sdk/i/fr;)V
    .registers 4

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/fr;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->e:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->f:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﻛ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ｋ:I

    array-length p1, p0

    new-array p1, p1, [C

    const/4 v1, 0x0

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    :goto_13
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    array-length v2, p0

    if-ge v1, v2, :cond_2e

    aget-char v2, p0, v1

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/h;->ｋ:I

    mul-int v3, v3, v1

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/fl;->a:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    goto :goto_13

    :cond_2e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_35

    return-object p0

    :catchall_35
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_e

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/fl;->c:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fl;->b:I

    rem-int/lit8 p1, p1, 0x2

    return v0

    :cond_e
    const/4 v1, 0x0

    if-eqz p1, :cond_93

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/fl;->b:I

    add-int/lit8 v2, v2, 0x17

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/fl;->c:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8f

    const-class v2, Lcom/ironsource/adqualitysdk/sdk/i/fl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_27

    goto/16 :goto_93

    :cond_27
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/fl;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v2, :cond_4a

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/fl;->c:I

    add-int/lit8 v3, v3, 0x53

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/fl;->b:I

    rem-int/lit8 v3, v3, 0x2

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/fl;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/fl;->c:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->b:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_4e

    :cond_4a
    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/fl;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v2, :cond_4f

    :goto_4e
    return v1

    :cond_4f
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->e:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    if-eqz v2, :cond_5c

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/fl;->e:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    goto :goto_65

    :cond_5c
    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/fl;->e:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    if-eqz v2, :cond_62

    const/4 v2, 0x1

    goto :goto_63

    :cond_62
    const/4 v2, 0x0

    :goto_63
    if-eqz v2, :cond_66

    :goto_65
    return v1

    :cond_66
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->f:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    const/16 v3, 0x4b

    if-eqz v2, :cond_6f

    const/16 v4, 0x5b

    goto :goto_71

    :cond_6f
    const/16 v4, 0x4b

    :goto_71
    if-eq v4, v3, :cond_84

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->c:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fl;->b:I

    rem-int/lit8 v0, v0, 0x2

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/fl;->f:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_84
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/fl;->f:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    if-nez p1, :cond_8a

    const/4 p1, 0x1

    goto :goto_8b

    :cond_8a
    const/4 p1, 0x0

    :goto_8b
    if-eq p1, v0, :cond_8e

    return v1

    :cond_8e
    return v0

    :cond_8f
    const/4 p1, 0x0

    :try_start_90
    throw p1
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_91

    :catchall_91
    move-exception p1

    throw p1

    :cond_93
    :goto_93
    return v1
.end method

.method public final hashCode()I
    .registers 6

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    :goto_9
    if-eq v3, v1, :cond_d

    const/4 v0, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_11
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->e:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/fl;->c:I

    add-int/lit8 v3, v3, 0x6f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/fl;->b:I

    rem-int/lit8 v3, v3, 0x2

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->f:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    const/16 v3, 0x49

    if-eqz v1, :cond_33

    const/16 v4, 0x49

    goto :goto_35

    :cond_33
    const/16 v4, 0x5f

    :goto_35
    if-eq v4, v3, :cond_42

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fl;->c:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/fl;->b:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_46

    :cond_42
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_46
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0xaf9f    # 6.3001E-41f

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    sub-int/2addr v1, v2

    const-string v2, "\u30c1\u9f51\u6fb6\u3e5d"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/fl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const v1, 0xf72d

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v4

    add-int/2addr v4, v1

    const-string v1, "\u3081"

    invoke-static {v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/fl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->e:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    instance-of v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/fg;

    const/16 v4, 0x54

    const/4 v5, 0x0

    if-eqz v1, :cond_43

    const/4 v1, 0x0

    goto :goto_45

    :cond_43
    const/16 v1, 0x54

    :goto_45
    const-string v6, "\u30a2"

    const-string v7, "\u3088"

    if-eq v1, v4, :cond_5d

    invoke-static {v5}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    rsub-int v1, v1, 0x2975

    invoke-static {v7, v1}, Lcom/ironsource/adqualitysdk/sdk/i/fl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6e

    :cond_5d
    invoke-static {v5, v5}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v1

    add-int/lit16 v1, v1, 0x1e25

    invoke-static {v6, v1}, Lcom/ironsource/adqualitysdk/sdk/i/fl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6e
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->e:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->f:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    const/4 v4, 0x1

    if-eqz v1, :cond_7a

    const/4 v8, 0x1

    goto :goto_7b

    :cond_7a
    const/4 v8, 0x0

    :goto_7b
    if-eqz v8, :cond_125

    instance-of v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/fg;

    if-eqz v1, :cond_83

    const/4 v1, 0x0

    goto :goto_84

    :cond_83
    const/4 v1, 0x1

    :goto_84
    if-eqz v1, :cond_9c

    const/16 v1, 0x30

    const-string v2, ""

    invoke-static {v2, v1, v5, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    add-int/lit16 v1, v1, 0x1e26

    invoke-static {v6, v1}, Lcom/ironsource/adqualitysdk/sdk/i/fl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c3

    :cond_9c
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fl;->c:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v8, v1, 0x80

    sput v8, Lcom/ironsource/adqualitysdk/sdk/i/fl;->b:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b2

    const/16 v1, 0x2bce

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    shl-int/2addr v1, v2

    goto :goto_b8

    :cond_b2
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    add-int/lit16 v1, v1, 0x2976

    :goto_b8
    invoke-static {v7, v1}, Lcom/ironsource/adqualitysdk/sdk/i/fl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c3
    const v1, 0x8b57

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    sub-int/2addr v1, v2

    const-string v2, "\u30cd\ubb93\u2675\u92c8"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/fl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->f:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    instance-of v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/fg;

    if-eqz v1, :cond_e2

    const/4 v1, 0x1

    goto :goto_e3

    :cond_e2
    const/4 v1, 0x0

    :goto_e3
    if-eq v1, v4, :cond_f7

    invoke-static {v5}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    rsub-int v1, v1, 0x1e24

    invoke-static {v6, v1}, Lcom/ironsource/adqualitysdk/sdk/i/fl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_120

    :cond_f7
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/fl;->b:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/fl;->c:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_10d

    const/16 v1, 0x1f68

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1a

    div-int/2addr v1, v2

    goto :goto_115

    :cond_10d
    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    rsub-int v1, v1, 0x2975

    :goto_115
    invoke-static {v7, v1}, Lcom/ironsource/adqualitysdk/sdk/i/fl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_120
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->f:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_125
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->b:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fl;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﾇ()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    :cond_20
    if-eqz v1, :cond_32

    goto :goto_57

    :cond_23
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->d:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﾇ()Z

    move-result v0

    const/16 v1, 0x2a

    :try_start_2f
    div-int/2addr v1, v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_68

    if-eqz v0, :cond_57

    :cond_32
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->c:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/fl;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x35

    if-eqz v0, :cond_43

    const/16 v0, 0x5b

    goto :goto_45

    :cond_43
    const/16 v0, 0x35

    :goto_45
    if-ne v0, v1, :cond_4e

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->e:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/fr;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object p1

    return-object p1

    :cond_4e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->e:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/fr;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    const/4 p1, 0x0

    :try_start_54
    throw p1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception p1

    throw p1

    :cond_57
    :goto_57
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fl;->f:Lcom/ironsource/adqualitysdk/sdk/i/fr;

    if-eqz v0, :cond_60

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/fr;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object p1

    return-object p1

    :cond_60
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V

    return-object p1

    :catchall_68
    move-exception p1

    throw p1
.end method
