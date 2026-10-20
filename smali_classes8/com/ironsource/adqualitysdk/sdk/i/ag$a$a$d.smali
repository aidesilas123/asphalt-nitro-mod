###### Class com.ironsource.adqualitysdk.sdk.i.ag.a.C0333a.d (com.ironsource.adqualitysdk.sdk.i.ag$a$a$d)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$d;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ip;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static d:[C = null

.field private static e:J = 0x0L

.field private static f:I = 0x0

.field private static g:I = 0x1


# instance fields
.field private synthetic h:Lcom/ironsource/adqualitysdk/sdk/i/ip;

.field private synthetic i:I

.field private synthetic j:Ljava/lang/String;

.field private synthetic k:Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x34

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$d;->d:[C

    const-wide v0, 0x1b77e0ba0d5cbd80L    # 2.356989066283874E-176

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$d;->e:J

    return-void

    nop

    :array_12
    .array-data 2
        0x67a9s
        -0x25ebs
        0x1c97s
        0x5f1fs
        -0x6e72s
        -0x2bees
        0x1693s
        0x4914s
        -0x7463s
        -0x31a6s
        0x8ds
        0x431fs
        -0x7a6cs
        -0x7f2s
        0x3adas
        0x7d0ds
        -0x4078s
        -0xdebs
        0x3494s
        0x771ds
        -0x5626s
        -0x13f3s
        0x2e93s
        0x610es
        -0x5c6es
        -0x19a6s
        0x5889s
        -0x64e1s
        -0x226cs
        0x101es
        0x52bfs
        -0x6af4s
        -0x2861s
        0xa14s
        0x4c8es
        -0x70acs
        -0x3e26s
        0x43ds
        0x4695s
        -0x46f2s
        -0x426s
        0x3e08s
        0x709fs
        -0x4cf7s
        -0xa76s
        0x2815s
        0x6a94s
        -0x52f7s
        -0x1061s
        0x2240s
        0x64das
        0x20s
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;Lcom/ironsource/adqualitysdk/sdk/i/ip;ILjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$d;->k:Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$d;->h:Lcom/ironsource/adqualitysdk/sdk/i/ip;

    iput p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$d;->i:I

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$d;->j:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method

.method private static b(IIC)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/e;->ｋ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-array v1, p0, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    :goto_8
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    if-ge v2, p0, :cond_24

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$d;->d:[C

    add-int v4, p1, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$d;->e:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p2

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    goto :goto_8

    :cond_24
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2b

    return-object p0

    :catchall_2b
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ﻛ()V
    .registers 7

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$d;->k:Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a;->e:Lcom/ironsource/adqualitysdk/sdk/i/ag$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a;->c:Lcom/ironsource/adqualitysdk/sdk/i/is;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$d;->h:Lcom/ironsource/adqualitysdk/sdk/i/ip;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x30

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    add-int/lit8 v3, v3, 0x34

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v4

    shr-int/lit8 v4, v4, 0x18

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    rsub-int v5, v5, 0x67fa

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$d;->b(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$d;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x1

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x33

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$d;->b(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$d;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/is;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ip;Ljava/lang/String;)V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$d;->f:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag$a$a$d;->g:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method
