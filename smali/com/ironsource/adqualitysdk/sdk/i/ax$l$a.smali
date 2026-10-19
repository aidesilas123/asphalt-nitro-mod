###### Class com.ironsource.adqualitysdk.sdk.i.ax.l.a (com.ironsource.adqualitysdk.sdk.i.ax$l$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ax$l;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static d:C = '\ue243'

.field private static e:C = '\u26e5'

.field private static f:C = '\ua9a6'

.field private static g:C = '\u3161'

.field private static h:I = 0x0

.field private static i:I = 0x1


# instance fields
.field private synthetic j:Lcom/ironsource/adqualitysdk/sdk/i/ax$l;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ax$l;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax$l;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->f:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v2

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->g:C

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

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->d:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v5

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->e:C

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


# virtual methods
.method public final ﻛ()V
    .registers 11

    const-string v0, ""

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->h:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->i:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax$l;

    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$l;->q:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->F(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax$l;

    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ax$l;->i:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﻐ()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12d

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax$l;

    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$l;->q:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->K(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Lcom/ironsource/adqualitysdk/sdk/i/at;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax$l;

    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ax$l;->i:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﻐ()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/at$b;

    invoke-direct {v4, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/at$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/at;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/av$d;)V

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax$l;

    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$l;->q:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$l;->i:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->G(Lcom/ironsource/adqualitysdk/sdk/i/ax;Lcom/ironsource/adqualitysdk/sdk/i/ci;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_47
    const-string v3, "\ud4d3\u9e06\u7e87\u30fb"

    const/16 v4, 0x30

    invoke-static {v0, v4, v2, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_5c} :catch_5c

    :catch_5c
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax$l;

    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ax$l;->q:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->k(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax$l;

    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ax$l;->i:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﻐ()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax$l;

    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$l;->q:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->K(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Lcom/ironsource/adqualitysdk/sdk/i/at;

    move-result-object v1

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax$l;

    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ax$l;->i:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﻐ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/at;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax$l;

    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$l;->q:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->F(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax$l;

    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ax$l;->i:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﻐ()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax$l;

    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$l;->q:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;

    move-result-object v1

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;->AD_NETWORK_SDK_REQUIRES_NEWER_AD_QUALITY_SDK:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax$l;

    iget-object v6, v6, Lcom/ironsource/adqualitysdk/sdk/i/ax$l;->i:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v6}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ｋ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0xe

    const-string v7, "\u9580\u3b43\u13b7\ua03f\u2c14\uf800\ue55e\ub643\uf468\u68fb\u5758\u56ca\u7832\ud9b2"

    invoke-static {v7, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax$l;

    iget-object v6, v6, Lcom/ironsource/adqualitysdk/sdk/i/ax$l;->i:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v6}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﺙ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    shr-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0x1d

    const-string v6, "\u83f3\u5d8c\uf450\u1e25\ud9de\ude12\u1114\uc8b7\u395a\u886d\ud18a\ufea3\ucce0\u103a\u8319\ub892\u9580\u3b43\u13b7\ua03f\u2c14\uf800\ue55e\ub643\uf468\u68fb\u5758\u56ca\u7832\ud9b2"

    invoke-static {v6, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax$l;

    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ax$l;->i:Lcom/ironsource/adqualitysdk/sdk/i/ci;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﮐ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x8

    const-string v2, "\u5ec2\u514b\u2136\u0bda\u2b07\u19e4\u31a9\udc27\u34a9\uafa9"

    invoke-static {v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;->adQualitySdkInitFailed(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    shr-int/lit8 v0, v0, 0x16

    add-int/lit8 v0, v0, 0x10

    const-string v1, "\ue649\u559d\u76d9\ud639\uc0fd\u63af\u1e8c\u5f6b\uddae\uf340\u3dc8\u40c1\ud183\ueaa4\ue55e\ub643"

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->i:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ax$l$a;->h:I

    rem-int/lit8 v0, v0, 0x2

    :cond_12d
    return-void
.end method
