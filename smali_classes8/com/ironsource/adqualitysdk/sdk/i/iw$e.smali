###### Class com.ironsource.adqualitysdk.sdk.i.iw.e (com.ironsource.adqualitysdk.sdk.i.iw$e)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/iw$e;
.super Lcom/ironsource/adqualitysdk/sdk/i/iw;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field private static i:[C

.field private static j:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;->i:[C

    const-wide v0, 0x56f547a06f769319L    # 7.996239551167824E110

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;->j:J

    return-void

    nop

    :array_12
    .array-data 2
        0x63s
        -0x6c8as
        0x265cs
        -0x46dbs
        0x6as
        -0x6c96s
        0x265ds
        -0x46dbs
        0x4c4as
        -0x20e8s
        0x72f8s
        0x5ccs
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x4

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    const-string v2, ""

    const/16 v3, 0x30

    invoke-static {v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;->c(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x8

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    int-to-char v2, v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;->c(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/iw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    return-void
.end method

.method private static c(IIC)Ljava/lang/String;
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

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;->i:[C

    add-int v4, p1, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/iw$e;->j:J

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
