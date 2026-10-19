###### Class com.json.adqualitysdk.sdk.i.Cif (com.ironsource.adqualitysdk.sdk.i.if)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/if$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:[C = null

.field private static c:I = 0x0

.field private static d:Z = false

.field private static e:Z = false

.field private static f:I = 0x0

.field private static g:I = 0x1


# instance fields
.field private h:Landroid/database/sqlite/SQLiteDatabase;

.field private i:Lcom/ironsource/adqualitysdk/sdk/i/if$a;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/if;->a()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "\u008b\u008a\u0084"

    const-string v9, ""

    const-string v10, "\u0083\u0082\u0081"

    cmp-long v11, v3, v5

    rsub-int v3, v11, 0x80

    invoke-static {v7, v7, v3, v8}, Lcom/ironsource/adqualitysdk/sdk/i/if;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v9}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    add-int/lit8 v3, v3, 0x7f

    invoke-static {v7, v7, v3, v10}, Lcom/ironsource/adqualitysdk/sdk/i/if;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/if;->a:[Ljava/lang/String;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/if;->f:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/if;->g:I

    rem-int/2addr v1, v0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/if$a;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/if$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/if;->i:Lcom/ironsource/adqualitysdk/sdk/i/if$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/if;->h:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method static a()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/if;->d:Z

    sput-boolean v0, Lcom/ironsource/adqualitysdk/sdk/i/if;->e:Z

    const/16 v0, 0x6f

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/if;->c:I

    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/if;->b:[C

    return-void

    nop

    :array_14
    .array-data 2
        0xe5s
        0xd0s
        0xdbs
        0xdas
        0xces
        0xe2s
        0xe3s
        0xdes
        0xe1s
        0xd4s
        0xe8s
        0xacs
        0x96s
        0xaes
        0x8fs
        0xbbs
        0xb8s
        0xbas
        0xb4s
        0xc2s
        0xb2s
        0xc3s
        0xbes
        0xc4s
        0xbds
        0x97s
        0x98s
        0xd5s
        0xdcs
        0xc6s
        0xb7s
        0xc1s
    .end array-data
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
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/if;->b:[C

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/if;->c:I

    sget-boolean v3, Lcom/ironsource/adqualitysdk/sdk/i/if;->e:Z

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
    sget-boolean p3, Lcom/ironsource/adqualitysdk/sdk/i/if;->d:Z

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
.method public final declared-synchronized ﻐ(Ljava/lang/String;)I
    .registers 8

    monitor-enter p0

    const/16 v0, 0x2a

    const/16 v1, 0x25

    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/if;->h:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x7f

    const-string v5, "\u008d\u008f\u0093\u0092\u0091\u0090\u008f\u008b\u008a\u0084\u008f\u0093\u00a0\u0093\u009f\u009e\u008f\u008a\u0089\u0088\u0087\u0086\u0085\u0081\u0084\u008f\u009d\u0088\u0089\u009c\u008f\u009b\u0083\u0082\u0081\u009a\u0096\u0099\u0098\u0097\u0095\u008f\u0096\u0095\u0093\u0090\u0093\u0094"

    invoke-static {v2, v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/if;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    add-int/lit8 p1, p1, 0x7f

    const-string v4, "\u008d"

    invoke-static {v2, v2, p1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/if;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_45
    .catchall {:try_start_6 .. :try_end_45} :catchall_8d

    const/4 v0, 0x1

    if-eqz p1, :cond_78

    :try_start_48
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/if;->f:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/if;->g:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_94

    const/16 v4, 0x8

    if-nez v1, :cond_59

    const/16 v1, 0x8

    goto :goto_5b

    :cond_59
    const/16 v1, 0x5f

    :goto_5b
    if-eq v1, v4, :cond_71

    :try_start_5d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v1, 0x1

    goto :goto_66

    :cond_65
    const/4 v1, 0x0

    :goto_66
    if-eqz v1, :cond_78

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_75

    :try_start_6c
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_94

    monitor-exit p0

    return v0

    :cond_71
    :try_start_71
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    throw v2
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception v0

    move-object v2, p1

    goto :goto_8e

    :cond_78
    if-eqz p1, :cond_7b

    goto :goto_7c

    :cond_7b
    const/4 v0, 0x0

    :goto_7c
    if-eqz v0, :cond_8b

    :try_start_7e
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/if;->f:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/if;->g:I

    rem-int/lit8 v0, v0, 0x2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_8b
    .catchall {:try_start_7e .. :try_end_8b} :catchall_94

    :cond_8b
    monitor-exit p0

    return v3

    :catchall_8d
    move-exception v0

    :goto_8e
    if-eqz v2, :cond_93

    :try_start_90
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_93
    throw v0
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_94

    :catchall_94
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized ﻛ(Ljava/lang/String;)V
    .registers 11

    monitor-enter p0

    :try_start_1
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/if;->f:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/if;->g:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/if;->h:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x7f

    const-string v3, "\u008a\u0089\u0088\u0087\u0086\u0085\u0081\u0084"

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/if;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    add-int/lit8 v3, v3, 0x7e

    const-string v5, "\u008e\u008c\u008b\u008a\u0084"

    invoke-static {v4, v4, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/if;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-virtual {v0, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/if;->g:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/if;->f:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_55

    const/16 v0, 0x63

    if-eqz p1, :cond_4c

    const/16 p1, 0x3c

    goto :goto_4e

    :cond_4c
    const/16 p1, 0x63

    :goto_4e
    if-ne p1, v0, :cond_52

    monitor-exit p0

    return-void

    :cond_52
    :try_start_52
    throw v4
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    :catchall_53
    move-exception p1

    :try_start_54
    throw p1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized ｋ(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/if;->h:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3, v2, v2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v4

    cmpl-float v2, v4, v2

    rsub-int/lit8 v2, v2, 0x7f

    const-string v4, "\u008a\u0089\u0088\u0087\u0086\u0085\u0081\u0084"

    invoke-static {v0, v0, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/if;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/if;->a:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, -0xffff81

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    sub-int/2addr v6, v3

    const-string v3, "\u008d\u008c\u008b\u008a\u0084"

    invoke-static {v0, v0, v6, v3}, Lcom/ironsource/adqualitysdk/sdk/i/if;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-static {p1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result p1

    add-int/lit16 p1, p1, 0x80

    const-string v3, "\u008d"

    invoke-static {v0, v0, p1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/if;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v4

    move-object v4, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_5a
    .catchall {:try_start_2 .. :try_end_5a} :catchall_b6

    if-eqz p1, :cond_af

    :try_start_5c
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/if;->f:I

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/if;->g:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_ca

    const/16 v2, 0x1f

    if-nez v1, :cond_6d

    const/16 v1, 0x1f

    goto :goto_6f

    :cond_6d
    const/16 v1, 0x13

    :goto_6f
    if-eq v1, v2, :cond_ab

    :try_start_71
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/16 v2, 0x57

    if-eqz v1, :cond_7c

    const/16 v1, 0x57

    goto :goto_7e

    :cond_7c
    const/16 v1, 0x4c

    :goto_7e
    if-eq v1, v2, :cond_81

    goto :goto_af

    :cond_81
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    rsub-int/lit8 v1, v1, 0x7f

    const-string v3, "\u0083\u0082\u0081"

    invoke-static {v0, v0, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/if;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_9b
    .catchall {:try_start_71 .. :try_end_9b} :catchall_a9

    :try_start_9b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/if;->f:I

    add-int/2addr p1, v2

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/if;->g:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_a7
    .catchall {:try_start_9b .. :try_end_a7} :catchall_ca

    monitor-exit p0

    return-object v0

    :catchall_a9
    move-exception v0

    goto :goto_ba

    :cond_ab
    :try_start_ab
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    throw v0
    :try_end_af
    .catchall {:try_start_ab .. :try_end_af} :catchall_a9

    :cond_af
    :goto_af
    if-eqz p1, :cond_b4

    :try_start_b1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_ca

    :cond_b4
    monitor-exit p0

    return-object v0

    :catchall_b6
    move-exception p1

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    :goto_ba
    if-eqz p1, :cond_c9

    :try_start_bc
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/if;->g:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/if;->f:I

    rem-int/lit8 p1, p1, 0x2

    :cond_c9
    throw v0
    :try_end_ca
    .catchall {:try_start_bc .. :try_end_ca} :catchall_ca

    :catchall_ca
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized ﾒ(Ljava/lang/String;I)Ljava/util/HashMap;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/16 v0, 0x2a

    const/16 v1, 0x25

    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/if;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x7f

    const-string v1, "\u008a\u0089\u0088\u0087\u0086\u0085\u0081\u0084"

    invoke-static {v2, v2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/if;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/ironsource/adqualitysdk/sdk/i/if;->a:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    rsub-int v1, v1, 0x80

    const-string v6, "\u008d\u008f\u0093\u0092\u0091\u0090\u008f\u008b\u008a\u0084"

    invoke-static {v2, v2, v1, v6}, Lcom/ironsource/adqualitysdk/sdk/i/if;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    const-string v1, ""

    const/4 v12, 0x0

    invoke-static {p1, v1, v12, v12}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result p1

    add-int/lit8 p1, p1, 0x7f

    const-string v1, "\u008d"

    invoke-static {v2, v2, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/if;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 p1, 0x2d

    const/4 v0, 0x2

    if-gtz p2, :cond_66

    move-object v11, v2

    goto :goto_7a

    :cond_66
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_6a
    .catchall {:try_start_6 .. :try_end_6a} :catchall_f6

    :try_start_6a
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/if;->f:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v11, v1, 0x80

    sput v11, Lcom/ironsource/adqualitysdk/sdk/i/if;->g:I

    rem-int/2addr v1, v0
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_fd

    if-nez v1, :cond_77

    const/4 v1, 0x2

    goto :goto_79

    :cond_77
    const/16 v1, 0x2d

    :goto_79
    move-object v11, p2

    :goto_7a
    :try_start_7a
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_f6

    :try_start_7e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_83
    .catchall {:try_start_7e .. :try_end_83} :catchall_f3

    :try_start_83
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/if;->f:I

    add-int/2addr v3, p1

    rem-int/lit16 p1, v3, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/if;->g:I

    rem-int/2addr v3, v0

    :goto_8b
    if-eqz p2, :cond_da

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/if;->f:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/if;->g:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_97
    .catchall {:try_start_83 .. :try_end_97} :catchall_fd

    :try_start_97
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_9b
    .catchall {:try_start_97 .. :try_end_9b} :catchall_f3

    if-eqz p1, :cond_9f

    const/4 p1, 0x1

    goto :goto_a0

    :cond_9f
    const/4 p1, 0x0

    :goto_a0
    if-eqz p1, :cond_da

    :try_start_a2
    const-string p1, ""

    invoke-static {p1}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result p1

    add-int/lit16 p1, p1, 0x80

    const-string v3, "\u0083\u0082\u0081"

    invoke-static {v2, v2, p1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/if;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-static {v12, v12}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x7f

    const-string v4, "\u008b\u008a\u0084"

    invoke-static {v2, v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/if;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a2 .. :try_end_d7} :catch_d8
    .catchall {:try_start_a2 .. :try_end_d7} :catchall_f3

    goto :goto_8b

    :catch_d8
    nop

    goto :goto_8b

    :cond_da
    if-eqz p2, :cond_f1

    :try_start_dc
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/if;->g:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/if;->f:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_eb

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_f1

    :cond_eb
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_ee
    .catchall {:try_start_dc .. :try_end_ee} :catchall_fd

    :try_start_ee
    throw v2
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ef

    :catchall_ef
    move-exception p1

    :try_start_f0
    throw p1
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_fd

    :cond_f1
    :goto_f1
    monitor-exit p0

    return-object v1

    :catchall_f3
    move-exception p1

    move-object v2, p2

    goto :goto_f7

    :catchall_f6
    move-exception p1

    :goto_f7
    if-eqz v2, :cond_fc

    :try_start_f9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_fc
    throw p1
    :try_end_fd
    .catchall {:try_start_f9 .. :try_end_fd} :catchall_fd

    :catchall_fd
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized ﾒ(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, ""

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x7e

    const-string v2, "\u0083\u0082\u0081"

    const/4 v4, 0x0

    invoke-static {v4, v4, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/if;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/if;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x7f

    const-string v2, "\u008a\u0089\u0088\u0087\u0086\u0085\u0081\u0084"

    invoke-static {v4, v4, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/if;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v3}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x7f

    const-string v6, "\u008d\u008c\u008b\u008a\u0084"

    invoke-static {v4, v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/if;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-static {v5}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v5

    add-int/lit16 v5, v5, 0x80

    const-string v6, "\u008d"

    invoke-static {v4, v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/if;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_6d

    const/4 v3, 0x1

    :cond_6d
    if-eq v3, v1, :cond_70

    goto :goto_b1

    :cond_70
    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/if;->f:I

    add-int/lit8 p2, p2, 0x13

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/if;->g:I

    rem-int/lit8 p2, p2, 0x2

    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/graphics/PointF;->length(FF)F

    move-result v1

    cmpl-float p2, v1, p2

    rsub-int/lit8 p2, p2, 0x7f

    const-string v1, "\u008b\u008a\u0084"

    invoke-static {v4, v4, p2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/if;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/if;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result p2

    shr-int/lit8 p2, p2, 0x18

    rsub-int/lit8 p2, p2, 0x7f

    const-string v1, "\u008a\u0089\u0088\u0087\u0086\u0085\u0081\u0084"

    invoke-static {v4, v4, p2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/if;->b([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/if;->f:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/if;->g:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_b1
    .catchall {:try_start_1 .. :try_end_b1} :catchall_b3

    :goto_b1
    monitor-exit p0

    return-void

    :catchall_b3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.json.adqualitysdk.sdk.i.Cif.a (com.ironsource.adqualitysdk.sdk.i.if$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/if$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# static fields
.field private static a:I = 0x86

.field private static b:I = 0x0

.field private static c:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private static a(IZIILjava/lang/String;)Ljava/lang/String;
    .registers 11

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_6
    check-cast p4, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﻐ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    new-array v1, p3, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    :goto_10
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    if-ge v3, p3, :cond_2f

    aget-char v3, p4, v3

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾇ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾇ:I

    add-int/2addr v4, p0

    int-to-char v4, v4

    aput-char v4, v1, v3

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    aget-char v4, v1, v3

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/if$a;->a:I

    sub-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    goto :goto_10

    :cond_2f
    if-lez p2, :cond_46

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    new-array p0, p3, [C

    invoke-static {v1, v2, p0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    sub-int p4, p3, p2

    invoke-static {p0, v2, v1, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    sub-int p4, p3, p2

    invoke-static {p0, p2, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_46
    if-eqz p1, :cond_5e

    new-array p0, p3, [C

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    :goto_4c
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    if-ge p1, p3, :cond_5d

    sub-int p2, p3, p1

    add-int/lit8 p2, p2, -0x1

    aget-char p2, v1, p2

    aput-char p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    goto :goto_4c

    :cond_5d
    move-object v1, p0

    :cond_5e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_b .. :try_end_64} :catchall_65

    return-object p0

    :catchall_65
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/if$a;->b:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/if$a;->c:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    const/16 v1, 0x28

    if-nez v0, :cond_15

    const/16 v0, 0x28

    goto :goto_17

    :cond_15
    const/16 v0, 0x31

    :goto_17
    const-string v2, ""

    if-eq v0, v1, :cond_1c

    goto :goto_40

    :cond_1c
    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v0

    rsub-int v0, v0, 0xde

    const/4 v1, 0x1

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v7, "\u0017\u000e\uffc8\uffe9\ufff5\uffef\uffe9\ufffa\ufff8\ufff6\ufff7\uffe5!\r\u0013\u0007\u0016\u000f\u0011\r\u001a"

    cmp-long v8, v3, v5

    add-int/lit8 v8, v8, 0x8

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-static {v0, v1, v8, v3, v7}, Lcom/ironsource/adqualitysdk/sdk/i/if$a;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_40
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    add-int/lit16 v1, v1, 0xd1

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v3

    const/16 v4, 0x10

    shr-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x37

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x43

    const-string v5, "\uffd5\ufffe\ufffb\uffd5\u0003\u0004\t\uffd5\ufffa\r\ufffe\u0008\t\u0008\uffd5 +\u0014()$\'\u001a\uffdd \u001a.\uffd5\t\ufffa\r\t\uffd5\u0005\u0007\ufffe\u0002\ufff6\u0007\u000e\uffd5\u0000\ufffa\u000e\uffe1\uffd5+\u0016!\uffd5\t\ufffa\r\t\uffde\ufff8\u0007\ufffa\ufff6\t\ufffa\uffd5\t\ufff6\ufff7\u0001\ufffa"

    invoke-static {v1, v0, v3, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/if$a;->a(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/if$a;->c:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/if$a;->b:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_72

    const/16 p1, 0x10

    goto :goto_74

    :cond_72
    const/16 p1, 0x2f

    :goto_74
    if-eq p1, v4, :cond_77

    return-void

    :cond_77
    const/4 p1, 0x0

    :try_start_78
    throw p1
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_79

    :catchall_79
    move-exception p1

    throw p1
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/if$a;->b:I

    add-int/lit8 p1, p1, 0x2d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/if$a;->c:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    if-nez p1, :cond_12

    return-void

    :cond_12
    const/4 p1, 0x0

    :try_start_13
    throw p1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception p1

    throw p1
.end method
