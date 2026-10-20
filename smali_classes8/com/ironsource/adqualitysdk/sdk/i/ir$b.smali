###### Class com.ironsource.adqualitysdk.sdk.i.ir.b (com.ironsource.adqualitysdk.sdk.i.ir$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ir$b;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ir;->e(Lcom/ironsource/adqualitysdk/sdk/i/is;Lcom/ironsource/adqualitysdk/sdk/i/ir$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static a:J = 0x21c42b72d49cee59L

.field private static b:I = 0x0

.field private static c:I = 0x1


# instance fields
.field final synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/ir;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ir;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ir$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/ir;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private a(Lcom/ironsource/adqualitysdk/sdk/i/is;Lcom/ironsource/adqualitysdk/sdk/i/ir$c;)V
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ir$b;->b:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ir$b;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ir$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/ir;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ir;->a(Lcom/ironsource/adqualitysdk/sdk/i/ir;)Lcom/ironsource/adqualitysdk/sdk/i/iu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->ﻐ()Z

    move-result v0

    const/16 v1, 0x28

    if-nez v0, :cond_1b

    const/16 v0, 0x28

    goto :goto_1d

    :cond_1b
    const/16 v0, 0x2a

    :goto_1d
    if-eq v0, v1, :cond_8f

    :try_start_1f
    invoke-interface {p2}, Lcom/ironsource/adqualitysdk/sdk/i/ir$c;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ip;

    move-result-object p2

    if-eqz p2, :cond_5b

    invoke-static {p2}, Lcom/ironsource/adqualitysdk/sdk/i/it;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/ip;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ir;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\uee1e\u94db\u1bf7\u9ebe\u058c\u88d8\u0fa4\ub257\u3952\ubc6f\u237e\ua605\u2d36\ud070\u56dd\udddf\u40fa\uc794\u4a9c\uf1a0\u74ae\ufb4d\u7e27\ue574\u6813\uef13\u9226\u1886\u9fc6\u02e5\u89ed\u0c9c\ub39c\u36a6\ubd03\u2049\ua764\u2a6c\ud11f\u5462\udb35\u41cd\uc4cf\u4bf7\ucedf\u75d0"

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    rsub-int v4, v4, 0x7aee

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ir$b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﺙ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$b;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/is;Lcom/ironsource/adqualitysdk/sdk/i/ip;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void

    :cond_5b
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$a;

    invoke-direct {v0, p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ip;Lcom/ironsource/adqualitysdk/sdk/i/is;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_63} :catch_64

    return-void

    :catch_64
    move-exception p2

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v2

    add-int/lit16 v2, v2, 0x833

    const-string v3, "\uee0c\ue604\ufe5e\uf6a2\ucef9\uc6c3\udf4b\ud748\uafae\ua7b2\ubfd4\ub40d\u8c53\u84aa\u9cb3\u94c7\u6d1c\u6549\u7dbb\u75ff\u4dc8\u4256\u5a49\u52a9\u2ae0\u22d7\u3b12\u334b\u0bb9\u03be"

    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ir$b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/is;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ip;Ljava/lang/String;)V

    return-void

    :cond_8f
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ir$b;->c(Lcom/ironsource/adqualitysdk/sdk/i/is;Lcom/ironsource/adqualitysdk/sdk/i/ir$c;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ir$b;->b:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ir$b;->c:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/ir$b;->a:J

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

.method private c(Lcom/ironsource/adqualitysdk/sdk/i/is;Lcom/ironsource/adqualitysdk/sdk/i/ir$c;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ir$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/ir;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ir;->a(Lcom/ironsource/adqualitysdk/sdk/i/ir;)Lcom/ironsource/adqualitysdk/sdk/i/iu;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$c;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ir$b;Lcom/ironsource/adqualitysdk/sdk/i/is;Lcom/ironsource/adqualitysdk/sdk/i/ir$c;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iu;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/in;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ir$b;->b:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/ir$b;->c:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ir$b;->c:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ir$b;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/is;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ir$c;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ir$b;->a(Lcom/ironsource/adqualitysdk/sdk/i/is;Lcom/ironsource/adqualitysdk/sdk/i/ir$c;)V

    const/4 p1, 0x0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ir$b;->b:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ir$b;->c:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method
