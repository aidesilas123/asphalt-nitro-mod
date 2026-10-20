###### Class com.ironsource.adqualitysdk.sdk.i.ag.i.a (com.ironsource.adqualitysdk.sdk.i.ag$i$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ag$i$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ag$i;->ﾒ(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static d:J = 0x0L

.field private static e:I = 0x0

.field private static f:C = '\u0a4e'

.field private static g:I = 0x0

.field private static h:I = 0x1


# instance fields
.field private synthetic i:Lcom/ironsource/adqualitysdk/sdk/i/ag$i;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ag$i;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$i$a;->i:Lcom/ironsource/adqualitysdk/sdk/i/ag$i;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;
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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/ag$i$a;->d:J

    xor-long/2addr v2, v4

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/ag$i$a;->e:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lcom/ironsource/adqualitysdk/sdk/i/ag$i$a;->f:C

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
.method public final ﻛ()V
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$i$a;->g:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag$i$a;->h:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    :try_start_b
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$i$a;->i:Lcom/ironsource/adqualitysdk/sdk/i/ag$i;

    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ag$i;->b:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->p(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_2a

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ag$i$a;->h:I

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ag$i$a;->g:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_20

    const/4 v1, 0x0

    goto :goto_21

    :cond_20
    const/4 v1, 0x1

    :goto_21
    if-eqz v1, :cond_24

    return-void

    :cond_24
    const/16 v1, 0x40

    :try_start_26
    div-int/2addr v1, v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v0

    throw v0

    :catchall_2a
    move-exception v1

    const v2, 0x3415eb54

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v3

    int-to-byte v3, v3

    sub-int/2addr v2, v3

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    int-to-char v3, v3

    const-string v4, "\u5541\u15eb\u9d34\ucb91"

    const-string v5, "\u0000\u0000\u0000\u0000"

    const-string v6, "\ue53c\ua28d\ucecc\u4044\u3ad0\uef5a\ufb49\u67ba\uc0da"

    invoke-static {v4, v5, v2, v3, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ag$i$a;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const v3, 0x20b8ba35

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v4

    const/4 v6, 0x0

    const-string v7, "\u35f0\ub8ba\u5020\u682f"

    const-string v8, "\u9e4b\u71d5\u8537\ubb9d\ub866\u2b29\ud5e2\uc0cb\u635a\u856a\udc02\u00b9\ub864\u4636\ub0c7\u7adb\u481c\u3e1e\ud818\u059e\u143b\u757a\u9e31\u0152\u6379\ue4ed\u82fc\ue0c1\u6d19\u4a32\u03ca"

    cmpl-float v4, v4, v6

    add-int/2addr v4, v3

    invoke-static {v0, v0}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    rsub-int v0, v0, 0x2f50

    int-to-char v0, v0

    invoke-static {v7, v5, v4, v0, v8}, Lcom/ironsource/adqualitysdk/sdk/i/ag$i$a;->b(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾇ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$i$a;->i:Lcom/ironsource/adqualitysdk/sdk/i/ag$i;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$i;->b:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->q(Lcom/ironsource/adqualitysdk/sdk/i/ag;)V

    return-void
.end method
