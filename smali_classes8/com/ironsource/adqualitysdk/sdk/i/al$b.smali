###### Class com.ironsource.adqualitysdk.sdk.i.al.b (com.ironsource.adqualitysdk.sdk.i.al$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/al$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/al;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static d:[C = null

.field private static e:I = 0x0

.field private static f:I = 0x1


# instance fields
.field private synthetic g:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;

.field private synthetic h:Lcom/ironsource/adqualitysdk/sdk/i/al;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x15

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->d:[C

    return-void

    :array_a
    .array-data 2
        0x36s
        0x69s
        0x64s
        0x66s
        0x65s
        0x6as
        0x6es
        0x6cs
        0x6es
        0x4es
        0x4es
        0x6es
        0x58s
        0x5cs
        0x74s
        0x73s
        0x71s
        0x6es
        0x5fs
        0x5bs
        0x6ds
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/al;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->h:Lcom/ironsource/adqualitysdk/sdk/i/al;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->g:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method

.method private static b(Z[ILjava/lang/String;)Ljava/lang/String;
    .registers 15

    if-eqz p2, :cond_8

    const-string v0, "ISO-8859-1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    :cond_8
    check-cast p2, [B

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﻛ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_e
    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    const/4 v5, 0x2

    aget v6, p1, v5

    const/4 v7, 0x3

    aget v7, p1, v7

    sget-object v8, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->d:[C

    new-array v9, v4, [C

    invoke-static {v8, v2, v9, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_47

    new-array v2, v4, [C

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    const/4 v8, 0x0

    :goto_27
    sget v10, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    if-ge v10, v4, :cond_46

    aget-byte v11, p2, v10

    if-ne v11, v3, :cond_38

    aget-char v11, v9, v10

    shl-int/2addr v11, v3

    add-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    goto :goto_3f

    :cond_38
    aget-char v11, v9, v10

    shl-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    :goto_3f
    aget-char v8, v2, v10

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    goto :goto_27

    :cond_46
    move-object v9, v2

    :cond_47
    if-lez v7, :cond_56

    new-array p2, v4, [C

    invoke-static {v9, v1, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v2, v4, v7

    invoke-static {p2, v1, v9, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v7, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_56
    if-eqz p0, :cond_6d

    new-array p0, v4, [C

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    :goto_5c
    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    if-ge p2, v4, :cond_6c

    sub-int v2, v4, p2

    sub-int/2addr v2, v3

    aget-char v2, v9, v2

    aput-char v2, p0, p2

    add-int/lit8 p2, p2, 0x1

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    goto :goto_5c

    :cond_6c
    move-object v9, p0

    :cond_6d
    if-lez v6, :cond_82

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    :goto_71
    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    if-ge p0, v4, :cond_82

    aget-char p2, v9, p0

    aget v1, p1, v5

    sub-int/2addr p2, v1

    int-to-char p2, p2

    aput-char p2, v9, p0

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/ironsource/adqualitysdk/sdk/i/i;->ﾒ:I

    goto :goto_71

    :cond_82
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v9}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_e .. :try_end_88} :catchall_89

    return-object p0

    :catchall_89
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ﻛ()V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->e:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x44

    if-nez v0, :cond_11

    const/16 v0, 0x44

    goto :goto_13

    :cond_11
    const/16 v0, 0x48

    :goto_13
    const/4 v2, 0x0

    const-string v3, "\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0001"

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eq v0, v1, :cond_42

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->h:Lcom/ironsource/adqualitysdk/sdk/i/al;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/al;->c(Lcom/ironsource/adqualitysdk/sdk/i/al;)Lcom/ironsource/adqualitysdk/sdk/i/ax;

    move-result-object v0

    new-array v1, v4, [I

    fill-array-data v1, :array_6a

    invoke-static {v2, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->b(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->h:Lcom/ironsource/adqualitysdk/sdk/i/al;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->g:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/al;->g(Lcom/ironsource/adqualitysdk/sdk/i/al;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->ﾇ(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->h:Lcom/ironsource/adqualitysdk/sdk/i/al;

    invoke-static {v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/al;->e(Lcom/ironsource/adqualitysdk/sdk/i/al;Z)Z

    goto :goto_69

    :cond_42
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->h:Lcom/ironsource/adqualitysdk/sdk/i/al;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/al;->c(Lcom/ironsource/adqualitysdk/sdk/i/al;)Lcom/ironsource/adqualitysdk/sdk/i/ax;

    move-result-object v0

    new-array v1, v4, [I

    fill-array-data v1, :array_76

    invoke-static {v5, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->b(Z[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->h:Lcom/ironsource/adqualitysdk/sdk/i/al;

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->g:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/al;->g(Lcom/ironsource/adqualitysdk/sdk/i/al;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityCustomMediationRevenue;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->ﾇ(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/al$b;->h:Lcom/ironsource/adqualitysdk/sdk/i/al;

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/al;->e(Lcom/ironsource/adqualitysdk/sdk/i/al;Z)Z

    :goto_69
    return-void

    :array_6a
    .array-data 4
        0x0
        0x15
        0x0
        0x0
    .end array-data

    :array_76
    .array-data 4
        0x0
        0x15
        0x0
        0x0
    .end array-data
.end method
