###### Class com.ironsource.adqualitysdk.sdk.i.r.c.d (com.ironsource.adqualitysdk.sdk.i.r$c$d)
.class final Lcom/ironsource/adqualitysdk/sdk/i/r$c$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/aq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/r$c;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static a:[C = null

.field private static b:J = 0x0L

.field private static c:I = 0x0

.field private static d:I = 0x1


# instance fields
.field private synthetic e:Ljava/lang/String;

.field private synthetic f:Lcom/ironsource/adqualitysdk/sdk/i/r$c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_10

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/r$c$d;->a:[C

    const-wide v0, 0x19de55a19e61091dL

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/r$c$d;->b:J

    return-void

    :array_10
    .array-data 2
        0x73s
        0x972s
        0x1255s
        0x1b3as
        0x2418s
        0x2df0s
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/r$c;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$c$d;->f:Lcom/ironsource/adqualitysdk/sdk/i/r$c;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$c$d;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IIC)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/e;->ｋ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-array v1, p1, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    :goto_8
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    if-ge v2, p1, :cond_24

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/r$c$d;->a:[C

    add-int v4, p0, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/r$c$d;->b:J

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
    .registers 14

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/r$c$d;->d:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/r$c$d;->c:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/16 v2, 0x5b

    if-eqz v0, :cond_11

    const/16 v0, 0x3f

    goto :goto_13

    :cond_11
    const/16 v0, 0x5b

    :goto_13
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const-string v6, ""

    const/4 v7, 0x1

    if-eq v0, v2, :cond_45

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/16 v8, 0x60

    invoke-static {v6, v8}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v6

    div-int v6, v1, v6

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    cmp-long v10, v8, v4

    ushr-int v4, v7, v10

    int-to-char v4, v4

    invoke-static {v2, v6, v4}, Lcom/ironsource/adqualitysdk/sdk/i/r$c$d;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$c$d;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ｋ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto :goto_76

    :cond_45
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/16 v8, 0x30

    invoke-static {v6, v8}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v6

    const/4 v8, 0x5

    rsub-int/lit8 v6, v6, 0x5

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v9

    const/16 v11, 0x23

    cmp-long v12, v9, v4

    rsub-int/lit8 v4, v12, 0x1

    int-to-char v4, v4

    invoke-static {v2, v6, v4}, Lcom/ironsource/adqualitysdk/sdk/i/r$c$d;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$c$d;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ｋ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_72

    goto :goto_74

    :cond_72
    const/16 v8, 0x23

    :goto_74
    if-eq v8, v11, :cond_7d

    :goto_76
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$c$d;->f:Lcom/ironsource/adqualitysdk/sdk/i/r$c;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/r$c;->i:Lcom/ironsource/adqualitysdk/sdk/i/r;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/r;->B(Lcom/ironsource/adqualitysdk/sdk/i/r;)V

    :cond_7d
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/r$c$d;->c:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/r$c$d;->d:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_89

    goto :goto_8a

    :cond_89
    const/4 v3, 0x1

    :goto_8a
    if-ne v3, v7, :cond_8d

    return-void

    :cond_8d
    const/4 v0, 0x0

    :try_start_8e
    throw v0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8f

    :catchall_8f
    move-exception v0

    throw v0
.end method
