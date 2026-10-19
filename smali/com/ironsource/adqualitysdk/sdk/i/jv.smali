###### Class com.json.adqualitysdk.sdk.i.jv (com.ironsource.adqualitysdk.sdk.i.jv)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/jv;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/jv$a;,
        Lcom/ironsource/adqualitysdk/sdk/i/jv$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ﻐ(Ljava/lang/Class;Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/jv$a;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/ironsource/adqualitysdk/sdk/i/jv$a;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    const-class v2, Lcom/ironsource/adqualitysdk/sdk/i/gy;

    aput-object v2, v1, p0

    new-instance p0, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;-><init>(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/jv$a;)V

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static ﾒ(Ljava/lang/Object;)Z
    .registers 2

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    instance-of p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/gy;

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.jv.a (com.ironsource.adqualitysdk.sdk.i.jv$a)
.class public interface abstract Lcom/ironsource/adqualitysdk/sdk/i/jv$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/jv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract ﾒ(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.jv.b (com.ironsource.adqualitysdk.sdk.i.jv$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/jv$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/jv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static a:I = 0x72e2640c

.field private static b:I = 0x22

.field private static c:I = -0x4706bf74

.field private static d:[B = null

.field private static e:[S = null

.field private static f:I = 0x0

.field private static g:I = 0x1


# instance fields
.field private h:Ljava/lang/Object;

.field private i:Lcom/ironsource/adqualitysdk/sdk/i/jv$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x7c

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->d:[B

    return-void

    :array_a
    .array-data 1
        -0x76t
        -0x7at
        -0x64t
        -0x7et
        -0x3dt
        -0x78t
        -0x70t
        -0x5ct
        0x65t
        0x24t
        0x6bt
        0x79t
        0x6ct
        0x71t
        0x60t
        -0x4dt
        0x19t
        0x7bt
        0x6dt
        0x63t
        0x6dt
        0x54t
        -0x64t
        0x53t
        0x75t
        -0x49t
        0x1dt
        0x5et
        0x64t
        0x5ft
        0x70t
        0x7bt
        -0x51t
        0x12t
        0x75t
        0x63t
        0x78t
        -0x6dt
        0x4dt
        0x5ft
        -0x5ct
        0x5et
        -0x60t
        0x58t
        -0x58t
        -0x5ft
        0x54t
        -0x1dt
        0x12t
        0x51t
        0x53t
        0x50t
        -0x61t
        -0x54t
        -0x20t
        0x5t
        -0x56t
        0x54t
        -0x59t
        -0x7ct
        0x79t
        -0x12t
        0x7et
        -0xdt
        -0x30t
        -0x3et
        -0x2ft
        -0x36t
        -0x23t
        -0x78t
        0x79t
        -0x30t
        0x74t
        0x44t
        0x13t
        -0x3at
        0x7ft
        -0x30t
        0x72t
        -0x39t
        -0x2ft
        -0x34t
        0x7dt
        -0x80t
        0x3ct
        0xct
        -0x34t
        -0x80t
        -0x30t
        -0x7bt
        0x76t
        -0x39t
        0x3et
        0x17t
        -0x7et
        -0x38t
        -0x7bt
        -0x68t
        -0x70t
        -0x6at
        -0x67t
        -0x5et
        -0x68t
        -0x73t
        0x7at
        -0x47t
        -0x67t
        -0x59t
        -0x7bt
        -0x57t
        -0x6bt
        -0x74t
        -0x66t
        0x77t
        -0x38t
        -0x77t
        -0x66t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/Object;Lcom/ironsource/adqualitysdk/sdk/i/jv$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->h:Ljava/lang/Object;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->i:Lcom/ironsource/adqualitysdk/sdk/i/jv$a;

    return-void
.end method

.method private a(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .registers 15

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const/4 v3, 0x0

    if-eqz v2, :cond_86

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v4, 0x60b55ba6

    const/4 v5, -0x1

    if-eq v2, v4, :cond_19

    goto :goto_6f

    :cond_19
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v2

    const/16 v4, 0x2c

    const/4 v6, 0x0

    const/16 v7, 0x31

    cmpl-float v2, v2, v6

    add-int/lit8 v2, v2, -0xe

    const v8, 0x4706bfdb

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    add-int/2addr v9, v8

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    rsub-int/lit8 v8, v8, -0x1

    int-to-byte v8, v8

    invoke-static {v1, v1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v10

    add-int/lit8 v10, v10, 0x67

    int-to-short v10, v10

    const v11, -0x72e263a9

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v12

    cmpl-float v6, v12, v6

    sub-int/2addr v11, v6

    invoke-static {v2, v9, v8, v10, v11}, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->d(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    const/16 p1, 0x31

    goto :goto_5b

    :cond_59
    const/16 p1, 0x2c

    :goto_5b
    if-eq p1, v4, :cond_6f

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->f:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->g:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6c

    const/16 p1, 0x5f

    goto :goto_70

    :cond_6c
    const/16 p1, 0x31

    goto :goto_70

    :cond_6f
    :goto_6f
    const/4 v1, -0x1

    :goto_70
    if-eqz v1, :cond_73

    goto :goto_86

    :cond_73
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->c()Ljava/lang/Object;

    move-result-object p1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->g:I

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->f:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_83

    return-object p1

    :cond_83
    :try_start_83
    throw v3
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_84

    :catchall_84
    move-exception p1

    throw p1

    :cond_86
    :goto_86
    return-object v3
.end method

.method private static b([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 12

    if-eqz p0, :cond_bd

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p0

    const/4 v4, 0x0

    :goto_b
    const/16 v5, 0x16

    if-ge v4, v3, :cond_12

    const/16 v6, 0x56

    goto :goto_14

    :cond_12
    const/16 v6, 0x16

    :goto_14
    if-eq v6, v5, :cond_4e

    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v6
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_53

    if-eqz v6, :cond_24

    const/4 v6, 0x1

    goto :goto_25

    :cond_24
    const/4 v6, 0x0

    :goto_25
    if-eqz v6, :cond_43

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->g:I

    add-int/lit8 v6, v6, 0x4f

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->f:I

    rem-int/lit8 v6, v6, 0x2

    :try_start_31
    invoke-static {v5}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_53

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->g:I

    add-int/lit8 v5, v5, 0x6b

    :goto_3c
    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->f:I

    rem-int/lit8 v5, v5, 0x2

    goto :goto_4b

    :cond_43
    :try_start_43
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_53

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->g:I

    add-int/lit8 v5, v5, 0x63

    goto :goto_3c

    :goto_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_4e
    :try_start_4e
    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_53

    return-object p0

    :catchall_53
    move-exception v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v3

    const/16 v5, 0x30

    const-wide/16 v6, 0x0

    const-string v8, ""

    cmp-long v9, v3, v6

    rsub-int/lit8 v3, v9, -0x17

    const v4, 0x4706bfc4

    invoke-static {v8, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v9

    add-int/2addr v9, v4

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v4

    add-int/lit8 v4, v4, -0xe

    int-to-byte v4, v4

    invoke-static {v8, v5, v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v6

    add-int/lit8 v6, v6, 0x6c

    int-to-short v6, v6

    const v7, -0x72e2640c

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    sub-int/2addr v7, v10

    invoke-static {v3, v9, v4, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->d(IIBSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    const v6, 0x4706bfba

    invoke-static {v8}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v8, v5, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    add-int/lit8 v1, v1, 0x60

    int-to-byte v1, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, -0x26

    int-to-short v5, v5

    const v6, -0x72e263c6

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    sub-int/2addr v6, v8

    invoke-static {v4, v7, v1, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->d(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_bd
    return-object p0
.end method

.method private c()Ljava/lang/Object;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->f:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->g:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->h:Ljava/lang/Object;

    return-object v0

    :cond_14
    const/4 v0, 0x0

    :try_start_15
    throw v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v0

    throw v0
.end method

.method private static d(IIBSI)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->b:I

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

    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->d:[B

    if-eqz p0, :cond_21

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->a:I

    add-int/2addr v6, p4

    aget-byte p0, p0, v6

    add-int/2addr p0, v2

    int-to-byte p0, p0

    goto :goto_2a

    :cond_21
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->e:[S

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->a:I

    add-int/2addr v6, p4

    aget-short p0, p0, v6

    add-int/2addr p0, v2

    int-to-short p0, p0

    :cond_2a
    :goto_2a
    if-lez p0, :cond_89

    add-int/2addr p4, p0

    add-int/lit8 p4, p4, -0x2

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->a:I

    add-int/2addr p4, v2

    if-eqz v3, :cond_35

    const/4 v4, 0x1

    :cond_35
    add-int/2addr p4, v4

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    sput-byte p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->c:I

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

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->d:[B

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
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->e:[S

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

.method private static e(Ljava/lang/reflect/Method;)Z
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->g:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eq v0, v1, :cond_74

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v3, 0x60b55ba6

    const/4 v4, -0x1

    if-eq v0, v3, :cond_22

    goto :goto_70

    :cond_22
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v0, v0, -0xe

    const v3, 0x4706bfdb

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    shr-int/lit8 v5, v5, 0x6

    sub-int/2addr v3, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    rsub-int/lit8 v6, v6, 0x67

    int-to-short v6, v6

    const v7, -0x72e263aa

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v8

    shr-int/lit8 v8, v8, 0x8

    sub-int/2addr v7, v8

    invoke-static {v0, v3, v5, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->d(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_62

    const/4 p0, 0x0

    goto :goto_63

    :cond_62
    const/4 p0, 0x1

    :goto_63
    if-eq p0, v1, :cond_70

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->g:I

    add-int/lit8 p0, p0, 0x41

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->f:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v4, 0x0

    :cond_70
    :goto_70
    if-eqz v4, :cond_73

    return v2

    :cond_73
    return v1

    :cond_74
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    const/4 p0, 0x0

    :try_start_7c
    throw p0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7d

    :catchall_7d
    move-exception p0

    throw p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->g:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_1e3

    invoke-static/range {p2 .. p2}, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->e(Ljava/lang/reflect/Method;)Z

    move-result v0

    const v5, 0x4706bfb9

    const v6, -0x72e2640c

    const v7, 0x4706bfc4

    const/16 v8, 0x30

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, ""

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    if-eqz v0, :cond_b7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->f:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->g:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3f

    :try_start_37
    invoke-direct {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    const/16 v3, 0x49

    div-int/2addr v3, v14

    return-object v0

    :cond_3f
    invoke-direct {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_44

    return-object v0

    :catchall_44
    move-exception v0

    invoke-static {v14}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v15

    cmp-long v3, v15, v12

    rsub-int/lit8 v3, v3, -0x18

    invoke-static {v11}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v12, v7

    invoke-static {v11, v14}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v7

    rsub-int/lit8 v7, v7, -0xe

    int-to-byte v7, v7

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v13

    cmpl-float v13, v13, v10

    rsub-int/lit8 v13, v13, 0x6b

    int-to-short v13, v13

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v15

    shr-int/lit8 v15, v15, 0x10

    add-int/2addr v15, v6

    invoke-static {v3, v12, v7, v13, v15}, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->d(IIBSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/lit8 v7, v7, -0x4

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    add-int/2addr v12, v5

    invoke-static {v10, v10}, Landroid/graphics/PointF;->length(FF)F

    move-result v5

    cmpl-float v5, v5, v10

    add-int/lit8 v5, v5, -0x75

    int-to-byte v5, v5

    invoke-static {v11, v8, v14, v14}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x12

    int-to-short v8, v8

    const v10, -0x72e26403

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v11

    shr-int/lit8 v11, v11, 0x10

    add-int/2addr v11, v10

    invoke-static {v7, v12, v5, v8, v11}, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->d(IIBSI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0, v9}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-object v4

    :cond_b7
    :try_start_b7
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->i:Lcom/ironsource/adqualitysdk/sdk/i/jv$a;

    move-object/from16 v15, p1

    invoke-interface {v0, v15, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jv$a;->ﾒ(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    :try_end_be
    .catchall {:try_start_b7 .. :try_end_be} :catchall_c0

    goto/16 :goto_1a8

    :catchall_c0
    move-exception v0

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v15

    shr-int/lit8 v15, v15, 0x10

    rsub-int/lit8 v15, v15, -0x18

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v16

    shr-int/lit8 v16, v16, 0x10

    add-int v7, v16, v7

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v16

    shr-int/lit8 v16, v16, 0x16

    add-int/lit8 v4, v16, -0xe

    int-to-byte v4, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    cmp-long v16, v17, v12

    add-int/lit8 v8, v16, 0x6a

    int-to-short v8, v8

    invoke-static {v11, v14}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v16

    add-int v6, v16, v6

    invoke-static {v15, v7, v4, v8, v6}, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->d(IIBSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v7

    rsub-int/lit8 v7, v7, -0xc

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    sub-int/2addr v5, v8

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v8

    cmpl-float v8, v8, v10

    add-int/lit8 v8, v8, -0x58

    int-to-byte v8, v8

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    rsub-int/lit8 v10, v10, 0x1

    int-to-short v10, v10

    const v15, -0x72e263e6

    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v16

    sub-int v15, v15, v16

    invoke-static {v7, v5, v8, v10, v15}, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->d(IIBSI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->h:Ljava/lang/Object;

    if-eqz v5, :cond_132

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_162

    :cond_132
    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1e

    const v7, 0x4706bfe3

    const/16 v8, 0x30

    invoke-static {v11, v8, v14}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v10

    add-int/2addr v10, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v7

    cmp-long v11, v7, v12

    rsub-int/lit8 v7, v11, -0x3e

    int-to-byte v7, v7

    invoke-static {v14}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x48

    int-to-short v8, v8

    const v11, -0x72e263d0

    invoke-static {v14, v14}, Landroid/view/View;->resolveSize(II)I

    move-result v15

    add-int/2addr v15, v11

    invoke-static {v5, v10, v7, v8, v15}, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->d(IIBSI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    :goto_162
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0xffffe6

    invoke-static {v14, v14, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    add-int/2addr v7, v5

    const v5, 0x4706bf94

    invoke-static {v14}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v10

    cmp-long v5, v10, v12

    rsub-int/lit8 v5, v5, -0xa

    int-to-byte v5, v5

    invoke-static {v14, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v10

    const/16 v11, 0x30

    rsub-int/lit8 v10, v10, 0x30

    int-to-short v10, v10

    const v11, -0x72e263cd

    invoke-static {v14, v14}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    add-int/2addr v12, v11

    invoke-static {v7, v8, v5, v10, v12}, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->d(IIBSI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0, v9}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_1a8
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->h:Ljava/lang/Object;

    if-eqz v0, :cond_1ae

    const/4 v4, 0x1

    goto :goto_1af

    :cond_1ae
    const/4 v4, 0x0

    :goto_1af
    if-eqz v4, :cond_1c9

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->g:I

    add-int/lit8 v2, v2, 0x61

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->f:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1c8

    const/16 v2, 0xa

    :try_start_1c3
    div-int/2addr v2, v14
    :try_end_1c4
    .catchall {:try_start_1c3 .. :try_end_1c4} :catchall_1c5

    return-object v0

    :catchall_1c5
    move-exception v0

    move-object v2, v0

    throw v2

    :cond_1c8
    return-object v0

    :cond_1c9
    const-class v0, Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d6

    const/4 v9, 0x0

    :cond_1d6
    if-eqz v9, :cond_1da

    const/4 v3, 0x0

    return-object v3

    :cond_1da
    invoke-static/range {p3 .. p3}, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->b([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1e3
    move-object v3, v4

    invoke-static/range {p2 .. p2}, Lcom/ironsource/adqualitysdk/sdk/i/jv$b;->e(Ljava/lang/reflect/Method;)Z

    :try_start_1e7
    throw v3
    :try_end_1e8
    .catchall {:try_start_1e7 .. :try_end_1e8} :catchall_1e8

    :catchall_1e8
    move-exception v0

    move-object v2, v0

    throw v2
.end method
