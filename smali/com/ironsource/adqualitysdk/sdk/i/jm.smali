###### Class com.json.adqualitysdk.sdk.i.jm (com.ironsource.adqualitysdk.sdk.i.jm)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/jm;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/ironsource/adqualitysdk/sdk/i/dj; = null

.field private static b:[C = null

.field private static c:I = 0x121

.field private static d:Z = true

.field private static e:Z = true

.field private static f:I = 0x0

.field private static g:I = 0x1


# instance fields
.field private final h:Ljava/lang/String;

.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/jm;->b:[C

    return-void

    :array_a
    .array-data 2
        0x178s
        0x186s
        0x183s
        0x177s
        0x18as
        0x198s
        0x16bs
        0x194s
        0x16as
        0x18fs
        0x18bs
        0x184s
        0x195s
        0x190s
        0x193s
        0x166s
        0x141s
        0x188s
        0x15bs
        0x17ds
        0x17cs
        0x16fs
        0x164s
        0x175s
        0x180s
        0x162s
        0x173s
        0x16es
        0x17es
        0x170s
        0x174s
        0x179s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jm;->h:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jm;->i:Z

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jm;->f:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jm;->g:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/jm;->a:Lcom/ironsource/adqualitysdk/sdk/i/dj;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/dj;->ﻐ()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "\u009d\u0094\u009d\u0094\u0090\u009c\u009a\u0096\u0099\u009b\u009a\u0084\u0099\u0098\u0097\u0090\u0087\u0096\u0089\u0095\u0094\u0095\u0094"

    const-string v8, "\u009d\u0094\u009d\u0094\u009f\u0087\u0099\u0096\u009e\u009c\u009c\u009e\u0097\u0095\u0094\u0095\u0094"

    cmp-long v9, v1, v4

    add-int/lit8 v9, v9, 0x7e

    invoke-static {v6, v6, v9, v7}, Lcom/ironsource/adqualitysdk/sdk/i/jm;->c([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jm;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x7f

    invoke-static {v6, v6, v1, v8}, Lcom/ironsource/adqualitysdk/sdk/i/jm;->c([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/jm;->a:Lcom/ironsource/adqualitysdk/sdk/i/dj;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dj;->ﾇ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jm;->i:Z

    if-eqz v1, :cond_56

    const/4 v1, 0x1

    goto :goto_57

    :cond_56
    const/4 v1, 0x0

    :goto_57
    const-string v2, "\u009d\u0094\u009d\u0094\u009f\u0087\u0099\u009a\u009b\u0098\u00a0\u0090\u0095\u0094\u0095\u0094"

    if-eq v1, v3, :cond_7c

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x7f

    invoke-static {v6, v6, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jm;->c([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jm;->g:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jm;->f:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_98

    :cond_7c
    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x7f

    invoke-static {v6, v6, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jm;->c([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/jm;->a:Lcom/ironsource/adqualitysdk/sdk/i/dj;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dj;->ﾒ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_98
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v1

    const-string v3, "\u009d\u0094\u009d\u0094\u009f\u0087\u0099\u009b\u009e\u0098\u0097\u0090\u0096\u0096\u009e\u0097\u0095\u0094\u0095\u0094"

    cmp-long v7, v1, v4

    add-int/lit8 v7, v7, 0x7e

    invoke-static {v6, v6, v7, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jm;->c([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jm;->h:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jm;->g:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jm;->f:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﮌ()Lcom/ironsource/adqualitysdk/sdk/i/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ap;->ﾇ()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jm;->g:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jm;->f:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x46

    if-eqz v1, :cond_27

    const/16 v1, 0x46

    goto :goto_29

    :cond_27
    const/16 v1, 0x5e

    :goto_29
    if-eq v1, v2, :cond_2c

    return-object v0

    :cond_2c
    const/16 v1, 0x4f

    :try_start_2e
    div-int/lit8 v1, v1, 0x0
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_31

    return-object v0

    :catchall_31
    move-exception v0

    throw v0
.end method

.method private static c([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    if-eqz p3, :cond_8

    const-string v0, "ISO-8859-1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    :cond_8
    check-cast p3, [B

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_10
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/jm;->b:[C

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/jm;->c:I

    sget-boolean v3, Lcom/ironsource/adqualitysdk/sdk/i/jm;->e:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_49

    array-length p0, p3

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    new-array p0, p0, [C

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    :goto_25
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    if-ge p1, v3, :cond_42

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sub-int/2addr v3, v4

    aget-byte v3, p3, v3

    add-int/2addr v3, p2

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p1

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    goto :goto_25

    :cond_42
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p1

    :cond_49
    sget-boolean p3, Lcom/ironsource/adqualitysdk/sdk/i/jm;->d:Z

    if-eqz p3, :cond_78

    array-length p0, p1

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    new-array p0, p0, [C

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    :goto_54
    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    if-ge p3, v3, :cond_71

    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sub-int/2addr v3, v4

    aget-char v3, p1, v3

    sub-int/2addr v3, p2

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p3

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    goto :goto_54

    :cond_71
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p1

    :cond_78
    array-length p1, p0

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    new-array p1, p1, [C

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    :goto_7f
    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    if-ge p3, v3, :cond_9c

    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﻛ:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    sub-int/2addr v3, v4

    aget v3, p0, v3

    sub-int/2addr v3, p2

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p1, p3

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:I

    goto :goto_7f

    :cond_9c
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_15 .. :try_end_a2} :catchall_a3

    return-object p0

    :catchall_a3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dj;)V
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jm;->g:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jm;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x51

    if-eqz v0, :cond_11

    const/16 v0, 0xb

    goto :goto_13

    :cond_11
    const/16 v0, 0x51

    :goto_13
    sput-object p0, Lcom/ironsource/adqualitysdk/sdk/i/jm;->a:Lcom/ironsource/adqualitysdk/sdk/i/dj;

    if-ne v0, v1, :cond_18

    return-void

    :cond_18
    const/4 p0, 0x0

    :try_start_19
    throw p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception p0

    throw p0
.end method


# virtual methods
.method public final ﾒ(Landroid/webkit/WebView;)V
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jm;->g:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jm;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x17

    if-eqz v0, :cond_11

    const/16 v0, 0x17

    goto :goto_12

    :cond_11
    const/4 v0, 0x6

    :goto_12
    const/4 v2, 0x0

    if-eq v0, v1, :cond_33

    :try_start_15
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->ｋ(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_31

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jm;->g:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jm;->f:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    if-nez p1, :cond_2e

    return-void

    :cond_2e
    :try_start_2e
    throw v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p1

    throw p1

    :catch_31
    move-exception p1

    goto :goto_3d

    :cond_33
    :try_start_33
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->ｋ(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3a} :catch_31

    :try_start_3a
    throw v2
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3b} :catch_31
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception p1

    throw p1

    :goto_3d
    const/16 v0, 0x30

    invoke-static {v0}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v0

    add-int/lit8 v0, v0, 0x4f

    const-string v1, "\u008f\u008e\u008d\u008c\u0082\u008b\u008a\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v2, v2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jm;->c([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v7, "\u0091\u0093\u0086\u0082\u0085\u0084\u0083\u0082\u0086\u0091\u008e\u008d\u0091\u0088\u008b\u0091\u0092\u008a\u0085\u008d\u008c\u0082\u008b\u008a\u0085\u0091\u008f\u008e\u008f\u008f\u0090"

    cmp-long v8, v3, v5

    add-int/lit8 v8, v8, 0x7e

    invoke-static {v2, v2, v8, v7}, Lcom/ironsource/adqualitysdk/sdk/i/jm;->c([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

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
.end method
