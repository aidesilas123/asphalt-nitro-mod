###### Class com.ironsource.adqualitysdk.sdk.i.v.a (com.ironsource.adqualitysdk.sdk.i.v$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/v$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/v;->l(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/String;)V
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
.field private synthetic e:Ljava/lang/Object;

.field private synthetic f:Lcom/ironsource/adqualitysdk/sdk/i/v;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x2a

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->a:[C

    const-wide v0, -0x40c0b095fb1329faL    # -4.777559124023726E-4

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->b:J

    return-void

    nop

    :array_12
    .array-data 2
        0x46s
        -0x298ds
        -0x53a0s
        -0x7d82s
        0x586bs
        0x2e7ds
        0x456s
        -0x25b1s
        -0x4fabs
        -0x79a8s
        0x5c7ds
        0x3226s
        0x800s
        -0x21d1s
        -0x4bc6s
        -0x75c2s
        0x600cs
        0x3603s
        0xc1es
        0x45s
        -0x298cs
        -0x5382s
        -0x7d83s
        0x586as
        0x2e3es
        0x44ds
        -0x25bcs
        -0x4ff0s
        -0x79a7s
        0x5c52s
        0x320es
        0x829s
        -0x21c9s
        -0x4bc5s
        -0x75d1s
        0x6014s
        0x3625s
        0xc04s
        -0x1deds
        -0x47eas
        -0x71e7s
        0x64e1s
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/v;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/v;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IIC)Ljava/lang/String;
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

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->a:[C

    add-int v4, p1, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->b:J

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
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    const/4 p1, 0x0

    :try_start_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/v;

    iget-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->e:Ljava/lang/Object;

    invoke-virtual {p3, p4, p2}, Lcom/ironsource/adqualitysdk/sdk/i/v;->r(Ljava/lang/Object;Ljava/util/List;)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_87

    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/v;

    iget-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->e:Ljava/lang/Object;

    invoke-virtual {p3, p4}, Lcom/ironsource/adqualitysdk/sdk/i/v;->o(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p3
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_88

    const/4 p4, 0x1

    if-eqz p3, :cond_20

    const/4 p5, 0x1

    goto :goto_21

    :cond_20
    const/4 p5, 0x0

    :goto_21
    if-eq p5, p4, :cond_24

    goto :goto_66

    :cond_24
    sget p5, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->c:I

    add-int/lit8 p5, p5, 0x2f

    rem-int/lit16 p6, p5, 0x80

    sput p6, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->d:I

    rem-int/lit8 p5, p5, 0x2

    const/16 p6, 0x27

    if-nez p5, :cond_35

    const/16 p5, 0x62

    goto :goto_37

    :cond_35
    const/16 p5, 0x27

    :goto_37
    if-eq p5, p6, :cond_4d

    :try_start_39
    iget-object p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/v;

    invoke-static {p5}, Lcom/ironsource/adqualitysdk/sdk/i/v;->p(Lcom/ironsource/adqualitysdk/sdk/i/v;)Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    move-result-object p5

    invoke-static {p5}, Lcom/ironsource/adqualitysdk/sdk/i/v$e;->f(Lcom/ironsource/adqualitysdk/sdk/i/v$e;)Z

    move-result p5

    const/16 p6, 0x30

    div-int/2addr p6, p1

    if-nez p5, :cond_49

    goto :goto_4a

    :cond_49
    const/4 p4, 0x0

    :goto_4a
    if-eqz p4, :cond_66

    goto :goto_59

    :cond_4d
    iget-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/v;

    invoke-static {p4}, Lcom/ironsource/adqualitysdk/sdk/i/v;->p(Lcom/ironsource/adqualitysdk/sdk/i/v;)Lcom/ironsource/adqualitysdk/sdk/i/v$e;

    move-result-object p4

    invoke-static {p4}, Lcom/ironsource/adqualitysdk/sdk/i/v$e;->f(Lcom/ironsource/adqualitysdk/sdk/i/v$e;)Z

    move-result p4
    :try_end_57
    .catchall {:try_start_39 .. :try_end_57} :catchall_88

    if-nez p4, :cond_66

    :goto_59
    sget p4, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->c:I

    add-int/lit8 p4, p4, 0x2b

    rem-int/lit16 p5, p4, 0x80

    sput p5, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->d:I

    rem-int/lit8 p4, p4, 0x2

    :try_start_63
    invoke-virtual {p3, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_66
    :goto_66
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/v;

    iget-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->e:Ljava/lang/Object;

    invoke-static {p3, p4, p2}, Lcom/ironsource/adqualitysdk/sdk/i/v;->i(Lcom/ironsource/adqualitysdk/sdk/i/v;Ljava/lang/Object;Ljava/util/List;)V

    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/v;

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    iget-object p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->e:Ljava/lang/Object;

    invoke-virtual {p3, p4, p2, p5}, Lcom/ironsource/adqualitysdk/sdk/i/y;->ﻛ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7d
    .catchall {:try_start_63 .. :try_end_7d} :catchall_88

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->d:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->c:I

    rem-int/lit8 p1, p1, 0x2

    :cond_87
    return-void

    :catchall_88
    move-exception p2

    const/4 p3, 0x0

    invoke-static {p1, p3, p3}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result p4

    cmpl-float p3, p4, p3

    add-int/lit8 p3, p3, 0x13

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p4

    shr-int/lit8 p4, p4, 0x16

    invoke-static {p1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p5

    int-to-char p5, p5

    invoke-static {p3, p4, p5}, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->a(IIC)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    add-int/lit8 p4, p4, 0x17

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result p5

    shr-int/lit8 p5, p5, 0x10

    rsub-int/lit8 p5, p5, 0x13

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p6

    int-to-char p6, p6

    invoke-static {p4, p5, p6}, Lcom/ironsource/adqualitysdk/sdk/i/v$a;->a(IIC)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method
