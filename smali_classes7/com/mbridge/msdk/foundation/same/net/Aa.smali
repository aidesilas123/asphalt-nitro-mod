###### Class com.mbridge.msdk.foundation.same.net.Aa (com.mbridge.msdk.foundation.same.net.Aa)
.class public Lcom/mbridge/msdk/foundation/same/net/Aa;
.super Ljava/lang/Object;
.source "Aa.java"


# static fields
.field private static final C_END:Ljava/lang/String; = "_mv_end"

.field private static final C_START:Ljava/lang/String; = "mv_channel_"

.field private static a:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/mbridge/msdk/foundation/same/net/Aa;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    :try_start_6
    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    goto :goto_10

    :catchall_b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "mv_channel_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "_mv_end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/same/net/Aa;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_33

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/mbridge/msdk/foundation/same/net/Aa;->a:Ljava/lang/String;

    goto :goto_47

    :cond_33
    sget-boolean p0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-nez p0, :cond_3c

    const-string p0, ""

    sput-object p0, Lcom/mbridge/msdk/foundation/same/net/Aa;->a:Ljava/lang/String;

    goto :goto_47

    :cond_3c
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/Aa;->g()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "please don\'t update this value"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    :goto_47
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_32

    const-string v1, "mv_channel_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "_mv_end"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_32

    if-eq v2, v3, :cond_32

    if-le v2, v1, :cond_32

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :try_start_1c
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_2a

    :try_start_20
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_28

    if-lez v1, :cond_27

    return-object p0

    :cond_27
    return-object v0

    :catchall_28
    move-exception v0

    goto :goto_2e

    :catchall_2a
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    :goto_2e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, p0

    :cond_32
    return-object v0
.end method

.method private static g()V
    .registers 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mbridge/msdk/foundation/same/net/Aa$1;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/same/net/Aa$1;-><init>()V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
