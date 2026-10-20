###### Class com.json.adqualitysdk.sdk.i.hb (com.ironsource.adqualitysdk.sdk.i.hb)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/hb;
.super Lcom/ironsource/adqualitysdk/sdk/i/gv;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/hb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ironsource/adqualitysdk/sdk/i/gv<",
        "Landroid/view/View$OnClickListener;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static b:J = -0x61c50b4f2347ea71L

.field private static c:I = 0x0

.field private static d:C = '\u0000'

.field private static e:I = 0x0

.field private static f:I = 0x1


# instance fields
.field private g:Lcom/ironsource/adqualitysdk/sdk/i/hb$a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View$OnClickListener;Lcom/ironsource/adqualitysdk/sdk/i/hb$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/gv;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hb;->g:Lcom/ironsource/adqualitysdk/sdk/i/hb$a;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;
    .registers 11

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_6
    check-cast p4, [C

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_e
    check-cast p1, [C

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_16
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻐ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1b
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    const/4 v1, 0x0

    aget-char v2, p0, v1

    xor-int/2addr p3, v2

    int-to-char p3, p3

    aput-char p3, p0, v1

    const/4 p3, 0x2

    aget-char v2, p1, p3

    int-to-char p2, p2

    add-int/2addr v2, p2

    int-to-char p2, v2

    aput-char p2, p1, p3

    array-length p2, p4

    new-array p3, p2, [C

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    :goto_3b
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    if-ge v1, p2, :cond_80

    add-int/lit8 v2, v1, 0x2

    rem-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v1, 0x3

    rem-int/lit8 v3, v3, 0x4

    rem-int/lit8 v1, v1, 0x4

    aget-char v1, p0, v1

    mul-int/lit16 v1, v1, 0x7fce

    aget-char v4, p1, v2

    add-int/2addr v1, v4

    const v4, 0xffff

    rem-int/2addr v1, v4

    int-to-char v1, v1

    sput-char v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ｋ:C

    aget-char v5, p0, v3

    mul-int/lit16 v5, v5, 0x7fce

    aget-char v2, p1, v2

    add-int/2addr v5, v2

    div-int/2addr v5, v4

    int-to-char v2, v5

    aput-char v2, p1, v3

    aput-char v1, p0, v3

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    aget-char v2, p4, v1

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/hb;->b:J

    xor-long/2addr v2, v4

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/hb;->c:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lcom/ironsource/adqualitysdk/sdk/i/hb;->d:C

    int-to-long v4, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    goto :goto_3b

    :cond_80
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_1b .. :try_end_86} :catchall_87

    return-object p0

    :catchall_87
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 16

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hb;->f:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hb;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_1c

    :try_start_13
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hb;->g:Lcom/ironsource/adqualitysdk/sdk/i/hb$a;

    invoke-interface {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hb$a;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/hb;Landroid/view/View;)V

    const/16 v0, 0x44

    div-int/2addr v0, v2

    goto :goto_5b

    :cond_1c
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hb;->g:Lcom/ironsource/adqualitysdk/sdk/i/hb$a;

    invoke-interface {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hb$a;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/hb;Landroid/view/View;)V
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_22

    goto :goto_5b

    :catchall_22
    move-exception v0

    invoke-static {v2, v2}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v7, "\u158f\udcb8\uf4b0\u9e3a"

    const-string v8, ""

    const-string v9, "\u3c99\u0f75\uf769\u44b9"

    const-string v10, "\ua8cf\ub0cc\ud28e\uecc8\u1ed7\uc315\ub191\uacbd\u7ef0\uad2a\u98aa\u88af\u8af7\u77db\u66ac\u9666\uc41d\u96c0\u2f18\u35da\uf14f\u142f\u9c0c\u7ddf"

    const-string v11, "\uf4ae\u0463\u541a\u4140"

    const-string v12, "\ue3fc\ud293\u02be\u7370\u8fed\u6edd\u9b42\u5486\u413e\uadfa\u0df1\u78f1\u921c\u6bf2\u5715\u53ac\uc06b\uc65b\u30fb\u4d31\u27d1\uaa26\u2bd0\u5ad6\u0285\u8749\u01c4\u8d2a"

    cmp-long v13, v3, v5

    add-int/2addr v13, v1

    invoke-static {v8, v2}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    int-to-char v1, v1

    invoke-static {v9, v7, v13, v1, v10}, Lcom/ironsource/adqualitysdk/sdk/i/hb;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v8, v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v3

    invoke-static {v2, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    add-int/lit16 v4, v4, 0x4054

    int-to-char v4, v4

    invoke-static {v11, v7, v3, v4, v12}, Lcom/ironsource/adqualitysdk/sdk/i/hb;->a(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_5b
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/gv;->ﾇ()Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x55

    if-eqz v0, :cond_66

    const/16 v0, 0x55

    goto :goto_68

    :cond_66
    const/16 v0, 0x3d

    :goto_68
    if-eq v0, v1, :cond_6b

    goto :goto_7e

    :cond_6b
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/gv;->ﾇ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hb;->f:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/hb;->e:I

    rem-int/lit8 p1, p1, 0x2

    :goto_7e
    return-void
.end method
