###### Class com.ironsource.adqualitysdk.sdk.i.ax.j (com.ironsource.adqualitysdk.sdk.i.ax$j)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ax$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ii;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ax;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iq;Lcom/ironsource/adqualitysdk/sdk/i/ag;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/at;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static a:I = -0x5b5c7a75

.field private static b:I = 0x3

.field private static c:I = 0x6d0faa28

.field private static d:[B = null

.field private static e:[S = null

.field private static f:I = 0x0

.field private static g:I = 0x1


# instance fields
.field private synthetic h:Lcom/ironsource/adqualitysdk/sdk/i/ax;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$j;->d:[B

    return-void

    :array_a
    .array-data 1
        0x44t
        0x3et
        0x41t
        0x4et
        0x47t
        0x30t
        0x3dt
        0x0t
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ax;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$j;->h:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IIBSI)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ax$j;->b:I

    add-int/2addr p0, v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p0, v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    if-eqz v3, :cond_2a

    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$j;->d:[B

    if-eqz p0, :cond_21

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/ax$j;->a:I

    add-int/2addr v6, p4

    aget-byte p0, p0, v6

    add-int/2addr p0, v2

    int-to-byte p0, p0

    goto :goto_2a

    :cond_21
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$j;->e:[S

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/ax$j;->a:I

    add-int/2addr v6, p4

    aget-short p0, p0, v6

    add-int/2addr p0, v2

    int-to-short p0, p0

    :cond_2a
    :goto_2a
    if-lez p0, :cond_89

    add-int/2addr p4, p0

    add-int/lit8 p4, p4, -0x2

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ax$j;->a:I

    add-int/2addr p4, v2

    if-eqz v3, :cond_35

    const/4 v4, 0x1

    :cond_35
    add-int/2addr p4, v4

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    sput-byte p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/ax$j;->c:I

    add-int/2addr p1, p2

    int-to-char p1, p1

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    :goto_49
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    if-ge p1, p0, :cond_89

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ax$j;->d:[B

    if-eqz p1, :cond_65

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    add-int/lit8 p4, p2, -0x1

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    aget-byte p1, p1, p2

    sget-char p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    add-int/2addr p1, p3

    int-to-byte p1, p1

    sget-byte p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    xor-int/2addr p1, p4

    add-int/2addr p2, p1

    int-to-char p1, p2

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    goto :goto_7a

    :cond_65
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/ax$j;->e:[S

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    add-int/lit8 p4, p2, -0x1

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    aget-short p1, p1, p2

    sget-char p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    add-int/2addr p1, p3

    int-to-short p1, p1

    sget-byte p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    xor-int/2addr p1, p4

    add-int/2addr p2, p1

    int-to-char p1, p2

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    :goto_7a
    sget-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    add-int/2addr p1, v5

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    goto :goto_49

    :cond_89
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_8f

    return-object p0

    :catchall_8f
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ﻛ(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 13

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/ax$j;->f:I

    add-int/lit8 p2, p2, 0x7d

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$j;->g:I

    rem-int/lit8 p2, p2, 0x2

    const/16 p2, 0x30

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v0, p2, v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result p2

    add-int/lit8 p2, p2, 0x6

    const v0, -0x6d0fa9b4

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    add-int/2addr v2, v0

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v1, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v5

    add-int/lit8 v5, v5, -0x41

    int-to-short v5, v5

    const v6, 0x5b5c7a75

    invoke-static {v1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v7

    cmp-long v9, v7, v3

    sub-int/2addr v6, v9

    invoke-static {p2, v2, v0, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ax$j;->a(IIBSI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    const/4 v1, 0x1

    :cond_44
    if-eqz v1, :cond_57

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$j;->h:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->ﾇ()Lorg/json/JSONObject;

    move-result-object p1

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/ax$j;->g:I

    add-int/lit8 p2, p2, 0x55

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$j;->f:I

    rem-int/lit8 p2, p2, 0x2

    return-object p1

    :cond_57
    const/4 p1, 0x0

    return-object p1
.end method
