###### Class com.ironsource.adqualitysdk.sdk.i.ja.b (com.ironsource.adqualitysdk.sdk.i.ja$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ja$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ja;->l(Landroid/view/ViewGroup;)Landroid/view/View$OnLayoutChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static a:J = 0x43051ee0020960b0L

.field private static b:I = 0x0

.field private static c:I = 0x1


# instance fields
.field private synthetic d:Landroid/view/ViewGroup;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/ja;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ja;Landroid/view/ViewGroup;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/ja;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$b;->d:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-wide v1, Lcom/ironsource/adqualitysdk/sdk/i/ja$b;->a:J

    invoke-static {v1, v2, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ(J[CI)[C

    move-result-object p0

    const/4 p1, 0x4

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    :goto_14
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    array-length v2, p0

    if-ge v1, v2, :cond_3a

    add-int/lit8 v1, v1, -0x4

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ｋ:I

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    aget-char v2, p0, v1

    rem-int/lit8 v3, v1, 0x4

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/f;->ｋ:I

    int-to-long v4, v4

    sget-wide v6, Lcom/ironsource/adqualitysdk/sdk/i/ja$b;->a:J

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p0, v1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    goto :goto_14

    :cond_3a
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v1, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_43

    return-object v1

    :catchall_43
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 11

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ja$b;->b:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ja$b;->c:I

    rem-int/lit8 p1, p1, 0x2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/r;->ｋ()Z

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-nez p1, :cond_18

    const/4 p1, 0x0

    goto :goto_19

    :cond_18
    const/4 p1, 0x1

    :goto_19
    if-eq p1, p3, :cond_59

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ja$b;->c:I

    add-int/lit8 p1, p1, 0x79

    rem-int/lit16 p4, p1, 0x80

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/ja$b;->b:I

    rem-int/lit8 p1, p1, 0x2

    :try_start_25
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$b;->e:Lcom/ironsource/adqualitysdk/sdk/i/ja;

    iget-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$b;->d:Landroid/view/ViewGroup;

    invoke-static {p1, p4, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->i(Lcom/ironsource/adqualitysdk/sdk/i/ja;Landroid/view/ViewGroup;Landroid/view/View$OnLayoutChangeListener;)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception p1

    const/16 p4, 0x30

    const-string p5, ""

    invoke-static {p5, p4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result p4

    rsub-int/lit8 p4, p4, -0x1

    const-string p5, "\u1d87\u9b1d\u3cb1\uea12\u1dc0\ufbc1\ufdbe\uc860\u9f26\u7801\u78c5\u4ead\u1872\ufd4e\ufa39\ucdce\u95ae\u739e\u7565\u4027\u16e9\uf0c8\uf0a3\uc751\u9022\u751f\u73e7\u45ab\u0d64\uea48"

    invoke-static {p5, p4}, Lcom/ironsource/adqualitysdk/sdk/i/ja$b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p4

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide p5

    const-wide/16 p7, 0x0

    const-string p9, "\u1375\u1fbc\u0cbc\u660d\u1330\u7f7e\ucdae\u4472\u91c7\ufcec\u48f5\uc2b3\u16d5\u79e3\uca32\u41d1\u9b54\uf735\u4573\ucc28\u1801\u744f\uc0b4\u4b7c\u9edb\uf1ab\u43f9"

    cmp-long v0, p5, p7

    add-int/lit8 v0, v0, -0x1

    invoke-static {p9, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ja$b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_59
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ja$b;->b:I

    add-int/lit8 p1, p1, 0x21

    rem-int/lit16 p4, p1, 0x80

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/ja$b;->c:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_66

    goto :goto_67

    :cond_66
    const/4 p2, 0x1

    :goto_67
    if-eqz p2, :cond_6a

    return-void

    :cond_6a
    const/4 p1, 0x0

    :try_start_6b
    throw p1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception p1

    throw p1
.end method
