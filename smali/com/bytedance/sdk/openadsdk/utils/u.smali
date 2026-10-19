###### Class com.bytedance.sdk.openadsdk.utils.u (com.bytedance.sdk.openadsdk.utils.u)
.class public Lcom/bytedance/sdk/openadsdk/utils/u;
.super Ljava/lang/Object;
.source "SimUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/u$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = null

.field private static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = null

.field private static volatile d:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u$a;->a()V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/u;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u$a;->a()V

    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/utils/u;->d:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_60

    const-string v2, "MCC"

    if-nez v1, :cond_28

    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMCC"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/utils/u;->d:Z

    if-eqz v3, :cond_1b

    const-string v3, "Have SIM card"

    goto :goto_1d

    :cond_1b
    const-string v3, "No SIM card, MCC returns null"

    :goto_1d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_28
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v3, v1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v3, :cond_3d

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3f

    :cond_3d
    sget-object v3, Lcom/bytedance/sdk/openadsdk/utils/u;->b:Ljava/lang/String;

    :goto_3f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",sMCC="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/u;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_a .. :try_end_5f} :catchall_60

    return-object v3

    :catchall_60
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimUtils"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u$a;->a()V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()V
    .registers 0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->e()V

    return-void
.end method

.method private static e()V
    .registers 8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/u;->d:Z

    :try_start_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_8b

    const/4 v2, 0x0

    :try_start_17
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eqz v3, :cond_23

    if-eq v3, v0, :cond_20

    goto :goto_25

    :cond_20
    sput-boolean v2, Lcom/bytedance/sdk/openadsdk/utils/u;->d:Z

    goto :goto_25

    :cond_23
    sput-boolean v2, Lcom/bytedance/sdk/openadsdk/utils/u;->d:Z

    :goto_25
    const-string v0, "MCC"

    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/utils/u;->d:Z

    if-eqz v3, :cond_2e

    const-string v3, "Have SIM card"

    goto :goto_30

    :cond_2e
    const-string v3, "No SIM card"

    :goto_30
    invoke-static {v0, v3}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_17 .. :try_end_33} :catchall_34

    goto :goto_3e

    :catchall_34
    move-exception v0

    :try_start_35
    const-string v3, "SimUtils"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_8b

    :goto_3e
    const/4 v0, 0x0

    :try_start_3f
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v3
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_44

    goto :goto_45

    :catchall_44
    move-object v3, v0

    :goto_45
    :try_start_45
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_4a

    goto :goto_4b

    :catchall_4a
    move-object v4, v0

    :goto_4b
    if-eqz v4, :cond_54

    :try_start_4d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_8b

    const/4 v6, 0x5

    if-ge v5, v6, :cond_58

    :cond_54
    :try_start_54
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_58

    :catchall_58
    :cond_58
    :try_start_58
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_72

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x4

    if-le v1, v5, :cond_72

    const/4 v0, 0x3

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_73

    :cond_72
    move-object v1, v0

    :goto_73
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7b

    sput-object v3, Lcom/bytedance/sdk/openadsdk/utils/u;->a:Ljava/lang/String;

    :cond_7b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_83

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/u;->b:Ljava/lang/String;

    :cond_83
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8b

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/u;->c:Ljava/lang/String;
    :try_end_8b
    .catchall {:try_start_58 .. :try_end_8b} :catchall_8b

    :catchall_8b
    :cond_8b
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.utils.u.a (com.bytedance.sdk.openadsdk.utils.u$a)
.class public Lcom/bytedance/sdk/openadsdk/utils/u$a;
.super Lcom/bytedance/sdk/component/g/h;
.source "SimUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/utils/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final b:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/u$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/u$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/g/h;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()V
    .registers 8

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/u$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/u$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/32 v5, 0x927c0

    cmp-long v7, v3, v5

    if-gez v7, :cond_1c

    return-void

    :cond_1c
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/u$a;

    const/4 v1, 0x5

    const-string v2, "UpdateSimStatusTask"

    invoke-direct {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u$a;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aa;->b(Lcom/bytedance/sdk/component/g/h;)V

    :cond_2a
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/u$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->d()V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/u$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
