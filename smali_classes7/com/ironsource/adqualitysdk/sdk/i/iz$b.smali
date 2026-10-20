###### Class com.ironsource.adqualitysdk.sdk.i.iz.b (com.ironsource.adqualitysdk.sdk.i.iz$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iz$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iz;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/iv;Lcom/ironsource/adqualitysdk/sdk/i/il;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static d:J = -0x70063d6080d1570bL

.field private static e:I = 0x0

.field private static f:I = 0x1


# instance fields
.field private synthetic g:Lcom/ironsource/adqualitysdk/sdk/i/iv;

.field private synthetic h:Lcom/ironsource/adqualitysdk/sdk/i/il;

.field private synthetic i:Lcom/ironsource/adqualitysdk/sdk/i/iz;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iz;Lcom/ironsource/adqualitysdk/sdk/i/iv;Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->i:Lcom/ironsource/adqualitysdk/sdk/i/iz;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->g:Lcom/ironsource/adqualitysdk/sdk/i/iv;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->h:Lcom/ironsource/adqualitysdk/sdk/i/il;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->d:J

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
.method public final ﻛ()V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->f:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->i:Lcom/ironsource/adqualitysdk/sdk/i/iz;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iz;->g(Lcom/ironsource/adqualitysdk/sdk/i/iz;)Lcom/ironsource/adqualitysdk/sdk/i/ix;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->i:Lcom/ironsource/adqualitysdk/sdk/i/iz;

    const v2, 0xdc39

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    sub-int/2addr v2, v3

    const-string v3, "\ua8df"

    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/iz;->e(Lcom/ironsource/adqualitysdk/sdk/i/iz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ix;->ﾒ(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->i:Lcom/ironsource/adqualitysdk/sdk/i/iz;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/iz;->a(Lcom/ironsource/adqualitysdk/sdk/i/iz;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_3a

    const/4 v0, 0x0

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x1

    :goto_3b
    if-eqz v0, :cond_3e

    goto :goto_9a

    :cond_3e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->i:Lcom/ironsource/adqualitysdk/sdk/i/iz;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->g:Lcom/ironsource/adqualitysdk/sdk/i/iv;

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iz;->i(Lcom/ironsource/adqualitysdk/sdk/i/iz;Lcom/ironsource/adqualitysdk/sdk/i/iv;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v2, 0x1

    :goto_4e
    const-string v1, "\ua8b6\ubefd\u8444\ueba6\uf134\ud8ab\u2ef7\u3445\u1bcf\u6125\u4888\u5e13"

    if-eqz v2, :cond_a2

    :try_start_52
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->g:Lcom/ironsource/adqualitysdk/sdk/i/iv;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/iv;->ﾒ()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_5c} :catch_a1

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->f:I

    add-int/lit8 v4, v4, 0x49

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->e:I

    rem-int/lit8 v4, v4, 0x2

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->i:Lcom/ironsource/adqualitysdk/sdk/i/iz;

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/iz;->f(Lcom/ironsource/adqualitysdk/sdk/i/iz;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/lit16 v5, v5, 0x1669

    invoke-static {v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/lit16 v5, v5, 0x5197

    const-string v6, "\ua8b6\uf903\u0bb8\u5c58\ueec0\u3f68\u4118\u93f4\u2422\u76d8\u8779\u29ed\u7b82\u8c2a\ude8d"

    invoke-static {v6, v5}, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->i:Lcom/ironsource/adqualitysdk/sdk/i/iz;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/iz;->g(Lcom/ironsource/adqualitysdk/sdk/i/iz;)Lcom/ironsource/adqualitysdk/sdk/i/ix;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ix;->ﻐ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->h:Lcom/ironsource/adqualitysdk/sdk/i/il;

    if-eqz v0, :cond_a1

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    :catch_a1
    :cond_a1
    return-void

    :cond_a2
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->e:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->f:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->i:Lcom/ironsource/adqualitysdk/sdk/i/iz;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iz;->f(Lcom/ironsource/adqualitysdk/sdk/i/iz;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v2}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v2

    add-int/lit16 v2, v2, 0x166a

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const v2, 0x9d97

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    sub-int/2addr v2, v4

    const-string v4, "\ua8a1\u350a\u93b2\u7043\ude89\ubb6f\u190c\ue7f4\u442f\u22db\u8f77\u6da9\ucbc1\ua81d\u36d6\u9342\u71a2\udf86\ubc4b\u1aa7\ue75c\u45e2\u222f\u8017\u6ea9\ucb25\ua9d1\u3679\u9416\u728b\udf67\ubdd7\u1a70\uf8fb\u46db\u2336\u81a6\u6e54\uccbf\uaa9b\u370f\u95b0\u7256\ud0cb\ubd75"

    invoke-static {v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/iz$b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾇ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
