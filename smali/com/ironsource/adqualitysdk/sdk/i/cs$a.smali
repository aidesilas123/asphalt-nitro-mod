###### Class com.ironsource.adqualitysdk.sdk.i.cs.a (com.ironsource.adqualitysdk.sdk.i.cs$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/cs$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cs;->ﱟ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/dr;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static a:[C = null

.field private static b:I = 0xeb

.field private static c:Z = true

.field private static d:Z = true

.field private static e:I = 0x0

.field private static f:I = 0x1


# instance fields
.field private synthetic g:Lcom/ironsource/adqualitysdk/sdk/i/dn;

.field private synthetic h:Lcom/ironsource/adqualitysdk/sdk/i/dn;

.field private synthetic i:Ljava/util/List;

.field private synthetic j:Z

.field final synthetic k:Lcom/ironsource/adqualitysdk/sdk/i/dr;

.field final synthetic l:Lcom/ironsource/adqualitysdk/sdk/i/cj;

.field private synthetic m:Lcom/ironsource/adqualitysdk/sdk/i/cs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->a:[C

    return-void

    :array_a
    .array-data 2
        0x130s
        0x15ds
        0x15as
        0x10bs
        0x154s
        0x159s
        0x13as
        0x12cs
        0x15fs
        0x14cs
        0x14es
        0x153s
        0x13es
        0x150s
        0x12es
        0x152s
        0x137s
        0x15es
        0x14fs
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/cs;Lcom/ironsource/adqualitysdk/sdk/i/dn;Lcom/ironsource/adqualitysdk/sdk/i/dn;Ljava/util/List;ZLcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)V
    .registers 8

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->m:Lcom/ironsource/adqualitysdk/sdk/i/cs;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/dn;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->h:Lcom/ironsource/adqualitysdk/sdk/i/dn;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->i:Ljava/util/List;

    iput-boolean p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->j:Z

    iput-object p6, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    iput-object p7, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->l:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
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
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->a:[C

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->b:I

    sget-boolean v3, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->d:Z

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
    sget-boolean p3, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->c:Z

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

.method private b(Lcom/ironsource/adqualitysdk/sdk/i/dn;Landroid/view/View;)V
    .registers 12

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->e:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->f:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_29

    :try_start_e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->i:Ljava/util/List;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p2, v4, v3

    invoke-static {v0, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->f(Ljava/util/List;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->j:Z

    const/16 v3, 0x4e

    if-eqz v0, :cond_24

    const/16 v0, 0x4e

    goto :goto_26

    :cond_24
    const/16 v0, 0x2f

    :goto_26
    if-eq v0, v3, :cond_3e

    goto :goto_54

    :cond_29
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->i:Ljava/util/List;

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    aput-object p2, v4, v3

    invoke-static {v0, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->f(Ljava/util/List;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->j:Z

    if-eqz v0, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v3, 0x0

    :goto_3c
    if-eqz v3, :cond_54

    :cond_3e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->k:Lcom/ironsource/adqualitysdk/sdk/i/dr;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->l:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    invoke-virtual {p1, v0, v3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dn;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dp;
    :try_end_45
    .catchall {:try_start_e .. :try_end_45} :catchall_5d

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->e:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->f:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_51

    return-void

    :cond_51
    :try_start_51
    throw v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception p1

    throw p1

    :cond_54
    :goto_54
    :try_start_54
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cs$a$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cs$a;Lcom/ironsource/adqualitysdk/sdk/i/dn;Ljava/util/List;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_5d

    return-void

    :catchall_5d
    move-exception p2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->l:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    const-string v7, "\u0084\u008e\u0093\u0085\u0092\u0086\u0085\u0084\u0082\u008e\u0086\u008e\u0089\u0092\u0085\u0091\u008e\u0090\u0086\u008a\u008c\u008f\u008e\u0089\u008a\u0089\u008d\u008c\u008b\u008a\u0089\u0089\u0088\u0086\u0087\u0084\u0086\u0085\u0084\u0082\u0083\u0082\u0082\u0081"

    cmp-long v8, v3, v5

    rsub-int v3, v8, 0x80

    invoke-static {v2, v2, v3, v7}, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->a([ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dn;->ﾒ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->f:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->g:Lcom/ironsource/adqualitysdk/sdk/i/dn;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->b(Lcom/ironsource/adqualitysdk/sdk/i/dn;Landroid/view/View;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->f:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->e:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x3e

    if-eqz p1, :cond_20

    const/16 p1, 0x3e

    goto :goto_22

    :cond_20
    const/16 p1, 0x15

    :goto_22
    if-eq p1, v0, :cond_25

    return-void

    :cond_25
    const/16 p1, 0x38

    :try_start_27
    div-int/lit8 p1, p1, 0x0
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception p1

    throw p1
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->f:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->h:Lcom/ironsource/adqualitysdk/sdk/i/dn;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->b(Lcom/ironsource/adqualitysdk/sdk/i/dn;Landroid/view/View;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->e:I

    add-int/lit8 p1, p1, 0x2d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cs$a;->f:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method
