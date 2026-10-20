###### Class com.ironsource.adqualitysdk.sdk.i.ag.f.b (com.ironsource.adqualitysdk.sdk.i.ag$f$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ag$f$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ag$f;->ｋ(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static d:[C = null

.field private static e:I = 0xc0

.field private static f:Z = true

.field private static g:Z = true

.field private static h:I = 0x0

.field private static i:I = 0x1


# instance fields
.field private synthetic j:Landroid/app/Activity;

.field private synthetic k:Lcom/ironsource/adqualitysdk/sdk/i/ag$f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$f$b;->d:[C

    return-void

    :array_a
    .array-data 2
        0x126s
        0x12fs
        0x123s
        0x135s
        0x133s
        0x11fs
        0x12cs
        0x134s
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ag$f;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$f$b;->k:Lcom/ironsource/adqualitysdk/sdk/i/ag$f;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$f$b;->j:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method

.method private static b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
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
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/ag$f$b;->d:[C

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ag$f$b;->e:I

    sget-boolean v3, Lcom/ironsource/adqualitysdk/sdk/i/ag$f$b;->g:Z

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
    sget-boolean p3, Lcom/ironsource/adqualitysdk/sdk/i/ag$f$b;->f:Z

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
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$f$b;->i:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ag$f$b;->h:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$f$b;->k:Lcom/ironsource/adqualitysdk/sdk/i/ag$f;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;->d:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->w(Lcom/ironsource/adqualitysdk/sdk/i/ag;)Lcom/ironsource/adqualitysdk/sdk/i/q;

    move-result-object v0

    const/16 v1, 0x30

    const-string v2, ""

    invoke-static {v2, v1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    add-int/lit16 v1, v1, 0x80

    const/4 v3, 0x0

    const-string v4, "\u0088\u0085\u0082\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v3, v3, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ag$f$b;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/q;->onEvent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$f$b;->k:Lcom/ironsource/adqualitysdk/sdk/i/ag$f;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;->d:Lcom/ironsource/adqualitysdk/sdk/i/ag;

    const/4 v1, 0x0

    invoke-static {v2, v2, v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v2

    add-int/lit8 v2, v2, 0x7f

    invoke-static {v3, v3, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ag$f$b;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ag$f$b;->j:Landroid/app/Activity;

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ag$f;->c(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ag;->ﻐ(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ag$f$b;->i:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ag$f$b;->h:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_53

    goto :goto_54

    :cond_53
    const/4 v1, 0x1

    :goto_54
    if-eqz v1, :cond_57

    return-void

    :cond_57
    :try_start_57
    throw v3
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception v0

    throw v0
.end method
