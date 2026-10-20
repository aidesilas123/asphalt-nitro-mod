###### Class com.ironsource.adqualitysdk.sdk.i.au.a (com.ironsource.adqualitysdk.sdk.i.au$a)
.class final enum Lcom/ironsource/adqualitysdk/sdk/i/au$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/adqualitysdk/sdk/i/au$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/ironsource/adqualitysdk/sdk/i/au$a;

.field private static b:J = 0x0L

.field private static c:I = 0x0

.field private static d:I = 0x1

.field public static final enum ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

.field public static final enum ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

.field public static final enum ｋ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

.field public static final enum ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->e()V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x2f27

    const-string v3, "\u7441\u5b6b\u2a02"

    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/au$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    const-string v3, ""

    invoke-static {v3, v3, v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v3

    rsub-int v3, v3, 0x480b

    const-string v4, "\u7441\u3c49\ue459\uac77\u5469"

    invoke-static {v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/au$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v7

    rsub-int v7, v7, 0x905

    const-string v8, "\u7442\u7d40\u6646\u6f40\u5043"

    invoke-static {v8, v7}, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-direct {v3, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/au$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    new-instance v7, Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    const v9, 0xcd3c

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v10

    const/4 v12, 0x3

    const-string v13, "\u7445\ub965\uee3b\u13f4\u40a0"

    cmp-long v14, v10, v5

    add-int/2addr v14, v9

    invoke-static {v13, v14}, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5, v12}, Lcom/ironsource/adqualitysdk/sdk/i/au$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    aput-object v0, v5, v1

    aput-object v2, v5, v4

    aput-object v3, v5, v8

    aput-object v7, v5, v12

    sput-object v5, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->a:[Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->d:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->c:I

    rem-int/2addr v0, v8

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﻛ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ｋ:I

    array-length p1, p0

    new-array p1, p1, [C

    const/4 v1, 0x0

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    :goto_13
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    array-length v2, p0

    if-ge v1, v2, :cond_2e

    aget-char v2, p0, v1

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/h;->ｋ:I

    mul-int v3, v3, v1

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->b:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    goto :goto_13

    :cond_2e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_35

    return-object p0

    :catchall_35
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static e()V
    .registers 2

    const-wide v0, 0x61552dff79047400L    # 7.444183754800568E160

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->b:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/au$a;
    .registers 4

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->d:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->c:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-eq v1, v2, :cond_1b

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    return-object p0

    :cond_1b
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    const/4 p0, 0x0

    :try_start_1f
    throw p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p0

    throw p0
.end method

.method public static values()[Lcom/ironsource/adqualitysdk/sdk/i/au$a;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->c:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-eqz v0, :cond_1b

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->a:[Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    invoke-virtual {v0}, [Lcom/ironsource/adqualitysdk/sdk/i/au$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    goto :goto_26

    :cond_1b
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/au$a;->a:[Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    invoke-virtual {v0}, [Lcom/ironsource/adqualitysdk/sdk/i/au$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/adqualitysdk/sdk/i/au$a;

    const/16 v2, 0x14

    :try_start_25
    div-int/2addr v2, v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_27

    :goto_26
    return-object v0

    :catchall_27
    move-exception v0

    throw v0
.end method
