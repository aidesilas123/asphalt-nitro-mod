###### Class com.ironsource.adqualitysdk.sdk.i.cs.o (com.ironsource.adqualitysdk.sdk.i.cs$o)
.class final Lcom/ironsource/adqualitysdk/sdk/i/cs$o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/jv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cs;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static a:J = -0x2267220a5e1948dfL

.field private static b:I = 0x0

.field private static c:I = 0x1


# instance fields
.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Z

.field private synthetic f:Lcom/ironsource/adqualitysdk/sdk/i/cj;

.field private synthetic g:Lcom/ironsource/adqualitysdk/sdk/i/cs;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/cs;Ljava/lang/String;ZLcom/ironsource/adqualitysdk/sdk/i/cj;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;->g:Lcom/ironsource/adqualitysdk/sdk/i/cs;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;->d:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;->e:Z

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;->f:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;->a:J

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


# virtual methods
.method public final ﾒ(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 16

    const-string v0, ""

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;->c:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;->b:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz p2, :cond_109

    const/4 v1, 0x0

    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\ub70f"

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v4

    rsub-int v4, v4, 0x5cbd

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/gy;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_39} :catch_a3

    if-eqz p3, :cond_5c

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;->c:I

    add-int/lit8 v3, v3, 0x63

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;->b:I

    rem-int/lit8 v3, v3, 0x2

    const/16 v4, 0x5c

    if-eqz v3, :cond_4c

    const/16 v3, 0x3b

    goto :goto_4e

    :cond_4c
    const/16 v3, 0x5c

    :goto_4e
    if-ne v3, v4, :cond_55

    :try_start_50
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_61

    :cond_55
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_58} :catch_a3

    const/4 p1, 0x0

    :try_start_59
    throw p1
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5a} :catch_a3
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception p1

    throw p1

    :cond_5c
    :try_start_5c
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :goto_61
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {p3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/cs;->f(Ljava/util/List;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;->e:Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_71} :catch_a3

    const/16 v5, 0x49

    if-eqz v4, :cond_77

    const/4 v4, 0x0

    goto :goto_79

    :cond_77
    const/16 v4, 0x49

    :goto_79
    if-eq v4, v5, :cond_99

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;->c:I

    add-int/lit8 v4, v4, 0x5b

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;->b:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_89

    const/4 v4, 0x0

    goto :goto_8a

    :cond_89
    const/4 v4, 0x1

    :goto_8a
    if-eq v4, v3, :cond_95

    :try_start_8c
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_a3

    const/16 p1, 0x52

    :try_start_91
    div-int/2addr p1, v1
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_92} :catch_a3
    .catchall {:try_start_91 .. :try_end_92} :catchall_93

    goto :goto_98

    :catchall_93
    move-exception p1

    throw p1

    :cond_95
    :try_start_95
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_98
    move-object p1, p3

    :cond_99
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;->f:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    invoke-virtual {p3}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﻏ()Lcom/ironsource/adqualitysdk/sdk/i/ch;

    move-result-object p3

    invoke-interface {p3, v2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ch;->ﾒ(Ljava/lang/String;Ljava/util/List;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_a2} :catch_a3

    goto :goto_109

    :catch_a3
    move-exception p1

    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;->f:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    invoke-virtual {p3}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->ﱡ()Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x8e8d

    invoke-static {v1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-string v8, "\ub764\u39de\uaa49\u1ce9\u8d67\u7fc0\ue006\u5294\uc33f\ub5bb\u26c8\u9747\u19d3\u8a6f\u7cb7"

    const-string v9, "\ub701\u592b\u6b8a\u7c60\u0ed5\u1f4d\u212f\u33d0\uc476\ud6d0\ue707"

    const-string v10, "\ub701\u2128\u9b82\u747d\ueec1\u58bd\u3111\uab87\u047b"

    cmp-long v11, v4, v6

    sub-int/2addr v3, v11

    invoke-static {v8, v3}, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0xee67

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    sub-int/2addr p2, v3

    invoke-static {v9, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;->d:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x9664

    const/16 v3, 0x30

    invoke-static {v0, v3, v1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {v10, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cs$o;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cn;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_109
    :goto_109
    return-void
.end method
