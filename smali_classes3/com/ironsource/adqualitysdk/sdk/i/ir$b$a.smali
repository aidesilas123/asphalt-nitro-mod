###### Class com.ironsource.adqualitysdk.sdk.i.ir.b.a (com.ironsource.adqualitysdk.sdk.i.ir$b$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ir$b$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ir$b;->a(Lcom/ironsource/adqualitysdk/sdk/i/is;Lcom/ironsource/adqualitysdk/sdk/i/ir$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static d:J = -0x5d86978decd153cbL

.field private static e:I = 0x0

.field private static f:I = 0x1


# instance fields
.field private synthetic g:Lcom/ironsource/adqualitysdk/sdk/i/ip;

.field private synthetic h:Lcom/ironsource/adqualitysdk/sdk/i/is;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ip;Lcom/ironsource/adqualitysdk/sdk/i/is;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/ip;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$a;->h:Lcom/ironsource/adqualitysdk/sdk/i/is;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-wide v1, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$a;->d:J

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

    sget-wide v6, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$a;->d:J

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
.method public final ﻛ()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$a;->e:I

    add-int/lit8 v1, v0, 0x71

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$a;->f:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v3, 0x2c

    const/16 v4, 0x32

    if-nez v1, :cond_13

    const/16 v1, 0x32

    goto :goto_15

    :cond_13
    const/16 v1, 0x2c

    :goto_15
    if-ne v1, v3, :cond_64

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/ip;

    if-eqz v1, :cond_1e

    const/16 v3, 0x4b

    goto :goto_20

    :cond_1e
    const/16 v3, 0x32

    :goto_20
    if-eq v3, v4, :cond_33

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ip;->ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/ip$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ip$c;->ﾒ()I

    move-result v0

    goto :goto_3c

    :cond_33
    const/4 v0, -0x1

    add-int/lit8 v2, v2, 0x4f

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$a;->e:I

    rem-int/lit8 v2, v2, 0x2

    :goto_3c
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$a;->h:Lcom/ironsource/adqualitysdk/sdk/i/is;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/ip;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-static {v4, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x1

    const-string v5, "\u0287\u02c0\uc596\u69cc\u38a6\u97db\u60b8\u9364\ub232\u98bf\u31eb\u22cd\u635d\uc83d\u82d1\uf1ee\u10db\u7b42\u5232\u80b2\uc1b8\uaa61\u233c\u505b\u76d1\ue5ef\uf45b\uef6c\u261e\u14cf\u45b1\ube3f\ud76b\u47f4\u16ff\u4dd4\u8442\uf763\ue7c8\u1c8d\u3595\u2659\ub71d\uabba\ueaaa\u5185\u7860\u7b1c\u9bef\u80af\uc941\u0a0e\u4b57\u3381\u9acc\ud964\uf863\u6300\u6bfa\u6898\ua971\u9234\u3c84\u279e\u5e8e\ucd44\u8c00\uf6bf\u0fa9\u7c90\u5d69\u863e\ubcb3"

    invoke-static {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ir$b$a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/is;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ip;Ljava/lang/String;)V

    return-void

    :cond_64
    const/4 v0, 0x0

    :try_start_65
    throw v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception v0

    throw v0
.end method
