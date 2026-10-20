###### Class com.ironsource.adqualitysdk.sdk.i.a0.a (com.ironsource.adqualitysdk.sdk.i.a0$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/a0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/aq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/a0;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static a:[C = null

.field private static b:I = 0xc9

.field private static c:Z = true

.field private static d:Z = true

.field private static e:I = 0x0

.field private static f:I = 0x1


# instance fields
.field private synthetic g:Lcom/ironsource/adqualitysdk/sdk/i/a0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x14

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->a:[C

    return-void

    :array_a
    .array-data 2
        0x11ds
        0x132s
        0x136s
        0x12es
        0x13cs
        0x13ds
        0x12as
        0x139s
        0x11cs
        0x142s
        0x137s
        0x12cs
        0x131s
        0x13bs
        0x138s
        0x143s
        0x10es
        0xe9s
        0x130s
        0x13fs
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/a0;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
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
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->a:[C

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->b:I

    sget-boolean v3, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->d:Z

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
    sget-boolean p3, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->c:Z

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


# virtual methods
.method public final ﻛ()V
    .registers 13

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->e:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    const-wide/16 v3, 0x0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﮉ()Lcom/ironsource/adqualitysdk/sdk/i/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->ﻏ()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_27

    const/4 v7, 0x0

    goto :goto_28

    :cond_27
    const/4 v7, 0x1

    :goto_28
    if-eq v7, v1, :cond_7d

    goto :goto_40

    :cond_2b
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﮉ()Lcom/ironsource/adqualitysdk/sdk/i/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->ﻏ()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_3d

    const/4 v7, 0x0

    goto :goto_3e

    :cond_3d
    const/4 v7, 0x1

    :goto_3e
    if-eq v7, v1, :cond_7d

    :goto_40
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->e:I

    add-int/2addr v5, v1

    rem-int/lit16 v1, v5, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->f:I

    rem-int/lit8 v5, v5, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->h(Lcom/ironsource/adqualitysdk/sdk/i/a0;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->ﱟ()J

    move-result-wide v5

    const v1, 0x100007f

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    add-int/2addr v7, v1

    const/4 v1, 0x0

    const-string v8, "\u008e\u0084\u0090\u0082\u008b\u008f\u008e\u008d\u008c\u008b\u008a\u0089\u0088\u0083\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v1, v1, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->a([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-string v10, "\u0088\u0083\u0087\u0086\u0085\u0084\u0083\u0082\u0086\u0092\u008e\u0084\u0094\u008e\u0084\u0085\u0092\u0093\u008b\u0082\u0086\u0086\u0084\u0093\u0092\u008b\u0082\u0092\u008e\u008f\u008e\u008e\u0091"

    cmp-long v11, v8, v3

    add-int/lit8 v11, v11, 0x7e

    invoke-static {v1, v1, v11, v10}, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->a([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto :goto_84

    :cond_7d
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->h(Lcom/ironsource/adqualitysdk/sdk/i/a0;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :goto_84
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->ﮐ()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->b(Lcom/ironsource/adqualitysdk/sdk/i/a0;J)J

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ar;->ﱟ()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->n(Lcom/ironsource/adqualitysdk/sdk/i/a0;J)J

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->a(Lcom/ironsource/adqualitysdk/sdk/i/a0;)J

    move-result-wide v1

    sub-long v1, v5, v1

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->g(Lcom/ironsource/adqualitysdk/sdk/i/a0;J)J

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->m(Lcom/ironsource/adqualitysdk/sdk/i/a0;)J

    move-result-wide v1

    sub-long/2addr v5, v1

    invoke-static {v0, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/a0;->e(Lcom/ironsource/adqualitysdk/sdk/i/a0;J)J

    return-void
.end method
