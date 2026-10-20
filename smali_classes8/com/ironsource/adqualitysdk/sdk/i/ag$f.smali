###### Class com.ironsource.adqualitysdk.sdk.i.ag.f (com.ironsource.adqualitysdk.sdk.i.ag$f)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ag$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/jf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ag;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static a:J = -0x754d17d9faf5f0daL

.field private static b:I = 0x0

.field private static c:I = 0x1


# instance fields
.field final synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/ag;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;->d:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;)Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "\ud52c\ud54d\ua98a\ua6cf\udb2e\uc516\u804c\uad70\ue9d5\ued1c\u81af"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_20} :catch_2b

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;->c:I

    add-int/lit8 p0, p0, 0x25

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;->b:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_4d

    :catch_2b
    const/4 p0, 0x0

    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p0

    const-string v1, "\u35ef\u35ae\ud993\ud6db\ue163\uff4e\u33dd\u1ec3\u090e\u9d11\ubbee\u59b4\u4cac"

    invoke-static {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    const-string v2, "\u4b89\u4bcc\ua878\ua72c\u38e4\u26da\u9f9b\ub286\u7763\uecb2\u6261\uf5f5\u32dd\u2f13\uaff6\u395e\ufe61\u63a3\uec93\u7cd5\ub980\ua6dc\u2821\u803d\u6508\u9912\u75ce\uc390\u2074\uddff"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾒ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4d
    return-object v0
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-wide v1, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;->a:J

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

    sget-wide v6, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;->a:J

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

.method static synthetic c(Landroid/app/Activity;)Lorg/json/JSONObject;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;->c:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;->b:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;->a(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;->b:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;->c:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method


# virtual methods
.method public final ﻐ(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$f$a;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ag$f$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ag$f;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;->b:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;->c:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-nez p1, :cond_17

    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    const/4 p1, 0x1

    :goto_18
    if-eqz p1, :cond_1b

    return-void

    :cond_1b
    const/16 p1, 0x57

    :try_start_1d
    div-int/2addr p1, v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception p1

    throw p1
.end method

.method public final ｋ(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$f$b;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ag$f$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ag$f;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;->c:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;->b:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x5

    if-eqz p1, :cond_17

    const/4 p1, 0x5

    goto :goto_19

    :cond_17
    const/16 p1, 0xe

    :goto_19
    if-eq p1, v0, :cond_1c

    return-void

    :cond_1c
    const/16 p1, 0x53

    :try_start_1e
    div-int/lit8 p1, p1, 0x0
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception p1

    throw p1
.end method
