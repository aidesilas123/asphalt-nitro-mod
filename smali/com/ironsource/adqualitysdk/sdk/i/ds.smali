###### Class com.json.adqualitysdk.sdk.i.ds (com.ironsource.adqualitysdk.sdk.i.ds)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ds;
.super Lcom/ironsource/adqualitysdk/sdk/i/dx;
.source ""


# static fields
.field private static e:I = 0x24

.field private static f:I = 0x0

.field private static g:I = 0x1


# instance fields
.field private h:Lcom/ironsource/adqualitysdk/sdk/i/ej;

.field private i:Lcom/ironsource/adqualitysdk/sdk/i/dx;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ej;Lcom/ironsource/adqualitysdk/sdk/i/dx;Lcom/ironsource/adqualitysdk/sdk/i/do;)V
    .registers 4

    invoke-direct {p0, p3}, Lcom/ironsource/adqualitysdk/sdk/i/dx;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/do;)V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ds;->h:Lcom/ironsource/adqualitysdk/sdk/i/ej;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ds;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    return-void
.end method

.method private static c(IZIILjava/lang/String;)Ljava/lang/String;
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

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/ds;->e:I

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
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ds;->g:I

    add-int/lit8 v1, v0, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ds;->f:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6f

    const/4 v1, 0x1

    if-ne p0, p1, :cond_10

    return v1

    :cond_10
    const/4 v2, 0x6

    if-eqz p1, :cond_15

    const/4 v3, 0x6

    goto :goto_17

    :cond_15
    const/16 v3, 0x23

    :goto_17
    const/4 v4, 0x0

    if-eq v3, v2, :cond_1b

    goto :goto_6e

    :cond_1b
    const/16 v2, 0x11

    add-int/2addr v0, v2

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ds;->f:I

    rem-int/lit8 v0, v0, 0x2

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/ds;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/16 v5, 0x49

    if-eq v0, v3, :cond_30

    const/16 v2, 0x49

    :cond_30
    if-eq v2, v5, :cond_6e

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ds;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ds;->h:Lcom/ironsource/adqualitysdk/sdk/i/ej;

    if-eqz v0, :cond_41

    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ds;->h:Lcom/ironsource/adqualitysdk/sdk/i/ej;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_6e

    :cond_41
    iget-object v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/ds;->h:Lcom/ironsource/adqualitysdk/sdk/i/ej;

    if-eqz v0, :cond_47

    const/4 v0, 0x0

    goto :goto_48

    :cond_47
    const/4 v0, 0x1

    :goto_48
    if-eqz v0, :cond_6e

    :cond_4a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ds;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    const/16 v2, 0x38

    if-eqz v0, :cond_53

    const/16 v3, 0x38

    goto :goto_55

    :cond_53
    const/16 v3, 0x62

    :goto_55
    if-eq v3, v2, :cond_67

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ds;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-nez p1, :cond_66

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ds;->f:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ds;->g:I

    rem-int/lit8 p1, p1, 0x2

    return v1

    :cond_66
    return v4

    :cond_67
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ds;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6e
    :goto_6e
    return v4

    :cond_6f
    const/4 p1, 0x0

    :try_start_70
    throw p1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_71

    :catchall_71
    move-exception p1

    throw p1
.end method

.method public final hashCode()I
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ds;->g:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ds;->f:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ds;->h:Lcom/ironsource/adqualitysdk/sdk/i/ej;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    if-eqz v3, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ds;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    if-eqz v3, :cond_23

    const/4 v4, 0x0

    goto :goto_24

    :cond_23
    const/4 v4, 0x1

    :goto_24
    if-eq v4, v1, :cond_41

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ds;->f:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/ds;->g:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3d

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v3, 0x16

    :try_start_38
    div-int/2addr v3, v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_3b

    move v2, v1

    goto :goto_41

    :catchall_3b
    move-exception v0

    throw v0

    :cond_3d
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_41
    :goto_41
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ds;->h:Lcom/ironsource/adqualitysdk/sdk/i/ej;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v3

    const/4 v4, 0x1

    const-string v5, "\ufff7\u0014\ufff7"

    cmpl-float v2, v3, v2

    add-int/lit8 v2, v2, 0x4d

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x3

    invoke-static {v2, v4, v3, v6, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ds;->c(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ds;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/ds;->g:I

    add-int/lit8 v2, v2, 0x25

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/ds;->f:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_46

    goto :goto_47

    :cond_46
    const/4 v1, 0x1

    :goto_47
    if-eqz v1, :cond_4a

    return-object v0

    :cond_4a
    const/4 v0, 0x0

    :try_start_4b
    throw v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v0

    throw v0
.end method

.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ds;->g:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ds;->f:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ds;->i:Lcom/ironsource/adqualitysdk/sdk/i/dx;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dx;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object p2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ds;->h:Lcom/ironsource/adqualitysdk/sdk/i/ej;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ej;->ｋ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﻐ()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/dr;->ﾒ(Ljava/lang/String;Ljava/lang/Object;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ds;->f:I

    add-int/lit8 p1, p1, 0x69

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ds;->g:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x62

    if-nez p1, :cond_2e

    const/16 p1, 0x62

    goto :goto_30

    :cond_2e
    const/16 p1, 0x60

    :goto_30
    if-eq p1, v0, :cond_33

    return-object p2

    :cond_33
    const/4 p1, 0x0

    :try_start_34
    throw p1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception p1

    throw p1
.end method

.method public final ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ej;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/ds;->g:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/ds;->f:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ds;->h:Lcom/ironsource/adqualitysdk/sdk/i/ej;

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ds;->g:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method
