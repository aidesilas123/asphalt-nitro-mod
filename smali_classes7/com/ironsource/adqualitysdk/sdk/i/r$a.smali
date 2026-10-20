###### Class com.ironsource.adqualitysdk.sdk.i.r.a (com.ironsource.adqualitysdk.sdk.i.r$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/r$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/r;->P(Landroid/content/Context;Ljava/lang/String;ZZZ)V
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
.field final synthetic h:Z

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Z

.field final synthetic k:Lcom/ironsource/adqualitysdk/sdk/i/r;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0xe

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->d:[C

    const-wide v0, 0x45d57efb4415460dL    # 2.6610785717673656E28

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->e:J

    return-void

    nop

    :array_12
    .array-data 2
        0x66s
        0x4661s
        -0x7385s
        -0x2dc0s
        0x181as
        0x5e27s
        -0x5bd9s
        -0x15d7s
        0x301bs
        0x7601s
        -0x432fs
        0x2eas
        0x48f9s
        -0x7139s
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/r;ZLjava/lang/String;Z)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/r;

    iput-boolean p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->h:Z

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->i:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->j:Z

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method

.method private static b(ICI)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/e;->ｋ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-array v1, p2, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    :goto_8
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    if-ge v2, p2, :cond_24

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->d:[C

    add-int v4, p0, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->e:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p1

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
    .registers 9

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/r;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/r;->d(Lcom/ironsource/adqualitysdk/sdk/i/r;)Lcom/ironsource/adqualitysdk/sdk/i/ix;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v3, v2}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v2

    int-to-char v2, v2

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    add-int/lit8 v7, v7, 0xd

    invoke-static {v1, v2, v7}, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->b(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;

    invoke-direct {v2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/r$a$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/r$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ix;->ﻛ(Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ix$a;)V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->f:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/r$a;->g:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method
